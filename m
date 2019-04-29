Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1EECFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrM/IPxKjVkUhdwHwmR40jgtBJCMfbVEGPHSJPmODeE=; b=uTapcT5zn7poOS
	B6PGvYKIp7cLQKBykNCc+i39FIdjePI97xmC0wY51fFA8cdNtH/GF61h4pWYGnUrPccmeXTF5s+Z6
	dtjDyw67kYaocFkVSPIM4tFZqKGOWzCaH6NBaacKUQoF4pWDngCZV8h1VIzvY2SQdGVV8w8qInlGS
	OBt2ch/cVqaytHiFZdvCj8bAbWnP1msng/Kl8IwgLTIsE5BoO9c+iqIvVVlCmT4UqWytG6yi2S6Wx
	G10nyv1ubu2lT6xkcnBj8JCfPCpojfQV3Dl0v0CGCKeTa7Bnb1eArf+FHTX9pF5ZzviwBqaxbRmlR
	f4npXdyck2bDOmkVdphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLF9K-0005ll-QR; Mon, 29 Apr 2019 22:53:26 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLF9C-0005lB-Pi; Mon, 29 Apr 2019 22:53:21 +0000
Received: by mail-ot1-f68.google.com with SMTP id s11so5905604otp.0;
 Mon, 29 Apr 2019 15:53:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TJyEVrvktv6Tufpho/NZ7KCvbKlhL+8KY18oT1f7uHk=;
 b=hsSO+xW+GlOkfjbN614Hl4hAmwckMqs5P/pfLSmZAu/zFEtsSQrLKZKEs+s6xPEyOD
 PnRqEQVKc4pcHTzn+KRDcH1hsPnEoA5wdWs35qdL4YQkr8fwiyVQl57TVpEioXA3tgw5
 0mr4ky39xJOSRfE98qhVi53ImMVBno2Hl3+vPdwy5JhZfjU/xxHrcQBEpOECx4a45mSS
 2qjXfXRjNdqXpRjB9XgfICAWs7LOwNqST1z0ZR+gvzV1T8kgmj5Xc+eQaaGc55Jz+eeQ
 jKk0rqNwa2D7/iEXYdZcDtVtZ3T5cU1h8w2i1ByWpLJOUgaIx1++Ixk8C9VIPJcZxwAI
 iiww==
X-Gm-Message-State: APjAAAV1SqRpSJID///UqdJgtvbLL4rtQtsHDfFgVQKdxtgxxfjc4P19
 OZWYL0e0STvR/O0hwvO51g==
X-Google-Smtp-Source: APXvYqxyLs6MFB7n9d1LRFWLjpK15UJ0Vz05okp6i1ecyTDNMHsqOeG5GSjwhhfcQTOtr1suT8/yeg==
X-Received: by 2002:a05:6830:4d:: with SMTP id
 d13mr8171393otp.106.1556578397797; 
 Mon, 29 Apr 2019 15:53:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s202sm2479151oih.42.2019.04.29.15.53.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 15:53:16 -0700 (PDT)
Date: Mon, 29 Apr 2019 17:53:15 -0500
From: Rob Herring <robh@kernel.org>
To: Stu Hsieh <stu.hsieh@mediatek.com>
Subject: Re: [PATCH v2 01/15] dt-bindings: media: Add binding for MT2712
 MIPI-CSI2
Message-ID: <20190429225315.GA23589@bogus>
References: <1555407015-18130-1-git-send-email-stu.hsieh@mediatek.com>
 <1555407015-18130-2-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555407015-18130-2-git-send-email-stu.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_155318_831452_E04961EB 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 CK Hu <ck.hu@mediatek.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 05:30:01PM +0800, Stu Hsieh wrote:
> Add MIPI-CSI2 dt-binding for Mediatek MT2712 SoC
> 
> Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
> ---
>  .../bindings/media/mediatek-mipicsi-camsv.txt | 53 ++++++++++++++++++
>  .../media/mediatek-mipicsi-common.txt         | 19 +++++++
>  .../bindings/media/mediatek-mipicsi.txt       | 54 +++++++++++++++++++
>  3 files changed, 126 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
> new file mode 100644
> index 000000000000..5f34974f12ac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
> @@ -0,0 +1,53 @@
> +* Mediatek MIPI-CSI2 receiver camsv
> +
> +Mediatek MIPI-CSI2 receiver camsv transfer data to DRAM in Mediatek SoCs
> +
> +Required properties:
> +- reg : physical base address of the mipicsi receiver registers and length of
> +  memory mapped region.

Looks like 2 regions in the example. What are they?

> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.

1 clock?

> +- interrupts : interrupt number to the interrupt controller.
> +
> +Example:
> +	seninf1_mux_camsv0: seninf_mux_camsv@15002100 {
> +		reg = <0 0x15002120 0 0x40>,
> +		      <0 0x15004000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
> +		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	seninf2_mux_camsv1: seninf_mux_camsv@15002500 {
> +		reg = <0 0x15002520 0 0x40>,
> +		      <0 0x15005000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
> +		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	seninf3_mux_camsv2: seninf_mux_camsv@15002900 {
> +		reg = <0 0x15002920 0 0x40>,
> +		      <0 0x15006000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
> +		interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	seninf4_mux_camsv3: seninf_mux_camsv@15002D00 {
> +		reg = <0 0x15002D20 0 0x40>,
> +		      <0 0x15007000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
> +		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	seninf5_mux_camsv4: seninf_mux_camsv@15003100 {
> +		reg = <0 0x15003120 0 0x40>,
> +		      <0 0x15008000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
> +		interrupts = <GIC_SPI 270 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +
> +	seninf6_mux_camsv5: seninf_mux_camsv@15003500 {
> +		reg = <0 0x15003520 0 0x40>,
> +		      <0 0x15009000 0 0x1000>;
> +		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
> +		interrupts = <GIC_SPI 271 IRQ_TYPE_LEVEL_LOW>;
> +	
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
> new file mode 100644
> index 000000000000..a67c744b75f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
> @@ -0,0 +1,19 @@
> +* Mediatek MIPI-CSI2 receiver common
> +
> +Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
> +
> +Required properties:
> +- compatible: should be "mediatek,mt2712-mipicsi-common"
> +- reg : physical base address of the mipicsi receiver registers and length of
> +  memory mapped region.
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.

How many clocks and what are they?

> +
> +
> +Example:
> +	mipicsi: mipicsi@15002000 {
> +		compatible = "mediatek,mt2712-mipicsi-common", "syscon";
> +		reg = <0 0x15002000 0 0x10>;
> +		clocks = <&imgsys CLK_IMG_SENINF_CAM_EN>,
> +			 <&imgsys CLK_IMG_SENINF_SCAM_EN>;
> +	};
> diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> new file mode 100644
> index 000000000000..24741ed62b25
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
> @@ -0,0 +1,54 @@
> +* Mediatek MIPI-CSI2 receiver
> +
> +Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
> +
> +Required properties:
> +- compatible: should be "mediatek,mt2712-mipicsi"
> +- reg : physical base address of the mipicsi receiver registers and length of
> +  memory mapped region.

How many regions?

> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,larb: must contain the local arbiters in the current Socs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.

How many?

> +- mediatek,seninf_mux_camsv: seninf_mux_camsv the data go through of the mipicsi port

s/_/-/

How many entries?

> +- mediatek,mipicsiid: the id of the mipicsi port

What is this for? We generally don't do device indexes in DT.

> +- mediatek,mipicsi: the common component of the two mipicsi port
> +
> +Example:
> +	mipicsi0: mipicsi@10217000 {
> +		compatible = "mediatek,mt2712-mipicsi";
> +		mediatek,mipicsi = <&mipicsi>;
> +		iommus = <&iommu0 M4U_PORT_CAM_DMA0>,
> +			 <&iommu0 M4U_PORT_CAM_DMA1>;
> +		mediatek,larb = <&larb2>;
> +		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
> +
> +		mediatek,seninf_mux_camsv = <&seninf1_mux_camsv0
> +					     &seninf2_mux_camsv1
> +					     &seninf3_mux_camsv2
> +					     &seninf4_mux_camsv3>;
> +		reg = <0 0x10217000 0 0x60>,
> +		      <0 0x15002100 0 0x4>,
> +		      <0 0x15002300 0 0x100>;
> +		mediatek,mipicsiid = <0>;
> +		status="disabled";

Don't show status in examples.

> +	};
> +
> +	mipicsi1: mipicsi@10218000 {
> +		compatible = "mediatek,mt2712-mipicsi";
> +		mediatek,mipicsi = <&mipicsi>;
> +		iommus = <&iommu0 M4U_PORT_CAM_DMA2>;
> +		mediatek,larb = <&larb2>;
> +		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
> +		mediatek,seninf_mux_camsv = <&seninf5_mux_camsv4
> +					     &seninf6_mux_camsv5>;
> +		reg = <0 0x10218000 0 0x60>,
> +		      <0 0x15002500 0 0x4>,
> +		      <0 0x15002700 0 0x100>;
> +		mediatek,mipicsiid = <1>;
> +		status="disabled";
> +	};
> \ No newline at end of file

Fix this.

> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
