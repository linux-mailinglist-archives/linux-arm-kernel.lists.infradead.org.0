Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FD31EEE20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 01:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKtBIHJlp4sxTx1B1XooB6efFtj4AGUHn8wK4Wgyy8c=; b=RADlsLNR5JECBk
	hdLlI+pAYbS7Sf3ay7BHZcw82y6XvaSGU5GD/AQagaxeYOENWtj2W/DgRYawGVZoWJfJq2JSYoAyl
	D0oDQSWdMI+N8qeN4w4Qez6mhlwlBLtV244X25A77xAqg9wvfYDreAjADnBpEUz/NQ5O4spSHelmm
	3mEsD5nNn2+JCqddvHt8hFGOGZ5HrjMYpjR/rgZacDXxJJSXb11GNJE0Bgaa5EsHafXrsiKyZfxh0
	mCxPCmHxKoANLp0LqNBRN3IrX9W13SEmY6/C1+bful+7/uyeGpgW+SBv3DOn+JS3mr7K2HDit+UFI
	w+YRhgdKbo0hKDElJsvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgyyK-0007D4-Kp; Thu, 04 Jun 2020 23:08:28 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgyy0-00076t-Ha; Thu, 04 Jun 2020 23:08:09 +0000
Received: by mail-il1-f195.google.com with SMTP id t8so7757211ilm.7;
 Thu, 04 Jun 2020 16:08:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=jRy2xtFWKNlAqAVXEHvJHfSiEZWhYR4CV8B2YeBv94Q=;
 b=hNESlPgEFzJ6RerIGB0UB5R66b2Uzv5h+0jeyFs5bN3Wqqst60YTV4nsxFUGe9qa8k
 eDD8QrvztKPd1sF1xYJCsKBQxZ0T03G1Xh3MHWPghQRI/6KI2cLIAwfd0bGBAXXM3nxx
 L2LvcOR9yXZS0+plfUVXLuNhYVwxZOEQTIm8G59trA2jwGM10TqSa0WxYPEhn4MWRaUO
 PnnBrKn9Svteghq1JzNSmRM/DVENnNVWqJT5iGPum06pkdxsNwvRs7l8W7Ak0rzNlmXS
 jqhB+r+UaONwt8z3OkCWE3Qvum+FHz3U1mLRQtjr/nJtxQnFm7ety24WC0VKvXzoNyBn
 aR8Q==
X-Gm-Message-State: AOAM531xg8a2Hsy6tcDYeNvmghKiZGxeQO0a9L/glJ/rUIBTytteTsl7
 qNJLGQopS/bQw/ir9UkSyg==
X-Google-Smtp-Source: ABdhPJxBwqg2KjhkMQTT+Bjb8yKCzHP3CMKvZqePsJSASFJh55N1HQlDha382TaJKKuPgN6f4WReOQ==
X-Received: by 2002:a92:7901:: with SMTP id u1mr6285248ilc.52.1591312086941;
 Thu, 04 Jun 2020 16:08:06 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id z16sm2022433ilz.64.2020.06.04.16.08.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 16:08:05 -0700 (PDT)
Received: (nullmailer pid 17414 invoked by uid 1000);
 Thu, 04 Jun 2020 23:08:04 -0000
Date: Thu, 4 Jun 2020 17:08:04 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v10 07/20] dt-bindings: mtd: Document boolean NAND ECC
 properties
Message-ID: <20200604230804.GA13821@bogus>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
 <20200603175759.19948-8-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603175759.19948-8-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_160808_580158_D50F537F 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 07:57:46PM +0200, Miquel Raynal wrote:
> Document nand-use-soft-ecc-engine and nand-no-ecc-engine properties.
> The former is here to force software correction, the latter prevents
> any correction to happen.
> 
> These properties (along with nand-ecc-engine) are supposed to be more
> accurate than the current nand-ecc-modes wich is very misleading and
> very often people think it is mandatory while the core should be
> relied upon to decide which correction to handle.
> 
> nand-ecc-mode was already inacurate, but it becomes totally
> problematic with setups where there are several hardware engines.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  Documentation/devicetree/bindings/mtd/nand-controller.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> index 0969d2e6720b..a3750978ebb8 100644
> --- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> +++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
> @@ -68,6 +68,12 @@ patternProperties:
>            3/ The ECC engine is external, in this case the phandle should
>            reference the specific ECC engine node.
>  
> +      nand-use-soft-ecc-engine: true
> +        description: Use a software ECC engine.

Humm, I'm surprised this is valid YAML. nand-use-soft-ecc-engine can't 
be both a boolean and a map (aka schema, aka dict).

nand-use-soft-ecc-engine:
  type: boolean
  description: ...

> +
> +      nand-no-ecc-engine: true
> +        description: Do not use any ECC correction.
> +
>        nand-ecc-placement:
>          allOf:
>            - $ref: /schemas/types.yaml#/definitions/string
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
