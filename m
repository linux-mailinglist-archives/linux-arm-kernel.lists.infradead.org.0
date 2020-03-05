Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA5217B139
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 23:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7dvvYzNMWndbuu4TI7lssL9NFnviapJZuQAapgwu+o=; b=oRt1IJ7sXVq/Sg
	gKMGN1CW41aEkE4uEUWWqCpfb3v763Mk/9/CPpd2TV0nGxbD/qr37ZWweukK1k77J1FzsnHQLC2+r
	Oae2ZK+qxiTrBZeKh0GC+0Sy5EJrcr4qG16RLvMlkR7wyHcTM3N+MNNhWK7L7u0jxrU3mnap5Purl
	X3U8xA0rPSrM1dq42j21yKkZwmhmS+41/RurXbYWDTUvXsdvWDwrC+F7YwPb9vnHSeDrjPdGdmUrT
	EcE8QAzF+x36a2yAJgRUI7V7OiKqO+P2EuVg11NnIXzT0yT7+Rrplmgppe1+H0za/jarNfkhQCtJW
	huldGRHNiLyih/e6dDvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yg2-0003BA-Hz; Thu, 05 Mar 2020 22:09:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yfs-0003AC-GG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 22:09:03 +0000
Received: by mail-pf1-x442.google.com with SMTP id c144so35311pfb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 14:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oDdCfltD2QaBSAFFf+wWMswJOlfqgPRuLkEZFJgGNrM=;
 b=WPeErd9hhzVZX/Waac4idjpF5e1w/9TGIpnu0CXQ7llkO14XJgGYKzMw8QZ3O6Ir8R
 +7SC8GCkS6eBCJp9sfV05tfmssFengeJa4nq6nYNiJb6hw5SVjCDYOtH/29BdMnRRIxO
 020BrKHkDlcKIGl/YMOB9r7MjXc4STIqzJgJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oDdCfltD2QaBSAFFf+wWMswJOlfqgPRuLkEZFJgGNrM=;
 b=MYzxv8HeqfMFluPRZXk52PIVbTGijHkemaXfctjJktR9zNaJ01zJXqONSUPpCwnTeQ
 5or4T4kHtcAHGgsoVO6X4hFmGv6blchYBZiLZtCsb9FJd6NgHI5lb5bP7P6sL40kyUfO
 lkTfa741SeLwUUJccVnTcoGM33yn38J/iDzauPUTUxa/KIRi+EPrqpqDLrNM4xk+a4fH
 GhtlIq0wvDZ2U8kaEu8gBTf2GkA7zySmoIQtBOEayXN9HDWOSINbntFn1sza3bIbzuDG
 4oNhUMdo4EoH1mvNSLEbY1tVlR7wouStj0nJ5bsutLeeF+XJ4S77+zic2lXqtmhhsHlI
 Ow5A==
X-Gm-Message-State: ANhLgQ2n+W+GbcBHGos9CYIkGdaAlx1GS6RtQwZU5jrM8wpVZkvp0xuh
 6ZR7cP4pIymhWlJp6JEsXLJvXA==
X-Google-Smtp-Source: ADFU+vvU72LTPP3n2h4iIkGJpSr/n1ItEYb7KzzsHSYvy/pBi8VxFb8CAvwLZIcp8ImLRyUJBPU+nA==
X-Received: by 2002:aa7:8392:: with SMTP id u18mr484796pfm.41.1583446139767;
 Thu, 05 Mar 2020 14:08:59 -0800 (PST)
Received: from google.com ([2620:15c:202:201:476b:691:abc3:38db])
 by smtp.gmail.com with ESMTPSA id q21sm34620995pff.105.2020.03.05.14.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 14:08:59 -0800 (PST)
Date: Thu, 5 Mar 2020 14:08:58 -0800
From: Prashant Malani <pmalani@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: Convert usb-connector to YAML format.
Message-ID: <20200305220858.GD142502@google.com>
References: <20200305030135.210675-1-pmalani@chromium.org>
 <158344320452.25912.4758137777863945655@swboyd.mtv.corp.google.com>
 <CAL_JsqJ3UVG=pVqZyju1qis_Y3dVT6swLEAkK=Myi331Pomvyg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJ3UVG=pVqZyju1qis_Y3dVT6swLEAkK=Myi331Pomvyg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_140901_798324_ED00A428 
X-CRM114-Status: GOOD (  32.36  )
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
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

Thanks Rob for reviewing this patch. Kindly see my responses inline.

Best regards,

-Prashant

On Thu, Mar 05, 2020 at 03:40:18PM -0600, Rob Herring wrote:
> On Thu, Mar 5, 2020 at 3:20 PM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Prashant Malani (2020-03-04 19:01:30)
> > > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > > new file mode 100644
> > > index 0000000000000..b386e2880405c
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > > @@ -0,0 +1,203 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/connector/usb-connector.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: USB Connector
> > > +
> > > +maintainers:
> > > +  - linux-usb@vger.kernel.org
> > > +
> > > +description:
> > > +  A USB connector node represents a physical USB connector. It should be a child
> > > +  of a USB interface controller.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - usb-a-connector
> > > +      - usb-b-connector
> > > +      - usb-c-connector
> > > +
> > > +  label:
> > > +    description: Symbolic name for the connector.
> > > +
> > > +  type:
> > > +    description: Size of the connector, should be specified in case of USB-A,
> > > +      USB-B non-fullsize connectors.
> >
> > Maybe "should be specified in case of non-fullsize 'usb-a-connector' or
> > 'usb-b-connector' compatible connectors"?
> >
> > > +    $ref: /schemas/types.yaml#definitions/string
> > > +    enum:
> > > +      - mini
> > > +      - micro
> > > +
> > > +  self-powered:
> > > +    description: Set this property if the USB device has its own power source.
> > > +    type: boolean
> > > +
> > > +  # The following are optional properties for "usb-b-connector".
> > > +  id-gpios:
> > > +    description: An input gpio for USB ID pin.
> > > +    maxItems: 1
> > > +
> > > +  vbus-gpios:
> > > +    description: An input gpio for USB VBus pin, used to detect presence of
> > > +      VBUS 5V. See gpio/gpio.txt.
> >
> > Can this be written as bindings/gpio/gpio.txt?
> 
> Or just drop the reference so we don't have to fix it later.

Dropped the reference.
> 
> > > +    maxItems: 1
> > > +
> > > +  vbus-supply:
> > > +    description: A phandle to the regulator for USB VBUS if needed when host
> > > +      mode or dual role mode is supported.
> > > +      Particularly, if use an output GPIO to control a VBUS regulator, should
> > > +      model it as a regulator. See regulator/fixed-regulator.yaml
> >
> > And bindings/regulator/fixed-regulator.yaml? The idea is to
> > disambiguate from kernel Documentation/ directory.
> >
> > > +
> > > +  # The following are optional properties for "usb-c-connector".
> >
> > Is there a way to constrain the binding so that this can't be put in a
> > connector that doesn't have the usb-c-connector compatible string?
> 
> Yes, with if/then and setting excluded properties to 'false'.
> Personally, I don't think it is worth the messiness. I'm not too
> worried if folks put in properties that are going to be ignored.

Leaving this as is for now, based on the above comment.
> 
> Rob
> 
> > > +  power-role:
> > > +    description: Determines the power role that the Type C connector will
> > > +      support. "dual" refers to Dual Role Port (DRP).
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#definitions/string
> > > +    enum:
> > > +      - source
> > > +      - sink
> > > +      - dual
> > > +
> > > +  try-power-role:
> > > +    description: Preferred power role.
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#definitions/string
> > > +    enum:
> > > +     - source
> > > +     - sink
> > > +     - dual
> > > +
> > > +  data-role:
> > > +    description: Data role if Type C connector supports USB data. "dual" refers
> > > +      Dual Role Device (DRD).
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#definitions/string
> > > +    enum:
> > > +      - host
> > > +      - device
> > > +      - dual
> >
> > Is there a way to maintain a description for each possible string
> > property? Then we could move the last sentence in the description above
> > to be attached to '- dual' here.
> >
> > > +
> > > +  # The following are optional properties for "usb-c-connector" with power
> > > +  # delivery support.
> > > +  source-pdos:
> > > +    description: An array of u32 with each entry providing supported power
> > > +      source data object(PDO), the detailed bit definitions of PDO can be found
> > > +      in "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.2
> > > +      Source_Capabilities Message, the order of each entry(PDO) should follow
> > > +      the PD spec chapter 6.4.1. Required for power source and power dual role.
> > > +      User can specify the source PDO array via PDO_FIXED/BATT/VAR/PPS_APDO()
> > > +      defined in dt-bindings/usb/pd.h.
> > > +    minItems: 1
> > > +    maxItems: 7
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +
> > > +  sink-pdos:
> > > +    description: An array of u32 with each entry providing supported power sink
> > > +      data object(PDO), the detailed bit definitions of PDO can be found in
> > > +      "Universal Serial Bus Power Delivery Specification" chapter 6.4.1.3
> > > +      Sink Capabilities Message, the order of each entry(PDO) should follow the
> > > +      PD spec chapter 6.4.1. Required for power sink and power dual role. User
> > > +      can specify the sink PDO array via PDO_FIXED/BATT/VAR/PPS_APDO() defined
> > > +      in dt-bindings/usb/pd.h.
> > > +    minItems: 1
> > > +    maxItems: 7
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> > > +
> > > +  op-sink-microwatt:
> > > +    description: Sink required operating power in microwatt, if source can't
> > > +      offer the power, Capability Mismatch is set. Required for power sink and
> > > +      power dual role.
> > > +
> > > +  ports:
> > > +    description: OF graph bindings (specified in bindings/graph.txt) that model
> > > +      any data bus to the connector unless the bus is between parent node and
> > > +      the connector. Since a single connector can have multiple data buses every
> > > +      bus has assigned OF graph port number as described below.
> >
> > has an assigned?
> >
> > > +    type: object
> > > +    properties:
> > > +      port@0:
> > > +        type: object
> > > +        description: High Speed (HS), present in all connectors.
> > > +
> > > +      port@1:
> > > +        type: object
> > > +        description: Super Speed (SS), present in SS capable connectors.
> > > +
> > > +      port@2:
> > > +        type: object
> > > +        description: Sideband Use (SBU), present in USB-C.
> >
> > Likewise, is it possible to constrain this to only usb-c-connector
> > compatible string based bindings? And if so, does it become required for
> > that compatible string?
> 
> Not required as alternate modes are not required. (BTW, it should
> probably be clarified this is supposed to be the alternate mode
> connection of which SBU is part of).

I've changed the description text for port@2 to:
"Sideband Use (SBU), present in USB-C. This describes the alternate mode connection of which SBU is a part. "
> 
> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
