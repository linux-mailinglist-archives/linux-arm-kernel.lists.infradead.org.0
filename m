Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4BB73393
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ITHJ4btFjgQa3Na+Yrlx8nX+rIwSGVYZ1rRpAvYk/w=; b=S0o9+6MD35DR27
	Nkr9jVGMIBp3UQnkRxHbyaCmSZ/W/yDa3YpEdGLv+T9TYYMhgZ64D8bjH3DKqQEANJhW4TzSrtm67
	sKb4twE5tb4MkT/kGr4rVyv96lNzEgCk4TJCmR6+NX1rzkHvU5UDqGKNVIrJT6vPRD1aQXXF/58ir
	z9z6hnuXJCPTTihD94qYsanUKx+Z8fSDbCU6CMBhrNQJ05CajSwNXE7vdqyUrxgMO25yo9mWVwfi3
	9t2TmG0vSzbc7U0bb2BUAMllVllAK+eJF9znVfPdNRqdB1qlZbEls/VTKk7g3wqemZMahMqIPYXXB
	v2wuQbTi2QBXzt2kV4AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK1O-0006Vk-0J; Wed, 24 Jul 2019 16:21:42 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK1C-0006Ut-Q7
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:21:32 +0000
Received: by mail-io1-f65.google.com with SMTP id z3so90898921iog.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 09:21:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cIOpdLyyO80yQr+H18fi6enmhcJP2WqDZtbyw7dr8es=;
 b=Sz8Ro7640rGkYUCGTXpDlftas+d079Gngt1AVYVEIVOh/stgGtG7Kht86aoneEPGrd
 VsXt4Q3t1JKYW6JLd9G7+jgzkaDbBMDBvxVcWqb6HTeS4dy97CI+zSza48TiM0HpOYy8
 sWpCaVDT0fi9PT7OH+3d6HN1zyPH2EkchGIMyNTsNpa9PEv8H3EUR16UWhSKNx2qfpEB
 +e9NcU+rorXMw7xf+5ZPMC1UwKN/WG1e2LlvMXeQ8Uoxj4zl/HuzHAjheGCs0f9P5/8r
 /ilcL/n8cEM98dfni5UYhtDhl3dOfCYleMnPF+LCkkxLefzJUIsuAqGlTNfQRmma42jc
 b76g==
X-Gm-Message-State: APjAAAU5gPooANxPGqa2oW2OKvLqn6Y2YFPU5FKCdYDHQWXIp3JJrcTh
 v/CbwYs1wDLGh54dkpbqwQ==
X-Google-Smtp-Source: APXvYqxQft6/Gn3J4bej7QhSHCCn4RjwBZq8Yx5ld6DVv2xVNqa1+ZQeC+BDlbugTGZmrR15x++HOA==
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr80316101iod.204.1563985289138; 
 Wed, 24 Jul 2019 09:21:29 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id z17sm65438559iol.73.2019.07.24.09.21.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 09:21:28 -0700 (PDT)
Date: Wed, 24 Jul 2019 10:21:27 -0600
From: Rob Herring <robh@kernel.org>
To: Aleix Roca Nonell <kernelrocks@gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: interrupt-controller: Document RTD129x
Message-ID: <20190724162127.GA32658@bogus>
References: <20190707132246.GB13340@arks.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190707132246.GB13340@arks.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092130_851754_3A6057CD 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 07, 2019 at 03:22:46PM +0200, Aleix Roca Nonell wrote:
> Add binding for Realtek RTD129x interrupt controller.
> 
> Signed-off-by: Aleix Roca Nonell <kernelrocks@gmail.com>
> ---
>  .../realtek,rtd129x-intc.txt                  | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> 
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> new file mode 100644
> index 000000000000..3ebb7c02afe5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/realtek,rtd129x-intc.txt
> @@ -0,0 +1,24 @@
> +Realtek RTD129x IRQ Interrupt Controller
> +=======================================
> +
> +Required properties:
> +
> +- compatible           :  Should be one of the following:
> +                          - "realtek,rtd129x-intc-misc"
> +                          - "realtek,rtd129x-intc-iso"

Don't use wildcards in compatible strings.

> +- reg                  :  Specifies the address of the ISR, IER and Unmask
> +                          register in couples of "address length".
> +- interrupts           :  Specifies the interrupt line which is mux'ed.
> +- interrupt-controller :  Presence indicates the node as interrupt controller.
> +- #interrupt-cells     :  Shall be 1. See common bindings in interrupt.txt.
> +
> +
> +Example:
> +
> +	interrupt-controller@98007000 {
> +		compatible = "realtek,rtd129x-iso-irq-mux";
> +		reg = <0x98007000 0x4 0x98007040 0x4 0x98007004 0x4>;

What's in the holes?

> +		interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-controller;
> +		#interrupt-cells = <1>;
> +	};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
