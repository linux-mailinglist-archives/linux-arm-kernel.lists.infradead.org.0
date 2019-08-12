Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029B98AAE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:00:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/C4dHGtHmo1ppkZEOLtmVWNnO6bnCZP/1cXTWl85TM=; b=j39HXh1paYUGhq
	tJyEVtnez82XrWJADmaQuRCW7vAdxirT7O3ib1SFZw6TWkJ+wxQHZukOzE/dEbsfpliT6I85l4boy
	+RaQp5mMNH2r32dKd0ayMNG6d6yXiHt9sfkbCKafzp96jZqwcy1ii9mjnPiSOExXHGKYmbcpW4v+c
	ZoSJW7gGSmwJ/hjwzeKb6r0egdmC+l89wgvltfU7P3U3RXNUBPwmCYVlsrtosAPIWyBi13J0IUMSQ
	RbbtRGChjQRSQ5VEw2bjBG2JpwBZo7o3/n86CctRnBLPktfBb5F3CWd4vAKnCIv6WMIwzjO8gl+tE
	9gHSLL4z6Zzm7jzeexhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxJIO-0000K1-Q1; Mon, 12 Aug 2019 23:00:08 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxJIC-0000JY-0L; Mon, 12 Aug 2019 22:59:57 +0000
Received: by mail-ot1-f67.google.com with SMTP id z17so46923994otk.13;
 Mon, 12 Aug 2019 15:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wfqkapTLzty9tIGiNjJX/GNLl3mKFpBX5RHcS25GDOc=;
 b=Lir0WGI9Zd0nZexQ1T3EiPMlhckFZPfSakxAvOOwuN/Zw65uigPK+1iHs1pqhbaGI2
 ewDzGKJtbvJhf8nuUXaQceOM6E71u47hieDEhwH6pEK5oDSKP4S7/PxMpSe7UJp9GziS
 Vqtzn61HmOTYTSpasXJDTLN/zdsm5Y64uU/ZbYPXs1eSCsykjFzlIN14IMl21T/D+0O3
 aouUp+SyJ2RuFfuJUDQFzwB/Tl7I5gIPUj30kgKb3a9QAc+lb7okPjC7IOiscPj9wu9o
 IOBPR9kf6oXTuLxiFnJoGh4kzOQ6YwUwDBJtvonm9eg0RANhjkcvB3C5mgrVnQYRadm3
 zg7Q==
X-Gm-Message-State: APjAAAUBla8uhxooewruTmwLcpeCOPFnQBcnh7LUN7I7BSwhONdAoXaW
 YW6SEgAi4jxzOn6V2oizXQ==
X-Google-Smtp-Source: APXvYqwmEe/FyoKdinwwGB2N4dWJ7LVtCusVQVC4ngZudckeh8J0RW2j1KLcpC1O8ucq5RcQHumzMw==
X-Received: by 2002:a02:4881:: with SMTP id p123mr13646129jaa.69.1565650794550; 
 Mon, 12 Aug 2019 15:59:54 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id p13sm19586044ioo.72.2019.08.12.15.59.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 15:59:53 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:59:52 -0600
From: Rob Herring <robh@kernel.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH 1/5] media: dt-bindings: Add JPEG ENC device tree node
 document
Message-ID: <20190812225952.GA31298@bogus>
References: <20190717093034.22826-1-xia.jiang@mediatek.com>
 <20190717093034.22826-2-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717093034.22826-2-xia.jiang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_155956_050120_BBEF7750 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 05:30:30PM +0800, Xia Jiang wrote:
> add JPEG ENC device tree node document
> 
> Change-Id: I9f0a8aec7eced20c88acbc88d6ff179763f91246

Run checkpatch.pl. (Remove this)

> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
>  .../bindings/media/mediatek-jpeg-encoder.txt  | 33 +++++++++++++++++++
>  1 file changed, 33 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> new file mode 100644
> index 000000000000..1231fedb70bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
> @@ -0,0 +1,33 @@
> +* MediaTek JPEG Encoder
> +
> +MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
> +
> +Required properties:
> +- compatible : must be "mediatek,mtk-jpgenc"

Needs an SoC specific compatible.

> +- reg : physical base address of the JPEG encoder registers and length of
> +  memory mapped region.
> +- interrupts : interrupt number to the interrupt controller.
> +- clocks: device clocks, see
> +  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
> +- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.
> +- power-domains: a phandle to the power domain, see
> +  Documentation/devicetree/bindings/power/power_domain.txt for details.
> +- mediatek,larb: must contain the local arbiters in the current SoCs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +
> +Example:
> +	jpegenc: jpegenc@1500a000 {
> +		compatible = "mediatek,mtk-jpgenc";
> +		reg = <0 0x1500a000 0 0x1000>;
> +		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> +		clocks =  <&imgsys CLK_IMG_VENC>;
> +		clock-names = "jpgenc";
> +		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
> +		mediatek,larb = <&larb2>;
> +		iommus = <&iommu MT2701_M4U_PORT_JPGENC_RDMA>,
> +			<&iommu MT2701_M4U_PORT_JPGENC_BSDMA>;
> +	};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
