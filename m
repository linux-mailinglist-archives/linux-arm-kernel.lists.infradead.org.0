Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B57673DED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVRskv+qBA4m7pnYJ6OGTWs3vNAkgiue2C52V2rVSAw=; b=mTER2eI7+Y12qF
	TPqhwq1LG4NRYyGtlbW+88Z/pmWMdrA0KE5JaLe2MS0Rtj0HF4Ehz1dCgf4LHZy/zqAyudGzi/kyc
	ntmBeEmx3+Tm2JRGLoPc9kYVCLeK8h3W83YHzhI9e0D+OwI9bBJZGcc1QjZvKJUEm01z2V8pJhYAw
	6PrXwweULBojRWcbsraV6hTe96VQyNb0Dhl2vLTHZ+bLGFtlXHDWgWuUCHPAbCmzwfr/DsEqGT100
	WX7BgIfHgzIW180PpQNp0R/Zp/GiYUVMCSxqIn4cxeE1b58eyT0JuRtL5d3zRYPVeFfqDDzYOIly7
	ZluSz56VU80kE+HgzpNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNlX-0003m9-C3; Wed, 24 Jul 2019 20:21:35 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNlJ-0003lb-9p; Wed, 24 Jul 2019 20:21:22 +0000
Received: by mail-io1-f66.google.com with SMTP id k20so92320159ios.10;
 Wed, 24 Jul 2019 13:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RJ9nHyNd7LCl6+mSB0G4S2X04kojrU0TsARgzmq3agw=;
 b=T4wyi7c8R/Bzq/TwZu4LQOAObp8rXxpSoHfIqS+kQfjcHQVgE4PpHrwCSOiwD1YoVn
 a8FEju98fGD1rQ5BHbLzeTEuMJ7soHxDEaSx1vFglUwqcksDQDZKJGSkXLfjArMh0Nnt
 6lWPUBcpuD9gccpulJqUAxaHT4nYAK3GVOy7+KapPO2DR41ZvbomznNqdXAbm5JGMoLX
 +EDpt02FySjMUi3PtOFY/+VelLF6YWmIUpKKVAwSf6oBRLAL8EfzTsug2UiUuJ0VUaZf
 nXek6tQ4ch21p9VkBylCtQviMgN32NhrWgtoNZ3R8fcWhKOrmKUstqjY9oFgTBgu+SLT
 ChCQ==
X-Gm-Message-State: APjAAAUqdlb/tWx6JhawJx1qLDyCHq1FMrcj85vYoMun8HAyLBTzB2cS
 /wjiw5b9bIbeh0NewyKwwA==
X-Google-Smtp-Source: APXvYqwprV5ylAQXl6gUtT7NZHmcnqBWl3IgOcCq5QcBmtI4uojyhvDVa9K+DeOobOHPeGdMYTW9+Q==
X-Received: by 2002:a5e:8a46:: with SMTP id o6mr45348991iom.36.1563999680305; 
 Wed, 24 Jul 2019 13:21:20 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id r24sm34281026ioc.76.2019.07.24.13.21.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 13:21:19 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:21:19 -0600
From: Rob Herring <robh@kernel.org>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i3c: Document MediaTek I3C master
 bindings
Message-ID: <20190724202119.GA26566@bogus>
References: <1562677762-24067-1-git-send-email-qii.wang@mediatek.com>
 <1562677762-24067-2-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562677762-24067-2-git-send-email-qii.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_132121_344835_EC3037CB 
X-CRM114-Status: GOOD (  15.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, bbrezillon@kernel.org, leilk.liu@mediatek.com,
 linux-kernel@vger.kernel.org, liguo.zhang@mediatek.com,
 linux-mediatek@lists.infradead.org, xinping.qian@mediatek.com,
 matthias.bgg@gmail.com, linux-i3c@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 09:09:21PM +0800, Qii Wang wrote:
> Document MediaTek I3C master DT bindings.
> 
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>
> ---
>  .../devicetree/bindings/i3c/mtk,i3c-master.txt     |   48 ++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> 
> diff --git a/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> new file mode 100644
> index 0000000..d32eda6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i3c/mtk,i3c-master.txt
> @@ -0,0 +1,48 @@
> +Bindings for MediaTek I3C master block
> +=====================================
> +
> +Required properties:
> +--------------------
> +- compatible: shall be "mediatek,i3c-master"

Needs to be SoC specific.

> +- reg: physical base address of the controller and apdma base, length of
> +  memory mapped region.
> +- reg-names: shall be "main" for master controller and "dma" for apdma.
> +- interrupts: the interrupt line connected to this I3C master.
> +- clocks: shall reference the i3c and apdma clocks.
> +- clock-names: shall include "main" and "dma".
> +
> +Mandatory properties defined by the generic binding (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> +
> +- #address-cells: shall be set to 3
> +- #size-cells: shall be set to 0
> +
> +Optional properties defined by the generic binding (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details):
> +
> +- i2c-scl-hz
> +- i3c-scl-hz
> +
> +I3C device connected on the bus follow the generic description (see
> +Documentation/devicetree/bindings/i3c/i3c.txt for more details).
> +
> +Example:
> +
> +	i3c0: i3c@1100d000 {
> +		compatible = "mediatek,i3c-master";
> +		reg = <0x1100d000 0x1000>,
> +		      <0x11000300 0x80>;
> +		reg-names = "main", "dma";
> +		interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&infracfg CLK_INFRA_I3C0>,
> +			 <&infracfg CLK_INFRA_AP_DMA>;
> +		clock-names = "main", "dma";
> +		#address-cells = <3>;
> +		#size-cells = <0>;
> +		i2c-scl-hz = <100000>;
> +
> +		nunchuk: nunchuk@52 {
> +			compatible = "nintendo,nunchuk";
> +			reg = <0x52 0x0 0x10>;
> +		};
> +	};
> -- 
> 1.7.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
