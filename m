Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2660A10F55
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 00:48:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NxY6Q2dZq6KSSX6xC62QAeHeDii2Ykho+3cHf1otrgI=; b=CsdyzOZX3VGh39
	bzAdeJTuAaYqHB8TU8jOMS0GuyuIipKVM574E9SiT2e1NuODgekDfq/zml6YTusIag0fPvBycNtaU
	0Nay/guxcBheYLRUlLXnJmWwZBZ6nfBKCckv085L7jPlR9vJe+F1li3pqPxDzroLw/5GY5QknKLAt
	7woIwRPbK/3eCw/qIaMfUTPzC5VGLeRRqAGWObllSygehMPhhyybbHXUioUYdSrdDld+6G5DMUjzr
	BOcBgaemX47vN0izCcGlVXp0/RBx2Zl5TkCbLQkalg6V17cnrOliWELxw8rUDd5/eS4xy/IXlb1LF
	typ9qVrpmog4zustC8jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLy1l-0000o3-Rg; Wed, 01 May 2019 22:48:37 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLy03-00077W-0r; Wed, 01 May 2019 22:47:19 +0000
Received: by mail-ot1-f68.google.com with SMTP id e108so364110ote.10;
 Wed, 01 May 2019 15:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hTyewxaqn7LAiT2SH+DZREdfXU1PNz3ufBiht/yAAn0=;
 b=udJaOUszBN2A6oHd15qhVBheq1ZzQjEdxhLxUjAVtA5t/rgo9lgjtHF/EYvkBmlIYK
 foWEg9OV7QmL7a9d6+9u7Vg9pIvIinWzXMaxlwGwo7kbiZFRzbvB+Q6eHflWO6sKq+TR
 qh4TWNredO8lc5xfvEvatVE8d1amVysfoJLE1hDFKHptlzPVCafMDexY6rjpopelaJfC
 3k4/IDIuQRFl8fH1d1ypzQK0AWH4ZA3UH6wwCo0PZvGXifffg51KJGPnK0vbguSZtfyu
 go40PgIQm966CktbimJxBTac0kara48T/Gnj+qkXZVBUgh4CowKbeREsxKXbH36bbw+z
 jNiA==
X-Gm-Message-State: APjAAAWotmDmG99UzIXEL5xRfkNBin1H9FZhyTlUpAyEMrMmkTPMQWEG
 pPYIfgveBxv6oEDaLJS8Cg==
X-Google-Smtp-Source: APXvYqxx6FkC5f0arUAphcB6iggn1JI8NSGZcl25tCDEnnaao5v/3Yw/L/PJSTrJwGTYqIcAZWMyPg==
X-Received: by 2002:a9d:615a:: with SMTP id c26mr342832otk.76.1556750809579;
 Wed, 01 May 2019 15:46:49 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q124sm17147876oia.13.2019.05.01.15.46.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 15:46:48 -0700 (PDT)
Date: Wed, 1 May 2019 17:46:47 -0500
From: Rob Herring <robh@kernel.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V1 3/6] dt-bindings: mt8183: Added FD dt-bindings
Message-ID: <20190501224647.GA12044@bogus>
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-4-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423104505.38778-4-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_154651_855497_63BDB272 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, shik@chromium.org,
 tfiga@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 06:45:02PM +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds DT binding documentation for the Face Detection (FD)
> unit of the camera system on Mediatek's SoCs.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> new file mode 100644
> index 000000000000..97c12fd93e7e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
> @@ -0,0 +1,34 @@
> +* Mediatek Face Detection Unit (FD)
> +
> +Face Detection (FD) unit is a typical memory-to-memory HW device.
> +It provides hardware accelerated face detection function, and it
> +is able to detect different poses of faces. FD will writre result
> +of detected face into memory as output.
> +
> +Required properties:
> +- compatible: "mediatek,mt8183-fd"
> +- reg: Physical base address and length of the function block register space
> +- interrupts: interrupt number to the cpu.
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.

How many entries? Looks like 3 from the example.

> +- mediatek,larb: must contain the local arbiters in the current Socs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- clocks : must contain the FDVT clock
> +- clock-names: must contain FD_CLK_IMG_FD
> +
> +Example:
> +	fd:fd@1502b000 {
           ^ space needed

> +		compatible = "mediatek,mt8183-fd";
> +		mediatek,larb = <&larb5>;
> +		mediatek,scp = <&scp>;
> +		iommus = <&iommu M4U_PORT_CAM_FDVT_RP>,
> +			 <&iommu M4U_PORT_CAM_FDVT_WR>,
> +			 <&iommu M4U_PORT_CAM_FDVT_RB>;
> +		reg = <0 0x1502b000 0 0x1000>;
> +		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&imgsys CLK_IMG_FDVT>;
> +		clock-names = "FD_CLK_IMG_FD";
> +	};
> +
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
