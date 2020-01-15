Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB4F13C639
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=esEKsEYQqP/tsv26g16AR74JiYPXLUQUkvPa+aF7SxY=; b=jMhYDLLxhbg5Gy
	ebo8qifHAZpazsbvogrz2ramIlf3GlM9VN4K3NoIu3MHw9x5DsSAvfQmljdagW/LFFRazvy1lsbn1
	H4y1jBjonBx9k5wUBL8OCwB6gh/xLeMPxaD09yUI4lDZwJd9vIalv0i3ETMhszztVMP6krcHZ8xvG
	+Ua3dMb0Hm+a2dATfRjWjT1UD1ZvwichTIPI6ffl1oWkp64qSuwQA6obmwonNaUzltUhMsh/uc6Ir
	9f0g+Ccyx89l0fK0La+umDzkPEScX0fS1qaAsweM6f03fc1kBlq95GvDTss5jGhdPqzdOJPodXyEv
	1/TB9OuxNEa+rQm8VvPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjlj-0003z6-B0; Wed, 15 Jan 2020 14:35:39 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjlW-0003xU-P1
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:35:31 +0000
Received: by mail-ot1-f65.google.com with SMTP id 77so16266932oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:35:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vmc4LTv9UhARNZilVqDisUzXdxxex8ZA0E5+WbrzhDk=;
 b=Viy0YTrmqyCSF20OnGl9gp0x9sP2xsDytF0M7SZhIOQiulN1TDF7fuNMeF9ShQb59f
 VRuDbnwfQIe2TNeK6LSXd85L2AwKCEz9cYuwVEQrFiEt1vbUprKOaaxA+3Pbf/hQomA5
 A4MLLsEzriN39YUVJzj1PZhLlNmm311gjAaRx0qegD2YackErs59idA+w1Y14wpsoxMb
 PL/5q/d5X4sEoppxj6hbKoQjdmL9Vl/80YrCnisRdsc4dBSmHnOYxDNHZWwqvVbs0K99
 H4iBcbYywfMCCQsO533kZ6tlh0ITAXHA3Ta1S3t8oyjRrdJzJwcWhuRC14FR0Kuf6Rom
 i1Ow==
X-Gm-Message-State: APjAAAVac2enbNLhcWOEFyAiAOT2QYp223v0Vvw8bGp1rm11XOndppz6
 511a02rYTKtwk+pHuIX8VquoFpk=
X-Google-Smtp-Source: APXvYqznQQyF5qLybGXX/wT+8nKeX08O63w7kr/0L3KouzK0Pody8IxEatyZIghQM3h0zaPayyEFMA==
X-Received: by 2002:a05:6830:15a:: with SMTP id
 j26mr2799459otp.137.1579098923803; 
 Wed, 15 Jan 2020 06:35:23 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p16sm6539131otq.79.2020.01.15.06.35.22
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 06:35:23 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 22040c
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 08:35:21 -0600
Date: Wed, 15 Jan 2020 08:35:21 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH 1/3] dt-bindings: timer: Add STM32 Low Power Timer bindings
Message-ID: <20200115143521.GA15099@bogus>
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
 <20200109145333.12260-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109145333.12260-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063526_815794_AAD0FDE8 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, p.paillet@st.com,
 mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 03:53:31PM +0100, Benjamin Gaignard wrote:
> Document STM32 Low Power bindings.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../bindings/timer/st,stm32-lp-timer.yaml          | 44 ++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml b/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
> new file mode 100644
> index 000000000000..ca040b96dc47
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml

Use the compatible for the filename.

> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/st,stm32-lp-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Low Power 16 bits timers bindings
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-lptimer-clkevent

'clkevent' is a h/w name? Seems redundant and abusing compatible to 
bind to a specific Linux driver. 

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    clkevent: clkevent@40009000 {

timer@...

> +      compatible = "st,stm32-lptimer-clkevent";
> +      reg = <0x40009000 0x400>;
> +      clocks = <&rcc LPTIM1_K>;
> +      interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +...
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
