Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C643CBB1E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 12:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDxa9bpp/8Ra+I8gCgkIbsbfZ7xC1t8pw0q2w3ROTxM=; b=oAs0kLmjRUQHwK
	SSsv5nEAGNOLql9Qxwv5GyMJkK4LKzysjh4J7kQl+ssen/FR0P7sswb/fg7HNgO0qvEuaVas3W3yJ
	rqyKgg3MKX2M5qr3kQyrErWtOvypgztfuBkPOX9lwfS3P75F1dCFIlF9bNsyQ3GBXIAQRkHj78WNS
	u4IhIrk4V6IVAdEFuMG2zngp05Z6JUFLc/O87Lk9M1U3uxpv1rmKKhcGQ2lqvOvjGBJjezWDfe2lO
	YNFjTTlU+v9ls7f9PINNbVX0y7v9t4vvN9nU1GYWc8weefpGdGE4QA0ycFQFMhTZfVwjwet5lcKYh
	Kx73B+YZ1gqHkDpu+NGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCLEr-000420-4i; Mon, 23 Sep 2019 10:06:37 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCLEf-00040p-B7
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 10:06:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id y21so8609874wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 03:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=efP++C+n842ztdoruWHDsU5t7UYA9AhqrH+sQr0d664=;
 b=WC9lw/G4j9t7XfO7TyQQ+hQwJ2ffDW97T4DSfot/iXZ28CL777HiBBFAXG72dy3Xp/
 qBCUZFBu3ifqNu7HsTfJAg1/QfIzikeAXdne7P0iP6wKqE7joi4zx56TH6xqHy51C5e+
 53pQbs3zcWxdoKDXbZcmIsdLLGblPgAN7jVTknzeleIIR6dGZxC0YVniDjjFnvt419YH
 YBvdsaqx4r0HU0oLhLTwO0NzXSZF5KA+nEn3DOxdEQbJZ+6hsPxnWj6z+1Y6JA++yGcH
 WpF9gYtNUAoOcabk2M3GM4Exu56zcPS5sOpzP4PmmGXJomuH4VHZuA14bTmGPxLv4TsE
 LXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=efP++C+n842ztdoruWHDsU5t7UYA9AhqrH+sQr0d664=;
 b=WFuBgcQ34KKcEq7HcpKYmLV0KQu7ZjGDxvQUNgUR/J9ezqPUVIk7gM7DWOd13npc4P
 LXZ//QjTxN7q4zR2iB72Viq09Q1aHlark5/IL0lC8Xq/yCE6lXPLoWOZouh0sTmBUbvX
 beIA0gasajXbyxvrddIRAuXjHyC7LzaIWNrYggXgI9gPg8/b7SeVUZPTfuXEzz3nVJnB
 AGaRDmEZEKnc/QgwrNN/fHSCiOvQRc4y73TUVQWzB8iBpowaoTU0SRPjKeSL0RR26Wu9
 YBcotHslQgeNNdKN6+C+2pMi5/YUHmRFcLuMQXqGSeq5MT9WoK8FIIev8KqoFx+2Tzei
 uENQ==
X-Gm-Message-State: APjAAAX6ds+zlyuZLWY7fy51sTlvZxE7sjaVQ9aMOOq1JVd4DuKTafYe
 vUHp7ms0cvos2m1cosvunY9LkA==
X-Google-Smtp-Source: APXvYqz2luNiHMrLwslAQi441uViJJb8E2s1paCFVoS208d5LL0ax7NHmxfoN7H9JcWe1ml1uW1Kiw==
X-Received: by 2002:a1c:6841:: with SMTP id d62mr13297447wmc.48.1569233182680; 
 Mon, 23 Sep 2019 03:06:22 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id t1sm9644294wrn.57.2019.09.23.03.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 03:06:22 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 narmstrong@baylibre.com, robh+dt@kernel.org, mark.rutland@arm.com,
 linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 khilman@baylibre.com
Subject: Re: [PATCH 0/6] add the DDR clock controller on Meson8 and Meson8b
In-Reply-To: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
References: <20190921151835.770263-1-martin.blumenstingl@googlemail.com>
Date: Mon, 23 Sep 2019 12:06:21 +0200
Message-ID: <1jsgons4wy.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_030625_446261_974C4225 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat 21 Sep 2019 at 17:18, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:

> Meson8 and Meson8b SoCs embed a DDR clock controller in their MMCBUS
> registers. This series:
> - adds support for this DDR clock controller (patches 0 and 1)
> - wires up the DDR PLL as input for two audio clocks (patches 2 and 3)

Have you been able to validate somehow that DDR rate calculated by CCF
is the actual rate that gets to the audio clocks ?

While I understand the interest for completeness, I suspect the having
the DDR clock as an audio parent was just for debugging purpose. IOW,
I'm not sure if adding this parent is useful to an actual audio use
case. As far as audio would be concerned, I think we are better of
without this parent.

> - adds the DDR clock controller to meson8.dtsi and meson8b.dtsi
>

Could you please separate the driver and DT series in the future ? Those
take different paths and are meant for different maintainers.

> Special thanks go out to Alexandre Mergnat for switching the Amlogic
> clock drivers over to parent_hws and parent_data. That made this series
> a lot easier for me!
>
> This series depends on my other series from [0]:
> "provide the XTAL clock via OF on Meson8/8b/8m2"
>
>
> [0] https://patchwork.kernel.org/cover/11155515/
>
>
> Martin Blumenstingl (6):
>   dt-bindings: clock: add the Amlogic Meson8 DDR clock controller
>     binding
>   clk: meson: add a driver for the Meson8/8b/8m2 DDR clock controller
>   clk: meson: meson8b: use of_clk_hw_register to register the clocks
>   clk: meson: meson8b: add the ddr_pll input for the audio clocks
>   ARM: dts: meson8: add the DDR clock controller
>   ARM: dts: meson8b: add the DDR clock controller
>
>  .../clock/amlogic,meson8-ddr-clkc.yaml        |  50 ++++++
>  arch/arm/boot/dts/meson8.dtsi                 |  13 +-
>  arch/arm/boot/dts/meson8b.dtsi                |  13 +-
>  drivers/clk/meson/Makefile                    |   2 +-
>  drivers/clk/meson/meson8-ddr.c                | 153 ++++++++++++++++++
>  drivers/clk/meson/meson8b.c                   |  36 ++---
>  include/dt-bindings/clock/meson8-ddr-clkc.h   |   4 +
>  7 files changed, 245 insertions(+), 26 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,meson8-ddr-clkc.yaml
>  create mode 100644 drivers/clk/meson/meson8-ddr.c
>  create mode 100644 include/dt-bindings/clock/meson8-ddr-clkc.h
>
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
