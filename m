Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B22D10E391
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Dec 2019 22:10:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKtXHE5Plw3C/5rBBzi/jVYDfrmga2dAsSGQKpsknE4=; b=YDoZWzrYiCwbsR
	g4ekUyHjlvYop4pqplQjmT8XGZOTpdSnJ57Ni2+RpNnqrlqTMsbHL9AtcXl9NT259iTEjpcjdnxbf
	9UeQgJn2I4dwmI3X/tY2KD/RD4AZC9EH+Zj2mRDXn0mFipNsCclD+dB2D2ekMK5Se7/jG62FfW1O+
	d6x3erHFpqIbvDoxfDgRkJeD+IFfK6qcjMc8t/nZgeG7hE7lTZ0CG3hwEja2QaslGxm+Qf9UDHZ4y
	nIWQM0mM8RuDiD8U4gBeoY8YCmRINtGkaxjO9hyp6TecOhnlw3CWKCfSgqLFAaa6XXBZWji+JB5GH
	r3+NFQY+zwh/uXPbEmwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibWTm-0005x4-Au; Sun, 01 Dec 2019 21:10:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibWTZ-0005wj-1g
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Dec 2019 21:09:55 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 928BC20865;
 Sun,  1 Dec 2019 21:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575234592;
 bh=KnH1X21TpcbK4yvu0f9o3XBV5xnJ8tgrWxBrMATOpqY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xkMKfWxmIFHT2jP3YWh5y9FyReZPVvHXMRN/F6W0K7K3ibQV8dDj4o5J96EY7KOiH
 wgZi8+QW3EwBzkmLtnOtMLQSi2ZfcAesaav0PBaPjbrGsn0seq2UkjRv+QYNEtxg8M
 dcRElyuuGVvawxSyN3ekfim/AE6/15uGEcAQZxYM=
Date: Sun, 1 Dec 2019 21:09:47 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: convert sd modulator to json-schema
Message-ID: <20191201210947.75b79f55@archlinux>
In-Reply-To: <20191127171642.6014-1-olivier.moysan@st.com>
References: <20191127171642.6014-1-olivier.moysan@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_130953_131561_9BF0BC45 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 Nov 2019 18:16:42 +0100
Olivier Moysan <olivier.moysan@st.com> wrote:

> Convert the sigma delta modulator bindings
> to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
Looks fine to me, but I'd like to give plenty of time for others to have
a chance to take a look.

If it looks like I've lost it in a week or two feel free to ping me.

Thanks,

Jonathan

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
> +
> +examples:
> +  - |
> +    ads1202: adc@0 {
> +      compatible = "sd-modulator";
> +      #io-channel-cells = <0>;
> +    };
> +
> +...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
