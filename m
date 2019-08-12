Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F818A9AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 23:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXoXt/a5gXxC0JKLWQ+XCbp4ZHInZCwD324SOkeFOFg=; b=IaXMKhaPAvJ0YD
	gLt8E/mqzpfqNu9gFwvoG4us9GKvRbzCFZQbG/PkagtQpSyh8QsgQ8PXmHruDPJ8DL7pTojefLm5W
	os0Taq9vymC2aQ+UIRz8FPrqdNTG75ZyPt9oHLXitL+zsR7SWjv28Lz5ioAtfWu/MPMrUqIf45OI+
	8dzCHDZ3Erbm3isph90PYhSwFRjejPOl/NlhKNqHqg75F/NOZKcjc37WhvPxrFNrE70NqStZkcgtv
	W/kNtILydMeVpMAcPNSWNNyB3UuqD/JJ4GrWJkdlPVJ8lYK2RWaTXBwGGLte3wmSH/SMzM6Ipby2U
	Z244iIGioja8PNLnQamQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxICL-0002E6-Ps; Mon, 12 Aug 2019 21:49:49 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIC8-0002DF-B3; Mon, 12 Aug 2019 21:49:38 +0000
Received: by mail-ot1-f66.google.com with SMTP id k18so32668640otr.3;
 Mon, 12 Aug 2019 14:49:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bId57j+xCMgHmNke4H/rs1zm5GrySxRkVxKOzngNvUM=;
 b=PrQkr6WCEafbVLsbj1z6Cb0ZrlCi8lnmoTvcfOeinCIxXllIbNPIC1FSoSJS+z9Q3V
 IWisykehFhRlN5NJ4a82Gvhc/7ORFpSmfgAOW+MK79XSmQ6bQynDFZwtiHgkT1TS987A
 ehMwHgaJPoLqB/iXzWhguk9rP9y6YZTUWLV3IIWxkNGLH4j8mzXqtkUXJe1iAoe5J6vF
 RU8yjONIB2fh3bYnlBBtPQUIwMlZZUeYXPmQk++i9sy1965bhnLGLv7ofG2ji8QSjTTE
 86wFNVSJKKfUUdvTXQ3hR80euYVbmxQNIgFNu6HVLMv7tc6HlGc4TOQ6/4lkOA0tjQYn
 imxw==
X-Gm-Message-State: APjAAAWd0e1zW/fldBHAo84+ltvMLEmPyidRA05OtZx760Viz4t+Iq+J
 VQabXXhHRh+8v18oX1yaNg==
X-Google-Smtp-Source: APXvYqydXCuTRQqJ+qulK7XUYr9oCHuac1Wfp89EYjWA89p2UUzerGucxvamiLfRUxWnafYzdRe2lA==
X-Received: by 2002:a6b:fd10:: with SMTP id c16mr34339686ioi.217.1565646575229; 
 Mon, 12 Aug 2019 14:49:35 -0700 (PDT)
Received: from localhost ([74.118.88.158])
 by smtp.gmail.com with ESMTPSA id r5sm86648270iom.42.2019.08.12.14.49.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 14:49:34 -0700 (PDT)
Date: Mon, 12 Aug 2019 15:49:33 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: display: mediatek: update dpi
 supported chips
Message-ID: <20190812214933.GA5954@bogus>
References: <20190807060257.57007-1-jitao.shi@mediatek.com>
 <20190807060257.57007-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807060257.57007-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_144936_979893_4E32228F 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 linux-mediatek@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 02:02:54PM +0800, Jitao Shi wrote:
> Add decriptions about supported chips, including MT2701 & MT8173 &
> mt8183
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../bindings/display/mediatek/mediatek,dpi.txt        | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> index b6a7e7397b8b..cd6a1469c8b7 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> @@ -7,6 +7,7 @@ output bus.
>  
>  Required properties:
>  - compatible: "mediatek,<chip>-dpi"
> +  the supported chips are mt2701 , mt8173 and mt8183.
>  - reg: Physical base address and length of the controller's registers
>  - interrupts: The interrupt signal from the function block.
>  - clocks: device clocks
> @@ -16,6 +17,11 @@ Required properties:
>    Documentation/devicetree/bindings/graph.txt. This port should be connected
>    to the input port of an attached HDMI or LVDS encoder chip.
>  
> +Optional properties:
> +- dpi_pin_mode_swap: Swap the pin mode between dpi mode and gpio mode.
> +- pinctrl-names: Contain "gpiomode" and "dpimode".
> +- dpi_dual_edge: Control the RGB 24bit data on 12 pins or 24 pins.

Nothing about this in the commit msg...

The dpi* properties need vendor prefixes and use '-' rather than '_'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
