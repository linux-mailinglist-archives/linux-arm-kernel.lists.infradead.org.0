Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C5F12FF96
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 01:32:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm5SnY2KOUEPHTzCFOhBxi5Yv3P9v+MtD+gVA/ZcSRI=; b=Yw3tiMGS9JTkC3
	etbSrTHdZnce2oBdz8cY+J0JwW5ws6yzGrbmvz8Y5PfP+mCmn5VSO+2Bp6APhLchH244xrx7CHElK
	AqfgrgGyukXSY9335ESVYhFshz/Dn88WwpUiX+7XoDWgZSNdl7l8q1ekFLPWsJQ4HwJmXewtQVzrW
	+L3FcSrnvrfickOz2C0hirxz03tGyzWVB97L1Rh33WzskVvJjz78003ZRnfQk0+ppmFs38pTcOA7n
	GTS9CDuhBjeZ1jNMoMFJwy0TGGFe1DopFq6AJ8DeX/0cxji5GilsljRptlUKMVeTkh1R/d2eklhIq
	9k1QURxFjDE1Pl9LOKgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXMd-0002ek-Ja; Sat, 04 Jan 2020 00:32:23 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXMV-0002dI-8y
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 00:32:16 +0000
Received: by mail-io1-f66.google.com with SMTP id n21so41545853ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 16:32:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OkEhI0mGAaFruOBaLTQQRQIQxA1NVDP05WMjkcVPHmI=;
 b=te6NWr/Yj+3V/fCEba7VhsiB3stVo96tZL16xoTlXOz6YxwTM0ISNsXGeSVOaOTs5R
 5KYJDdmZsBHduyou2DwzAvvaX1FSJegEPDXUsmymgglrIx/f/gTp9a5KEcYPOh8dAlgg
 YwcFFl63oonMqSh0+mu2CdozYQX5AMMQyWmfaMG19OtYvRuWodAJ+2Cy46vnnRtFGGrq
 jPShpqByz5WRy9GZLhZ0R6nvXR3THluS4RD13TMDzogEcgjTklMwJtWcmBI+Qpn84pCc
 8UaT4qaoiBG7QYyzqubjpS7cQGB13ENIE4IW869Z0tgm0i0mn/JNkn8rZ2s/ES85dt72
 KFyw==
X-Gm-Message-State: APjAAAUgcIwEwcXTddDVnSmXFfJn/onQ0D6dJo4Hhg4xzTkIbMCG1/Tq
 FEJLEsihFSdEW/tY9W6b5O0X/ck=
X-Google-Smtp-Source: APXvYqzYeyB3X8uVjKFCrH+gS/sElKPvP39zwEYCuh4/dnMlQgXcTPNttuFBn+3aPg+4Ly3mj6thCw==
X-Received: by 2002:a5d:9d4a:: with SMTP id k10mr62552449iok.134.1578097932963; 
 Fri, 03 Jan 2020 16:32:12 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id l17sm19532216ilc.49.2020.01.03.16.32.11
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 16:32:12 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a5
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Fri, 03 Jan 2020 17:32:10 -0700
Date: Fri, 3 Jan 2020 17:32:10 -0700
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH v3 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
Message-ID: <20200104003210.GA29074@bogus>
References: <1577428606-69855-1-git-send-email-hanjie.lin@amlogic.com>
 <1577428606-69855-3-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1577428606-69855-3-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_163215_312540_0781C033 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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

On Fri, Dec 27, 2019 at 02:36:42PM +0800, Hanjie Lin wrote:
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>  - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> ---
>  .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 57 +++++++++++++++++++---
>  1 file changed, 51 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> index 4efb77b..6103cc2 100644
> --- a/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml
> @@ -9,6 +9,8 @@ title: Amlogic Meson G12A DWC3 USB SoC Controller Glue
>  
>  maintainers:
>    - Neil Armstrong <narmstrong@baylibre.com>
> +  - Hanjie Lin <hanjie.lin@amlogic.com>
> +  - Yue Wang <yue.wang@amlogic.com>
>  
>  description: |
>    The Amlogic G12A embeds a DWC3 USB IP Core configured for USB2 and USB3
> @@ -22,10 +24,14 @@ description: |
>    The DWC3 Glue controls the PHY routing and power, an interrupt line is
>    connected to the Glue to serve as OTG ID change detection.
>  
> +  The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
> +  host-only mode.
> +
>  properties:
>    compatible:
>      enum:
>        - amlogic,meson-g12a-usb-ctrl
> +      - amlogic,meson-a1-usb-ctrl
>  
>    ranges: true
>  
> @@ -37,6 +43,11 @@ properties:
>  
>    clocks:
>      minItems: 1
> +    maxItems: 4
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 4
>  
>    resets:
>      minItems: 1
> @@ -47,17 +58,22 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  phys:
> +    minItems: 1
> +    maxItems: 3
> +
>    phy-names:
>      items:
>        - const: usb2-phy0 # USB2 PHY0 if USBHOST_A port is used
>        - const: usb2-phy1 # USB2 PHY1 if USBOTG_B port is used
>        - const: usb3-phy0 # USB3 PHY if USB3_0 is used
>  
> -  phys:
> -    minItems: 1
> -    maxItems: 3
> -

Why the unnecessary move?

> -  dr_mode: true
> +  dr_mode:
> +    description: usb mode for G12A
> +    enum:
> +      - host
> +      - peripheral
> +      - otg

No, this is a common property that doesn't need to be redefined here. It 
was correct as-is.

>  
>    power-domains:
>      maxItems: 1
> @@ -80,9 +96,9 @@ required:
>    - resets
>    - reg
>    - interrupts
> -  - phy-names
>    - phys
>    - dr_mode
> +  - phy-names

Again, unnecessary change.

>  
>  examples:
>    - |
> @@ -124,4 +140,33 @@ examples:
>                snps,quirk-frame-length-adjustment;
>            };
>      };
> +  - |
> +    a1_usb: usb@ffe09000 {

You are only adding a compatible. No need for a whole new example.

> +          status = "okay";
> +          compatible = "amlogic,meson-a1-usb-ctrl";
> +          reg = <0 0xffe09000 0x0 0xa0>;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +          ranges;
>  
> +          clocks = <&clkc_periphs 36>,
> +                   <&clkc_periphs 85>,
> +                   <&clkc_periphs 2>,
> +                   <&clkc_periphs 3>;
> +          clock-names = "usb_ctrl", "usb_bus", "xtal_usb_phy",
> +                        "xtal_usb_ctrl";
> +
> +          resets = <&reset 36>;
> +
> +          phys = <&usb2_phy1>;
> +          phy-names = "usb2-phy1";
> +
> +          a1_dwc3: usb@ff400000 {
> +                  compatible = "snps,dwc3";
> +                  reg = <0xff400000 0x100000>;
> +                  interrupts = <0 90 4>;
> +                  dr_mode = "host";
> +                  snps,dis_u2_susphy_quirk;
> +                  snps,quirk-frame-length-adjustment = <0x20>;
> +          };
> +    };
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
