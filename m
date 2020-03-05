Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF2617B0D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1NQA1+KNTEqnNYuSIsU4rOM5kcIbd19Ws+pKvLZq44=; b=ZKg/TjYii0w72M
	rTL3zC0LkUm0ZpAuNbqrK6I6Zb0KB/QiuJgqq/cYbsXtDsIAlAuWIW+1uoFc2G44D9U5+OcYT0rxY
	l5GWygyv3MByo7elS7b6bi2sXQAHRx6p1A3fpSMY/9dELKqAdzDURN2iuZDuQms4JIWwtHii5RRp2
	LU2s8gNrXd/VRdyRMZMhRFmvOhUcdPkt/J+TZFmwtbqkw+IP9wyuU7OcGEguATYQuhDe25HU+H2sn
	mXqOdoSiCQKc0vw3rnJPHHt9Ma0zBG7fEY9rsyi85CgvVUMJ4ZJOIYVBoFbbrWL8fr0TqMylFLLJh
	Bryxd1zB2JsI9WSJix0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yEQ-0002Fj-Ki; Thu, 05 Mar 2020 21:40:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yEI-0002FJ-Tp; Thu, 05 Mar 2020 21:40:32 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6830421739;
 Thu,  5 Mar 2020 21:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583444430;
 bh=2TbDtdzQLVrZkBATqyMst6WKIUAWhg4hkW93/u9hnxw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jwmBRSLZS6+pu3brX7GBPDp8uiFUnw3oAp8b+jRAPpnnUNj9UDUx8NRgW/8lw0DLo
 4KTbl6wQVU/UIkiO7pHPSb5gK1YuqwOC6xtTLVX1JI4ZAUtf88ErmZIaC6wJXs3SpG
 VoLBCKdodtLm4bH4OcKzJSPAaF/xK8XzSD0DKSRY=
Received: by mail-qt1-f176.google.com with SMTP id e20so246351qto.5;
 Thu, 05 Mar 2020 13:40:30 -0800 (PST)
X-Gm-Message-State: ANhLgQ2iId3Lkbc5D15EGzt49PnaTnuxxOgcam9aAxdDzMR+0UCN7kPi
 zOTWY/JwB+rp1/zPtXcBQAvdFSBEETVpgX/GUQ==
X-Google-Smtp-Source: ADFU+vsM3Zz2YnwpidfFVp0E2ZVb1W7rDIBPO7Klgy7wRQmho3zKSSTbk7Gr8mOWfUebGtfkIeXgsLh1WpiWKutdx9Y=
X-Received: by 2002:aed:3461:: with SMTP id w88mr223503qtd.143.1583444429367; 
 Thu, 05 Mar 2020 13:40:29 -0800 (PST)
MIME-Version: 1.0
References: <20200305030135.210675-1-pmalani@chromium.org>
 <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
In-Reply-To: <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 5 Mar 2020 15:40:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ3UVG=pVqZyju1qis_Y3dVT6swLEAkK=Myi331Pomvyg@mail.gmail.com>
Message-ID: <CAL_JsqJ3UVG=pVqZyju1qis_Y3dVT6swLEAkK=Myi331Pomvyg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
To: Stephen Boyd <swboyd@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_134031_003020_2FACF705 
X-CRM114-Status: GOOD (  28.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Prashant Malani <pmalani@chromium.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Benson Leung <bleung@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 3:20 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
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

Or just drop the reference so we don't have to fix it later.

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
>
> > +
> > +  # The following are optional properties for "usb-c-connector".
>
> Is there a way to constrain the binding so that this can't be put in a
> connector that doesn't have the usb-c-connector compatible string?

Yes, with if/then and setting excluded properties to 'false'.
Personally, I don't think it is worth the messiness. I'm not too
worried if folks put in properties that are going to be ignored.

Rob

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

Not required as alternate modes are not required. (BTW, it should
probably be clarified this is supposed to be the alternate mode
connection of which SBU is part of).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
