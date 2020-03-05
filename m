Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E097E17B089
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FvzyDAbWkzkSVG+MU08tX6lKMjNmT6QuZg+5yJE5eg=; b=VWGwlvWACCwau2
	306d3qBLwux3SdRh3L4igQKdTSOJ9EpscPKCZGEVdgece5tgkJWJzZlLY4Pe27jcahcnx9OkPGFnQ
	raPm2E9xUiszSCU2Iud8fulcqE5dL/z0sGk3lda/aIxvMwIZ29/MJ82qx7mxWa8pVj7hMbBUXTWuH
	EHbq03sdzcHyDz5GxG+qQOaL8cmZva/GA4Dp7jBLOzZMvqNdAR+G4umtF7XucggvdZbIxJX/dJAXD
	/Jepx8BT+FicBkkFSK7l4CPELTGBrxXrtbgjUkf6um1YHcgSmam91nn36LmnXbbxHxJxUUIouQpsu
	fPLpnkHg4cQ0Z8USGPEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xun-0002um-68; Thu, 05 Mar 2020 21:20:21 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xuZ-0002KZ-Ah
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 21:20:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id l184so3370333pfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 13:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=loNKzfZ2WYLORcMWCHnowkSlwOV4uJb56BC4cjXOiZU=;
 b=FvsPrdXRRh3QO/+s411g5ODMr7nz7JNzHdZUNqmf3I0YSid7pOy9SG8unIaxB7I8qK
 0b1WIMrjkovcf2oUrO1UOt4ur/E6lhmkDoUhoGLeuB76SYdb8URghyBAbaZcvdZvGCfd
 9mr95A9Hcj0CUdd2H9PuSaS7ktdpityBgJ8rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=loNKzfZ2WYLORcMWCHnowkSlwOV4uJb56BC4cjXOiZU=;
 b=d15LPr44tY7u/7tMkGmidx8Yw1n6Fhoa2kaWaGX33p1e0mDQRTuUlh5kTQ31QV51G5
 jTxpbtvjsT87LZvKvP2Jfai/aLjFfDlNLzxhz8KMfKt99rHuHeQZw/frT81yuBWyV3cX
 Kr0iZXFhR/nhnt181dH9M/Oqs1nD4thE+HR6yS6gEnv1zD5lwy7BN8Tgp7hAA9lGBX1D
 Alx5wszRpft2OPjrciI9ddx5IUnDeB3vzjBwsMDOTlTHHLo1p4BGIrQMXGozE4rUoEUR
 a2L95IQoCEnH81HjTanoOMQ7de327Tr8y61QjiUvLxnK77wIB3Zb94JyrpsAAJE0vnFg
 V0ig==
X-Gm-Message-State: ANhLgQ1k3Vapk6LQ8Py2o98owW1d6TYQhc2wuSvojveUnZhBNynLg9FS
 usbcRdYScjeXht0UAQ4duI9SwQ==
X-Google-Smtp-Source: ADFU+vvOwKIZrmY5TmSyaDSc10dmgGfZMXiDaur2s6Rjr8CpcpphDf6IrHTFxblTEIC0/8jRjSIHOA==
X-Received: by 2002:aa7:8ad9:: with SMTP id b25mr342124pfd.70.1583443206190;
 Thu, 05 Mar 2020 13:20:06 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id q187sm32819052pfq.185.2020.03.05.13.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 13:20:05 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20200305030135.210675-1-pmalani@chromium.org>
References: <20200305030135.210675-1-pmalani@chromium.org>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
From: Stephen Boyd <swboyd@chromium.org>
To: Prashant Malani <pmalani@chromium.org>, devicetree@vger.kernel.org
Date: Thu, 05 Mar 2020 13:20:04 -0800
Message-ID: <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_132007_423556_997C72D8 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, heikki.krogerus@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Prashant Malani <pmalani@chromium.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, enric.balletbo@collabora.com,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, bleung@chromium.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Prashant Malani (2020-03-04 19:01:30)
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> new file mode 100644
> index 0000000000000..b386e2880405c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -0,0 +1,203 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: USB Connector
> +
> +maintainers:
> +  - linux-usb@vger.kernel.org
> +
> +description:
> +  A USB connector node represents a physical USB connector. It should be a child
> +  of a USB interface controller.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - usb-a-connector
> +      - usb-b-connector
> +      - usb-c-connector
> +
> +  label:
> +    description: Symbolic name for the connector.
> +
> +  type:
> +    description: Size of the connector, should be specified in case of USB-A,
> +      USB-B non-fullsize connectors.

Maybe "should be specified in case of non-fullsize 'usb-a-connector' or
'usb-b-connector' compatible connectors"?

> +    $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - mini
> +      - micro
> +
> +  self-powered:
> +    description: Set this property if the USB device has its own power source.
> +    type: boolean
> +
> +  # The following are optional properties for "usb-b-connector".
> +  id-gpios:
> +    description: An input gpio for USB ID pin.
> +    maxItems: 1
> +
> +  vbus-gpios:
> +    description: An input gpio for USB VBus pin, used to detect presence of
> +      VBUS 5V. See gpio/gpio.txt.

Can this be written as bindings/gpio/gpio.txt?

> +    maxItems: 1
> +
> +  vbus-supply:
> +    description: A phandle to the regulator for USB VBUS if needed when host
> +      mode or dual role mode is supported.
> +      Particularly, if use an output GPIO to control a VBUS regulator, should
> +      model it as a regulator. See regulator/fixed-regulator.yaml

And bindings/regulator/fixed-regulator.yaml? The idea is to
disambiguate from kernel Documentation/ directory.

> +
> +  # The following are optional properties for "usb-c-connector".

Is there a way to constrain the binding so that this can't be put in a
connector that doesn't have the usb-c-connector compatible string?

> +  power-role:
> +    description: Determines the power role that the Type C connector will
> +      support. "dual" refers to Dual Role Port (DRP).
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - source
> +      - sink
> +      - dual
> +
> +  try-power-role:
> +    description: Preferred power role.
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +     - source
> +     - sink
> +     - dual
> +
> +  data-role:
> +    description: Data role if Type C connector supports USB data. "dual" refers
> +      Dual Role Device (DRD).
> +    allOf:
> +      - $ref: /schemas/types.yaml#definitions/string
> +    enum:
> +      - host
> +      - device
> +      - dual

Is there a way to maintain a description for each possible string
property? Then we could move the last sentence in the description above
to be attached to '- dual' here.

> +
> +  # The following are optional properties for "usb-c-connector" with power
> +  # delivery support.
> +  source-pdos:
> +    description: An array of u32 with each entry providing supported power
> +      source data object(PDO), the detailed bit definitions of PDO can be found
> +      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
> +      Source_Capabilities Message, the order of each entry(PDO) should follow
> +      the PD spec chapter 6.4.1. Required for power source and power dual role.
> +      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
> +      defined in dt-bindings/usb/pd.h.
> +    minItems: 1
> +    maxItems: 7
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  sink-pdos:
> +    description: An array of u32 with each entry providing supported power sink
> +      data object(PDO), the detailed bit definitions of PDO can be found in
> +      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
> +      Sink Capabilities Message, the order of each entry(PDO) should follow the
> +      PD spec chapter 6.4.1. Required for power sink and power dual role. User
> +      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
> +      in dt-bindings/usb/pd.h.
> +    minItems: 1
> +    maxItems: 7
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +  op-sink-microwatt:
> +    description: Sink required operating power in microwatt, if source can't
> +      offer the power, Capability Mismatch is set. Required for power sink and
> +      power dual role.
> +
> +  ports:
> +    description: OF graph bindings (specified in bindings/graph.txt) that model
> +      any data bus to the connector unless the bus is between parent node and
> +      the connector. Since a single connector can have multiple data buses every
> +      bus has assigned OF graph port number as described below.

has an assigned?

> +    type: object
> +    properties:
> +      port@0:
> +        type: object
> +        description: High Speed (HS), present in all connectors.
> +
> +      port@1:
> +        type: object
> +        description: Super Speed (SS), present in SS capable connectors.
> +
> +      port@2:
> +        type: object
> +        description: Sideband Use (SBU), present in USB-C.

Likewise, is it possible to constrain this to only usb-c-connector
compatible string based bindings? And if so, does it become required for
that compatible string?

> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +
> +examples:
> +  # Micro-USB connector with HS lines routed via controller (MUIC).
> +  - |+
> +    muic-max77843@66 {

Add a reg = <0x66>; here? Or drop the unit address above.

> +      usb_con1: connector {
> +        compatible = "usb-b-connector";
> +        label = "micro-USB";
> +        type = "micro";
> +      };
> +    };
> +
> +  # USB-C connector attached to CC controller (s2mm005), HS lines routed
> +  # to companion PMIC (max77865), SS lines to USB3 PHY and SBU to DisplayPort.
> +  # DisplayPort video lines are routed to the connector via SS mux in USB3 PHY.
> +  - |+
> +    ccic: s2mm005@33 {

Same unit address comment.

> +      usb_con2: connector {
> +        compatible = "usb-c-connector";
> +        label = "USB-C";
> +
> +        ports {
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          port@0 {
> +            reg = <0>;
> +            usb_con_hs: endpoint {
> +              remote-endpoint = <&max77865_usbc_hs>;
> +            };
> +          };
> +          port@1 {
> +            reg = <1>;
> +            usb_con_ss: endpoint {
> +            remote-endpoint = <&usbdrd_phy_ss>;
> +            };
> +          };
> +          port@2 {
> +            reg = <2>;
> +            usb_con_sbu: endpoint {
> +            remote-endpoint = <&dp_aux>;
> +            };

Tabs should be replaced with spaces.

> +          };
> +        };
> +      };
> +    };
> +
> +  # USB-C connector attached to a typec port controller(ptn5110), which has
> +  # power delivery support and enables drp.
> +  - |+
> +    #include <dt-bindings/usb/pd.h>
> +    typec: ptn5110@50 {

Same unit address comment.

> +      usb_con3: connector {
> +        compatible = "usb-c-connector";
> +        label = "USB-C";
> +        power-role = "dual";
> +        try-power-role = "sink";
> +        source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
> +        sink-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)
> +                     PDO_VAR(5000, 12000, 2000)>;
> +        op-sink-microwatt = <10000000>;
> +      };
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
