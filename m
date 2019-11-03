Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9ACED308
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 12:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dAANWG1wetYXSU4PpdGHAEMjCG58Jfcr8ASzrYS5ueY=; b=PtPJHKVGkSTESA
	4gxZS0KzGN2HE4pfMhtlWGKWE2XPWgx0Qlq9RrNBBKnax9UuXmCiC/KvRdbH5hewBhgfYgjpcj7NP
	ZjgLDqfawHfVqexzgAnV1jouzMAsrlQM5cV/OXeJ/SI+teOuLBlcCNs3ddrI9ivlboxC4ggeTi1Aw
	PODqT9IJpNo6KSsUFFhv8u46CouPCzM3ub7jwP7o0YfxUNf4z6LB+mxXOUph8ZEFLqhXoNj0WBt6C
	ouwCcZnI71Zsa24Y37UoZzPx5DSKXZVpISGZlljPduWgHev4ByH6vA8VxP6lLWqOVtuAN2DLlp6uY
	EZuOlRRsgaaOvq3+Ld7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRDkc-0004cE-Iz; Sun, 03 Nov 2019 11:08:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRDkX-0004bt-2o
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 11:08:50 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9974820842;
 Sun,  3 Nov 2019 11:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572779327;
 bh=FbaoVaWioLqr0Z7FxL6DKXeAOHtNY6YOT3zMnzdc8eU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aD6PQEf1YtBiqkJF3yrAS2+/Z6KUwhqc68hNZX6/JK6K79E/SC6l/MJJK/XPvHMVo
 FKFtMgi5uMvstFpoEvL8wAOJ/0IAUtx1un5J0bwBbMya+o7K3qc6EBB8uSXwD0/x9c
 +PTJWqhrPJrpGPKRQQy4w5Ow7wodiZeOSRK/hR54=
Date: Sun, 3 Nov 2019 11:08:41 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 2/4] dt-bindings: iio: timer: Convert stm32 IIO trigger
 bindings to json-schema
Message-ID: <20191103110841.3ad3ecfb@archlinux>
In-Reply-To: <20191031123040.26316-3-benjamin.gaignard@st.com>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
 <20191031123040.26316-3-benjamin.gaignard@st.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_030849_164634_2CB28439 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, thierry.reding@gmail.com, pmeerw@pmeerw.net,
 knaack.h@gmx.de, fabrice.gasnier@st.com, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019 13:30:38 +0100
Benjamin Gaignard <benjamin.gaignard@st.com> wrote:

> Convert the STM32 IIO trigger binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
I'm far from great on these as still haven't taken the time I should to learn
the yaml syntax properly.  A few comments inline however based mostly on this
doesn't quite look like other ones I've seen recently.

Thanks,

Jonathan

> ---
>  .../bindings/iio/timer/st,stm32-timer-trigger.yaml | 44 ++++++++++++++++++++++
>  .../bindings/iio/timer/stm32-timer-trigger.txt     | 25 ------------
>  2 files changed, 44 insertions(+), 25 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
>  delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
> 
> diff --git a/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml b/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
> new file mode 100644
> index 000000000000..1c8c8b55e8cd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/timer/st,stm32-timer-trigger.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Timers IIO timer bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +properties:
> +  $nodemane:

nodename?

> +    pattern: "^timer@[0-9]+$"
> +    type: object
> +
> +    description:
> +      must be a sub-node of an STM32 Timer device tree node
> +
> +    properties:
> +      compatible:
> +        oneOf:

enum is I think preferred for these.

> +          - const: st,stm32-timer-trigger
> +          - const: st,stm32h7-timer-trigger
> +            
> +      reg: true

Normally some info for what the reg value is..

> +
> +    required:
> +      - compatible
> +      - reg
> +
> +examples:
> +  - |
> +    timers2: timer@40000000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      timer@0 {
> +        compatible = "st,stm32-timer-trigger";
> +        reg = <0>;
> +      };
> +    };
> +    
> +...
> diff --git a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt b/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
> deleted file mode 100644
> index b8e8c769d434..000000000000
> --- a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -STMicroelectronics STM32 Timers IIO timer bindings
> -
> -Must be a sub-node of an STM32 Timers device tree node.
> -See ../mfd/stm32-timers.txt for details about the parent node.
> -
> -Required parameters:
> -- compatible:	Must be one of:
> -		"st,stm32-timer-trigger"
> -		"st,stm32h7-timer-trigger"
> -- reg:		Identify trigger hardware block.
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
> -		timer@0 {
> -			compatible = "st,stm32-timer-trigger";
> -			reg = <0>;
> -		};
> -	};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
