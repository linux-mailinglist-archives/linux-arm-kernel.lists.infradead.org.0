Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BBC7BB4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbR3CUv5ZZyLKcCuP/6Nvf3UFsMrgdsoJaeWvS7BKBk=; b=cKgPHP123nIL9f
	xKbG7rCfm9EOSZikoOCpc9S4wS1ELIhL8fdAhLshP/I92RQ9m5/vfTXUXKRSEnTSB+5Jgx4EfMzfh
	mwH06JdH8LnovDeQ3DztsbTzsI/SMGtdAsjpE6Wl9l4JBbZ0wTmiEf2yD57ub85Ia8f0hAYflD1I+
	fx+A0bh4IJzkS9Sl304XFMqVZ/UXN+qvkM3O6m99a4HmEDJSjsPk5kcq0pQcK+7b0uXAouuS3i4oI
	IyJeCPx2VTgzCJJFFeNOcreDMH+BDvUaXDhC7Y/TKJhmmjILIT8HO51RnCIEzFBb7ouKv9EnuB5Gd
	ByyFj2ZQNpp72VFgnR+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjk0-0000vF-3D; Wed, 31 Jul 2019 08:13:44 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjj1-0000rZ-6w
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:12:45 +0000
Received: from pendragon.ideasonboard.com (unknown [38.98.37.141])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1C5C6CC;
 Wed, 31 Jul 2019 10:12:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1564560743;
 bh=H/uPA4ZlVMkzj5l4yx9FTdj0RSpGn/s0K3dOVUpsTQw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDiA8FD1lCpQyskVId/r2Pj6m2K5SeSp0X+okXzhcdxBVayhZDrG/layeH0ikHMSu
 cEpceHxnE8Qs2AS8bvG3jVlzE5FvUTO0DY67VnDKee8S38DtSES3RfpZ2tLsZelHxP
 VYuxxtSCtDN3UPLwYdSTURr2gnVkPn1RC4pKx4Pw=
Date: Wed, 31 Jul 2019 11:12:09 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight
 regulator name
Message-ID: <20190731081209.GA5080@pendragon.ideasonboard.com>
References: <20190731073744.13963-1-geert+renesas@glider.be>
 <20190731074801.5706-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731074801.5706-1-geert+renesas@glider.be>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_011243_480403_65BC1CDC 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Simon Horman <horms@verge.net.au>, linux-arm-kernel@lists.infradead.org,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

(CC'ing the device tree mailing list)

Thank you for the patch.

On Wed, Jul 31, 2019 at 09:48:01AM +0200, Geert Uytterhoeven wrote:
> Currently there are two nodes named "regulator1" in the Draak DTS: a
> 3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
> for the backlight.  This causes the former to be overwritten by the
> latter.
> 
> Fix this by renaming all regulators with numerical suffixes to use named
> suffixes, which are less likely to conflict.

Aren't DT node names supposed to describe the device type, not a
particular instance of the device ? This is something that has bothered
me too, but I believe the naming scheme should be decided globally, not
per board. Is there precedent for using this scheme that has been
explicitly approved by the DT maintainers ?

> Fixes: 4fbd4158fe8967e9 ("arm64: dts: renesas: r8a77995: draak: Add backlight")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> I guess this is a fix for v5.3?
> 
> This fix takes a slightly different approach than commit
> 12105cec654cf906 ("arm64: dts: renesas: r8a77990: ebisu: Fix backlight
> regulator numbering"), which just fixed the conflicting numerical
> suffix.
> ---
>  arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> index 0711170b26b1fe1c..3aa2564dfdc25fff 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> +++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
> @@ -97,7 +97,7 @@
>  		reg = <0x0 0x48000000 0x0 0x18000000>;
>  	};
>  
> -	reg_1p8v: regulator0 {
> +	reg_1p8v: regulator-1p8v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "fixed-1.8V";
>  		regulator-min-microvolt = <1800000>;
> @@ -106,7 +106,7 @@
>  		regulator-always-on;
>  	};
>  
> -	reg_3p3v: regulator1 {
> +	reg_3p3v: regulator-3p3v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "fixed-3.3V";
>  		regulator-min-microvolt = <3300000>;
> @@ -115,7 +115,7 @@
>  		regulator-always-on;
>  	};
>  
> -	reg_12p0v: regulator1 {
> +	reg_12p0v: regulator-12p0v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "D12.0V";
>  		regulator-min-microvolt = <12000000>;

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
