Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA93437EE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 22:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YQS4jUvpCR4ApdZ5pqziV+RjlKPFt90XEMXUTyMhmM=; b=i/8e5b/Jh7phc/
	sv6PUMOnxAKhsKYxZTMJDj70fR82+u2a3dUte38C+qSOV+HDBd+SdN0+iz5+z2AnlICVUCgxLP3cz
	ZwdLMd9BTUoA/W9HyWi4jRgrrigY4HJpUTC0tfzgKC3ZJ9kng5n6vglNMQaf/BDXRTIQP+y0xDMKZ
	XQhHwVfF/QfvMhzYr0Kgz0dW6ZpOCJ7/vmLUu9m/6M5Jm8C7EkV9m6HcoDDzMyJAO/LJ/b8hFpNuS
	9f303aAPCYJV8G9UDqdyjJDaz5qbCBCdZn6RH/uSc/O6YMNyknp2/HqCu/CHMSG8kmhcfaxUHVXgM
	oV54RuAxg4sAtcGZ23zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYz6W-0006k3-7U; Thu, 06 Jun 2019 20:35:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYz6O-0006jL-VB
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 20:35:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96A80208C3;
 Thu,  6 Jun 2019 20:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559853312;
 bh=FE9dK512c/wFHKFGlAS3dfE+HoQTVyNtrTLC+af8DVY=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=dBymB7Od4RlRir+NZNAly+YJeKeeWhTcLO7PIwfJDdVQvTdgIzADoTqU1q/tnjhAG
 cNQ147DwvQMdwjB+8gN9O4AlKn/F/JV05mYih8RRvaocE2Q/XqDry8OuERh5EqRbB+
 ULLY5j+iTLOrUOKXApW5wrsOTkB/c1Rs7YlFFn6U=
MIME-Version: 1.0
In-Reply-To: <20190509202956.6320-2-f.fainelli@gmail.com>
References: <20190509202956.6320-1-f.fainelli@gmail.com>
 <20190509202956.6320-2-f.fainelli@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>,
 linux-arm-kernel@lists.infradead.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/2] clk: bcm: Make BCM2835 clock drivers selectable
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 13:35:11 -0700
Message-Id: <20190606203512.96A80208C3@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_133513_021844_79F6F678 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 open list <linux-kernel@vger.kernel.org>, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Florian Fainelli (2019-05-09 13:29:55)
> Make the BCM2835 clock driver selectable by other
> architectures/platforms. ARCH_BRCMSTB will be selecting that driver in
> the next commit since new chips like 7211 use the same CPRMAN clock
> controller that this driver supports.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/clk/bcm/Kconfig  | 9 +++++++++
>  drivers/clk/bcm/Makefile | 4 ++--
>  2 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> index 4c4bd85f707c..0b873e23f128 100644
> --- a/drivers/clk/bcm/Kconfig
> +++ b/drivers/clk/bcm/Kconfig
> @@ -1,3 +1,12 @@
> +config CLK_BCM2835
> +       bool "Broadcom BCM2835 clock support"
> +       depends on ARCH_BCM2835 || COMPILE_TEST
> +       depends on COMMON_CLK

This whole thing is inside the COMMON_CLK menu so this line probably
doesn't matter. Anyway, I'm just going to apply this to clk-next.

> +       default ARCH_BCM2835
> +       help
> +         Enable common clock framework support for Broadcom BCM2835
> +         SoCs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
