Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E210811493A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 23:27:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erJwiKYB1tzwNhAOuRctNpgmjaP6TZUHA/6wRQ5RprE=; b=OF0gf7CpesbU0r
	hIT2usOOmRiVEgYqO9tp3wmadm6UhqJSpvbyfT5fSMYmuUh4zzq5jzzoIENbQOxFvcsVof0jRCFN1
	Gf5SSpa0ePeOpTCN8KmI5tK+SLzQxei5FsDpBU1pg3NpwJ1Lz6dtWo8sbZXboZJvUgIcyWgox4DaO
	hl2OmF3DzywWZ23CafCWY7SJnG9XFMHuSFTtEY2jHtIk+Pza7nBs4q0lvmXS4bqBiEZ72bXICEzk0
	faLi3IWVFc6Ks27bYcPvpHSrYct2DMqJWPVElDKS/FprxGWsT5C3ribcQa/Jq+My/UmaDChZ5jtV0
	mRsy4Xf11nqQ4lMkMqHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczaz-0005I0-GP; Thu, 05 Dec 2019 22:27:37 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iczap-0005H6-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 22:27:29 +0000
Received: by mail-ot1-f68.google.com with SMTP id g18so4038874otj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 14:27:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=651QbfFxHbn+gIg6TglJPaA7sVi2egQeAs/aiyii6jY=;
 b=T0I79UfyKLnrksv1D+1LWb9wo8z58Tx9BpQJiyHG9jPiybNa/DKlaaBS/s0X0yz2IJ
 X3TBq9QhMnGHGft/etGvFd9CsPHyFmE7dEV1DCSrtbzckBM88PJVbhUq6kbBgvFfxWXb
 CKuA4IC/dFXIRR6SMEY4k/8Za4n7JInjcl6DaSSeYjXO1yA58hAUWeJj9q7MnslwkHqQ
 X5m1fSG7M8lYTXQsWgGswCbOKqDi4fbYBBKluVYZtfvuKp/lF3GC2tvW0R4mzm/a42Xz
 dYjY59R/RCmZKBqdAVsfAGxetosoPRy++WPGonCVA00TWA2gJdImbKqTdfK1xHIhpriN
 eQDQ==
X-Gm-Message-State: APjAAAUUgH5+eNdg7yp7iaXAQoD54mLpouf5dn7YtrSmlfe6/QtRhpB5
 pXKTNAI09zJ7V9pPDaFwCg==
X-Google-Smtp-Source: APXvYqw/PZNA3vwmc6UK37QzPywxm/gn6jJclg5Apod62JI2XI7Q9MTrj8/GmqtdSYdOOs7l2iZ8IQ==
X-Received: by 2002:a05:6830:16c6:: with SMTP id
 l6mr8879987otr.186.1575584846734; 
 Thu, 05 Dec 2019 14:27:26 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w203sm2009701oia.12.2019.12.05.14.27.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 14:27:25 -0800 (PST)
Date: Thu, 5 Dec 2019 16:27:25 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: convert sd modulator to json-schema
Message-ID: <20191205222725.GA7547@bogus>
References: <20191127171642.6014-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127171642.6014-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_142727_891647_C724CA17 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 06:16:42PM +0100, Olivier Moysan wrote:
> Convert the sigma delta modulator bindings
> to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>  .../iio/adc/sigma-delta-modulator.txt         | 13 -------
>  .../iio/adc/sigma-delta-modulator.yaml        | 35 +++++++++++++++++++
>  2 files changed, 35 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
> deleted file mode 100644
> index 59b92cd32552..000000000000
> --- a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
> +++ /dev/null
> @@ -1,13 +0,0 @@
> -Device-Tree bindings for sigma delta modulator
> -
> -Required properties:
> -- compatible: should be "ads1201", "sd-modulator". "sd-modulator" can be use
> -	as a generic SD modulator if modulator not specified in compatible list.
> -- #io-channel-cells = <0>: See the IIO bindings section "IIO consumers".
> -
> -Example node:
> -
> -	ads1202: adc {
> -		compatible = "sd-modulator";
> -		#io-channel-cells = <0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> new file mode 100644
> index 000000000000..8967c6f06d9d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/sigma-delta-modulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Device-Tree bindings for sigma delta modulator
> +
> +maintainers:
> +  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
> +
> +properties:
> +  compatible:
> +    description: |
> +      "sd-modulator" can be used as a generic SD modulator,
> +      if the modulator is not specified in the compatible list.
> +    enum:
> +      - sd-modulator
> +      - ads1201
> +
> +  '#io-channel-cells':
> +    const: 0
> +
> +required:
> +  - compatible
> +  - '#io-channel-cells'

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    ads1202: adc@0 {

No reg, so drop the unit-address.

> +      compatible = "sd-modulator";
> +      #io-channel-cells = <0>;
> +    };
> +
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
