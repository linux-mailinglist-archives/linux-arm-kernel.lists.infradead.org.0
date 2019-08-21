Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8BC98567
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 22:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAYAlcI3z5+mHVBSZWFaNQ4zOHCMR6YHW3HO3WfYQj0=; b=CjrogioBZ6CzZv
	Ax/1y5Xwqms8vZk97PRDCNeClsOHwIAhxQlwOq+DkF9sXkenFcUc4pZd2/gkD/rbUS3f2m6SCsaaD
	w4RfduFtAVnKduYfaT+ge0bAuTB04eNmWqC032TgaL4V0f9Oo48ONrSIF822KCn0veU6HOQTJaKY+
	DYD5gTuZUonPriTqXprmYCVbzmPaIq1fG9BNtF77UCiL/WxhvqbzMffHdcvuXNcwrzK6BbBf2LC1G
	fWxa5mOp2LZbJoNd13l/Cfuf9cb66ExM/jm+gxl0NzvHyFjgEsLmmJy0XQ3tzVidkdCaMi+yaXAaC
	xvWtPlTSa5bArjbfPF2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0X3Z-0008Gd-Ue; Wed, 21 Aug 2019 20:18:09 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0X3Q-0008FA-IV; Wed, 21 Aug 2019 20:18:02 +0000
Received: by mail-ot1-f67.google.com with SMTP id c7so3324138otp.1;
 Wed, 21 Aug 2019 13:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kOj/75oPZVAZoa0T6jbFRSVm/CkUv/wNYDVG2AOMBQE=;
 b=sKViMQwRnXH8WLHyiPrCtxSfAu1yz19+uMRubxQowdmqdQR2qmuUDsb9NuEIruMZit
 0Q8R/yFC2igOLKwjhfBzsjgk19CbMDhmj/JVBst/QTE9sP++mGYRGRrvB5lnFndRhXqO
 lRO9p/YP40R4aqWNr90VJJZzvDYVFJJGwZw3j+22zG+bOv2u9v3zJ6oRdHdwasjF8nMT
 IkdGG31m3y1Mi7YNSuBXU9hwbNnNaiyUJtbAfwysS4emjGNbC1a+wo05TJ5lHmDJHpIn
 WOFsP2sa/1xHcq9P6UrqOYus0w/XrzZUuspW/7RJlb/a4ZtTYEtPcYfiwDE3VvT9CUzz
 ZXSg==
X-Gm-Message-State: APjAAAV83bDitjGzfBd1b54GGqCBoOZqFmL6qN1p7zJJFdFiLMPjOPIs
 sAsO/kwHNaNEdO979RKsRQ==
X-Google-Smtp-Source: APXvYqyhT+fZw8+BA2kLFIhmDj2KcF/sfupiFmLzB/S7nIb5Y2pzAjhkdaqKQNKE2PeIRMOJepKYUg==
X-Received: by 2002:a9d:1ca3:: with SMTP id l35mr27086557ota.106.1566418679785; 
 Wed, 21 Aug 2019 13:17:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z16sm3179143oic.10.2019.08.21.13.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 13:17:59 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:17:58 -0500
From: Rob Herring <robh@kernel.org>
To: Jungo Lin <jungo.lin@mediatek.com>
Subject: Re: [RFC,v4,1/4] media: dt-bindings: mt8183: Added camera ISP Pass 1
Message-ID: <20190821201758.GB15270@bogus>
References: <jungo.lin@mediatek.com>
 <20190807124803.29884-1-jungo.lin@mediatek.com>
 <20190807124803.29884-2-jungo.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807124803.29884-2-jungo.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_131800_608723_4CCCB5E5 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, Rynn.Wu@mediatek.com, suleiman@chromium.org,
 Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 hverkuil-cisco@xs4all.nl, shik@chromium.org, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 08:48:00PM +0800, Jungo Lin wrote:
> This patch adds DT binding document for the Pass 1 (P1) unit
> in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
> data out from the sensor interface, applies ISP image effects
> from tuning data and outputs the image data or statistics data to DRAM.
> 
> Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> ---
>  .../bindings/media/mediatek,camisp.txt        | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> new file mode 100644
> index 000000000000..fa2713acceca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
> @@ -0,0 +1,73 @@
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
> +- reg: Physical base address of the camera function block register and
> +  length of memory mapped region. Must contain an entry for each entry
> +  in reg-names.
> +- reg-names: Must include the following entries:
> +  "cam_sys": Camera base function block
> +  "cam_uni": Camera UNI function block
> +  "cam_a": Camera ISP P1 hardware unit A
> +  "cam_b": Camera ISP P1 hardware unit B
> +  "cam_c": Camera ISP P1 hardware unit C
> +- interrupts: Must contain an entry for each entry in interrupt-names.
> +- interrupt-names : Must include the following entries:
> +  "cam_uni": Camera UNI interrupt
> +  "cam_a": Camera unit A interrupt
> +  "cam_b": Camera unit B interrupt
> +  "cam_c": Camera unit C interrupt
> +- iommus: Shall point to the respective IOMMU block with master port
> +  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +- clocks: A list of phandle and clock specifier pairs as listed
> +  in clock-names property, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: Must be "camsys_cam_cgpdn" and "camsys_camtg_cgpdn".
> +- mediatek,larb: Must contain the local arbiters in the current SoCs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,scp : The node of system control processor (SCP), see
> +  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
> +
> +Example:
> +SoC specific DT entry:
> +
> +		camisp: camisp@1a000000 {

Also, you can remove 2 levels of indentation here.

> +			compatible = "mediatek,mt8183-camisp", "syscon";
> +			reg = <0 0x1a000000 0 0x1000>,
> +					<0 0x1a003000 0 0x1000>,
> +					<0 0x1a004000 0 0x2000>,
> +					<0 0x1a006000 0 0x2000>,
> +					<0 0x1a008000 0 0x2000>;
> +			reg-names = "cam_sys",
> +					"cam_uni",
> +					"cam_a",
> +					"cam_b",
> +					"cam_c";
> +			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
> +					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
> +			interrupt-names = "cam_uni",
> +					"cam_a",
> +					"cam_b",
> +					"cam_c";
> +			iommus = <&iommu M4U_PORT_CAM_IMGO>;
> +			clocks = <&camsys CLK_CAM_CAM>,
> +					<&camsys CLK_CAM_CAMTG>;
> +			clock-names = "camsys_cam_cgpdn",
> +					"camsys_camtg_cgpdn";
> +			mediatek,larb = <&larb3>,
> +					<&larb6>;
> +			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
> +			mediatek,scp = <&scp>;
> +		};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
