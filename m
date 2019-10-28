Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7274E73A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydnC+4+DhoezTEjUK8gQc5eamqqdxOp0oN10so75njo=; b=CsMBWlUmQFNzWn
	L0VruR2IFY26mMU/FKZsPCA7uV/WAW6cpGDvDzzG6fs8uk/bnz39c9vFzNXaqcK1X2Ek8LCT9VVM+
	abHccYgHR8WMNrer6tGRLUjfpoKVnFteA1RbT19XLNmeAXncRJWWMisCJ2vg0wlkomeeH8mX82aFs
	VU/vy3ZZTKQn1UnQd/NtmL4pwzmz3ggOWlabztFV/7vETza87qWf6fVYCbVrrG9V4vJNh3dNuuqcL
	XCmu4Hyn+uoAsC2N+ihsVTCjlD3F7WQkVfGOoKWgl1r0nCf8putsvv5vDEJm8GaoFUKtaSIXC2tp/
	wrsUrIeMk5AMQS3X4lkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP61X-0005vB-KA; Mon, 28 Oct 2019 14:29:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP61N-0005uj-UK
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:29:27 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 787BC21479;
 Mon, 28 Oct 2019 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572272964;
 bh=zjlRNMrOSOTKMsG8g2mtzWNi+L0iW9llh2fkjPe2/ss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zmawNPDBH/C8KPKDuqYuj6gwTQeAVEZswYrQOMYVKIczyenhfdt1DVAp2Cfq0Pyep
 RVSDbf70Enkd8L5K63/tg1BRk0hpxzti0o5Nchz308lMaJVOOcJt86iXDheI/tFZlc
 +16pbQb4ABqc50PEbnqhnUEBSV35SogaviSdBBsU=
Date: Mon, 28 Oct 2019 22:29:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx51: Adjust CPU operating points
Message-ID: <20191028142913.GN16985@dragon>
References: <20191028140545.10218-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028140545.10218-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_072926_001246_A4E7C95A 
X-CRM114-Status: GOOD (  13.62  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, cphealy@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 11:05:44AM -0300, Fabio Estevam wrote:
> Adjust the CPU operating points as per the characterized settings from
> the vendor BSP at:
> 
> https://source.codeaurora.org/external/imx/linux-imx/tree/arch/arm/mach-mx5/mx51_babbage.c?h=imx_2.6.35_caf#n1343

Does it match what datasheet says?

Shawn

> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  arch/arm/boot/dts/imx51.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
> index 0a4b9a5d9a9c..eec423785849 100644
> --- a/arch/arm/boot/dts/imx51.dtsi
> +++ b/arch/arm/boot/dts/imx51.dtsi
> @@ -83,8 +83,8 @@
>  			clocks = <&clks IMX5_CLK_CPU_PODF>;
>  			clock-names = "cpu";
>  			operating-points = <
> -				166000	1000000
> -				600000	1050000
> +				166250	850000
> +				400000	1000000
>  				800000	1100000
>  			>;
>  			voltage-tolerance = <5>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
