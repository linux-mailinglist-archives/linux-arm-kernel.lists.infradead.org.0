Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD561E8597
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:46:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bP5EtAd5PXrDWYmBzjHXhjaDChDkfulG4UoWb32PT7o=; b=Ts+7O0+SEvTNPc
	jOXdBIOAet0pjFyDGZFaVv6prkDa7F8IqeNy1ncB3Ge0j+X5P2FNc43iG7G8bsbSWj8makMLFZtnD
	tCTCaHEe3h8c8VrZiHDYmpBwk+L1Y03o7ZEtOslD/Hx12jl7dyH+Z9z7n+26Yaw7ydhv+dOIltZjM
	Bntpo55eJWsPN7JCFy4kzeAyETP1lu+EN9PfbwPA/6kIl4XoEDRybzlm5/yGhgULUgQBMhnieMLov
	JYq770qzL4I40DxyUmvQ4HhsVA29HXtLrEIc5Z05bzsHwU/L29RbQMUx2vU9kJGpFVBqScWZTsJUK
	ykO9oEC0XyCWvTnPsJpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej5l-0004v3-34; Fri, 29 May 2020 17:46:49 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej5Y-0004uX-RA; Fri, 29 May 2020 17:46:38 +0000
Received: by mail-io1-f66.google.com with SMTP id d7so240209ioq.5;
 Fri, 29 May 2020 10:46:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uFnVyxyYwJVoCZ3HaonYsIsN3iwvAc7JxY9rKZpt/K8=;
 b=lCW7AopaxFw7fwb3l2g58sS8jUwxqjg7dTpDvw2fhdBaPl3o4jIc1cAbQeAUKgGBAn
 Eiau8t+XySc2FoDZeKUsNe6h2Z1D3JKHCv+BJ7LcMDpG+8hC+jaGM36bWUlepecuiwcq
 p7TuVee2w2PIniac9Hgish2XYm4o4GQfnsTw/3FxDtol1NM3ZlmyPcMZpouOA/075K3w
 ZaHTedIhlMZVvL7I+W2EJ55iJtNqntmzI2VEaNanNKuhPIb4t05dwSgoxBxIpI9o6gag
 ZGWyDN03L8sUm44MS4tFiAnBCPhVqKKImkNs34J/Kvh8GTE62KHLo3xIVeKrOmkMOlQU
 XqGQ==
X-Gm-Message-State: AOAM5325pZbbOMblx3/G1BJ8HxnQRwxEYnY08ht1tpLneyBdAP0bY4Td
 sVHBpuGGnbnZJhhpQ3vX8Q==
X-Google-Smtp-Source: ABdhPJwjS3w7ZtKakac5v5DKPoWn+fDmbQuB2ZUlOeCmiF3wBEkiaj9LvMIYSiXwx3MBAzX8lp3xHQ==
X-Received: by 2002:a02:a78e:: with SMTP id e14mr8439243jaj.9.1590774395987;
 Fri, 29 May 2020 10:46:35 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id j2sm4022503ioo.8.2020.05.29.10.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 10:46:35 -0700 (PDT)
Received: (nullmailer pid 2640143 invoked by uid 1000);
 Fri, 29 May 2020 17:46:34 -0000
Date: Fri, 29 May 2020 11:46:34 -0600
From: Rob Herring <robh@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v2 03/14] dt-bindings: PCI: Add bindings for more Brcmstb
 chips
Message-ID: <20200529174634.GA2630216@bogus>
References: <20200526191303.1492-1-james.quinlan@broadcom.com>
 <20200526191303.1492-4-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526191303.1492-4-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104636_875576_79CCDCA0 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-pci@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 03:12:42PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> - Add compatible strings for three more Broadcom STB chips: 7278, 7216,
>   7211 (STB version of RPi4).
> - add new property 'brcm,scb-sizes'
> - add new property 'resets'
> - add new property 'reset-names'
> - allow 'ranges' and 'dma-ranges' to have more than one item and update
>   the example to show this.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  .../bindings/pci/brcm,stb-pcie.yaml           | 40 +++++++++++++++++--
>  1 file changed, 36 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> index 8680a0f86c5a..66a7df45983d 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> @@ -14,7 +14,13 @@ allOf:
>  
>  properties:
>    compatible:
> -    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> +    items:
> +      - enum:

Don't need items here. Just change the const to enum.

> +          - brcm,bcm2711-pcie # The Raspberry Pi 4
> +          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> +          - brcm,bcm7216-pcie # Broadcom 7216 Arm
> +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
>  
>    reg:
>      maxItems: 1
> @@ -34,10 +40,12 @@ properties:
>        - const: msi
>  
>    ranges:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 4
>  
>    dma-ranges:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 6
>  
>    clocks:
>      maxItems: 1
> @@ -58,8 +66,30 @@ properties:
>  
>    aspm-no-l0s: true
>  
> +  resets:
> +    description: for "brcm,bcm7216-pcie", must be a valid reset
> +      phandle pointing to the RESCAL reset controller provider node.
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +
> +  reset-names:
> +    items:
> +      - const: rescal

These are going to need to be an if/then schema if they only apply to 
certain compatible(s).

> +
> +  brcm,scb-sizes:
> +    description: (u32, u32) tuple giving the 64bit PCIe memory
> +      viewport size of a memory controller.  There may be up to
> +      three controllers, and each size must be a power of two
> +      with a size greater or equal to the amount of memory the
> +      controller supports.

This sounds like what dma-ranges should express?

If not, we do have 64-bit size if that what you need.

> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - items:
> +          minItems: 2
> +          maxItems: 6
> +
>  required:
>    - reg
> +  - ranges
>    - dma-ranges
>    - "#interrupt-cells"
>    - interrupts
> @@ -93,7 +123,9 @@ examples:
>                      msi-parent = <&pcie0>;
>                      msi-controller;
>                      ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000 0x0 0x04000000>;
> -                    dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
> +                    dma-ranges = <0x42000000 0x1 0x00000000 0x0 0x40000000 0x0 0x80000000>,
> +                                 <0x42000000 0x1 0x80000000 0x3 0x00000000 0x0 0x80000000>;
>                      brcm,enable-ssc;
> +                    brcm,scb-sizes = <0x0 0x80000000 0x0 0x80000000>;
>              };
>      };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
