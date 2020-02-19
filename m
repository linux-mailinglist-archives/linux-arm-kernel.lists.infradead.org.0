Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9DC51642CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxPCf97n9G2g6FsIbTr+i1iAvrC5bpBnJaniQAyKpZQ=; b=VSOt3NIXohFWMH
	42x9jD6xGJR5fTnbRT+Wx4crFqx+C0uYnqP2hbxGjrqPaBGcsxkzX+EPhtZBRcC1vYuSwiSIUqzf2
	GroePvFVpOD1ndVAJbk0p0+RAewfYgY6nLUl/FUM8grsh8lE0ARlOOY9HzPBb2/cXWYN+f963Z4fL
	wdrDD/swDH3fsCVa/qLRwQ593KRN6fNcQWJkPvdbkO7pogcrxivqgr30PZr7jqPdvm7sBR1wF5C1l
	0PUlzmXOBRHQBjmsqQUEW3MKyW/fMfPdCjfLT67Yq9m3Ts/1WxRv7P5+XLz52yhvLwKGsW+cltoMV
	Stpf6dlB4z9WNSQ4Cu2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4N5s-0007YU-Sq; Wed, 19 Feb 2020 11:00:40 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4N5P-00064r-Bb
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1582110006;
 s=strato-dkim-0002; d=fpond.eu;
 h=Subject:References:In-Reply-To:Message-ID:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=IWvmnV5BLvLTudQgVxr7AEJRhxyXYx62Xcs/V0mTJVI=;
 b=HFIRlRm9lfh4yDWr2WiWen0aNbV8UpZkSedLVI0I2mUYzuKV8tyaw5jOq99Jl7bJpG
 eoRzdMJ7oYL3l1db27ZmvoqWDmSdwNi7j0Y3P2wmN5jAWZwPYc6ofKhm0W8XtuweLYNI
 X60t1/STRRR4KAl7TeH+hPbB6cQ7o2pZ6macNQ82tMPj70qjaL60X0S/j+W/bQHs+Jvy
 OLCb4E7MtBSVpC+Na0E13xWNa0XVsHOArz9w5/YgsHKZvyBmkzuJeNBvs5/bIABxBKa6
 ubpp0u8tnc8PRT8B5ReqTM8xzvM8LdUocrVswyrAT0Sw9eI16Nay8NCzKWrnduIoDHt8
 KmJQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73amq+g13rqGzvv3qxio1R8fCv/x64iFM="
X-RZG-CLASS-ID: mo00
Received: from oxapp06-03.back.ox.d0m.de by smtp-ox.front (RZmta 46.1.12 AUTH)
 with ESMTPSA id L09b9cw1JB0662z
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve X9_62_prime256v1
 with 256 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 19 Feb 2020 12:00:06 +0100 (CET)
Date: Wed, 19 Feb 2020 12:00:06 +0100 (CET)
From: Ulrich Hecht <uli@fpond.eu>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>
Message-ID: <465772718.273222.1582110006831@webmail.strato.com>
In-Reply-To: <20200218133019.22299-4-geert+renesas@glider.be>
References: <20200218133019.22299-1-geert+renesas@glider.be>
 <20200218133019.22299-4-geert+renesas@glider.be>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: rcar-gen3: Add reset
 control properties for display
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v7.10.1-Rev26
X-Originating-Client: open-xchange-appsuite
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_030011_589075_B37EA5CB 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:4 listed in]
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
> on all supported R-Car Gen3 SoCs.  Note that on these SoCs, there is
> only a single reset for each pair of DU channels.
> 
> The display nodes on R-Car V3M and V3H already had "resets" properties,
> but lacked the corresponding "reset-names" properties.
> 
> Join the clocks lines while at it, to increase uniformity.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> v2:
>   - Use "du.0" resp. "du.2" instead of "du.0-1" resp. "du.2-3",
>   - Drop LVDS reset, as LVDS is now a separate node,
>   - Add other R-Car Gen3 SoCs.
> ---
>  arch/arm64/boot/dts/renesas/r8a77951.dtsi | 8 ++++----
>  arch/arm64/boot/dts/renesas/r8a77960.dtsi | 5 +++--
>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 5 +++--
>  arch/arm64/boot/dts/renesas/r8a77970.dtsi | 1 +
>  arch/arm64/boot/dts/renesas/r8a77980.dtsi | 1 +
>  arch/arm64/boot/dts/renesas/r8a77990.dtsi | 3 +--
>  arch/arm64/boot/dts/renesas/r8a77995.dtsi | 3 +--
>  7 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/renesas/r8a77951.dtsi b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> index 27cbe697490c7c78..52229546454c400a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77951.dtsi
> @@ -3177,11 +3177,11 @@
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> -				 <&cpg CPG_MOD 722>,
> -				 <&cpg CPG_MOD 721>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
> +				 <&cpg CPG_MOD 722>, <&cpg CPG_MOD 721>;
>  			clock-names = "du.0", "du.1", "du.2", "du.3";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.2";
>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm2>, <&cmm3>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd2 0>,
> diff --git a/arch/arm64/boot/dts/renesas/r8a77960.dtsi b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> index ea03b91bdf9d9cbc..31282367d3acd8cf 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> @@ -2827,10 +2827,11 @@
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 269 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 722>;
>  			clock-names = "du.0", "du.1", "du.2";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.2";
>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm2>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd2 0>;
> diff --git a/arch/arm64/boot/dts/renesas/r8a77965.dtsi b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> index 1a20ebe9ea5be5da..f7468822e81e41d6 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77965.dtsi
> @@ -2503,10 +2503,11 @@
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 270 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>,
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>,
>  				 <&cpg CPG_MOD 721>;
>  			clock-names = "du.0", "du.1", "du.3";
> +			resets = <&cpg 724>, <&cpg 722>;
> +			reset-names = "du.0", "du.3";
>  
>  			renesas,cmms = <&cmm0>, <&cmm1>, <&cmm3>;
>  			renesas,vsps = <&vspd0 0>, <&vspd1 0>, <&vspd0 1>;
> diff --git a/arch/arm64/boot/dts/renesas/r8a77970.dtsi b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> index dbf1c677dbc6e51f..a009c0ebc8b4f8d0 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77970.dtsi
> @@ -1121,6 +1121,7 @@
>  			clock-names = "du.0";
>  			power-domains = <&sysc R8A77970_PD_ALWAYS_ON>;
>  			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			renesas,vsps = <&vspd0 0>;
>  
>  			status = "disabled";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77980.dtsi b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> index 9444347e61eb881d..e01b0508a18fa91a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77980.dtsi
> @@ -1491,6 +1491,7 @@
>  			clock-names = "du.0";
>  			power-domains = <&sysc R8A77980_PD_ALWAYS_ON>;
>  			resets = <&cpg 724>;
> +			reset-names = "du.0";
>  			renesas,vsps = <&vspd0 0>;
>  
>  			status = "disabled";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> index c05ee98043b2c7a5..0ad20b78e6eb62fd 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
> @@ -1793,8 +1793,7 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
>  			resets = <&cpg 724>;
>  			reset-names = "du.0";
> diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> index 7d3102dccac96e42..e8d2290fe79d761a 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
> @@ -1026,8 +1026,7 @@
>  			reg = <0 0xfeb00000 0 0x40000>;
>  			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
>  				     <GIC_SPI 268 IRQ_TYPE_LEVEL_HIGH>;
> -			clocks = <&cpg CPG_MOD 724>,
> -				 <&cpg CPG_MOD 723>;
> +			clocks = <&cpg CPG_MOD 724>, <&cpg CPG_MOD 723>;
>  			clock-names = "du.0", "du.1";
>  			resets = <&cpg 724>;
>  			reset-names = "du.0";
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
