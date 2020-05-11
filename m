Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25931CE7B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 23:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Be+j49TJV/b3dtwpJhJIAZWjDPt52JmVvJJgIpIE4gA=; b=i9NZ3k7lv1/tQ0
	hXXvTTDPTnZ9DPFGCNaBrg5SS7R1WHdzBCtkX4mrxObxU0Z9zzeuqE1EDB11iJ7MvwdAOBzc4p3C3
	6IBwwTvEodzu01cMdRJV9ghcuck/vKjrIwNoINoeCli3tnoQ6quTnKCQl90rRuGA1dhQY55AKv6L5
	BZKNJfK7hvu/eS5C7qCMMK16sAxwrCoQ1rGZCFkOPZb5nBo2jQBR2GhfpRFulEJz37vxfKlCVIRR2
	dDMGu3VxZfVtKaOnMxhx70XtqhXXPcwr1c9MRL1bCI9P8D1qSs7HaEizZZd/HsnqAVzRbQvduKlap
	Inh4ZT4anv2oDjEvmL+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYGGw-0001bx-MO; Mon, 11 May 2020 21:47:38 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYGGp-0001bZ-3M; Mon, 11 May 2020 21:47:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id j4so8843889otr.11;
 Mon, 11 May 2020 14:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kr536AH92tCs886e1ZVZycHlp8zzTbbAYS9sSy9+r90=;
 b=Xh1qjpH3tGwd8Jauje/t3h+e8tNY/YyrAbLLHq9PyL9frA2lDZ6hXKGNHP4Sx2E80C
 FvIs6pJPNk/oich5HOIpr7KJ6CvvYGPZPciJunPEm3y55YgT3wA38knynQin2ceemZr4
 /DYWSv3CFQUxToU1p6w38osfH/3bmQ8S35/nbQ38Dl9s881i8SXF8TxXrPHPM+9emeEb
 f60rfLhpYwLuPAGObvfswmV5ou29YTfQmQuEABaLcAA8UlM5n4hewn+gXldiA/GNP9Nd
 /35MnGZL4vQKKH3GewGP62F6KBEyP9R5brZKKLRf8i7vEbM3PjcWaJy0h39HmueU0GNJ
 o96w==
X-Gm-Message-State: AGi0PubjIFfGSZh9ogdqCEV3iPByNOueuOXkp04j3O7uC+TcjdL1MAf2
 9U4uHrt4i7pmT98ONf0lRw==
X-Google-Smtp-Source: APiQypL9c25jA4qb587PTmaLEbxVx0mD5FwZCOgGZkDio2qGfy6/FFbMg2/4qBhezaAEnuubpNLpxA==
X-Received: by 2002:a9d:6c94:: with SMTP id c20mr14832489otr.318.1589233650111; 
 Mon, 11 May 2020 14:47:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l187sm4956929oig.0.2020.05.11.14.47.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:47:29 -0700 (PDT)
Received: (nullmailer pid 4611 invoked by uid 1000);
 Mon, 11 May 2020 21:47:27 -0000
Date: Mon, 11 May 2020 16:47:27 -0500
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 03/91] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
Message-ID: <20200511214727.GA20924@bogus>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <69e869b0a79ea17f2cdb79df986409963672495a.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69e869b0a79ea17f2cdb79df986409963672495a.1587742492.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_144731_142293_E61D2996 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 05:33:44PM +0200, Maxime Ripard wrote:
> The firmware running on the RPi VideoCore can be used to discover and
> change the various clocks running in the BCM2711. Since devices will
> need to use them through the DT, let's add a pretty simple binding.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> index cec540c052b6..b48ed875eb8e 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> @@ -22,6 +22,25 @@ properties:
>        Phandle to the firmware device's Mailbox.
>        (See: ../mailbox/mailbox.txt for more information)
>  
> +  clocks:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: raspberrypi,firmware-clocks
> +
> +      "#clock-cells":
> +        const: 1
> +        description: >
> +          The argument is the ID of the clocks contained by the
> +          firmware messages.

Not really any reason to make this a child node. The parent can be a 
clock provider.

> +
> +    required:
> +      - compatible
> +      - "#clock-cells"
> +
> +    additionalProperties: false
> +
>  required:
>    - compatible
>    - mboxes
> @@ -31,5 +50,10 @@ examples:
>      firmware {
>          compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
>          mboxes = <&mailbox>;
> +
> +        firmware_clocks: clocks {
> +            compatible = "raspberrypi,firmware-clocks";
> +            #clock-cells = <1>;
> +        };
>      };
>  ...
> -- 
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
