Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6839AC362
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 01:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xoKJtK5i2Gh/pUQBSGa3X/WRcsfJUf7qpx1E/uGbSis=; b=SAC1ZoFdqvc2oR
	OZV/HHVxb6HBNju1qnTsJGfwIK5p28Oh04D39ZtXz+LGzUYqPZEcO+N7Ofk0HVyo91QBGPFlVwpCZ
	s7BrzB2nUwULkQyJTjaXVvZzQPuBz7Tq3BxcdW4wYeBpFFGX9st8yzqyPU/gDtiirtG3xtVjIJFM3
	DRAOFSagSBY3MRuqn7vswwr2yw3Kmq2/b/irIifBwCc14ct9Yd58rmpUnBduTqkBzn5cpAU4WTLSl
	kh0GsMXdVJBflmEBv4tkyrwUi5EB2y3FaZyL076FmnU6YmfS979x66RBq6sg6us4A2LIxGCXDNkGL
	YZ3t9DS+ZQ/UenXFnJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Nxw-0004wX-C2; Fri, 06 Sep 2019 23:48:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Nxj-0004w8-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 23:48:21 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC0DA20842;
 Fri,  6 Sep 2019 23:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567813699;
 bh=NSLywlCOcgcWPM52MbfyuhWTAOW2/4du9FX0KFp7RSI=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=KwtHGJhGEM4BfLeqXjbsZT07sFB7biEeHKuQ9ohRGYNIP+wMSmwfyp48kbdV4SUug
 9M91UWABZNoGL2ftCmjs/VA0iuLyajB//EFiauZlmyBqMSnWqUAU5XYGAqo9yY+2fj
 yelyGsFZ9lWHC9sKK4riqUF9SI/AwZEQtDSQvrHU=
MIME-Version: 1.0
In-Reply-To: <20190830220743.439670-12-lkundrak@v3.sk>
References: <20190830220743.439670-1-lkundrak@v3.sk>
 <20190830220743.439670-12-lkundrak@v3.sk>
To: "To : Olof Johansson" <olof@lixom.net>, Lubomir Rintel <lkundrak@v3.sk>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 11/16] ARM: mmp: add support for MMP3 SoC
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 16:48:18 -0700
Message-Id: <20190906234818.EC0DA20842@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_164819_997357_86E57F01 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-kernel@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 Lubomir Rintel <lkundrak@v3.sk>, "Cc : Rob Herring" <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2019-08-30 15:07:38)
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 801fa1cd03217..8bb2ac83a1fcc 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -301,6 +301,11 @@ config COMMON_CLK_STM32H7
>         ---help---
>           Support for stm32h7 SoC family clocks
>  
> +config COMMON_CLK_MMP2
> +       def_bool COMMON_CLK && (MACH_MMP2_DT || MACH_MMP3_DT)

Does it need to depend on COMMON_CLK? I thought that by being part of
the menuconfig (even if it's a hidden symbol) mean that it wouldn't be
evaulated unless the COMMON_CLK define is =Y.

> +       help
> +         Support for Marvell MMP2 and MMP3 SoC clocks
> +
>  config COMMON_CLK_BD718XX
>         tristate "Clock driver for ROHM BD718x7 PMIC"
>         depends on MFD_ROHM_BD718XX || MFD_ROHM_BD70528

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
