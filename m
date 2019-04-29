Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3772ED32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 01:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Td/v5nFbPDRCgSN/8bELHFo2vstDvKp2aeUo+SAawR4=; b=SEHFN1uEkFaU3w
	H6PP6rhR9a/D7jcyu5mKjQbXZz/i86kWMOqO2B9waDtFyWgZ4tLoJDumFuI9VfoPcFubehSuhLRDN
	k1FB+KF8aXsa/9DecPX4O+gQJBFV2eTQl2If3G1ARf7ZxoIiEx1XcJbcOdRAMB2IhNS6is08Nv3WL
	Mg2i3DbZI+SejCbjrWJKYGQb1skWx50DavHQRAPp/XM2NLREaAGMdpifW5wmZGQzpouDHoaCeLHyd
	0vKMrGaR88OXlc5fZSnlJPdwvK1SgQrzkMRppzYRmqWNakQaMssdAsWlkYnr+L0D9Nr3BJl/1OhCe
	Ak4KbFfDYloJH9RS3AQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFSg-0004Sc-Ds; Mon, 29 Apr 2019 23:13:26 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFSZ-0004Rq-25
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 23:13:20 +0000
Received: by mail-ot1-f66.google.com with SMTP id b18so1258709otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 16:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1O8sBEArMyrhqwTcVLODqVK500uIwj8t/3xZEzr2rlE=;
 b=hGBbWH3pUaiBEk/7bBUhnB21SsuqRQ5nKJTn8NC47rp4ocs/DdlajAWOVBOOz0Td23
 u712YN/qoyJSb7J1Ovcuw64A8iPHckFa4dXcXQUVzjYcMSYA8RRZOlaflqXoz8Fys/Y4
 bc11XPtm8u3KzX0p+MpznC+386B9hz/Ls+8YPNEJdIFl+FlIRwjSotlgvsx5R/YSVcaA
 kRMlseF1ZnEEQgIsb9oEpXxS05nyE0zsa2sFDNVal2YxwXEQdfXgyaMUKLRE0gZM7eq8
 b7h1swcBLNjeBJCN6UPbX66eIQ62m+smSpDhy5SWkLYzNIa5rlbm0y7SR49JzTLlINaE
 QfKA==
X-Gm-Message-State: APjAAAVgMwks/fGUYsbkXxvuchu6x4LbAWBpyXnM/qwrvoLqYwI4T68f
 ubcTDq98huiUwuTmVQJYNw==
X-Google-Smtp-Source: APXvYqxfp5Q4JJdPQJwax02hjhdCKb3p3RdL1zNagDD5a7+FoN+9hkK7/OqHSYTKoeE7c2kOZMmk9A==
X-Received: by 2002:a05:6830:20c4:: with SMTP id
 z4mr1561007otq.27.1556579597678; 
 Mon, 29 Apr 2019 16:13:17 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id f18sm13702399otl.51.2019.04.29.16.13.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 16:13:16 -0700 (PDT)
Date: Mon, 29 Apr 2019 18:13:16 -0500
From: Rob Herring <robh@kernel.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: stm32: add bindings for ML-AHB
 interconnect
Message-ID: <20190429231316.GA13995@bogus>
References: <1555426699-5340-1-git-send-email-fabien.dessenne@st.com>
 <1555426699-5340-2-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555426699-5340-2-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_161319_104553_F14B7A85 
X-CRM114-Status: GOOD (  18.99  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 16, 2019 at 04:58:12PM +0200, Fabien Dessenne wrote:
> Document the ML-AHB interconnect for stm32 SoCs.
> 
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> ---
>  .../devicetree/bindings/arm/stm32/mlahb.txt        | 37 ++++++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> new file mode 100644
> index 0000000..a36458a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
> @@ -0,0 +1,37 @@
> +ML-AHB interconnect bindings
> +
> +These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
> +a Cortex-M subsystem with dedicated memories.
> +The MCU SRAM and RETRAM memory parts can be accessed through different addresses
> +(see "RAM aliases" in [1]) using different buses (see [2]) : balancing the
> +Cortex-M firmware accesses among those ports allows to tune the system
> +performance.
> +
> +[1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
> +[2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
> +
> +Required properties:
> +- compatible: should be "simple-bus"
> +- dma-ranges: describes memory addresses translation between the local CPU and
> +	   the remote Cortex-M processor. Each memory region, is declared with
> +	   3 parameters:
> +		 - param 1: device base address (Cortex-M processor address)
> +		 - param 2: physical base address (local CPU address)
> +		 - param 3: size of the memory region.
> +
> +The Cortex-M remote processor accessed via the mlahb interconnect is described
> +by a child node.
> +
> +Example:
> +mlahb {
> +	compatible = "simple-bus";
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	dma-ranges = <0x00000000 0x38000000 0x10000>,
> +		     <0x10000000 0x10000000 0x60000>,
> +		     <0x30000000 0x30000000 0x60000>;
> +
> +	m4_rproc: m4@0 {

'0' is a cpu address given there's no 'ranges' now for translating cpu 
addresses. I think you want it to be 0x38000000 instead. 

> +		...
> +	};
> +};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
