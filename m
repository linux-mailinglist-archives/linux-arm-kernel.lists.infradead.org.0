Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 022E71D034
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 21:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCzOWYKUJfd6Rw+NWfI6h+pLb2aWYhy51Avjo6rxDp8=; b=JMt90BhQ/3BSvy
	q5rhis0sdHKB/L34GeHnZvHxv30Zg+Fg/VeLfYARCbMXcECCjkZ5GQIjTGk47byEK7XCKEZqnaRSP
	X3mFI9ZKgK4tJNM7idukiSdhzEBpg1n57oC+lq0aIo/vbTvJQqWBh1Fugc2wl5/6VJ9nHUdBp/PIP
	p0pngrDjn1oSJrlOR9ZgMU5+jOyKFLsN+4vCQuIZSBRuLYP8R+DLzEIN0z9KDLmjtz06MxY8Rw1mG
	2R4NP/6BKQEookRLiFDtNl8FKHrcil5nglCuWtCtmzM2i8zcggY4ziwk7AghJbtFNWxEvlOkzVnaF
	iyRomwnSjsKYxc3EE+Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQdVN-0002qD-KM; Tue, 14 May 2019 19:54:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQdVE-0002p1-4W; Tue, 14 May 2019 19:54:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id u199so48610oie.5;
 Tue, 14 May 2019 12:54:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C+ZItGciIPASgYj7/Ptn729Sid8a7D/RwR0TY9v5hco=;
 b=PuBaXS4a0XuIZwxUnxpCUkykfkgyt3z7pBlP5qjzH3DCOu2rLTcHNCMeTDQbpXnCET
 xzpz5mz/DgVAJc7GI/tcole90x9mNRmnIf3Q0BOxzCTnz57eDsEOX3cc3eUS2E1J1g3y
 tCSEunsuI4BjDVdHEkHjE81jyJwJs00U8LF8305lzqVlGEWmztrdrJQYczgl9ub4RVSU
 4RbwkCtkzes339XV6jwm2ZuErgojBZ+oa+LBeVuxm41nOjfEW06WuXR8i6OrxM6PyThV
 W/ri45hvr1gG53PS5UeswtoaT424eWPxg7srNyjG5qF85ICPYw/OzhV66TO63PqfviiL
 pYWg==
X-Gm-Message-State: APjAAAVdx2VCowvBYAmus2BDTnjH76SfIQuoP816fWzjRPlUH9UuMTkj
 etfmwdDighXsYx8P6zrNIw==
X-Google-Smtp-Source: APXvYqyHEO0/Oe6vVhAUyb8EIA+L34LbxLJvK3JECL1vuVctEaZdJC1Bl2pW46bJF/lbVCWFOylq2Q==
X-Received: by 2002:aca:ea89:: with SMTP id i131mr3814537oih.22.1557863658982; 
 Tue, 14 May 2019 12:54:18 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p205sm6464011oia.49.2019.05.14.12.54.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 12:54:18 -0700 (PDT)
Date: Tue, 14 May 2019 14:54:17 -0500
From: Rob Herring <robh@kernel.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,V2,03/11] dt-bindings: mt8183: Added camera ISP Pass 1
Message-ID: <20190514195417.GA21726@bogus>
References: <jungo.lin@mediatek.com>
 <20190510015755.51495-4-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510015755.51495-4-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_125420_177700_0CE4064D 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, hans.verkuil@cisco.com,
 frederic.chen@mediatek.com, seraph.huang@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 09:57:52AM +0800, Jungo Lin wrote:
> This patch adds DT binding document for the Pass 1 (P1) unit in
> Mediatek's camera ISP system. The Pass 1 unit grabs the sensor data
> out from the sensor interface, applies ISP image effects from tuning
> data and outputs the image data or statistics data to DRAM.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../bindings/media/mediatek,camisp.txt        | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> new file mode 100644
> index 000000000000..759e55a5dfac
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> @@ -0,0 +1,92 @@
> +* Mediatek Image Signal Processor Pass 1 (ISP P1)
> +
> +The Pass 1 unit of Mediatek's camera ISP system grabs the sensor data out
> +from the sensor interface, applies ISP effects from tuning data and outputs
> +the image data and statistics data to DRAM. Furthermore, Pass 1 unit has
> +the ability to output two different resolutions frames at the same time to
> +increase the performance of the camera application.
> +
> +Required properties:
> +- compatible: Must be "mediatek,mt8183-camisp" for MT8183.
> +- reg: Must contain an entry for each entry in reg-names.

Must list reg-names here and define the values. Though, I don't find 
cam1, cam2, cam3 to be too useful.

> +- interrupts: interrupt number to the cpu.
> +- iommus: shall point to the respective IOMMU block with master port
> +  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.

How many entries?

> +- power-domains : a phandle to the power domain of this local arbiter.
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: must be "CAMSYS_CAM_CGPDN" and "CAMSYS_CAMTG_CGPDN".
> +- mediatek,larb: must contain the local arbiters in the current SOCs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- mediatek,scp : the node of system control processor (SCP), see
> +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> +- memory-region : the reserved shared memory region between Pass 1 unit and
> +  system control processor.
> +
> +Example:
> +SoC specific DT entry:
> +
> +	camisp: camisp@1a000000 {
> +		compatible = "mediatek,mt8183-camisp", "syscon";
> +		reg = <0 0x1a000000 0 0x1000>,
> +		      <0 0x1a003000 0 0x1000>,
> +		      <0 0x1a004000 0 0x2000>,
> +		      <0 0x1a006000 0 0x2000>;
> +		reg-names = "camisp",
> +		            "cam1",
> +		            "cam2",
> +		            "cam3";
> +		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-names = "cam1",
> +				  "cam2",
> +				  "cam3";
> +		iommus = <&iommu M4U_PORT_CAM_LSCI0>,
> +			 <&iommu M4U_PORT_CAM_LSCI1>,
> +			 <&iommu M4U_PORT_CAM_BPCI>;
> +		#clock-cells = <1>;
> +		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> +		/* Camera CCF */
> +		clocks = <&camsys CLK_CAM_CAM>,
> +			 <&camsys CLK_CAM_CAMTG>;
> +		clock-names = "CAMSYS_CAM_CGPDN",
> +			      "CAMSYS_CAMTG_CGPDN";
> +		mediatek,larb = <&larb3>,
> +				<&larb6>;
> +		mediatek,scp = <&scp>;
> +		memory-region = <&cam_mem_reserved>;
> +	};
> +
> +Reserved memory specific DT entry (see reserved memory binding for more
> +information):
> +
> +Example:
> +SoC specific DT entry:
> +
> +	cam_mem_reserved: cam_mem_region {
> +		compatible = "mediatek,reserve-memory-cam-smem";
> +		no-map;
> +		size = <0 0x01400000>; / *20 MB share mem size */
> +		alignment = <0 0x1000>;
> +		alloc-ranges = <0 0x40000000 0 0x10000000>;
> +	};
> +
> +Mediatek ISP P1 supports a single port node with MIPI-CSI2 bus. It should
> +contain one 'port' child node with child 'endpoint' node. Please refer to
> +the bindings defined in Documentation/devicetree/bindings/media/video-interfaces.txt
> +and Documentation/devicetree/bindings/media/mediatek-seninf.txt.
> +
> +Example:
> +Board specific DT entry:

Don't split examples like this.

> +
> +	&camisp {
> +		port@0 {
> +			seninf_0: endpoint {
> +				remote-endpoint = <&seninf_core>;
> +			};
> +		};
> +	};
> +
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
