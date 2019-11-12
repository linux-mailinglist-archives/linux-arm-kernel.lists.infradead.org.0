Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7ABF9460
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:34:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwfDZteVPpThTMVAbwXiZFvEtI+RYDz3OVZ/bThCdiM=; b=K6VoKtepd9Z3Cl
	RDTFNC0RLoGhrdoUeI/F9jrizfc396rIgj0ijKxO76lrW/JjhIHaOeCkfHAEcRRfvRk/R6uhk9/Oq
	N4vGzEVmVohVHoKmHb3/I7srBVkbpbzihLNziJ16S3nJ+HhL3AIwVZmnDoLeLsA7JFFQTdV7hZBfK
	mUpKRKFtF+/gwIgu3RG3sEhap2E57tSJxdl9A+SxErS8FvtYJoF3Q0xiueB1EcvmPxnbxpDWrYIXB
	hTS6IgYuMtMBTl9e1x24Urxgd9dU9rEV36oEznFoiLgj1pjA60gM83W3pT2uDvWbxNt0tXsbtNDp0
	6XVbkeQwQuLZF00lRFbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYBo-0002gK-Gi; Tue, 12 Nov 2019 15:34:44 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYBf-0002ft-6X
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:34:36 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 056FD80F3;
 Tue, 12 Nov 2019 15:35:10 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:34:31 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 05/10] ARM: dts: DRA72: Add CAL dtsi node
Message-ID: <20191112153431.GH5610@atomide.com>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-6-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-6-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073435_280705_BDFCFF5D 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tero Kristo <t-kristo@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191112 14:25]:
> This patch adds the required dtsi node to support the Camera
> Adaptation Layer (CAL) for the DRA72 family of devices.
> 
> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  arch/arm/boot/dts/dra72x.dtsi | 43 +++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/dra72x.dtsi b/arch/arm/boot/dts/dra72x.dtsi
> index f5762709c853..726e46ae887d 100644
> --- a/arch/arm/boot/dts/dra72x.dtsi
> +++ b/arch/arm/boot/dts/dra72x.dtsi
> @@ -17,6 +17,49 @@
>  	};
>  };
>  
> +&l4_per2 {
> +	target-module@5b000 {			/* 0x4845b000, ap 59 46.0 */
> +		compatible = "ti,sysc-omap4", "ti,sysc";
> +		reg = <0x5b000 0x4>,
> +		      <0x5b010 0x4>;
> +		reg-names = "rev", "sysc";
> +		ti,sysc-midle = <SYSC_IDLE_FORCE>,
> +				<SYSC_IDLE_NO>;
> +		ti,sysc-sidle = <SYSC_IDLE_FORCE>,
> +				<SYSC_IDLE_NO>;
> +		clocks = <&cam_clkctrl DRA7_CAM_VIP2_CLKCTRL 0>;
> +		clock-names = "fck";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x5b000 0x1000>;
> +
> +		cal: cal@0 {
> +			compatible = "ti,dra72-cal";
> +			reg = <0x0000 0x400>,
> +			      <0x0800 0x40>,
> +			      <0x0900 0x40>;
> +			reg-names = "cal_top",
> +				    "cal_rx_core0",
> +				    "cal_rx_core1";
> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +			ti,camerrx-control = <&scm_conf 0xE94>;
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				csi2_0: port@0 {
> +					reg = <0>;
> +				};
> +				csi2_1: port@1 {
> +					reg = <1>;
> +				};
> +			};
> +		};
> +	};
> +};

Just leave out the status = "disabled" here for the SoC specific dtsi
files. The SoC internal device is there for sure, even if not pinned
out. And the dts default value is status = "okay".

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
