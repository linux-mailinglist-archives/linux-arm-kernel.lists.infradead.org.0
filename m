Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC56712FF94
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1At/2N4y9IgkAW6p4RPbNHHi4fVS1FkLNdicM4lVtmo=; b=qwIn4YddxztBMl
	oNkaIqHtcCqRD2Mck8E83MqGWakdtArMsauiCfYkSmYnSa+uEXwrkQJ0tgrqy3zqdU9l1ORaSM2tM
	YmcWLy7VzdIH7ZPSG/vQyJcwLWRiueWjoOnWBBuGqIIeNPa1rsQkPGyDITZWhJJyJxr1wFtAduMBa
	1wu9KQYqP+5YPYNk5RqJ6dSzrZZO30Xn0C+nXs8NwvZyLOFX6v6bvSsOLbXGEcipWb+ZdDZRjrzWQ
	c4BQIODn5ISmdQQRo5ELCbkmIeueX2q4cCd1ndHTdOml7qz5wCv+hbPY6nHRdQrNlqP3pBpEOqXY0
	jyBZKzcrQ2Ha36p0XjvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXKb-0002MI-7I; Sat, 04 Jan 2020 00:30:17 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXKU-0002Lt-R7
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:30:12 +0000
Received: by mail-il1-f194.google.com with SMTP id v15so38046319iln.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 16:30:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7In7Tco29iuCsOLy3g6JjgD5lKC+PYNDMM0DSnAitvg=;
 b=tyjsXkOug9xx2Z1mV/ui0vYmGviSa0m3wJUJI8vGbjv2uc3e7V97hTT7JXR86wKBpW
 IKXJIZNzbhUBttjVEsdSoHH05nwNJel1bPCbu3nRNicKeeIzzRKr/l/IS1EERpxH9lHU
 XR1kGqCcvE/b673nQX/42ouCtBgmrokdtJeoH69u2nTv/eddBouewWqSRKmEqw9wMfB3
 THVfwCBkpDNYef54snZQ9LX4fWqDoTRcfYKtntdien/4RnkVSRicWhhYZlxlr9EEr2l1
 rv0snrH9f3SAJnrsXhr9e1yLikoKeR0zgXCaOLeaESQUaKW60iwTvYMQTsWLa+KYgQmC
 kXbQ==
X-Gm-Message-State: APjAAAXsJuFEO97vPiADmfLGsfIN2S+aQo06CNanaB2cykH1++v5i4ZI
 MVEOQXFdb5lMKF4Al08y2YnV2VY=
X-Google-Smtp-Source: APXvYqzWjXqVWQpqU+feIpQZcFk6MA8Q4v+Q06oZuM2C0KRJBjeG8UUD4bQ5DgC2Dnc0qnSEklpsdw==
X-Received: by 2002:a92:8dc3:: with SMTP id w64mr69000334ill.68.1578097809188; 
 Fri, 03 Jan 2020 16:30:09 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id a18sm21272396ilf.43.2020.01.03.16.30.08
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:30:09 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219b7
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:28:06 -0700
Date: Fri, 3 Jan 2020 17:28:06 -0700
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
Message-ID: <20200104002806.GA24214@bogus>
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
 <1577428606-69855-2-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577428606-69855-2-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_163010_878627_C50BF5DE 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jian Hu <jian.hu@amlogic.com>, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 02:36:41PM +0800, Hanjie Lin wrote:
> Add the Amlogic A1 Family USB2 PHY Bindings
> 
> It supports Host mode only.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  .../bindings/phy/amlogic,meson-a1-usb2-phy.yaml    | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> new file mode 100644
> index 00000000..2b2c526
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 Amlogic, Inc
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/amlogic,meson-a1-usb2-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic A1 USB2 PHY
> +
> +maintainers:
> +  - Yue Wang <yue.wang@amlogic.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-a1-usb2-phy

Use 'const' if there's only 1.

> +
> +  reg:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: phy

Don't need *-names when there's a single entry.

> +
> +  "#phy-cells":
> +    const: 0
> +
> +  power-domains:
> +     maxItems: 1
> +     description:
> +       a phandle to respective power domain node as described by generic
> +       PM domain bindings (see power/power_domain.txt for more information).

Drop the generic description. No need to duplicate everywhere.

> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +  - power-domains
> +
> +examples:
> +  - |
> +    usb2_phy1: phy@40000 {
> +      status = "okay";
> +      compatible = "amlogic,a1-usb2-phy";
> +      reg = <0x0 0x40000 0x0 0x2000>;
> +      resets = <&reset RESET_USBPHY>;
> +      reset-names = "phy";
> +      #phy-cells = <0>;
> +      power-domains = <&pwrc PWRC_USB_ID>;
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
