Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC3E14471F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUixdyOJTQlYyvhCqnAT3lKGgumYs9m2Nku5Z6LW4AE=; b=qffPlr5a4JvMPy
	9X4oonwhhEkZ8PS1/T89XI4d7IYVRFxdsPsQgxW35w47bpIHSSacICHXN+oiL93+lS4J5LtYycj82
	4HGiuSMRaWlXwMpoWh88BfUz24XR90wir7ea9z2G4yI5tQz0o+kAs578tBO7BftdSNTkWtLBcZffg
	VTxeqQ2kA2eiUga56SUDvDI7V70LlDVEyyNtpFqQ/WXhkpj/TwQNDKIV4ftO14U3Ms6Ig9GTiUi+1
	x9Wr/2DKOoSrHAC0RXbQkI98BAS7cbIx7YK83/q96Txksm/YVjf+T76sgmNlR9LpDaVvcCp104z6L
	ZHYKR6w7IQqoqhqB8WnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu1sm-0005dS-J4; Tue, 21 Jan 2020 22:20:24 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu1sX-0005cO-UU
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:20:14 +0000
Received: by mail-oi1-f196.google.com with SMTP id k4so4229601oik.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 14:20:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JYjL5Dj4sHium7MXkG5wUfXThgHrFk9aKNPtUfH5UZc=;
 b=OlSyp5aHKlhno3MkOR3BcClmoCztsZYQ+COhI39JLflTNb9pBMVhnFOW1EnYDGHOol
 lasThYmoWaOxuuL1E/gMelJNe7nw5vfnIRzUCB4yFVfAJVy5GsgkHbLGk1CSzf+MYEdx
 Af2wM0BFMVx2PBZTUpOJwoqL1RCBn8kiPF0AtItWuvV3qBjvK32INhmQwL9D7YfKKOBg
 dgzhDV9iCL5PYaczoQInKjD3SRt8HgTtHJU3iIdPp6UP9ukXPni6WqjSdON++rh/vbRs
 Ci6fw39e/uuS06OlggNP+X150IXw7w67Iy3mVLRg4I0Z/b1YJZU4Xd6EDobph+JZFwsh
 yCbQ==
X-Gm-Message-State: APjAAAWc/NilSVxjmBHOlpUJHK0dlOKi6VUXqpgtgm4VeVbk19Mi1wrK
 diBcqSqUCbWEYU1T88DOdw==
X-Google-Smtp-Source: APXvYqyA0cFBVl5WxqRWUAajmwQG24um1yPraaZ5cnlqeSKW61xBpYW8L1xuloSvzFgFL8RaFKDW6w==
X-Received: by 2002:aca:5588:: with SMTP id j130mr4595173oib.122.1579645208961; 
 Tue, 21 Jan 2020 14:20:08 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d7sm12406255oic.46.2020.01.21.14.20.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 14:20:08 -0800 (PST)
Received: (nullmailer pid 8896 invoked by uid 1000);
 Tue, 21 Jan 2020 22:20:07 -0000
Date: Tue, 21 Jan 2020 16:20:07 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/2] dt-bindings: serial: Convert rs485 bindings to
 json-schema
Message-ID: <20200121222007.GA1686@bogus>
References: <20200114123329.3792-1-benjamin.gaignard@st.com>
 <20200114123329.3792-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200114123329.3792-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_142009_987770_68B4FF23 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, erwan.leray@st.com,
 mcoquelin.stm32@gmail.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 01:33:28PM +0100, Benjamin Gaignard wrote:
> Convert rs485 binding to yaml style file.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/serial/rs485.txt | 32 +--------------
>  .../devicetree/bindings/serial/rs485.yaml          | 45 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 31 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/rs485.yaml
> 
> diff --git a/Documentation/devicetree/bindings/serial/rs485.txt b/Documentation/devicetree/bindings/serial/rs485.txt
> index b92592dff6dd..a7fe93efc4a5 100644
> --- a/Documentation/devicetree/bindings/serial/rs485.txt
> +++ b/Documentation/devicetree/bindings/serial/rs485.txt
> @@ -1,31 +1 @@
> -* RS485 serial communications
> -
> -The RTS signal is capable of automatically controlling line direction for
> -the built-in half-duplex mode.
> -The properties described hereafter shall be given to a half-duplex capable
> -UART node.
> -
> -Optional properties:
> -- rs485-rts-delay: prop-encoded-array <a b> where:
> -  * a is the delay between rts signal and beginning of data sent in milliseconds.
> -      it corresponds to the delay before sending data.
> -  * b is the delay between end of data sent and rts signal in milliseconds
> -      it corresponds to the delay after sending data and actual release of the line.
> -  If this property is not specified, <0 0> is assumed.
> -- rs485-rts-active-low: drive RTS low when sending (default is high).
> -- linux,rs485-enabled-at-boot-time: empty property telling to enable the rs485
> -  feature at boot time. It can be disabled later with proper ioctl.
> -- rs485-rx-during-tx: empty property that enables the receiving of data even
> -  while sending data.
> -
> -RS485 example for Atmel USART:
> -	usart0: serial@fff8c000 {
> -		compatible = "atmel,at91sam9260-usart";
> -		reg = <0xfff8c000 0x4000>;
> -		interrupts = <7>;
> -		atmel,use-dma-rx;
> -		atmel,use-dma-tx;
> -		linux,rs485-enabled-at-boot-time;
> -		rs485-rts-delay = <0 200>;		// in milliseconds
> -	};
> -
> +See rs485.yaml
> diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Documentation/devicetree/bindings/serial/rs485.yaml
> new file mode 100644
> index 000000000000..65c6a98969a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/rs485.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/rs485.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RS485 serial communications Bindings
> +
> +description: The RTS signal is capable of automatically controlling
> +             line direction for the built-in half-duplex mode.
> +             The properties described hereafter shall be given to a
> +             half-duplex capable UART node.
> +
> +maintainers:
> +  -  Rob Herring <robh@kernel.org>
> +
> +properties:
> +  rs485-rts-delay:
> +    description: prop-encoded-array <a b>
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +      - items:
> +          items:
> +            - description:
> +                Delay between rts signal and beginning of data sent in milliseconds.
> +                It corresponds to the delay before sending data.
> +              $ref: "/schemas/types.yaml#/definitions/uint32"

This is not correct. The types only apply to whole properties.

Is there a maximum? Seems like 1 sec would be more than anyone would 
ever want?

> +              default: 0
> +            - description:
> +                Delay between end of data sent and rts signal in milliseconds.
> +                It corresponds to the delay after sending data and actual release of the line.
> +              $ref: "/schemas/types.yaml#/definitions/uint32"
> +              default: 0
> +
> +  rs485-rts-active-low:
> +    description: drive RTS low when sending (default is high).
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
> +  linux,rs485-enabled-at-boot-time:
> +    description: enables the rs485 feature at boot time. It can be disabled later with proper ioctl.
> +    $ref: /schemas/types.yaml#/definitions/flag
> +
> +  rs485-rx-during-tx:
> +   description: enables the receiving of data even while sending data.
> +   $ref: /schemas/types.yaml#/definitions/flag
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
