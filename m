Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A891135EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tm0CyzaUTjhmZvrdzqBr6+jrEfjBNKv7T/g7cqMc/U=; b=OG0+2KdraTDJNg
	RVR++AfycQib4vTE4Mh0GmOmSWeHxgurF3/FhJXI0qFHWrgIQmTMj7fJK0wFnf1d0Wpzi5TQDvW3p
	jOt5fwuSrRfwy093cEv1Hauh8hZ1buxMyR/CfFk+jIGB60/vi1A1pLRyry8fKzPcDZ9W5bYtayqKB
	r1Jdpt+oPoFCe03ZUZ8aJyMKOKSK594BiBt8KCeyepgjb1jIp4+ge0FgiP1ttroSsS7jiLnIdp7yq
	9nu6hQ+XA2gsT0PxSLyCXdRSSvRvyyoAcDM9QG0vaALAi5dQ8XzhJXXHJP96CeTShnhsXJJWp3Agd
	uBBgheehOiR2EK4YONgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icacg-0005Lb-KB; Wed, 04 Dec 2019 19:47:42 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icacU-0005KM-Se; Wed, 04 Dec 2019 19:47:32 +0000
Received: by mail-ot1-f67.google.com with SMTP id i4so385156otr.3;
 Wed, 04 Dec 2019 11:47:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fSSVErsABcgNucVFgv5+Tl4j1dQ1k3yEdUF30rVKxw4=;
 b=lwSvMqGGIS2w0wdwx/Gy90hmL3VXEuqppf7EgscqTem/X+xAHC59Fe4j1hudu97Ib/
 zvijJzNvWWXB6t6zTPjb9Jrde9KouzaPR4RxlH4fgxpXyXac9m1ExvIFnoSZHernByhx
 fOPulpnCQD4637IspfDUmUSoZCSIFKmSJuqwwi8xBxHKcykCIMws+vyJzf2lc3opt+23
 QaDgUv7njBCAHB6J+a+8IzyxnDKTkiSmihRWbZmRtmmPuBQ/mgIRGLdKApHZlWf6MsOh
 eap9Drxgtjo8lHhBjs8qjnGSYKNKujV4TmjkskLRMDTaXHqGq5g/pSclMWUD0Fw/jrnm
 C9uQ==
X-Gm-Message-State: APjAAAUorDjcDy446bC3CaPe9Ln3jUH0y2ubxOycAY1HFvQ5i/TgiUS1
 9N7bEfONEVcpN26Z4kJ94w==
X-Google-Smtp-Source: APXvYqxY2MsGzWJvDlpDlLINS+8WTf3i42eiHW+sHpQvD7zrhiISXrPtnUrz0ib1/oyxO1uD0zp+0w==
X-Received: by 2002:a9d:24c1:: with SMTP id z59mr3539199ota.207.1575488849689; 
 Wed, 04 Dec 2019 11:47:29 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y24sm2637031oix.31.2019.12.04.11.47.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:47:28 -0800 (PST)
Date: Wed, 4 Dec 2019 13:47:28 -0600
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
Message-ID: <20191204194728.GA21130@bogus>
References: <1574405757-76184-1-git-send-email-hanjie.lin@amlogic.com>
 <1574405757-76184-3-git-send-email-hanjie.lin@amlogic.com>
 <462c13a6-a2ea-44c7-d43d-46ac82d43bf7@baylibre.com>
 <5357b6c2-e10b-71a3-1e1b-2b641cf5e2df@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5357b6c2-e10b-71a3-1e1b-2b641cf5e2df@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_114730_927725_DEEB93FC 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
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

On Mon, Nov 25, 2019 at 03:52:18PM +0800, Hanjie Lin wrote:
> 
> 
> On 2019/11/22 16:52, Neil Armstrong wrote:
> > Hi,
> > 
> > 
> > On 22/11/2019 07:55, Hanjie Lin wrote:
> >> The Amlogic A1 SoC Family embeds 1 USB Controllers:
> >>  - a DWC3 IP configured as Host for USB2 and USB3
> >>
> >> A glue connects the controllers to the USB2 PHY of A1 SoC.
> >>
> >> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> >> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> >> ---
> >>  .../devicetree/bindings/usb/amlogic,dwc3.txt       | 53 ++++++++++++++++++++++
> >>  1 file changed, 53 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> >> index 6ffb09b..63dc60b 100644
> >> --- a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> >> +++ b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
> >> @@ -128,3 +128,56 @@ Example device nodes:
> >>  				snps,quirk-frame-length-adjustment;
> >>  			};
> >>  	};
> >> +
> >> +Amlogic Meson A1 DWC3 USB SoC Controller Glue
> >> +
> >> +The Amlogic A1 embeds a DWC3 USB IP Core configured for USB2 in
> >> +host-only mode.
> >> +
> >> +Required properties:
> >> +- compatible:	Should be "amlogic,meson-a1-usb-ctrl"
> >> +- clocks:       The clocks needed by the usb controller
> >> +- clock-names:  Should contain the name of the clocks: "usb_ctrl", "usb_bus",
> >> +                "xtal_usb_phy", "xtal_usb_ctrl"
> >> +- resets:	a handle for the shared "USB" reset line
> >> +- reg:		The base address and length of the registers
> >> +- phys: 	handle to used PHYs on the system
> >> +	- a <0> phandle can be used if a PHY is not used
> >> +- phy-names:	names of the used PHYs on the system :
> >> +	- "usb2-phy0" for USB2 PHY if USBHOST port is used
> >> +
> >> +Required child nodes:
> >> +
> >> +A child node must exist to represent the core DWC3 IP block. The name of
> >> +the node is not important. The content of the node is defined in dwc3.txt.
> >> +
> >> +PHY documentation is provided in the following places:
> >> +- Documentation/devicetree/bindings/phy/amlogic,meson-a1-usb2-phy.yaml
> >> +
> >> +Example device nodes:
> >> +	usb: usb@ffe09000 {
> >> +			status = "okay";
> >> +			compatible = "amlogic,meson-a1-usb-ctrl";
> >> +			reg = <0x0 0xffe09000 0x0 0xa0>;
> >> +			#address-cells = <2>;
> >> +			#size-cells = <2>;
> >> +			ranges;
> >> +
> >> +			clocks = <&clkc_periphs CLKID_USB_CTRL>,
> >> +				 <&clkc_periphs CLKID_USB_BUS>,
> >> +				 <&clkc_periphs CLKID_XTAL_USB_PHY>,
> >> +				 <&clkc_periphs CLKID_XTAL_USB_CTRL>;
> >> +			clock-names = "usb_ctrl", "usb_bus", "xtal_usb_phy", "xtal_usb_ctrl";
> >> +			resets = <&reset RESET_USBCTRL>;
> >> +			phys = <&usb2_phy0>;
> >> +			phy-names = "usb2-phy0";
> >> +
> >> +			dwc3: usb@ff400000 {
> >> +					compatible = "snps,dwc3";
> >> +					reg = <0x0 0xff400000 0x0 0x100000>;
> >> +					interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> >> +					dr_mode = "host";
> >> +					snps,dis_u2_susphy_quirk;
> >> +					snps,quirk-frame-length-adjustment = <0x20>;
> >> +			};
> >> +	};
> >>
> > 
> > This seems very similar to the g12a bindings, seems you could update the yaml g12a bindings
> > with specific clocks and required for amlogic,meson-a1-usb-ctrl.
> > 
> > Neil
> > 
> > .
> > 
> 
> Hi Neil
> Thanks for the comment.
> 
> 1, G12A have usb2-phy0/usb2-phy1/usb3-phy0 three phys and an interrupt to support host/peripheral/otg modes.
>    A1 has one usb2-phy0 phy and only support host mode.
>    
> 2, G12A glue/phy drivers are for G12A SoCs, there are some diffrences to A1.
>    G12A glue driver have dr_mode and interrupts two attributes to support otg mode while A1 hasn't this requirement.
>    G12A glue driver has a hard coding vbus regulator code to support otg mode while A1 hasn't this requirement.
>    G12A glue driver has a hard coding support phys while A1 only supports host mode.
>    	enum {
> 		USB2_HOST_PHY = 0,
> 		USB2_OTG_PHY,
> 		USB3_HOST_PHY,
> 		PHY_COUNT,
> 		};
>    G12A glue driver only supports one clock while A1 needs four clocks.
>    G12A and A1 phy drivers have different register configurations since hardware differences.
>    
> 3, We have estimated these differences and we thought it's more clear and readable to have a dedicated glue/phy
>    driver for A1 SoCs, so also dedicated dt-bindings.

Fair enough, I guess. But you're not sharing anything from the 
amlogic,dwc3.txt binding, so make a new doc. And please make it a DT 
schema.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
