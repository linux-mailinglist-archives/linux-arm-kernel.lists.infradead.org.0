Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD614743F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 00:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WP3R8xgXgpdHQz6u6m7Kg5Vf4D39AvcbngAsDoN7M1I=; b=TszsF6yaZcX1Wl
	ZIR5tt+WddxbVgc9iYV0IIGrNgIwdno14UfCMjtK+hDMTtBQIDfHk8DLA+1HOzfjwgsctI+8M2R6v
	7+6GaaY6nINiZMknCLBPEVYmcTIEcUxskH0YcWxGZshPNYWOhchTWjOI2xNz+YoKW/mbJaBGB8Lo6
	Ryx9+yPptr9j5Ejn/RNBqE0mhqcA/fQYJ3+j+phorTklO1CeUk/ExqJU/xz3h34p3atT0M3j1YD7y
	5RehhSLL1Cnr8WIPOGLQnGpcFuFiMEH89OI/PWzklq0hDdyUOfHp493xge9JHdWuHsyVEGwmif0L7
	Mnx9MgnVAYU3YFn5WG5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulSC-00027u-G6; Thu, 23 Jan 2020 23:00:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulRK-0001Ow-BI
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:59:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF26322522;
 Thu, 23 Jan 2020 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579820345;
 bh=2Zezl1LGfgQM4NxOR/cg+DnBZ7P8wOVJXTA1zOGyLNM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=k9v1dJ/mHYBr4Yx69rbcudReeoRPngGNDHU4uWb8uNegwXXh0tV885FCLJoySkqTC
 mJ5SlVRIcNFST4swnU/ez+WtLgA9L1/Puu8DnhBKaq4NyqsYHFDg8+Myzd/Azn8GWM
 QFOxxnqYHgg2OfxifDwOVIR0Y7FVXhhdx8xrLW3Y=
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-7-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-7-git-send-email-rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 6/6] clk: zynqmp: Add support for clock with
 CLK_DIVIDER_POWER_OF_TWO flag
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, mark.rutland@arm.com,
 mdf@kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, robh+dt@kernel.org, tejas.patel@xilinx.com
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 14:59:05 -0800
Message-Id: <20200123225905.BF26322522@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145906_435071_13751125 
X-CRM114-Status: UNSURE (   7.76  )
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
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Rajan Vaja (2019-12-04 22:35:59)
> From: Tejas Patel <tejas.patel@xilinx.com>
> 
> Existing clock divider functions is not checking for
> base of divider. So, if any clock divider is power of 2
> then clock rate calculation will be wrong.
> 
> Add support to calculate divider value for the clocks
> with CLK_DIVIDER_POWER_OF_TWO flag.
> 
> Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
> Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
