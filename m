Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F249210A3FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 19:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FRyOYDF0ovw3zYLuopXHOzSE7YOqtvAKXLaKQerfw3A=; b=MrjNK+hHsOR9mf
	KUT53plyjacLE/oIdd9cav0IsirRossNDpXJagA++q54jtbN/kd16QOS5/mCBTss4+OqjAtEisABA
	5rOTO6r+PO1WsNFJ1eR1p9JkWizpZ2hq3Xwt1fDT5hIjwF0VHDQGRr2H8CMIEaF6jVN46fCJP0DNS
	UA9OuKXzJdmcrbKQpA/mtkTe0JI+slf04f6+AN0znlACGVcycwTq+ZaMjx4jP0vZIwwWr0r3ZQyRu
	Mt9plj4tBsnpSgUQHAE1ovP2fA0q06RAPDXrmaJkA+c/pFCdpLpMO8QeLpHYmA4pjnSMbFnFMk7os
	JA1VAPmJddhd7zGYJlvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZfM9-0004oM-4t; Tue, 26 Nov 2019 18:14:33 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZfLy-0004np-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 18:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574792059;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=OSfcjOWqKjEeZ9MOEvXJt8HpYhwi0+5UGsPsIQXlIeo=;
 b=UwhLE2MYkfk/Oh2ku+kXVMpraGWphs18Hp7M8xax91DTEw49DUj3tc1VJ0MIuDQjiD
 lGbNfWT16XKzLvt8hqZe+jGU1qY2FcI50pTI66LsB3Q0b30xLaM7OeQIlW1BIIA4urTq
 vB+T+lfWTeT7MrRbWQqSW0gjUwCH7Zj1wNbBggn/jiWUyALZJUNvTglZ/xCoWBHdfKYo
 kpX9kmYd43p2925rCXsUe++DY7PGIDR0BVxfEL9yocKb/oWjdahzKV4/lwWySAjDH1sB
 2r82nbs/6MfZxn9PoT9xWoB2aRXYF7Jo1+Tqj1Tx+E7FLVWWodiIR7t7Ba0bCLQXFesi
 +7Fw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJDdfvYtr7wKg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 45.0.2 AUTH)
 with ESMTPSA id 304194vAQIEJAQ2
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 26 Nov 2019 19:14:19 +0100 (CET)
Date: Tue, 26 Nov 2019 19:14:18 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 4/4] ARM: dts: ux500: Fix up DSI controller nodes
Message-ID: <20191126181418.GC12811@gerhold.net>
References: <20191126124738.77690-1-linus.walleij@linaro.org>
 <20191126124738.77690-4-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126124738.77690-4-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_101423_537994_FDE7C96F 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:8 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 01:47:38PM +0100, Linus Walleij wrote:
> These nodes should be named dsi-controller@* so fix it up.

The device tree specification suggests "dsi@*" as far as I can tell:
https://github.com/devicetree-org/devicetree-specification/commit/424946c228baca7b49df2be8fdd8ccda18a8b8f6

> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  arch/arm/boot/dts/ste-dbx5x0.dtsi             | 6 +++---
>  arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi | 2 +-
>  arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi | 2 +-
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
> index 4e02b1b6c0bf..f4fb782d3afc 100644
> --- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
> +++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
> @@ -1092,7 +1092,7 @@
>  			ranges;
>  			status = "disabled";
>  
> -			dsi0: dsi@a0351000 {
> +			dsi0: dsi-controller@a0351000 {
>  				compatible = "ste,mcde-dsi";
>  				reg = <0xa0351000 0x1000>;
>  				clocks = <&prcmu_clk PRCMU_DSI0CLK>, <&prcmu_clk PRCMU_DSI0ESCCLK>;
> @@ -1100,7 +1100,7 @@
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  			};
> -			dsi1: dsi@a0352000 {
> +			dsi1: dsi-controller@a0352000 {
>  				compatible = "ste,mcde-dsi";
>  				reg = <0xa0352000 0x1000>;
>  				clocks = <&prcmu_clk PRCMU_DSI1CLK>, <&prcmu_clk PRCMU_DSI1ESCCLK>;
> @@ -1108,7 +1108,7 @@
>  				#address-cells = <1>;
>  				#size-cells = <0>;
>  			};
> -			dsi2: dsi@a0353000 {
> +			dsi2: dsi-controller@a0353000 {
>  				compatible = "ste,mcde-dsi";
>  				reg = <0xa0353000 0x1000>;
>  				/* This DSI port only has the Low Power / Energy Save clock */
> diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
> index e024520f4d47..de82b9db956f 100644
> --- a/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
> +++ b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
> @@ -66,7 +66,7 @@
>  		mcde@a0350000 {
>  			status = "okay";
>  
> -			dsi@a0351000 {
> +			dsi-controller@a0351000 {
>  				panel {
>  					compatible = "samsung,s6d16d0";
>  					reg = <0>;
> diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
> index cb3677f0a1cb..9f285c7cf914 100644
> --- a/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
> +++ b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
> @@ -45,7 +45,7 @@
>  		mcde@a0350000 {
>  			status = "okay";
>  
> -			dsi@a0351000 {
> +			dsi-controller@a0351000 {
>  				panel {
>  					compatible = "sony,acx424akp";
>  					reg = <0>;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
