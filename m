Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34BBF9489
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 16:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZ7fOaetV21GtLp9/ACXdjEfGIVwrHTxac0CcUkZUKE=; b=EYc1KygwfplAxz
	p2VaPS4s3Cn6nkPLbCuhuabBn/D+GeMzBdYurV3BJHVMVQNdLb0Z/G0RejzSSHEGOys44tqtsayMf
	bSBr5DzrKzwA78hsE8BXdwfgrjdJy5Y7SBfqFCOvYFpoq1LvGE3kPqRlurI9HDJH1rrgPnr4HLLTP
	Aw3aKSRU3W5xNoG65KUFiQrNuOFku7OgMuPX5uX2ruOJahg3pIqoC6TqXhBUlH0OMLoqPVb/v1Zz1
	Ql8P3rQzz+ibOulVx29wr0MRenINacuI803YjpZ6cNn8paR7fUHs6kcxeuafSVYhCwJLYyamAOz+j
	YcyXvPgiJoexHi33s+0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUYFf-0004gx-NS; Tue, 12 Nov 2019 15:38:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUYFW-0004gT-SZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 15:38:36 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8C41A80F3;
 Tue, 12 Nov 2019 15:39:10 +0000 (UTC)
Date: Tue, 12 Nov 2019 07:38:31 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v3 09/10] arm64: dts: k3-am65-main Add CAL node
Message-ID: <20191112153831.GI5610@atomide.com>
References: <20191112142753.22976-1-bparrot@ti.com>
 <20191112142753.22976-10-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112142753.22976-10-bparrot@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_073834_962105_9FDC2012 
X-CRM114-Status: GOOD (  11.31  )
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
> Add CAL dtsi node for AM654 device. Including proper power-domains and
> clock properties.
> 
> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 799c75fa7981..4c65ed445e8b 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -516,4 +516,27 @@
>  		dma-coherent;
>  		interrupts = <GIC_SPI 355 IRQ_TYPE_EDGE_RISING>;
>  	};
> +
> +	cal: cal@6f03000 {
> +		compatible = "ti,am654-cal";
> +		reg = <0x0 0x06f03000 0x0 0x400>,
> +		      <0x0 0x06f03800 0x0 0x40>;
> +		reg-names = "cal_top",
> +			    "cal_rx_core0";
> +		interrupts = <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>;
> +		ti,camerrx-control = <&scm_conf 0x40c0>;
> +		clock-names = "fck";
> +		clocks = <&k3_clks 2 0>;
> +		power-domains = <&k3_pds 2 TI_SCI_PD_EXCLUSIVE>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			csi2_0: port@0 {
> +				reg = <0>;
> +			};
> +		};
> +	};
>  };

Here too just drop the status = "disabled" line. For reference, see commit
12afc0cf8121 ("ARM: dts: Drop pointless status changing for am3 musb")
in Linux next where we remove about 450 lines of pointless back and forth
noise from status = "disabled" to various board specific files setting
musb components back to status = "okay".

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
