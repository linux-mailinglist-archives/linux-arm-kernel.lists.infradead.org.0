Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5494716EDB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLzGK0yfQlu9McT3nWpoKYIvn+J4+mpwLdH+n0P+cGs=; b=Fi5GUKvOHVJwlO
	gO19BmRbpJoPqTn6C4s2N624gX6frGjwyO6cqdwKHrHQlRRuRPXCD0FdeqjasrvVoV4AGHajpO5oG
	X7tim8+PQ2yJ/2/nE969+2OtONXKlOCCoqLclQQ9nKoX8BcVhEpJzqxo1wfVt4ShgLdN6CPrsfJlJ
	6Cu4fjM8iKO5wmTbtVLeO8bHPjHphHM0JC1XGR51dR2JHQe3ZmV9VUayiRXvtcdo2l/Hbrds8ftqa
	g7fCPXJoZT5cWcTMH+BLWOg41rz/dYmX9NPhjGkqlYPeJGYwSa2i5v3NGz5Qc+kwdPpNyoZ+D6lh/
	0mr3bAiCjoeYKDXIY+1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6elX-0003lf-NO; Tue, 25 Feb 2020 18:17:07 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6elN-0003lH-R8; Tue, 25 Feb 2020 18:16:59 +0000
Received: by mail-oi1-f195.google.com with SMTP id i1so227873oie.8;
 Tue, 25 Feb 2020 10:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7UyTeMzaTbOixtQKcOlo1zEfQ//tLMtgH0J7yCWDsaI=;
 b=SHug/5MzuD9WFx3bnIeaUACTicYM72IhCmlX/VE9JYjUYUw3QlmUzfxaEDdf6tTlx2
 Tz3WypzLeS45BDwZPTAc5es+tdSF7J24SajbqTXGswHy237fYvNDV6ymvYFbmdo64j2Y
 Mig0w/B0Nc5mdt8+QykaoxjOD9/N1xH54j+E2P6N7sivlUB3wyIAb5L885IXSxSsXhok
 WEwycR4a6h5xuPnTjptga0r8c6roYlE6itdsenLDnYQzQ7mlRUpIjgqf4hDhG0Zy4CGu
 qWXm6Qw/hgKcr0zxAfTwxAeF/OpKZBJX5mRqvCuq4AcCErDsBIdPzUlJtNHmld0C3jKs
 n0DA==
X-Gm-Message-State: APjAAAXjwmhxCQbcNg+sgan3D5S0wBYyPwp6B+U5AYkSqVkdbjO0Exn/
 QjhwQeqoRJq0jJHAolC2Sw==
X-Google-Smtp-Source: APXvYqyG5jtbTR8e+2eatGO7AOO/3BLqG2/NHQ3384FNvtFffmk1sB1TsteHHtEFBpdhQlFHBTXPqA==
X-Received: by 2002:aca:190b:: with SMTP id l11mr175520oii.65.1582654616272;
 Tue, 25 Feb 2020 10:16:56 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c10sm5886903otl.77.2020.02.25.10.16.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 10:16:55 -0800 (PST)
Received: (nullmailer pid 3615 invoked by uid 1000);
 Tue, 25 Feb 2020 18:16:54 -0000
Date: Tue, 25 Feb 2020 12:16:54 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 06/89] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
Message-ID: <20200225181654.GA694@bogus>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <9166f3acdc2a64e3f3ca1cd2e283005ee2df37c9.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9166f3acdc2a64e3f3ca1cd2e283005ee2df37c9.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101657_879180_A7B95257 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 10:06:08AM +0100, Maxime Ripard wrote:
> The firmare running on the RPi VideoCore can be used to discover and
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
>  Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml | 39 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> new file mode 100644
> index 000000000000..d37bc311321d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/raspberrypi,firmware-clocks.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RaspberryPi Firmware Clocks Device Tree Bindings
> +
> +maintainers:
> +  - Maxime Ripard <mripard@kernel.org>
> +
> +properties:
> +  "#clock-cells":
> +    const: 1
> +
> +  compatible:
> +    const: raspberrypi,firmware-clocks
> +
> +  raspberrypi,firmware:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: >
> +      Phandle to the mailbox node to communicate with the firmware.

Can't this be a child node of the phandle instead? Or just add 
'#clock-cells' to the firmware node.

> +
> +required:
> +  - "#clock-cells"
> +  - compatible
> +  - raspberrypi,firmware
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware_clocks: firmware-clocks {
> +        compatible = "raspberrypi,firmware-clocks";
> +        raspberrypi,firmware = <&firmware>;
> +        #clock-cells = <1>;
> +    };
> +
> +...
> -- 
> git-series 0.9.1
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
