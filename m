Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF22177CC4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 18:07:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjBpspxZN6aac6/6kdMe9C8UfhefCFyWjz3RYzmdudQ=; b=Y0RXXjAswrLXKy
	XZLF9Me/dsQSHvsZ1RV0VjY5B5UmPv4pQDTJGOlv7ZbZ8oVkeFMaEKcPPGGZ+nhCt4gzak8AfDWgy
	y6LU7F9BguznwGKxeu1VBgzyWxamYKPk/hax7w+zvAf6YtZFNhAfvEuwJe9S6Me+rgMpZhkOUk9CT
	+k8WBV9BaXekx2mEtYMxVbJ3XClaBQFPc8I+WNNvBi9HzslXUp6vWczOBvTWYJVkFmDyvPpMYIxuy
	uuOU0cmHnNSn2XLzkWWpuKGSweh7vTswJ+g2WTq2M9QjPc/k8smtdT63WjU3c1xWA0WDEettToLrQ
	iNjDzalO8M6aXA9PQz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9B0a-0002gV-G0; Tue, 03 Mar 2020 17:07:04 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9B0R-0002fs-LS
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 17:06:57 +0000
Received: by mail-oi1-f194.google.com with SMTP id p125so3732067oif.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 09:06:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DsM/9fpFyAO2iYRTuSlT0pMCuni5v+nLkViTKnIpANc=;
 b=jOJFuxwXf26Wt8K1NLG1ibWNKSWvJTqOejHUeMYOxH7aDgQOYcDy+9l7/W9OsYf9My
 AK1c4H/R2Mx8PxqdQkAlQZTYQWkFUbpmrUqGzln6Y+emJKgMqhd2JeCm1DV82ercUpZN
 +jbpPaAm0TQWen8b4jFXtPBqt5PS44XNUkPLPdgOhGeCXaT8gTHtjaT+lKi+Uvx9T2MQ
 d/RRpAb173r25F1Ji2MSbDpBJpQHIKbjMpEXlElbjlWmbuQzgrHKrya9moeFQiMud0Oh
 KI0d8lZoQL+3wND2j+t5FDLWBP1zGgbiiehz4NlTYXpDs1CEve12CSV3V6zs/fjaI2Js
 yROA==
X-Gm-Message-State: ANhLgQ3yNxXmMBCW1AJaTuzBU5dxUD7tiNsRWJN3LZ7UMa48QArf0jgE
 VUX3569iHGpP+8RAFS+rJg==
X-Google-Smtp-Source: ADFU+vtXzfjSUoQIMPTzsJQN6DazR7wiN8f6rigrCtFfxy3/pt1bNjvY6jtYyUv1/ycbuFFIr3wH4A==
X-Received: by 2002:aca:4b47:: with SMTP id y68mr1756760oia.38.1583255210172; 
 Tue, 03 Mar 2020 09:06:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l8sm8049274otn.31.2020.03.03.09.06.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 09:06:43 -0800 (PST)
Received: (nullmailer pid 11907 invoked by uid 1000);
 Tue, 03 Mar 2020 17:06:41 -0000
Date: Tue, 3 Mar 2020 11:06:41 -0600
From: Rob Herring <robh@kernel.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Fixup the DT bindings for
 hierarchical PSCI states
Message-ID: <20200303170641.GC26191@bogus>
References: <20200303150749.30566-1-ulf.hansson@linaro.org>
 <20200303150749.30566-6-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303150749.30566-6-ulf.hansson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_090655_705668_3DBB916F 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 04:07:47PM +0100, Ulf Hansson wrote:
> The hierarchical topology with power-domain should be described through
> child nodes, rather than as currently described in the PSCI root node. Fix
> this by adding a patternProperties with a corresponding reference to the
> power-domain DT binding.
> 
> Additionally, update the example to conform to the new pattern, but also to
> the adjusted domain-idle-state DT binding.
> 
> Fixes: a3f048b5424e ("dt: psci: Update DT bindings to support hierarchical PSCI states")
> Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> ---
>  .../devicetree/bindings/arm/psci.yaml         | 33 +++++++++----------
>  1 file changed, 15 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentation/devicetree/bindings/arm/psci.yaml
> index 0bc3c43a525a..cae668b61265 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -102,11 +102,15 @@ properties:
>        [1] Kernel documentation - ARM idle states bindings
>          Documentation/devicetree/bindings/arm/idle-states.yaml
>  
> -  "#power-domain-cells":
> -    description:
> -      The number of cells in a PM domain specifier as per binding in [3].
> -      Must be 0 as to represent a single PM domain.
> +required:
> +  - compatible
> +  - method

No need to move this.

>  
> +patternProperties:
> +  "^(power-controller|power-domain)([@-].*)?$":
> +    $ref: "../power/power-domain.yaml#"

This has to be under an 'allOf' or the rest of the properties are 
ignored.

> +    type: object
> +    description: |
>        ARM systems can have multiple cores, sometimes in an hierarchical
>        arrangement. This often, but not always, maps directly to the processor
>        power topology of the system. Individual nodes in a topology have their
> @@ -122,19 +126,9 @@ properties:
>        helps to implement support for OSI mode and OS implementations may choose
>        to mandate it.
>  
> -      [3] Documentation/devicetree/bindings/power/power_domain.txt
> +      [3] Documentation/devicetree/bindings/power/power-domain.yaml
>        [4] Documentation/devicetree/bindings/power/domain-idle-state.yaml
>  
> -  power-domains:
> -    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> -    description:
> -      List of phandles and PM domain specifiers, as defined by bindings of the
> -      PM domain provider.
> -
> -required:
> -  - compatible
> -  - method
> -
>  allOf:
>    - if:
>        properties:
> @@ -224,6 +218,9 @@ examples:
>            exit-latency-us = <10>;
>            min-residency-us = <100>;
>          };
> +      };
> +
> +      domain-idle-states {
>  
>          CLUSTER_RET: cluster-retention {
>            compatible = "domain-idle-state";
> @@ -247,19 +244,19 @@ examples:
>        compatible = "arm,psci-1.0";
>        method = "smc";
>  
> -      CPU_PD0: cpu-pd0 {
> +      CPU_PD0: power-domain-cpu0 {
>          #power-domain-cells = <0>;
>          domain-idle-states = <&CPU_PWRDN>;
>          power-domains = <&CLUSTER_PD>;
>        };
>  
> -      CPU_PD1: cpu-pd1 {
> +      CPU_PD1: power-domain-cpu1 {
>          #power-domain-cells = <0>;
>          domain-idle-states =  <&CPU_PWRDN>;
>          power-domains = <&CLUSTER_PD>;
>        };
>  
> -      CLUSTER_PD: cluster-pd {
> +      CLUSTER_PD: power-domain-cluster {
>          #power-domain-cells = <0>;
>          domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
>        };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
