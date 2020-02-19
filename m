Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AB81642C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:00:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVPVbD7SWQRWuhRFbaSEZn3xrrg8EHhrov4ioQHIYwY=; b=fRS0cxakFQQWsn
	qoLQ3r3pY19w34wbqUzN+oNerSi/xTBi0HRQ5DDs2AWB7ZYVkqhGK27zk37J7nwessan1F7Hjuu10
	CqXPY1CmkcW3IM1ECzBMHpGgytXJ0wkyoT/CJfFTKb1HDyiNZv4wkD/K/R1wPls6K7Swt2s9anXN9
	b5x/H0MCmyFncN5V1bOCLRwgLpj05qa+8O/BoStHLq/DQNx9ZTKzW4DX+vdwFGJPrVKNxlIdy/+L4
	QlMUK+yzqAtfWI3oO5VuwUNZGkeAuVJDwnhLl9qbC5I4ng7etFkjhDiIqHErJH6Ya2xJRmFHk8hXG
	RGST9S4NeO4DA/eOBxfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N5J-0005rE-Vc; Wed, 19 Feb 2020 11:00:05 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N58-0005qe-A2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582109989;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=B88DXd+9oJVeNvSGQP63Mq3oBBVtmlPzdypGUzk65UA=;
 b=Us4wogjatuRnp1JorKyXimrf2TM3GK6E+9RnqdEJj3dNMNbUkcY/XQhEcDjLN6S4d0
 J9/8id7cbsp3qu+hT9lwTsFjehyCZ/d8WVj5ijS9k11zcqQ64V4g3qeM4STj0z4BhL3N
 50Vguf80yY86+ZqUdrTqqVTTyjBWZ+j6iDf043SK7GWUS8dn+XHOTubMoPRLKIwEVL4c
 ie2Zj4naZUvFciv74KY/gA4ZvMLskhtU+529jdQILuK+aa15tD/fHdGCzDpg902mygWY
 D5EuUkP8GeZ+5ZNXiFMJTuoY28pSNBF9fMI3rfxBBpvfORFGmhBep4jT/LQEMPMohRI/
 IdpA==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzvv3qxio1R8fCv/x64iFM="
X-RZG-CLASS-ID: mo00
Received: from oxapp06-03.back.ox.d0m.de by smtp-ox.front (RZmta 46.1.12 AUTH)
 with ESMTPSA id L09b9cw1JAxm62l
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Feb 2020 11:59:48 +0100 (CET)
Date: Wed, 19 Feb 2020 11:59:48 +0100 (CET)
From: Ulrich Hecht <uli@fpond.eu>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Message-ID: <1596455847.273189.1582109988206@webmail.strato.com>
In-Reply-To: <20200218133019.22299-2-geert+renesas@glider.be>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-2-geert+renesas@glider.be>
Subject: Re: [PATCH v2 1/4] ARM: dts: rcar-gen2: Add reset control
 properties for display
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev26
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_025954_946581_56C35EBF 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On February 18, 2020 at 2:30 PM Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> 
> 
> Add reset control properties to the device nodes for the Display Units
> on all supported R-Car Gen2 SoCs.  Note that on these SoCs, there is
> only a single reset for all DU channels.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - New.
> ---
>  arch/arm/boot/dts/r8a7790.dtsi | 2 ++
>  arch/arm/boot/dts/r8a7791.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7792.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7793.dtsi | 5 +++--
>  arch/arm/boot/dts/r8a7794.dtsi | 2 ++
>  5 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/r8a7790.dtsi b/arch/arm/boot/dts/r8a7790.dtsi
> index 334ba19769b998ac..e5ef9fd4284ae436 100644
> --- a/arch/arm/boot/dts/r8a7790.dtsi
> +++ b/arch/arm/boot/dts/r8a7790.dtsi
> @@ -1719,6 +1719,8 @@
>  			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 722>;
>  			clock-names = "du.0", "du.1", "du.2";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7791.dtsi b/arch/arm/boot/dts/r8a7791.dtsi
> index baedfab84cb09134..e38a5f01490d70a1 100644
> --- a/arch/arm/boot/dts/r8a7791.dtsi
> +++ b/arch/arm/boot/dts/r8a7791.dtsi
> @@ -1682,9 +1682,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7792.dtsi b/arch/arm/boot/dts/r8a7792.dtsi
> index 39af16caa2aef501..4627eefa502b7677 100644
> --- a/arch/arm/boot/dts/r8a7792.dtsi
> +++ b/arch/arm/boot/dts/r8a7792.dtsi
> @@ -852,9 +852,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7793.dtsi b/arch/arm/boot/dts/r8a7793.dtsi
> index eef035c4d98341b6..dadbda16161b7457 100644
> --- a/arch/arm/boot/dts/r8a7793.dtsi
> +++ b/arch/arm/boot/dts/r8a7793.dtsi
> @@ -1341,9 +1341,10 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a7794.dtsi b/arch/arm/boot/dts/r8a7794.dtsi
> index 05ef79c6ed7f6b61..2c9e7a1ebfec1863 100644
> --- a/arch/arm/boot/dts/r8a7794.dtsi
> +++ b/arch/arm/boot/dts/r8a7794.dtsi
> @@ -1356,6 +1356,8 @@
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> -- 
> 2.17.1
>

Reviewed-by: Ulrich Hecht <uli+renesas@fpond.eu>

CU
Uli

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
