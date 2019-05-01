Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D010F18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 00:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kA6Ygrda2u0S//5b/xiefmEkw+oSLNu8Nctrxi6ULAA=; b=rBNTeTV1UhBWQ3
	upbPi9gIoF4cEEW0Wer+kgsyWu74/mPv6jgSW5bNtrfoJNkhBSaIDu5Sz7C/8LRAewMLuPgtfLWUe
	V3zQeex/svWkRkfFONE5FKK/b5FH0hvI/W/43Zqw5okPGaiUfgdlwnqZS0MnPxe821L0hr5mC2+l1
	T6ds/MC1O/ceLD/vE6PuOKJzoOSx5EsIbLX4EjGqC/TqEqw+LqebCKJGZe9GHFyes+JHBJ0IQ1iV9
	93l6GjtCy14pVCzB6nnsZZSI+rv20dS1eRVR//8nwX37VjJe3Wyb89GoLl3I2nI5XMyAiLzK2LBCt
	UedvGbMAGdLa8TGwg0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLxye-0005pC-78; Wed, 01 May 2019 22:45:24 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLxyV-0005o5-OE; Wed, 01 May 2019 22:45:17 +0000
Received: by mail-ot1-f67.google.com with SMTP id a10so350904otl.12;
 Wed, 01 May 2019 15:45:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b4eTdXWrNh3DXxF20Y/xFu+EwX4anaVGTC9t/+J/+Ag=;
 b=YrQBRrKsWW/vcISiMBmaESE00nWZ6qx3+ADXUKRxTfu21CYczLDyJRfe1OA+bg3L+6
 r1Y+qflFK2l2lqsEtALGWGqYsl261ulmu094OS9oi4E6TVJFNCvwa84KP/M0+DigNtOP
 d/wmBnxzrfkYjkyXr36oEfB4g9c+3Vp+ndtDVaYUwiBArwNMpnXqdnMkW7Iezibg0THz
 DL7VnqdEFLJsFxtHBRztCDlAuPaL5OVVi9QI8aAzIIjF4IDe1kwEUrk9noYCqjJjuIAC
 jLSPD6DQuDxczpRbXav511LEvgpNXJ/YCFYKHvYzkuop9UeLGIcrtDOl6M16JkyJTrsz
 N2PA==
X-Gm-Message-State: APjAAAUyHnIrsuIVplvvxMl7kdYd7CtLK+h0UXWN21/GRG35e0sgkBuS
 P+3SyC9c3Ou0WJo+gAgifg==
X-Google-Smtp-Source: APXvYqx5w+AQiMs8ivRbF7xmZwHoV0ksJWr+KP9nlrArRn0R40gUkAg8crBaRaZ0pNk6tcRrvUCV1A==
X-Received: by 2002:a9d:7401:: with SMTP id n1mr329353otk.226.1556750714180;
 Wed, 01 May 2019 15:45:14 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w5sm10599530oib.6.2019.05.01.15.45.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 15:45:13 -0700 (PDT)
Date: Wed, 1 May 2019 17:45:12 -0500
From: Rob Herring <robh@kernel.org>
To: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for FD
 shared memory
Message-ID: <20190501224512.GA4287@bogus>
References: <20190423104505.38778-1-Jerry-Ch.chen@mediatek.com>
 <20190423104505.38778-2-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423104505.38778-2-Jerry-Ch.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_154515_818239_E4CA7B36 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, Apr 23, 2019 at 06:45:00PM +0800, Jerry-ch Chen wrote:
> From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> 
> This patch adds the binding for describing the shared memory
> used to exchange meta data between the co-processor and Face
> Detection (FD) unit of the camera system on Mediatek SoCs.
> 
> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> ---
>  .../mediatek,reserve-memory-fd_smem.txt       | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> 
> diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> new file mode 100644
> index 000000000000..52ae5071e238
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-fd_smem.txt
> @@ -0,0 +1,44 @@
> +Mediatek FD Shared Memory binding
> +
> +This binding describes the shared memory, which serves the purpose of
> +describing the shared memory region used to exchange data between Face
> +Detection hardware (FD) and co-processor in Mediatek SoCs.
> +
> +The co-processor doesn't have the iommu so we need to use the physical
> +address to access the shared buffer in the firmware.
> +
> +The Face Detection hardware (FD) can access memory through mt8183 IOMMU so
> +it can use dma address to access the memory region.
> +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> +
> +
> +Required properties:
> +
> +- compatible: must be "mediatek,reserve-memory-fd_smem"
> +
> +- reg: required for static allocation (see reserved-memory.txt for
> +  the detailed usage)
> +
> +- alloc-range: required for dynamic allocation. The range must
> +  between 0x00000400 and 0x100000000 due to the co-processer's
> +  addressing limitation
> +
> +- size: required for dynamic allocation. The unit is bytes.
> +  for Face Detection Unit, you need 1 MB at least.

What's the most?

I don't think you really need reserved memory here if you don't need a 
fixed address. The size is not that big that a contiguous allocation 
shouldn't be a problem (though with IOMMU you don't even need that). 
'dma-ranges' can be used to set the kernel's dma mask and ensure a 
range below 0x10000000.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
