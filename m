Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC3717B130
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D50zcCuttDQN88Oschc6hRakcZMCWbl9Z3Dv2AM9ZRw=; b=cPmiNxZGZnnBu9
	0Mnd9EPm9DlgI4a8tRDdqzu25b0DkPPyRI6ORY0LTUNQdQJEXicXWPom07yfwXD6L4opZudoCHB1x
	cL0FsBnNLTRinNSb2ucNJcZQEw7H3f+XwG4HsnW4okfgkS5sLHcxqpLkRMIV7MiTVcDTjLb+uVxxa
	Xr/3q3ZnLR8/qbA22nCwsZALGGxDuScpSAJu2i3I8nlXuJc1F0gjkqrg5/y/aS09PWTDFc1u6i4pl
	PiZlfzYvrtnvvye4HgucglpJmtX57FWHiGoamV03XYL8cZXQYoLwSZ90ySPz4rUjJrzm8sy1Cbb/Y
	bvPI3czYg6ocaRDVktwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ydB-0002kf-L7; Thu, 05 Mar 2020 22:06:13 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yd2-0002i7-8T
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:06:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id y21so54648pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 14:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IX8YVBG4p5k2QAbGer4G96xm3Z8NgKYITeF73HxiwoQ=;
 b=S9o23N9G7dy68xECMQim9toy0bN5fZeup+7EJEjxkpq+VK5XUc65vI4l3O2YZKdpkQ
 gvA9npnGGhuiu0rZ0dDbA9D8ltdVcaCSy2DvHupfA2qXEYDL66i9t6sipSByz8uIm1mo
 dNf4lwirNVWsg+ZSVFVC9Qcq5cSWDHKVE2njM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IX8YVBG4p5k2QAbGer4G96xm3Z8NgKYITeF73HxiwoQ=;
 b=n89CnqF4WMp1zUwZ1Qxa9omdxO13H99qZJwU58KuE+D03RtD4aBG47geX3ipNHMkBr
 gG+Buqv2tfFy17kNZG29IhYU4gg+rkMY8fm7vg9GNn8unNvOnhyY5XwU1Q4Czs11Gj3E
 xEQRn7qJWJsQNB3C9zzP5ht/hTCGQAvejae6fQNIHJoltblhSrj7Ma2yl7QCrfwBEGDV
 x82t0W/xPaAQ+gtG6TBFi4O0Pc5JyHTb/xEsHEn5hL5eD4r0cz2y9scFEILgXV13cDop
 dXusQnDAP8JTNRkmRVLfVsaKIy19tybbMJF/QxhgR4feW2aaMfPb0D76tOCrFmVEjhRp
 dr2w==
X-Gm-Message-State: ANhLgQ3B/4B/tqkDIHWaiX7kRu4EYszcmxltyEwurr9cOx0BvmHihJSN
 qrPd0q7+f9xbGylTVL4fCzKfww==
X-Google-Smtp-Source: ADFU+vuvZPa1OmI4ocX3yUSt0BjsEQf0N7rTtxK6vihyroJfBvCM0Z34TqdrRfy8RitMUWttAdCs1Q==
X-Received: by 2002:a63:9dc2:: with SMTP id i185mr243179pgd.240.1583445960052; 
 Thu, 05 Mar 2020 14:06:00 -0800 (PST)
Received: from google.com ([2620:15c:202:201:476b:691:abc3:38db])
 by smtp.gmail.com with ESMTPSA id w14sm32400569pgi.22.2020.03.05.14.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 14:05:59 -0800 (PST)
Date: Thu, 5 Mar 2020 14:05:58 -0800
From: Prashant Malani <pmalani@chromium.org>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
Message-ID: <20200305220558.GC142502@google.com>
References: <20200305030135.210675-1-pmalani@chromium.org>
 <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_140604_302944_EFB22B4F 
X-CRM114-Status: GOOD (  30.19  )
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 2.9 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 heikki.krogerus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, enric.balletbo@collabora.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Thanks for reviewing the patch. Kindly see my responses inline.

Best regards,

-Prashant

On Thu, Mar 05, 2020 at 01:20:04PM -0800, Stephen Boyd wrote:
> Quoting Prashant Malani (2020-03-04 19:01:30)
> > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > new file mode 100644
> > index 0000000000000..b386e2880405c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > @@ -0,0 +1,203 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: USB Connector
> > +
> > +maintainers:
> > +  - linux-usb@vger.kernel.org
> > +
> > +description:
> > +  A USB connector node represents a physical USB connector. It should be a child
> > +  of a USB interface controller.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - usb-a-connector
> > +      - usb-b-connector
> > +      - usb-c-connector
> > +
> > +  label:
> > +    description: Symbolic name for the connector.
> > +
> > +  type:
> > +    description: Size of the connector, should be specified in case of USB-A,
> > +      USB-B non-fullsize connectors.
> 
> Maybe "should be specified in case of non-fullsize 'usb-a-connector' or
> 'usb-b-connector' compatible connectors"?
> 
Done.

> > +    $ref: /schemas/types.yaml#definitions/string
> > +    enum:
> > +      - mini
> > +      - micro
> > +
> > +  self-powered:
> > +    description: Set this property if the USB device has its own power source.
> > +    type: boolean
> > +
> > +  # The following are optional properties for "usb-b-connector".
> > +  id-gpios:
> > +    description: An input gpio for USB ID pin.
> > +    maxItems: 1
> > +
> > +  vbus-gpios:
> > +    description: An input gpio for USB VBus pin, used to detect presence of
> > +      VBUS 5V. See gpio/gpio.txt.
> 
> Can this be written as bindings/gpio/gpio.txt?

Dropping it based on Rob's later comment.
> 
> > +    maxItems: 1
> > +
> > +  vbus-supply:
> > +    description: A phandle to the regulator for USB VBUS if needed when host
> > +      mode or dual role mode is supported.
> > +      Particularly, if use an output GPIO to control a VBUS regulator, should
> > +      model it as a regulator. See regulator/fixed-regulator.yaml
> 
> And bindings/regulator/fixed-regulator.yaml? The idea is to
> disambiguate from kernel Documentation/ directory.

Done.
> 
> > +
> > +  # The following are optional properties for "usb-c-connector".
> 
> Is there a way to constrain the binding so that this can't be put in a
> connector that doesn't have the usb-c-connector compatible string?
> 
> > +  power-role:
> > +    description: Determines the power role that the Type C connector will
> > +      support. "dual" refers to Dual Role Port (DRP).
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#definitions/string
> > +    enum:
> > +      - source
> > +      - sink
> > +      - dual
> > +
> > +  try-power-role:
> > +    description: Preferred power role.
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#definitions/string
> > +    enum:
> > +     - source
> > +     - sink
> > +     - dual
> > +
> > +  data-role:
> > +    description: Data role if Type C connector supports USB data. "dual" refers
> > +      Dual Role Device (DRD).
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#definitions/string
> > +    enum:
> > +      - host
> > +      - device
> > +      - dual
> 
> Is there a way to maintain a description for each possible string
> property? Then we could move the last sentence in the description above
> to be attached to '- dual' here.
> 
I'm not sure of a way to do this, so leaving this as is for now.
> > +
> > +  # The following are optional properties for "usb-c-connector" with power
> > +  # delivery support.
> > +  source-pdos:
> > +    description: An array of u32 with each entry providing supported power
> > +      source data object(PDO), the detailed bit definitions of PDO can be found
> > +      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
> > +      Source_Capabilities Message, the order of each entry(PDO) should follow
> > +      the PD spec chapter 6.4.1. Required for power source and power dual role.
> > +      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
> > +      defined in dt-bindings/usb/pd.h.
> > +    minItems: 1
> > +    maxItems: 7
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +
> > +  sink-pdos:
> > +    description: An array of u32 with each entry providing supported power sink
> > +      data object(PDO), the detailed bit definitions of PDO can be found in
> > +      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
> > +      Sink Capabilities Message, the order of each entry(PDO) should follow the
> > +      PD spec chapter 6.4.1. Required for power sink and power dual role. User
> > +      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
> > +      in dt-bindings/usb/pd.h.
> > +    minItems: 1
> > +    maxItems: 7
> > +    allOf:
> > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > +
> > +  op-sink-microwatt:
> > +    description: Sink required operating power in microwatt, if source can't
> > +      offer the power, Capability Mismatch is set. Required for power sink and
> > +      power dual role.
> > +
> > +  ports:
> > +    description: OF graph bindings (specified in bindings/graph.txt) that model
> > +      any data bus to the connector unless the bus is between parent node and
> > +      the connector. Since a single connector can have multiple data buses every
> > +      bus has assigned OF graph port number as described below.
> 
> has an assigned?

Done.
> 
> > +    type: object
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description: High Speed (HS), present in all connectors.
> > +
> > +      port@1:
> > +        type: object
> > +        description: Super Speed (SS), present in SS capable connectors.
> > +
> > +      port@2:
> > +        type: object
> > +        description: Sideband Use (SBU), present in USB-C.
> 
> Likewise, is it possible to constrain this to only usb-c-connector
> compatible string based bindings? And if so, does it become required for
> that compatible string?
> 
> > +
> > +    required:
> > +      - port@0
> > +
> > +required:
> > +  - compatible
> > +
> > +examples:
> > +  # Micro-USB connector with HS lines routed via controller (MUIC).
> > +  - |+
> > +    muic-max77843@66 {
> 
> Add a reg = <0x66>; here? Or drop the unit address above.

Dropped the unit address.
> 
> > +      usb_con1: connector {
> > +        compatible = "usb-b-connector";
> > +        label = "micro-USB";
> > +        type = "micro";
> > +      };
> > +    };
> > +
> > +  # USB-C connector attached to CC controller (s2mm005), HS lines routed
> > +  # to companion PMIC (max77865), SS lines to USB3 PHY and SBU to DisplayPort.
> > +  # DisplayPort video lines are routed to the connector via SS mux in USB3 PHY.
> > +  - |+
> > +    ccic: s2mm005@33 {
> 
> Same unit address comment.
Dropped the unit address.
> 
> > +      usb_con2: connector {
> > +        compatible = "usb-c-connector";
> > +        label = "USB-C";
> > +
> > +        ports {
> > +          #address-cells = <1>;
> > +          #size-cells = <0>;
> > +
> > +          port@0 {
> > +            reg = <0>;
> > +            usb_con_hs: endpoint {
> > +              remote-endpoint = <&max77865_usbc_hs>;
> > +            };
> > +          };
> > +          port@1 {
> > +            reg = <1>;
> > +            usb_con_ss: endpoint {
> > +            remote-endpoint = <&usbdrd_phy_ss>;
> > +            };
> > +          };
> > +          port@2 {
> > +            reg = <2>;
> > +            usb_con_sbu: endpoint {
> > +            remote-endpoint = <&dp_aux>;
> > +            };
> 
> Tabs should be replaced with spaces.

Fixed the spacing here.
> 
> > +          };
> > +        };
> > +      };
> > +    };
> > +
> > +  # USB-C connector attached to a typec port controller(ptn5110), which has
> > +  # power delivery support and enables drp.
> > +  - |+
> > +    #include <dt-bindings/usb/pd.h>
> > +    typec: ptn5110@50 {
> 
> Same unit address comment.

Dropped the unit address.
> 
> > +      usb_con3: connector {
> > +        compatible = "usb-c-connector";
> > +        label = "USB-C";
> > +        power-role = "dual";
> > +        try-power-role = "sink";
> > +        source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
> > +        sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
> > +                     PDO_VAR(5000, 12000, 2000)>;
> > +        op-sink-microwatt = <10000000>;
> > +      };
> > +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
