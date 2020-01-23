Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D233D147426
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 23:59:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xWJ8ZKrCM7V5XwkWHFCJ7agzF/E7lxgPUL0g2m5fvX4=; b=OsLWjkx45Ofphv
	q0BQ53asDHymRcc3Z/32es+11q/oUbFa/rW65wZ+UKAzzGk3tpMK1ab6wlb7TYScCs/VbHT+ZcLSw
	1ekbBjkWnZv59F38RSNvNTcgU50Q0oTw118fexrBGUALX5rLuRBZAcMKj/QJXZhVekwF9ZTetv5nl
	OBNKAM6LCnTij/DGZBBH+xGbUwnLPnRYVajd4Gu5uZOn3CQZXWStzwI3RVdn6WMAwn8p7hfEYznbJ
	hqDJpkY7IeegaxsfGsa8jocpGgLGeYN9tPuEhPKNmq0DMs2dXrj1lZDhugyNDnzmQkSZpBoB9VsYS
	UhPOdaorlT7WiZQYyelw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulR2-00011e-RM; Thu, 23 Jan 2020 22:58:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulQs-00010w-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 22:58:39 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2EEC20718;
 Thu, 23 Jan 2020 22:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579820317;
 bh=+vO8N90FVF3xL+pii7NOSq2FtfZu7Erby6E+v2V6kuQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=2Zns5AlZe0m8NGkGX2ryWE8GWo44d309PozzHP/DAv5lMlw3goyDdq1WwrzUdjnOE
 TPQa27nTpE7YHTFCdOj54Y55C9SUqf+9qGKRBd52neO9DK7/VXIamyGiHvmJTQ9Gro
 UX1/GxHwEpg83VQ64d70xfk4XQhnfKXWmQ2iM6S8=
MIME-Version: 1.0
In-Reply-To: <1575527759-26452-2-git-send-email-rajan.vaja@xilinx.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-2-git-send-email-rajan.vaja@xilinx.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: clock: Add bindings for versal clock
 driver
From: Stephen Boyd <sboyd@kernel.org>
To: Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 jolly.shah@xilinx.com, m.tretter@pengutronix.de, mark.rutland@arm.com,
 mdf@kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 nava.manne@xilinx.com, robh+dt@kernel.org, tejas.patel@xilinx.com
User-Agent: alot/0.8.1
Date: Thu, 23 Jan 2020 14:58:37 -0800
Message-Id: <20200123225837.D2EEC20718@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_145838_909103_D2477758 
X-CRM114-Status: UNSURE (   6.32  )
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

Quoting Rajan Vaja (2019-12-04 22:35:54)
> Add documentation to describe Xilinx Versal clock driver
> bindings.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
