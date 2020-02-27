Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF22172AC2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 23:05:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G82iLECgVhDlU4zhOZJZ6spsk+gKybbWvUP9kHgmn5E=; b=BR0F6cslOEvnCu
	o6nO+QAj8e7T5tQOR3rcydZs5XoyzNCle1MQzICpyGrRY7kgyyKlWkdsxNnLzQVB0Q6fICFDUF+ha
	RFqvluBp4WzMxc8RJNb9oXU7bm1NwYZSI0TJWnjK7qNQiwDPEVmCJCbUiu/jr7XZ8+DRPRMJPUaA/
	NmlGgxQIOp7H6t5dNjVcqGtD+4MyKdIoMF/vH4W/BNZrXi+Shwh+8tcitNb7rkc+hr1840uLH7sdx
	C9dWM0S/pi1a3U4X1yyxNt/PkW/q/tya8SBHqGy9Ma2pmF95xcxxolL/hj2JxPNNTLXD4CB0ToItM
	fk+PqtElOQPY7eMVKxFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7RHV-00020m-19; Thu, 27 Feb 2020 22:05:21 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7RHL-00020R-0e
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 22:05:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so695475otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 14:05:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5LDNhNs7r6soPU3FC796GU50umB+K7uQ7Dt/MTOuohM=;
 b=I1vX+tKYw85Hi+6bJJujkv7qUG1FnpL/YXytJHqZdnnIE4Emgf7TdPC8wi0e0WjA+D
 mrcKO9oOpjFhLyxco1NegSmxKCsBPBZvc4Q2o/JAefEe5+zpG1JDEavp4qqWw6wj1bSt
 9v2Jhpm2Gj9jkNK7B0OQ4EL2fWMxPsHo16rtdi5LgQsAwKElOXss0kRGHKBFmFRITGwb
 zy7AK71oiRNrBgLgWrR/XaF5stbGYft8VcpMk1bnIHd66XXqTmHI++O6mfpyry6fRdbE
 TN98H20eMRedBXbabaqItKuviDXElxSVhGT3KV5Kd4wk8YB0ksPAuCFnEpLh5l4GdxBm
 yIxA==
X-Gm-Message-State: APjAAAWuNwsna7JJss1JwDq5q9VZh/E1lXdFowL7kbmcuztz2wGAcOyU
 aZXVqtjXnPVrwXsjIrgAaA==
X-Google-Smtp-Source: APXvYqz483UTkmhXETzVPut22diHPjpIUjyvi6kkf0SgJXjG53JFOHWMPBWFSUslFGRMSY5ZATtrVQ==
X-Received: by 2002:a9d:6e02:: with SMTP id e2mr876041otr.194.1582841109953;
 Thu, 27 Feb 2020 14:05:09 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x17sm1291122oia.0.2020.02.27.14.05.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 14:05:09 -0800 (PST)
Received: (nullmailer pid 1161 invoked by uid 1000);
 Thu, 27 Feb 2020 22:05:08 -0000
Date: Thu, 27 Feb 2020 16:05:08 -0600
From: Rob Herring <robh@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 06/13] dt-bindings: sata: Convert Calxeda SATA
 controller to json-schema
Message-ID: <20200227220508.GE26010@bogus>
References: <20200227182210.89512-1-andre.przywara@arm.com>
 <20200227182210.89512-7-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227182210.89512-7-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_140511_064023_1E882EAA 
X-CRM114-Status: GOOD (  21.43  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>, devicetree@vger.kernel.org,
 Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 06:22:03PM +0000, Andre Przywara wrote:
> Convert the Calxeda Highbank SATA controller binding to DT schema format
> using json-schema.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> ---
>  .../devicetree/bindings/ata/sata_highbank.txt | 44 ---------
>  .../bindings/ata/sata_highbank.yaml           | 95 +++++++++++++++++++
>  2 files changed, 95 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.yaml
> 
> diff --git a/Documentation/devicetree/bindings/ata/sata_highbank.txt b/Documentation/devicetree/bindings/ata/sata_highbank.txt
> deleted file mode 100644
> index aa83407cb7a4..000000000000
> --- a/Documentation/devicetree/bindings/ata/sata_highbank.txt
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -* Calxeda AHCI SATA Controller
> -
> -SATA nodes are defined to describe on-chip Serial ATA controllers.
> -The Calxeda SATA controller mostly conforms to the AHCI interface
> -with some special extensions to add functionality.
> -Each SATA controller should have its own node.
> -
> -Required properties:
> -- compatible        : compatible list, contains "calxeda,hb-ahci"
> -- interrupts        : <interrupt mapping for SATA IRQ>
> -- reg               : <registers mapping>
> -
> -Optional properties:
> -- dma-coherent      : Present if dma operations are coherent
> -- calxeda,port-phys : phandle-combophy and lane assignment, which maps each
> -			SATA port to a combophy and a lane within that
> -			combophy
> -- calxeda,sgpio-gpio: phandle-gpio bank, bit offset, and default on or off,
> -			which indicates that the driver supports SGPIO
> -			indicator lights using the indicated GPIOs
> -- calxeda,led-order : a u32 array that map port numbers to offsets within the
> -			SGPIO bitstream.
> -- calxeda,tx-atten  : a u32 array that contains TX attenuation override
> -			codes, one per port. The upper 3 bytes are always
> -			0 and thus ignored.
> -- calxeda,pre-clocks : a u32 that indicates the number of additional clock
> -			cycles to transmit before sending an SGPIO pattern
> -- calxeda,post-clocks: a u32 that indicates the number of additional clock
> -			cycles to transmit after sending an SGPIO pattern
> -
> -Example:
> -        sata@ffe08000 {
> -		compatible = "calxeda,hb-ahci";
> -		reg = <0xffe08000 0x1000>;
> -		interrupts = <115>;
> -		dma-coherent;
> -		calxeda,port-phys = <&combophy5 0 &combophy0 0 &combophy0 1
> -					&combophy0 2 &combophy0 3>;
> -		calxeda,sgpio-gpio =<&gpioh 5 1 &gpioh 6 1 &gpioh 7 1>;
> -		calxeda,led-order = <4 0 1 2 3>;
> -		calxeda,tx-atten = <0xff 22 0xff 0xff 23>;
> -		calxeda,pre-clocks = <10>;
> -		calxeda,post-clocks = <0>;
> -        };
> diff --git a/Documentation/devicetree/bindings/ata/sata_highbank.yaml b/Documentation/devicetree/bindings/ata/sata_highbank.yaml
> new file mode 100644
> index 000000000000..6dcf91e1bac0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ata/sata_highbank.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/ata/sata_highbank.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Calxeda AHCI SATA Controller
> +
> +description: |
> +  The Calxeda SATA controller mostly conforms to the AHCI interface
> +  with some special extensions to add functionality, to map GPIOs for
> +  activity LEDs and for mapping the ComboPHYs.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  compatible:
> +    const: calxeda,hb-ahci
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dma-coherent: true
> +
> +  calxeda,pre-clocks:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Indicates the number of additional clock cycles to transmit before
> +      sending an SGPIO pattern.
> +
> +  calxeda,post-clocks:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Indicates the number of additional clock cycles to transmit after
> +      sending an SGPIO pattern.
> +
> +  calxeda,led-order:
> +    description: Maps port numbers to offsets within the SGPIO bitstream.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - minItems: 1
> +        maxItems: 8
> +
> +  calxeda,port-phys:
> +    description: |
> +      phandle-combophy and lane assignment, which maps each SATA port to a
> +      combophy and a lane within that combophy
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle-array
> +      - minItems: 1
> +        maxItems: 8
> +
> +  calxeda,tx-atten:
> +    description: |
> +      Contains TX attenuation override codes, one per port.
> +      The upper 24 bits of each entry are always 0 and thus ignored.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      - minItems: 1
> +        maxItems: 8
> +
> +  calxeda,sgpio-gpio:
> +    description: |
> +      phandle-gpio bank, bit offset, and default on or off, which indicates
> +      that the driver supports SGPIO indicator lights using the indicated
> +      GPIOs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sata@ffe08000 {
> +        compatible = "calxeda,hb-ahci";
> +        reg = <0xffe08000 0x1000>;
> +        interrupts = <115>;
> +        dma-coherent;
> +        calxeda,port-phys = <&combophy5 0 &combophy0 0 &combophy0 1
> +                             &combophy0 2 &combophy0 3>;
> +        calxeda,sgpio-gpio =<&gpioh 5 1 &gpioh 6 1 &gpioh 7 1>;

Need to fix the bracketing here too.

BTW, no system ever shipped with SGPIO support, so all this could just 
be removed.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
