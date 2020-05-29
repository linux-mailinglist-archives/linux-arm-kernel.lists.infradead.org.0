Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC171E8B39
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 00:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0Mld2pEq/ofAqPJOmmOo3CGwY87n27kwSWKMguH9og=; b=aHex7/T2gLClaH
	RUNzdDIUtlbx20sMFaWRodVY6k9KoGaJ8gFjFtqwKRfsStWeRO38VOikO94WoHJ698pkH3XBvTtJu
	6Hvkj3lUgLgVqfQznLUTiydDso2e72qx9YSfilcRkrbdv9bPsRqQyIQLK6rq7HXJkMS9aStn34vkw
	6IianunwnHJUdsghMA1UWbLlv1zzEAk5ykBKSBbu1RlT/aLh0piTZ3cMiStirpVebJp7n0zqBJRfX
	vDqcO3zcQrEzNIjIngnLZ6EMfJXucyDvXB/H4BflbGZdtRrU2VWovbAFJ9U/tcSGsyiu/I5rJnZYM
	Q5d4OdC1K/vzGHcnxmZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenNc-0005wK-7d; Fri, 29 May 2020 22:21:32 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenNC-0005pj-HD; Fri, 29 May 2020 22:21:07 +0000
Received: by mail-io1-f65.google.com with SMTP id y18so1040519iow.3;
 Fri, 29 May 2020 15:21:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EmDTON6AQ2i8MRYfDTHNbj+AcDtbUpQQQwspW9k3zWI=;
 b=WCIapBiVwaNySTLCh7r7XFcc/6VMQ3rI4626Iud8HGlJme+hcSfmXq66o4asFUo66g
 Jyi4U8XUGpYPkckcWGGpkInaJsQF780vp34sNuNMcQHTwPj55ul8nih74057LBArmfNC
 DceGr3reMEz3Rw+FNdmOXAIaR/GO0qAoB3aRdqpy7IgBDvdUsZcrDsTtTE59DM+/IPZk
 vKHJYiARLO1W5zPxE2riY6I2s2RG7YTQWVt6ezkbFsGi49IIgDniY034hoFEXj/helvj
 RnaIgQlLuQyJYXaLvitzyypAEkw57hqupdrLoYiEZRDbug3Ts1eO4QYgPvGvAE7lKe+A
 KdGA==
X-Gm-Message-State: AOAM5328U9W4bGzWGNRtox2qMyttQWpS/6qdVkWYekk9+yvZ3OIyB3cy
 QKky1S/Y7kzTDECuxj6k1A==
X-Google-Smtp-Source: ABdhPJzbrH0WZ6IiAmNJ+kmxBIzSREc7hfngjeQSiTKhre/7z6U9I4bpx931rvICTL8zJgcvYPD1cQ==
X-Received: by 2002:a02:6543:: with SMTP id u64mr9653378jab.26.1590790864601; 
 Fri, 29 May 2020 15:21:04 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id v13sm5593815ili.15.2020.05.29.15.21.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 15:21:03 -0700 (PDT)
Received: (nullmailer pid 3092973 invoked by uid 1000);
 Fri, 29 May 2020 22:21:02 -0000
Date: Fri, 29 May 2020 16:21:02 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v7 01/20] dt-bindings: mtd: Document nand-ecc-placement
Message-ID: <20200529222102.GA3089633@bogus>
References: <20200529002517.3546-1-miquel.raynal@bootlin.com>
 <20200529002517.3546-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529002517.3546-2-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_152106_569818_36350603 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, Weijie Gao <weijie.gao@mediatek.com>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, Chuanhong Guo <gch981213@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 02:24:58AM +0200, Miquel Raynal wrote:
> This optional property defines where the ECC bytes are expected to be
> stored. No value defaults to an unknown location, while these
> locations can be explicitly set to OOB or interleaved depending if
> the ECC bytes are entirely stored in the OOB area or mixed with
> regular data in the main area (also sometimes referred as
> "syndrome").
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml       | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index d261b7096c69..4a0798247d2d 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -56,6 +56,16 @@ patternProperties:
>            (Linux will handle the calculations). soft_bch is deprecated
>            and should be replaced by soft and nand-ecc-algo.
>  
> +      nand-ecc-placement:
> +        allOf:

You can drop using allOf now, but it still works as is.

Acked-by: Rob Herring <robh@kernel.org>

> +          - $ref: /schemas/types.yaml#/definitions/string
> +          - enum: [ oob, interleaved ]
> +        description:
> +          Location of the ECC bytes. This location is unknown by default
> +          but can be explicitly set to "oob", if all ECC bytes are
> +          known to be stored in the OOB area, or "interleaved" if ECC
> +          bytes will be interleaved with regular data in the main area.
> +
>        nand-ecc-algo:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
