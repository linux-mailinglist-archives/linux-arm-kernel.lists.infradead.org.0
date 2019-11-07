Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF72F2409
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 02:10:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sJIaipOoHlfX1anfpaVZLV44sA4+Z/Coun7wLvNc1Lk=; b=Rr47HEpkZeukwD
	amrmu2OeqgVSp0NLgJDyqfeZ53EwFlJkVOwHNXXXcP3slVuklAMv2S5qH1FtcbjQMfW8kDKaRTgei
	hgVlA7EY5HUJHLYF/7W+l7mPQnxFp7OgtmLnt/hh9131qvScXlfQDhKnKVG0TUB2v+oFJs3VSFzhB
	5cBZX5Sg6GdpbtK0OJfxbTIE0EXIp3UdMT9GcOLwM6C23AdKgyK24VURAQQ0O6cnqHYl7L2FlCEFT
	fLP3JthbhLBZIJp+HfzKFzsx04qjkflU1CpVjN0YrGfxZXmu0XdAPIHHxA6ifIcsun9Ph07XbDt/R
	7o/94nFludPp+/rk0BkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSWJ8-0008PS-TH; Thu, 07 Nov 2019 01:09:54 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSWIl-0008FA-4L; Thu, 07 Nov 2019 01:09:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id m15so530088otq.7;
 Wed, 06 Nov 2019 17:09:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NYYQ/Md98Kv7GDY9hpFC9qLnAqCXT03X+kalujOMXqA=;
 b=dz1UW3xUHoUS6pFosJD0ArWQcsGrVRdbme44m9aWYMHDAikhssEBo3upKL77XJlWfA
 UAH3VHKGAfOTl4rNdPyQUS/lzyuCeHyQZ7jBxi3jjvShsd03jczKK4JfTeWAn+6zmMNP
 /TXyVoTdSaQr5napEgZD+rPTtlbvELVSt+w279zNTlyuKAwyf2roVPkPoswrFYkVWms8
 Q6gCNK9we/0xbldy8A61h+C9u2VRpcfThtvmDlNzcwxmwUpYqCmDaLDjVKlarna4bRHR
 Bbz5RlNi5yQ18X6uWFLXZ+5IbZ/yKPr8Wx1kskTYGL9fKqk97bojAMwVsDViyrQ0YlVl
 hw4A==
X-Gm-Message-State: APjAAAXXuLJduRaAXVNMIaaG42jbjq57yknBSmw5Sb+RHUNCg+J/N354
 EG9cRMHCuhQu9bvyr+J+UA==
X-Google-Smtp-Source: APXvYqwFinuHimJdUtg64Zs1L4hsqa6lJbK/YjzRj2+ENZc7gQOQnidCjX7AyT/Xd6ftZepv0BMhww==
X-Received: by 2002:a9d:6294:: with SMTP id x20mr540695otk.31.1573088970151;
 Wed, 06 Nov 2019 17:09:30 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 41sm223441otd.67.2019.11.06.17.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Nov 2019 17:09:29 -0800 (PST)
Date: Wed, 6 Nov 2019 19:09:28 -0600
From: Rob Herring <robh@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mtd: mtk-quadspi: update bindings for
 mmap flash read
Message-ID: <20191107010928.GA14186@bogus>
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-3-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106140748.13100-3-gch981213@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_170931_172331_DD40AF2A 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:07:48PM +0800, Chuanhong Guo wrote:
> update register descriptions and add an example binding using it.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  .../devicetree/bindings/mtd/mtk-quadspi.txt   | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> index a12e3b5c495d..4860f6e96f5a 100644
> --- a/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> +++ b/Documentation/devicetree/bindings/mtd/mtk-quadspi.txt
> @@ -12,7 +12,10 @@ Required properties:
>  		  "mediatek,mt7623-nor", "mediatek,mt8173-nor"
>  		  "mediatek,mt7629-nor", "mediatek,mt8173-nor"
>  		  "mediatek,mt8173-nor"
> -- reg: 		  physical base address and length of the controller's register
> +- reg: 		  Contains one or two entries, each of which is a tuple consisting of a
> +		  physical address and length. The first entry is the address and length
> +		  of the controller register set. The optional second entry is the address
> +		  and length of the area where the nor flash is mapped to.

All the compatibles support 2 entries? If not, which ones?

>  - clocks: 	  the phandle of the clocks needed by the nor controller
>  - clock-names: 	  the names of the clocks
>  		  the clocks should be named "spi" and "sf". "spi" is used for spi bus,
> @@ -48,3 +51,19 @@ nor_flash: spi@1100d000 {
>  	};
>  };
>  
> +nor_flash: spi@11014000 {
> +	compatible = "mediatek,mt7629-nor",
> +		     "mediatek,mt8173-nor";
> +	reg = <0x11014000 0xe0>,
> +	      <0x30000000 0x10000000>;
> +	clocks = <&pericfg CLK_PERI_FLASH_PD>,
> +		 <&topckgen CLK_TOP_FLASH_SEL>;
> +	clock-names = "spi", "sf";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +	};
> +};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
