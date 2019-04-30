Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93883EE35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkPickNSKIW3XVv7I5n8917YZgox0xvSLWMSiMHpQoo=; b=RlNNXDx/cz8qX6
	F07hQTPmX2Qo7TX12XmIjh/6q4v5w9PDE0cBGASkHd4ZLKP1lhHcie9UNeescps8CbTRn3+CIvSi5
	1ao/190hKU2e0Emwi5/SG+CmqU/2PNOO7Fgi2bCziEtElqt/RdGiuHb1fNzXa7a6uoo7SrveGw03L
	FwEvxAs+qHsK6QnmPcS+VQrskxG8yuPAvrSr/8OT1CFgkecT95vi81N6YICJUfzFr4rgk8wPfk4xY
	fUR6OQs8FWrZDwFzIaf0ubq43jOyDJ85xCVoGj6c0b3gtvRq16I/j1D0Q8aVwzCIX5cV1Ukt4Mi5w
	W0+wpzZeZ8BbbBewJS1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHMc-0000SE-3P; Tue, 30 Apr 2019 01:15:18 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHMT-0000Qt-5A; Tue, 30 Apr 2019 01:15:10 +0000
Received: by mail-ot1-f66.google.com with SMTP id r20so9319632otg.4;
 Mon, 29 Apr 2019 18:15:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NeVwMYlomqJ0FeYvQcVMOgeUQOrj8gToq74sIwHDDfs=;
 b=EkHznH3TqHa+32ALWfHHCN4+6Isd7DwVBzizDORMw+3WNL6H5EgLI78VB6ksKPx9EO
 zY0LdbsVy/3pLHiuq+fZWf8gfkkZdz+OpIHvsZpk5HxQ+yjyEeZscUYRzScOfrUVpWMb
 dts+JNhCMKa05GmDetnvDYDYZaRU7Uop1ohU4T0L3Dvbk4bHm0cCPROOO450S1jwsYu5
 x8KZXjuhfQslEIdT2t0yYQ5zOAQvHD9kqmJleizev9l62Egrf7HyZv+B429t086xLU1B
 Jm1bVUZ6Urm6PzLMsNPEvWMrL17B/mTtON1BSv1qbqmAzoBPfxgC0TH4I/lcgJwLq0/t
 u1sA==
X-Gm-Message-State: APjAAAXSCBdQR3TC6z0Fup0DEv6ly3gzypMdhCl4WgKfhg1gEipQ5SMc
 MfWDo+jkir+e1CeQwIk6UA==
X-Google-Smtp-Source: APXvYqze9aYwnpsa/3SpoyY5RkNLINJC4nPMtI/5aHOuoiOQeBQWrG1+vcVxyqtcshxblezJVf+InA==
X-Received: by 2002:a9d:2237:: with SMTP id o52mr1406933ota.272.1556586908019; 
 Mon, 29 Apr 2019 18:15:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z2sm17168652ota.56.2019.04.29.18.15.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 18:15:06 -0700 (PDT)
Date: Mon, 29 Apr 2019 20:15:06 -0500
From: Rob Herring <robh@kernel.org>
To: Frederic Chen <frederic.chen@mediatek.com>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for DIP
 shared memory
Message-ID: <20190430011506.GA8514@bogus>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-2-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417104511.21514-2-frederic.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_181509_213731_2460BE18 
X-CRM114-Status: GOOD (  20.99  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 tfiga@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 06:45:06PM +0800, Frederic Chen wrote:
> This patch adds the binding for describing the shared memory
> used to exchange configuration and tuning data between the
> co-processor and Digital Image Processing (DIP) unit of the
> camera ISP system on Mediatek SoCs.
> 
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> ---
>  .../mediatek,reserve-memory-dip_smem.txt      | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> new file mode 100644
> index 000000000000..64c001b476b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> @@ -0,0 +1,45 @@
> +Mediatek DIP Shared Memory binding
> +
> +This binding describes the shared memory, which serves the purpose of
> +describing the shared memory region used to exchange data between Digital
> +Image Processing (DIP) and co-processor in Mediatek SoCs.
> +
> +The co-processor doesn't have the iommu so we need to use the physical
> +address to access the shared buffer in the firmware.
> +
> +The Digital Image Processing (DIP) can access memory through mt8183 IOMMU so
> +it can use dma address to access the memory region.
> +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> +
> +
> +Required properties:
> +
> +- compatible: must be "mediatek,reserve-memory-dip_smem"

Don't use '_'.

> +
> +- reg: required for static allocation (see reserved-memory.txt for
> +  the detailed usage)
> +
> +- alloc-range: required for dynamic allocation. The range must
> +  between 0x00000400 and 0x100000000 due to the co-processer's
> +  addressing limitation

Generally, you should pick either static or dynamic allocation for a 
given binding. Static if there's some address restriction or sharing, 
dynamic if not.

Sounds like static in this case.

> +
> +- size: required for dynamic allocation. The unit is bytes.
> +  If you want to enable the full feature of Digital Processing Unit,
> +  you need 20 MB at least.
> +
> +
> +Example:
> +
> +The following example shows the DIP shared memory setup for MT8183.
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		reserve-memory-dip_smem {
> +			compatible = "mediatek,reserve-memory-dip_smem";
> +			size = <0 0x1400000>;
> +			alignment = <0 0x1000>;
> +			alloc-ranges = <0 0x40000000 0 0x50000000>;
> +		};
> +	};
> -- 
> 2.18.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
