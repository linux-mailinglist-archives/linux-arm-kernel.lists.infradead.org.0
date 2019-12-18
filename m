Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE831257D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 00:37:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLGzmzpKnbxsz9lSkejvRTros2ZYdqYLFKv8iw4mkg8=; b=fdpNVtI6fjrC6p
	3bY2AfYH/CSi8midPokvig/l322tzcM/0wUntTYhY/tPpjbiaZbVSY9diLeOp4SzXyvsALB7SzHgY
	O9j/c8R6JKQLrgyOC7hjAEBy3+y5FP22GxSEEfX9cLpn6qx3Ha3oNJdFss91NZRg+HIZTHMbPLDay
	3721PfxGRDku16VCbAHnBtOza7ieUqmwSOR5OPYvucSHT5YSn3FhSEEwcsLYZHuyet15Iaw5SeT9m
	RKHvS5OJ+cgEXAyYjFt1kMQRY/SZXPgqJuaBH9IMbq0r8Ok5IzUhFGWYBy2AhBLoP5PS2+iBxBR52
	zZ5hrElwSw3vKHfxI3/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihisl-0007Y1-TS; Wed, 18 Dec 2019 23:37:31 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihisY-0007X3-Eq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 23:37:20 +0000
Received: by mail-ot1-f68.google.com with SMTP id 59so4571177otp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 15:37:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rVq3FctMUlxxbFCAv4Hq3F1IucA62kHuaSw0yCHlOq8=;
 b=V7iqPeNnd/+vxfkRqzx2MYxjAGa1wF9tfDOGJhYGnYRYARGYxdjQyloNFGaW5aqsxa
 csmO9W/jLLgRDSZizCZ8cTJH6F7BueBb86sQhVQA+7ux9bDBfB5BJcybDOYNKB9ylm0C
 V+ebzC27ofIoYoslHJg1GcdGu3kRcGC60IZaNSBeGRMpG98vG25PTZdoif0i8SdBGClV
 IXpu/EpIiVxnCsObaOseYFmjrKtBkoyvQGYdoTOziRakazXIRDaROGbP8mKluTm+ceyL
 y010Va3zejPzdkqxKLPqP7fDuh7mbhtnZxjAq9XQk1+lpDMDJC5NNG9AhpbBfUXnpLWu
 6SLg==
X-Gm-Message-State: APjAAAXj6BfuW6f/OIfzgbJe4z5tiiG54V7v3g4CCS432d52/GPQgLZ7
 LN16gYau1a9PHABIYheCSg==
X-Google-Smtp-Source: APXvYqyPh+4IInW14BHCfGHQzEnJR270O8hYZIX77r6+KeTYekhQCeI3drPFmDyVwEvselhJDCNYTg==
X-Received: by 2002:a9d:2482:: with SMTP id z2mr5197001ota.279.1576712236059; 
 Wed, 18 Dec 2019 15:37:16 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c12sm1358241oic.27.2019.12.18.15.37.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 15:37:15 -0800 (PST)
Date: Wed, 18 Dec 2019 17:37:14 -0600
From: Rob Herring <robh@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH 1/2] dt-bindings: edac: Add DT bindings for Kryo EDAC
Message-ID: <20191218233714.GA30302@bogus>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0101016ed57a3259-eee09e9e-e99a-40f1-ab1c-63e58a42615c-000000@us-west-2.amazonses.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_153718_496204_6B547414 
X-CRM114-Status: GOOD (  19.60  )
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
 Tony Luck <tony.luck@intel.com>, psodagud@codeaurora.org,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 tsoni@codeaurora.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:53:05AM +0000, Sai Prakash Ranjan wrote:
> This adds DT bindings for Kryo EDAC implemented with RAS
> extensions on KRYO{3,4}XX CPU cores for reporting of cache
> errors.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>  .../bindings/edac/qcom-kryo-edac.yaml         | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> new file mode 100644
> index 000000000000..1a39429a73b4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/edac/qcom-kryo-edac.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/edac/qcom-kryo-edac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Kryo Error Detection and Correction(EDAC)
> +
> +maintainers:
> +  - Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> +
> +description: |
> +  Kryo EDAC is defined to describe on-chip error detection and correction
> +  for the Kryo CPU cores which implement RAS extensions. It will report
> +  all Single Bit Errors and Double Bit Errors found in L1/L2 caches in
> +  in two registers ERXSTATUS_EL1 and ERXMISC0_EL1. L3-SCU cache errors
> +  are reported in ERR1STATUS and ERR1MISC0 registers.
> +    ERXSTATUS_EL1 - Selected Error Record Primary Status Register, EL1
> +    ERXMISC0_EL1 - Selected Error Record Miscellaneous Register 0, EL1
> +    ERR1STATUS - Error Record Primary Status Register
> +    ERR1MISC0 - Error Record Miscellaneous Register 0
> +  Current implementation of Kryo ECC(Error Correcting Code) mechanism is
> +  based on interrupts.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,kryo-edac
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 4
> +    items:
> +      - description: l1-l2 cache faultirq interrupt
> +      - description: l1-l2 cache errirq interrupt
> +      - description: l3-scu cache errirq interrupt
> +      - description: l3-scu cache faultirq interrupt
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 4

You are saying only these combinations are valid:

l1-l2-faultirq

l1-l2-faultirq
l1-l2-errirq

l1-l2-faultirq
l1-l2-errirq
l3-scu-errirq

l1-l2-faultirq
l1-l2-errirq
l3-scu-errirq
l3-scu-faultirq

Is that your intent?

> +    items:
> +      - const: l1-l2-faultirq
> +      - const: l1-l2-errirq
> +      - const: l3-scu-errirq
> +      - const: l3-scu-faultirq
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - interrupt-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    kryo_edac {
> +      compatible = "qcom,kryo-edac";
> +      interrupts = <GIC_PPI 6 IRQ_TYPE_LEVEL_HIGH>,
> +                   <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>,
> +                   <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>,
> +                   <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +      interrupt-names = "l1-l2-faultirq",
> +                        "l1-l2-errirq",
> +                        "l3-scu-errirq",
> +                        "l3-scu-faultirq";
> +    };
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
