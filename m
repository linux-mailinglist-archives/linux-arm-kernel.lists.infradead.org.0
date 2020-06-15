Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F1A1F9ED0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 19:49:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QokmP+s3G+1L9Rs8TNaQg3vPBqgqRgafUYdFq5rKg4E=; b=jcR6JIQWpoi9wc
	24iFhpDjzcj7gDZRna3OUowIUAGN/d+h2gvnVJipqRZIyGkrsXm9wqae3FJFWpDSg9hkZ1nd51tIW
	vtixJZXqcQgaThusjsrTSUI9sPLYAkPxx7TrLVcqToa789XlFdRwubedU1fC6TV9KqLF3Uy71x1ps
	vQWBFXuYG4X0HApVFXLoxyBOs8BngNmNQk5TKAASFc1BPBu2cEfOlX18DLWssUcbdTVIE7XP/dNjU
	ElbWxd+14t6DCEq0jg1MxMeLqyjGe+f5sUOzn3s9gkVcdNZojkmu0Voc0mj8LNSJJzf/crsGd2/CL
	CqqRn8ZXwUP7qquvWHow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jktEE-00029c-2r; Mon, 15 Jun 2020 17:49:02 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jktE4-00027o-0p; Mon, 15 Jun 2020 17:48:53 +0000
Received: by mail-il1-f195.google.com with SMTP id t8so198419ilm.7;
 Mon, 15 Jun 2020 10:48:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7kn635n+A3EnYes4BFXu6QF7YNnmuVI9peNToiemopE=;
 b=oWG4my0nxBjXHx0qhCR/9G1gs/o3MjJurPPj95FmONbQzWvuN7C4VNreJBC512+JSo
 h0BhIaHsQ1A1vbhrvPA96ErhMkXzj/+bajrp5jP9Xql9czpNIConvHenDvSSjgMjuoDs
 YPSEFetRWAsFrsT3GNRJXKeefpVkHesiSM0THowAGg5rkQLfMbGQ/bYCS9kCu39yUCCh
 GC7Z9OcThqCcji2rAhQyHE6Jhcb49c9847J1Y2ehhihtiPjWoX2pSIRBfSsvyScIy8tR
 Co2tvK5W56URrPdqrFC2YoCNzZbmA3q9UyejVyww69SYdqKWQC6m6RsORyYJyIJrRLuY
 YZMA==
X-Gm-Message-State: AOAM530RGcN3o6N8Dv+eqkwp00Cu0Xa13P5nG/IYTMG2Bea9mzMWpyeR
 yv5FjLZ6+p+ssAb+ReDCFceiYz8=
X-Google-Smtp-Source: ABdhPJxw8ZUBrSdNoZ0KM84tqgOSaSJTSDg0ljmVjphSbOR1nFj9HkbHbjM55RFjiGVS/wkHkSpA7A==
X-Received: by 2002:a92:c6cd:: with SMTP id v13mr26329867ilm.150.1592243329646; 
 Mon, 15 Jun 2020 10:48:49 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id b13sm8297409ilq.20.2020.06.15.10.48.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 10:48:49 -0700 (PDT)
Received: (nullmailer pid 2028876 invoked by uid 1000);
 Mon, 15 Jun 2020 17:48:48 -0000
Date: Mon, 15 Jun 2020 11:48:48 -0600
From: Rob Herring <robh@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v4 03/12] dt-bindings: PCI: Add bindings for more Brcmstb
 chips
Message-ID: <20200615174848.GA2023599@bogus>
References: <20200605212706.7361-1-james.quinlan@broadcom.com>
 <20200605212706.7361-4-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605212706.7361-4-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_104852_062641_23493B01 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

On Fri, Jun 05, 2020 at 05:26:43PM -0400, Jim Quinlan wrote:
> From: Jim Quinlan <jquinlan@broadcom.com>
> 
> - Add compatible strings for three more Broadcom STB chips: 7278, 7216,
>   7211 (STB version of RPi4).
> - add new property 'brcm,scb-sizes'
> - add new property 'resets'
> - add new property 'reset-names' for 7216 only
> - allow 'ranges' and 'dma-ranges' to have more than one item and update
>   the example to show this.
> 
> Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
> ---
>  .../bindings/pci/brcm,stb-pcie.yaml           | 58 ++++++++++++++++---
>  1 file changed, 51 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> index 8680a0f86c5a..4a012d77513f 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> @@ -9,12 +9,15 @@ title: Brcmstb PCIe Host Controller Device Tree Bindings
>  maintainers:
>    - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>  
> -allOf:
> -  - $ref: /schemas/pci/pci-bus.yaml#
> -
>  properties:
>    compatible:
> -    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> +    items:
> +      - enum:
> +          - brcm,bcm2711-pcie # The Raspberry Pi 4
> +          - brcm,bcm7211-pcie # Broadcom STB version of RPi4
> +          - brcm,bcm7278-pcie # Broadcom 7278 Arm
> +          - brcm,bcm7216-pcie # Broadcom 7216 Arm
> +          - brcm,bcm7445-pcie # Broadcom 7445 Arm
>  
>    reg:
>      maxItems: 1
> @@ -34,10 +37,12 @@ properties:
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
> @@ -58,8 +63,33 @@ properties:
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
> +
> +  brcm,scb-sizes:
> +    description: u64 giving the 64bit PCIe memory
> +      viewport size of a memory controller.  There may be up to
> +      three controllers, and each size must be a power of two
> +      with a size greater or equal to the amount of memory the
> +      controller supports.  Note that each memory controller
> +      may have two component regions -- base and extended -- so
> +      this information cannot be deduced from the dma-ranges.
> +
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint64-array
> +      - items:
> +          minItems: 1
> +          maxItems: 3

This can be (dropping 'allOf'):

$ref: /schemas/types.yaml#/definitions/uint64-array
minItems: 1
maxItems: 3

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
