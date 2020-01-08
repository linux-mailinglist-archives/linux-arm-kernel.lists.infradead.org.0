Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EBD1339D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:56:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ktr8FT562zJnHCK4rT4MDuMJWU/0Se1qN4hHhgjC3iA=; b=hrwnzjzT3vHymL
	p9iCZum7dETIVYrHiwOpHmOgKWp6/RCHF2fOHpWXb2QLd2PJAgtEor3olg58nKWzxcj/JDZhqX6B/
	tlRMArUL7Jggp2HVLS2WuKz6AdkmOj8V8CxS4owxk8G+KAQwOMtZhBXv4p5rR3IQoA9SN4ioRj9uI
	HWsTcYlDaUJHz6GcEqfpAsLbfHFTyIP1VKeEG5/3a8OKWCOQ+yoWCS7q/sYDw/Fbyeea7ZRWqF6kC
	20keyItKQlNsbNpGMSSXkQ5z2G+cIDixH9Mtk66TeqhCFWfTZVOYgX8/cE8HGyBfjwiUQ3r+Sn7SW
	aLwxhxXopK5p6HMkxzmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2Rh-0000Il-RM; Wed, 08 Jan 2020 03:55:49 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2Rd-0000I4-0a
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:55:46 +0000
Received: by mail-oi1-f196.google.com with SMTP id n16so1462031oie.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:55:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KLfZmUczJHxkBJ7qYbPJXerVFSLgsQsJgvS5hmfmovA=;
 b=c3W6T0H4IvRt6+P/d+1biIZRjjXgkv936MBmys6cTh8Nyy7LnvnvtupEampMGvsdEy
 cCG7s/eM+HwKbS8vxaX1VUl+/2tbO6Z78tG2kmuF2WSlz1gAqIZoKBbPqidFAjlZyn59
 ImGnCtTnifCzp/gsSD3yi2GDvFy1pD/rujtEreuOqVEyi2IbAFjoNUEN9MI/aBPYpFpn
 xqSIoDn9/d/LkPr89vI9mAknX2rZ8iGB/qbhys8q6xqUIj2/W2pgm2Q4VNU/+hel7zoh
 p9WDzm5iVUPUChpoCq4c4tIZX/77vmCsN0SQGsld1GTq9no3eXQZBQbcHw7+kEcsc3JJ
 T6Gg==
X-Gm-Message-State: APjAAAVqzWgQd93hCAMLifvFBO4xqiDacf/9tD3owb5BPm2k59qYEFEK
 64D+r/fdMewoqGo/Pah8om0ieEo=
X-Google-Smtp-Source: APXvYqwWwwN/FGjwCx9bA9r1QnEC3bq0BhNMWaPA2I2hlmc9+WFRZmex2thc5dpdpGwBcPOUxMzgig==
X-Received: by 2002:a05:6808:3c2:: with SMTP id
 o2mr1525759oie.45.1578455739208; 
 Tue, 07 Jan 2020 19:55:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i25sm665338otc.67.2020.01.07.19.55.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 19:55:38 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219e3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 07 Jan 2020 21:55:37 -0600
Date: Tue, 7 Jan 2020 21:55:37 -0600
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
Message-ID: <20200108035537.GA7843@bogus>
References: <1576630620-1977-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1576630620-1977-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576630620-1977-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_195545_057002_86311AAA 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 09:56:59AM +0900, Kunihiko Hayashi wrote:
> Add external DMA controller bindings implemented in Socionext UniPhier
> SoCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/dma/uniphier-xdmac.txt     | 86 ++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/uniphier-xdmac.txt

Please make this a DT schema. See 
Documentation/devicetree/writing-schema.rst.

> 
> diff --git a/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt b/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
> new file mode 100644
> index 00000000..4e3927f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/uniphier-xdmac.txt
> @@ -0,0 +1,86 @@
> +Socionext UniPhier external DMA controller bindings
> +
> +This describes the devicetree bindings for an external DMA engine to perform
> +memory-to-memory or peripheral-to-memory data transfer, implemented in
> +Socionext UniPhier SoCs.
> +
> +* DMA controller
> +
> +Required properties:
> +- compatible: Should be "socionext,uniphier-xdmac".
> +- reg: Specifies offset and length of the register set for the device.
> +- interrupts: An interrupt specifier associated with the DMA controller.
> +- #dma-cells: Must be <2>. The first cell represents the channel index.
> +	The second cell represents the factor for transfer request.
> +	This is mentioned in DMA client section.
> +- dma-channels : Number of DMA channels supported. Should be 16.

If always 16, then why do you need this?

> +
> +Example:
> +	xdmac: dma-controller@5fc10000 {
> +		compatible = "socionext,uniphier-xdmac";
> +		reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +		interrupts = <0 188 4>;
> +		#dma-cells = <2>;
> +		dma-channels = <16>;
> +	};
> +
> +* DMA client
> +
> +Required properties:
> +- dmas: A list of DMA channel requests.
> +- dma-names: Names of the requested channels corresponding to dmas.
> +
> +DMA clients must use the format described in the dma.txt file, using a two cell
> +specifier for each channel.

No need to redefine the client binding here. Just need the cell format 
as below.

> +
> +Each DMA request consists of 3 cells:
> + 1. A phandle pointing to the DMA controller
> + 2. Channel index
> + 3. Transfer request factor number, If no transfer factor, use 0.
> +	The number is SoC-specific, and this should be specified with relation
> +	to the device to use the DMA controller. The list of the factor number
> +	can be found below.
> +
> +	0x0	none
> +	0x8	UART ch0 Rx
> +	0x9	UART ch0 Tx
> +	0xa	UART ch1 Rx
> +	0xb	UART ch1 Tx
> +	0xc	UART ch2 Rx
> +	0xd	UART ch2 Tx
> +	0xe	UART ch3 Rx
> +	0xf	UART ch3 Tx
> +	0x14	SCSSI ch1 Rx
> +	0x15	SCSSI ch1 Tx
> +	0x16	SCSSI ch0 Rx
> +	0x17	SCSSI ch0 Tx
> +	0x18	SCSSI ch2 Rx
> +	0x19	SCSSI ch2 Tx
> +	0x1a	SCSSI ch3 Rx
> +	0x1b	SCSSI ch3 Tx
> +	0x21	I2C ch0 Rx
> +	0x22	I2C ch0 Tx
> +	0x23	I2C ch1 Rx
> +	0x24	I2C ch1 Tx
> +	0x25	I2C ch2 Rx
> +	0x26	I2C ch2 Tx
> +	0x27	I2C ch3 Rx
> +	0x28	I2C ch3 Tx
> +	0x29	I2C ch4 Rx
> +	0x2a	I2C ch4 Tx
> +	0x2b	I2C ch5 Rx
> +	0x2c	I2C ch5 Tx
> +	0x2d	I2C ch6 Rx
> +	0x2e	I2C ch6 Tx
> +
> +Example:
> +	spi3: spi@54006300 {
> +		compatible = "socionext,uniphier-scssi";
> +		reg = <0x54006300 0x100>;
> +		interrupts = <0 39 4>;
> +		clocks = <&peri_clk 14>;
> +		resets = <&peri_rst 14>;
> +
> +		dmas = <&xdmac 0 0x1a>, <&xdmac 1 0x1b>;
> +		dma-names = "rx", "tx";
> +	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
