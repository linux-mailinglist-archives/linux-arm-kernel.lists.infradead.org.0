Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921CD1642CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f46IHGrVNyJOsrHQYYRX7eaaPswZbsqvXKXZRcBWOzY=; b=aotxemuGIGVk/0
	9Ty64cq2A1Syfkc+4ltn7bVWvKbPKq/IL60dVzlgaMytZAafI99N0fX28Pr1WgCKF1zyc45gzTC+p
	NpRzTZbE2BQvsiiGZptrMrxzsz4qxNn4ddAmmXgJ08DPKq0/YonX2SHgvyDycyAJ1brO6pBW7I3e2
	ZvyPPeLWYmem7owljwogAJAuDXwUs21TC4+bY/XQhdtIb5W2Rmh9LnC1aGv+b9RgymQw9P9jqMRyb
	9DbR8WVNNSLRvrcc4LbxC4NA3sSE6nVeF7gbcEaNAS9GlaAqTAx/tMy405R2ViFk8dd0fSNKZ/wuF
	V6Goucwf8kOPeGqRL3cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N5g-0006X3-NM; Wed, 19 Feb 2020 11:00:28 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N5E-0005rZ-5b
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:00:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582109998;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=NXQ359r+Zy77IEMtTaq9L6p6gFKyjsfj8+FSgxRJBwY=;
 b=E5ftgN8rp8gYbM9BFWdCvWiZcdf7BQ30GhnU5IRWzPYp9bJPsFYg7/nZZwUzTrwrxH
 qdHibO+L1NijLs85YZnMdYxRAqKKJq404UPdfWQpzaeP2Q7p9CM99UEhBqI5OFlox8jC
 Io8MWX6s6F010b8qDSOzUGnTgw/PeY8l8ZEzNpf0cmTwYx9Pj7gPMPJrfbAbxJxTXs66
 LWFcrsluio0JfGsWTtAzcGxdmAMHndRL4MxUexu45EFqsGNXylYBbknDMLNubeC7nu3/
 Lj0QPo7TcqJffJzEoasKTKCaDp6dZaydowOEANqZW3xSaV0corUlddmOAGkFbDbsM0rH
 IsMA==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzvv3qxio1R8fCv/x64iFM="
X-RZG-CLASS-ID: mo00
Received: from oxapp06-03.back.ox.d0m.de by smtp-ox.front (RZmta 46.1.12 AUTH)
 with ESMTPSA id L09b9cw1JAxw62s
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Feb 2020 11:59:58 +0100 (CET)
Date: Wed, 19 Feb 2020 11:59:57 +0100 (CET)
From: Ulrich Hecht <uli@fpond.eu>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Message-ID: <622077862.273207.1582109998000@webmail.strato.com>
In-Reply-To: <20200218133019.22299-3-geert+renesas@glider.be>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-3-geert+renesas@glider.be>
Subject: Re: [PATCH v2 2/4] ARM: dts: rzg1: Add reset control properties for
 display
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev26
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_030000_393072_C23F7E11 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:9 listed in]
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
> Add reset control properties to the devices node for the Display Units
> on all supported RZ/G1 SoCs.  Note that on these SoCs, there is only a
> single reset for all DU channels.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - New.
> ---
>  arch/arm/boot/dts/r8a7743.dtsi  | 5 +++--
>  arch/arm/boot/dts/r8a7744.dtsi  | 5 +++--
>  arch/arm/boot/dts/r8a7745.dtsi  | 2 ++
>  arch/arm/boot/dts/r8a77470.dtsi | 5 +++--
>  4 files changed, 11 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/r8a7743.dtsi b/arch/arm/boot/dts/r8a7743.dtsi
> index 1cd19a569bd0fb66..e8b340bb99bc3031 100644
> --- a/arch/arm/boot/dts/r8a7743.dtsi
> +++ b/arch/arm/boot/dts/r8a7743.dtsi
> @@ -1669,9 +1669,10 @@
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
> diff --git a/arch/arm/boot/dts/r8a7744.dtsi b/arch/arm/boot/dts/r8a7744.dtsi
> index 1c82dd0abd76c4c9..def840b8b2d3c0c4 100644
> --- a/arch/arm/boot/dts/r8a7744.dtsi
> +++ b/arch/arm/boot/dts/r8a7744.dtsi
> @@ -1655,9 +1655,10 @@
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
> diff --git a/arch/arm/boot/dts/r8a7745.dtsi b/arch/arm/boot/dts/r8a7745.dtsi
> index 3b413658eb8d8fac..7ab58d8bb74010d6 100644
> --- a/arch/arm/boot/dts/r8a7745.dtsi
> +++ b/arch/arm/boot/dts/r8a7745.dtsi
> @@ -1510,6 +1510,8 @@
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
> +			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			status = "disabled";
>  
>  			ports {
> diff --git a/arch/arm/boot/dts/r8a77470.dtsi b/arch/arm/boot/dts/r8a77470.dtsi
> index 6efcef1670e15a95..f5515319227609a4 100644
> --- a/arch/arm/boot/dts/r8a77470.dtsi
> +++ b/arch/arm/boot/dts/r8a77470.dtsi
> @@ -942,9 +942,10 @@
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
