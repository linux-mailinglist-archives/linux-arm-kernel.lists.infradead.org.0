Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C151724D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:18:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPiq3MCjjzjVgw9usnwWesyJjDzUxkV3FwGp4DEuGus=; b=ZNFQuSu5Ve+XBq
	G7uw6r/h7VnZC0REAOXvlMol2YJ9JSIKTusCYt8LqztpZ+qJfIaE/Az6kIfjXmjS949Md3Lt1Eu4H
	4xAblpVGUmZgxuzT6/UHGoBPhAzlclF8xMi/irFx38j+uOrvIN3qDaL6Nyu7YwSPu3FBptT9A8vKH
	N/PeG23pCwILqCOGTasD5JbBWcQuZBfqFEr23mDyXzZMkgbdtilfSfhoV7fSjTIwvFGG/HyrhG2YO
	d9l0Dk7QP3qL3gXR6zFeHmv64tIgmh1GR8jN0A3/HH3okd+bx2kYA4gIeGjzV4V3IbxNRWYqyTFLF
	ffGBd8212kCJNJZR2ItA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mnj-00062k-Qu; Thu, 27 Feb 2020 17:18:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Mnb-00061L-Ac; Thu, 27 Feb 2020 17:18:12 +0000
Received: by mail-ot1-f68.google.com with SMTP id 66so3630701otd.9;
 Thu, 27 Feb 2020 09:18:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XZeF351ndR744jQMDSplVe35nCjD4JTzL+l4xDtw+Bw=;
 b=E6W9h+YhPti4ohcO1m2dfavNv0Oufk1L9NVOjdCD1v9tTX9GwYCjLBQYjGSwDLV6t2
 tHTdUFdJOcQryhQT34Xr5VjqJoWe/xNzsRrt+arNIOaAfkjnJnGmt6OYAKDtxhxXFFnc
 XGedobE+5AhNdestsFpskrtgxgbcZY8zabr1YsGwuFZRby14Zz5N0juyGWRxpywJlCeS
 QzyOnZBkgw2hDCDWZofaUEMegcuD1KbtFZ0AESW02S/tcIx934+ov0PcaFC/c6tKTMip
 6ZwjbHIxJWRi8JBplajumjDvqFXolLECDy1pVJHVR2AHJM1Zy7qN5rNWaCzP09qZGBUl
 a7Nw==
X-Gm-Message-State: APjAAAVAJn6OdVl59bhAzdHJcTPPvGUrJSYyyujuXHjlz4hcCSyvupu8
 qnpq/TpR3qSV+UtAo+msYg==
X-Google-Smtp-Source: APXvYqyxJP9z8nGYLwYOVzQtOy/w76xG4aTIepvKbnC66otUKEKBXXxHCjQtG595rcBsR3kyNOZgDQ==
X-Received: by 2002:a05:6830:128e:: with SMTP id
 z14mr650788otp.184.1582823890285; 
 Thu, 27 Feb 2020 09:18:10 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r26sm1109461otc.66.2020.02.27.09.18.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 09:18:09 -0800 (PST)
Received: (nullmailer pid 17673 invoked by uid 1000);
 Thu, 27 Feb 2020 17:18:08 -0000
Date: Thu, 27 Feb 2020 11:18:08 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v9 2/5] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
Message-ID: <20200227171808.GA14590@bogus>
References: <20200226053238.31646-1-jitao.shi@mediatek.com>
 <20200226053238.31646-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226053238.31646-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091811_364041_53CE61E4 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 01:32:35PM +0800, Jitao Shi wrote:
> Add property "pinctrl-names" to swap pin mode between gpio and dpi mode. Set
> pin mode to gpio oupput-low to avoid leakage current when dpi disable.

s/oupput/output/

> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt  | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> index 58914cf681b8..a7b1b8bfb65e 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> @@ -17,6 +17,10 @@ Required properties:
>    Documentation/devicetree/bindings/graph.txt. This port should be connected
>    to the input port of an attached HDMI or LVDS encoder chip.
>  
> +Optional properties:
> +- pinctrl-names: Contain "gpiomode" and "dpimode".
> +  pinctrl-names see Documentation/devicetree/bindings/pinctrlpinctrl-bindings.txt
> +
>  Example:
>  
>  dpi0: dpi@1401d000 {
> @@ -27,6 +31,9 @@ dpi0: dpi@1401d000 {
>  		 <&mmsys CLK_MM_DPI_ENGINE>,
>  		 <&apmixedsys CLK_APMIXED_TVDPLL>;
>  	clock-names = "pixel", "engine", "pll";
> +	pinctrl-names = "gpiomode", "dpimode";

The somewhat standard way to do this is '"default", "sleep"' if I 
remember the names right. And the normal operating mode is usually 
first.

> +	pinctrl-0 = <&dpi_pin_gpio>;
> +	pinctrl-1 = <&dpi_pin_func>;
>  
>  	port {
>  		dpi0_out: endpoint {
> -- 
> 2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
