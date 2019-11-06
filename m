Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AFBF0D99
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sL5OsG0qQesKsK19ZSeuH0PC84GGf+79Sn4lLu6q3io=; b=fZ0DT4zUmxLu9w
	kVBRsfuppgEIyCoAWXNhmj54ckH1y0+krecVf2Mvg7L8KQ+TVJdOgL3zrFAWz3Py1VeHRK/oukcOo
	F3GwZ7i1sgqooJfbb/QDX8bRCK88LHr1fX2CUKjken660estt84BBJhybcS2m8zfnQJOWron0RQl5
	dE+IPEQ9MRM2FJzCRzlNCm1sMH1kZNV7nEMU418VLYn7jxBbdpmkSnQ7GpajMcxpTNN2shSs8e3wv
	qNqZxJ7W4Twt7DnAq+90p52ZYoCsOL37546G2B/gG80eKQGe/zZLjmihr1txJp2pGkifHwxDmWXEt
	t53XuZcWYHuOtu7yEPxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCeW-0005hO-6E; Wed, 06 Nov 2019 04:10:40 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCeI-0005eX-8i
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:10:28 +0000
Received: by mail-oi1-f195.google.com with SMTP id a14so30796oid.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:10:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XTqm+5ilx5cNXoALUuokKsa13a1L8tV/eJS9nqrIoLA=;
 b=EdHTLEwD8rsyiHGvHOIPhq5Za45C22MPZiMBsm5/UeAusHllYKxFvuSgKPxN63VrVM
 g9IDj5Qk9HXbO9GnEpbgdxcuqjSrhUNis3hbzp+q4NdcXJjV7v2bDgXa9w7rNvFYBgxD
 j+CS27o1Ef2cm7MCLKOTc3YZYfBazcQvQJocmef4wuIkl1mD1g74hnN+H2q83dvnSlZS
 Th1xqC7F/7BrJgZPJ5kEo4NqeNbcIIVUNqD4gTu6qPiTMI8wGvCsbVIQdyTV8i7Zd4an
 9JNJdPaXWRq962xtFo3msxnEWQKOYzu6t4A9qIk2APUSx/2hxTQLXpPvJoAazKbBHARi
 6qZw==
X-Gm-Message-State: APjAAAUsLogbcOOjzfKDSv8fN5wGhSIxKnWSRJK6aUiGrfszR2eJnfvI
 mRQ93lb1r2Zcjgn7vpqkJiK3wEY=
X-Google-Smtp-Source: APXvYqylmIWEBXlGiig5sQDLxWMziJuvUvr8lMR4v+i6TBlZUwvxqcsWnINhAkMmXTCCEcsff6WZoQ==
X-Received: by 2002:aca:5dd5:: with SMTP id r204mr400621oib.73.1573013425171; 
 Tue, 05 Nov 2019 20:10:25 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w33sm6874277otb.68.2019.11.05.20.10.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:10:24 -0800 (PST)
Date: Tue, 5 Nov 2019 22:10:23 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/4] dt-bindings: counter: Convert stm32 counter bindings
 to json-schema
Message-ID: <20191106041023.GB5294@bogus>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031123040.26316-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_201026_338396_EF750700 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 01:30:37PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 counter binding to DT schema format using json-schema

Probably this should all be 1 file instead.

> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../bindings/counter/st,stm32-timer-cnt.yaml       | 38 ++++++++++++++++++++++
>  .../bindings/counter/stm32-timer-cnt.txt           | 31 ------------------
>  2 files changed, 38 insertions(+), 31 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/counter/st,stm32-timer-cnt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
> 
> diff --git a/Documentation/devicetree/bindings/counter/st,stm32-timer-cnt.yaml b/Documentation/devicetree/bindings/counter/st,stm32-timer-cnt.yaml
> new file mode 100644
> index 000000000000..56192d613601
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/counter/st,stm32-timer-cnt.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/counter/st,stm32-timer-cnt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Timers quadrature bindings
> +
> +description:
> +  STM32 Timer provides quadrature encoder to detect angular position
> +  and direction of rotary elements, from IN1 and IN2 input signals.
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +properties:
> +  counter:
> +    type: object
> +
> +    description:
> +      must be a sub-node of an STM32 Timer device tree node
> +
> +    properties:
> +      compatible:
> +        const: st,stm32-timer-counter
> +            
> +    required:
> +      - compatible
> +
> +examples:
> +  - |
> +    counter {
> +      compatible = "st,stm32-timer-counter";
> +    };
> +
> +...
> +
> diff --git a/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt b/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
> deleted file mode 100644
> index c52fcdd4bf6c..000000000000
> --- a/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -STMicroelectronics STM32 Timer quadrature encoder
> -
> -STM32 Timer provides quadrature encoder to detect
> -angular position and direction of rotary elements,
> -from IN1 and IN2 input signals.
> -
> -Must be a sub-node of an STM32 Timer device tree node.
> -See ../mfd/stm32-timers.txt for details about the parent node.
> -
> -Required properties:
> -- compatible:		Must be "st,stm32-timer-counter".
> -- pinctrl-names: 	Set to "default".
> -- pinctrl-0: 		List of phandles pointing to pin configuration nodes,
> -			to set CH1/CH2 pins in mode of operation for STM32
> -			Timer input on external pin.
> -
> -Example:
> -	timers@40010000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32-timers";
> -		reg = <0x40010000 0x400>;
> -		clocks = <&rcc 0 160>;
> -		clock-names = "int";
> -
> -		counter {
> -			compatible = "st,stm32-timer-counter";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&tim1_in_pins>;
> -		};
> -	};
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
