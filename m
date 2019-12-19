Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056B8127128
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQ5s+YknOnBDCYgpIRWicdJ37S7+qca04JtPpt7h+v4=; b=olbhcA8qC3KCnD
	KsYvrfnBS3tssdOleYWhRfu1EgIXx2PxOlri5VrjDXmALRVpbrBYcxXU7UpEYJsIrgGmcIgdlRcOU
	RcxU3R9IEpvNLpdIWTrtTIOjhlNbG8emdvMknCSEcQh7Tg2l/Uo1Hf7P1jFV25nlbZxWW41rhrWkc
	td1It0FcGWC/DS3r6Ny127rGewFNVMrlWL7RmLZXqi2AO99tIGeVBBP0a5PjR03c2Zg0YsRHcNIbx
	ZfsvDv9kkyLUbnI8X5yfXdvfH/KJjw7kNWuqjqfYuiuPt1jw9lcY7uz0XfZVo3TLuVcP1/bqZnHHR
	OBonyowNaerqyXwnSkmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii4qP-0000m3-JC; Thu, 19 Dec 2019 23:04:33 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii4qG-0000lH-HZ; Thu, 19 Dec 2019 23:04:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so9234659oty.6;
 Thu, 19 Dec 2019 15:04:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=F7dFVXsBXe6V0IT3wFxkvgfpUWL9SwHOltmODSQxTMA=;
 b=ZkKYH5LAqR+4pWdiNYwYKFRBjtSG6PS1Gylb8xPVxq5NJVbCr+JUXq0rnTkLuz3gmn
 RoJ6/fsqlKaC2OJij9WofoQ89O1D/C/LXFZQaPwg+gSY4uBdCTpQ+ZvjRU3EaJzG9ADP
 D98fk0cBouhEtgd40ObQ5cDf7miP0vc0P0wQ4XfgZESkx4m05L8K3/IEfX9xtvkkTrEV
 Mr/+SgXB8XXVvhdx/x5/QJ4Pv2oqA3E6e8W6WbyQ1HEM4jqVARLedIAzqGIz9TVdq0J0
 ysMRbU1R7kAaKWi3ZH8u4ZS9zoXhqQ4kc7twQ+obmuz3vvUdOOX2B3sCle/jScbtV+u+
 JbFg==
X-Gm-Message-State: APjAAAUP9ce5CW5GKbYxsCxngcw5qddvWLyCKAaaD+KQHYGHRFT07X8d
 qrPLdpT9MDAccn/GhoehuQ==
X-Google-Smtp-Source: APXvYqy132pI7t/f3+X+sZU4Ko0GpazlmqI0elgfvDTZQ8i2aDSAFKJOgz5uZujIhEm+kDaj8cyaCA==
X-Received: by 2002:a9d:d0b:: with SMTP id 11mr11694540oti.287.1576796661610; 
 Thu, 19 Dec 2019 15:04:21 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id b206sm2499978oif.30.2019.12.19.15.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:04:21 -0800 (PST)
Date: Thu, 19 Dec 2019 17:04:20 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [RFC 06/25] dt-bindings: leds: Add Titan Micro Electronics TM1628
Message-ID: <20191219230335.GA25461@bogus>
References: <20191212033952.5967-1-afaerber@suse.de>
 <20191212033952.5967-7-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033952.5967-7-afaerber@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_150424_582055_A2D98990 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, Pavel Machek <pavel@ucw.cz>, zypeng@titanmec.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 04:39:33AM +0100, Andreas F=E4rber wrote:
> Add a YAML schema binding for TM1628 LED controller.
> =

> Cc: zypeng@titanmec.com
> Signed-off-by: Andreas F=E4rber <afaerber@suse.de>
> ---
>  @Rob: How could we express constraints on two-cell reg value ranges here?

It's encoded as a matrix, so something like this:

reg:
  items:
    items:
      - # constraints on 1st cell value
      - # constraints on 2nd cell value


>        Should we also model constraints on reg range by #grids property?

So the value of #grid defines the max values in reg? Unfortunately, =

we can't yet for json-schema. There's been some proposals, but nothing =

final I think.

>  .../devicetree/bindings/leds/titanmec,tm1628.yaml  | 80 ++++++++++++++++=
++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/titanmec,tm162=
8.yaml
> =

> diff --git a/Documentation/devicetree/bindings/leds/titanmec,tm1628.yaml =
b/Documentation/devicetree/bindings/leds/titanmec,tm1628.yaml
> new file mode 100644
> index 000000000000..024875656e79
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/titanmec,tm1628.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/titanmec,tm1628.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Titan Micro Electronics TM1628 LED controller
> +
> +maintainers:
> +  - Andreas F=E4rber <afaerber@suse.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +    - titanmec,tm1628
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#grids":

I'd be more a fan of using '#' prefix if we'd been better at using it =

when appropriate, so I'd probably drop the '#'.

> +    description: |
> +      Number of GRID output lines to use.
> +      This limits the number of available SEG output lines.
> +    minimum: 4
> +    maximum: 7
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +
> +patternProperties:
> +  "^.*@[1-7],([1-9]|1[02-4])$":
> +    type: object
> +    description: |
> +      Properties for a single LED.

Please describe the unit-address format. I assume it's <grid>,<segment>.

> +
> +    properties:
> +      reg:
> +        description: |
> +          1-based grid number, followed by 1-based segment number.
> +        maxItems: 1
> +
> +      linux,default-trigger: true
> +
> +    required:
> +      - reg
> +
> +examples:
> +  - |
> +    #include <dt-bindings/leds/common.h>
> +
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        led-controller@0 {
> +            compatible =3D "titanmec,tm1628";
> +            reg =3D <0>;
> +            spi-3-wire;
> +            spi-lsb-first;
> +            spi-max-frequency =3D <500000>;
> +            #grids =3D <7>;
> +            #address-cells =3D <2>;
> +            #size-cells =3D <0>;
> +
> +            colon@5,4 {
> +                reg =3D <5 4>;
> +                color =3D <LED_COLOR_ID_WHITE>;
> +                function =3D LED_FUNCTION_INDICATOR;
> +                linux,default-trigger =3D "heartbeat";
> +            };
> +        };
> +    };
> +...
> -- =

> 2.16.4
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
