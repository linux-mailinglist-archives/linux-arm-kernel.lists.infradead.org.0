Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54B21ED87D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 00:17:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvY9at12dtkufq//EuS7MoOWqPWo6Rrk2n0W/OZ/cMo=; b=FH0BAGV88yE0x6
	qOCBMg+tICbo2Gi7zmUVui4wq4KrP7VGop5KSpNjmntK3/c5B6SYtBSnosCit17YQw1enWfmoftLF
	YO1HGoTmIXyaJVr44xBx6mk63il80A8SibLq6Fm1M5Q+AsWBQXB8Kuqgmwl4j2teKcf8g4IKLhCpx
	FdLuDFRN3vBxUWa2wIqN0NlTe9hjR7hd46T0vp27yFVUJ0EiUq+PzBrA1lZO/5sP83oBhGHCdnYbs
	36RRAGDfwMEYiT9q3qkWt/DtJV8k/bMxzn2qqx8miArlIIt8sNBoC7HQ3yDlF1vaQopfi5O4rmplx
	ymBsQe3iDAIcSbTDDE5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgbgq-0001Um-Qe; Wed, 03 Jun 2020 22:16:52 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgbg9-00013g-1k; Wed, 03 Jun 2020 22:16:11 +0000
Received: by mail-il1-f193.google.com with SMTP id a13so4163233ilh.3;
 Wed, 03 Jun 2020 15:16:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rMYc84n19+OGgtVn9II/5P6MMogBkCCeasm/Kp8sey8=;
 b=NT8JJJyoWAwA83Ddzfl2tWPqonvnHWanho2s2qd7y4dyffqNRpTc9LRTUSujYGo0wJ
 nhyesbLquCgsJmEwNGLkLDcf/Cb05QK/KusJIS0A0cQ8C5wjQTELltAQWmunUHXp/1gs
 Gpf7CZbOxZHIQqpxJecm+tZU4epkdLvka97anpk8uDDI1LF8HmBc+loDmYh7ZCN+QZ/m
 +cQ37Z3d7EePhPVdaFOsPPktp9+2BEfZikx1957Jab9g1D+wiytFNvU2YGu9jZSK/lte
 eh4i7k2uRL1TmkzsksIi/jYAc/S6Ss1Nso7zJSzBvuB/wB6yYJS0UoEo0ulXdJsdnZVW
 JfRA==
X-Gm-Message-State: AOAM530rveoqyfBIPhwX7/D3aPRIeGu06dXX0a5ORJvKan6Im9YybuXh
 8W8DbipqKo9cXSqcLwj6iw==
X-Google-Smtp-Source: ABdhPJwHwIAVtxvUaysPu24YULecyerhtKCC4mVOZp+b8rP7kXwCis13n1FDg9z0ORHJNiIUJxrn7Q==
X-Received: by 2002:a92:9ac7:: with SMTP id c68mr1553583ill.53.1591222567528; 
 Wed, 03 Jun 2020 15:16:07 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id k18sm1406721ioj.54.2020.06.03.15.16.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 15:16:06 -0700 (PDT)
Received: (nullmailer pid 1973472 invoked by uid 1000);
 Wed, 03 Jun 2020 22:16:05 -0000
Date: Wed, 3 Jun 2020 16:16:05 -0600
From: Rob Herring <robh@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v10 06/20] dt-bindings: mtd: Document nand-ecc-engine
Message-ID: <20200603221605.GA1973010@bogus>
References: <20200603175759.19948-1-miquel.raynal@bootlin.com>
 <20200603175759.19948-7-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603175759.19948-7-miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_151609_107291_4C29C52A 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 03 Jun 2020 19:57:45 +0200, Miquel Raynal wrote:
> This property is needed to precisely point to the hardware ECC engine
> to use when there are several of them available. Here, hardware also
> refers to the on-die possibility.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../devicetree/bindings/mtd/nand-controller.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 


My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/mtd/nand-controller.yaml:  while scanning for the next token
found character that cannot start any token
  in "<unicode string>", line 62, column 1
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/mtd/nand-controller.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/mtd/nand-controller.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/mtd/nand-controller.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/nand-controller.yaml: ignoring, error parsing file
warning: no schema found in file: ./Documentation/devicetree/bindings/mtd/nand-controller.yaml
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1303116

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
