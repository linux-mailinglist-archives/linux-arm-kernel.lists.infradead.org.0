Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCFF147439
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJg1rdr8/xKan6y7KzXzA9NncUALHhaKQ2icDxPNswQ=; b=kO66i6Ezbvymzq
	5JUokK0TCWo+0vK0tTmgxSE87DqQ5mmBY3WAbQ8D8x6BCm5Z+8deSomx1nhpJ+Z9cLsTzuVylBoh+
	0637a8uaD2HdPrW0Gb+sEIx7OOG/iI0qy/0u3uch+1viCYvFAA0htJbWT6YDOsCOByfpEWCGVixWq
	vzDqiuv9gOJIjtLj3SHBbYlPhmC77Iki1QP6UwOUMarJHW4uZPN3i/a3dZid+8dGJEMM7NUPdxB8c
	hKxAO25YvssZleg1hz90s0HpVraqB/oLzAVrtl5ZDicbMvM/42eEFasaHQNRlUJ/xnLruwbZAApHf
	8eXcfEKY6BFEG5GqOfQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulS0-0001x3-Cr; Thu, 23 Jan 2020 22:59:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulRE-0001J0-Ai
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:59:01 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B264120718;
 Thu, 23 Jan 2020 22:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579820339;
 bh=zEuOC3td88tpHLgeBxK5wnCGR91LNEGrEovg5lXPIWk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=Dluiq1xHhJ2Gs+g+ZFcZgKpL8P/eAedGwAdaXjAzu2QplsivR52091g9VkeMirFEP
 jebgeC+xNRqUWjKg8MGbvB0rCiLhlOn1Wj6kB1bwN08czoJej8O27m818gZ31q1arc
 TlWQuxLXCTj34+k7QbYjzyIG3eUIS1CZMkAYsiRA=
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-6-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-6-git-send-email-rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 5/6] clk: zynqmp: Fix divider calculation
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, mark.rutland@arm.com,
 mdf@kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, robh+dt@kernel.org, tejas.patel@xilinx.com
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 14:58:59 -0800
Message-Id: <20200123225859.B264120718@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145900_417768_6A0DD732 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-12-04 22:35:58)
> zynqmp_clk_divider_round_rate() returns actual divider value
> after calculating from parent rate and desired rate, even though
> that rate is not supported by single divider of hardware. It is
> also possible that such divisor value can be achieved through 2
> different dividers. As, Linux tries to set such divisor value(out
> of range) in single divider set divider is getting failed.
> 
> Fix the same by computing best possible combination of two
> divisors which provides more accurate clock rate.
> 
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
