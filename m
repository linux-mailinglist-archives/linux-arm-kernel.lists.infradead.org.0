Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D01C0A12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 19:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B258Nb6SIxXMvKdW3JQHSS0CrXygm5KSob1G56GVzBg=; b=qSSKa+WFiJLkQ1
	tlV6EzIeJgq/361TYZr4zKLWZnTXp7XtwuH6UKJTUiQ9Wz9RVcJe4n8lGgmRrK2lLHwpusWRwcfSB
	NGxaBuAwdQVmOAKjFcIlBEBoMnq5N5RbuscKoHaxh6+7gPYT3wVL7Frmyf320A53D29iDOl3LHi4/
	isi/uqnZLQYWcQYitnv8jw6dcN54rt6sh6364o7Jw2qW1MudUKzTMxCin+9qwzMTMMLycDg7Adf0W
	FFfhbY6ysmT8MXrIC+FLuxDqMlTOZgSVbHVqw+t84p+qHNMe6/0H/5dTKvg4dqI2OifEBHawZiYf2
	iZgKqCyjess2zbwNg2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtpC-00079E-Bm; Fri, 27 Sep 2019 17:14:34 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDtp0-00078I-WA
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 17:14:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id 41so2847116oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 10:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tD2ql8Ol3YdJ0O/cTPgB7oovPA/McdYPrrIyUtCvDio=;
 b=BlMbhRWlHUXUesanjdvF4mbF7WQYvmt0RnB38aGDaFPT5XSDzQo+dAVdcHhkizT7nA
 MIQ9aWzkAl0eDUXkYFlMCH4ANktL6tZxOwL9Y38M3pSMx/JD9GA+QSIZhvBSKWlSFFZ7
 jSYn5XV6a8aLFV+x2Sasxl5I5qryWc00xeE90zWYrICPJnUN7XjT3Rq1Tmbp/IPLfYDg
 J4xYIy3kuK0zd+obIfZ5W8rlE1GWvyH8k52lmTTlohKZF+ZYbUH5YIznMUewAXGv0/J2
 E04jzn4lpRcm5b12vrcWyaBZChLp1PdXpohEEoYs+o0Zuy6QoroVQXkOnKPIK5pb196C
 +FQw==
X-Gm-Message-State: APjAAAWGGBTmF2jpz/SehrZ2Ux0beWfMXQvjitZjFNe7somFMbItJQ6C
 6edund1Vo105ftD13RjjcQ==
X-Google-Smtp-Source: APXvYqypL0vEhdlG4ePe2RIoOH0cqp7SRZ9d2fcberRcnUEis5/CkGDrnlNF5opn3EvvXltDKXa2Uw==
X-Received: by 2002:a05:6830:15d7:: with SMTP id
 j23mr3871347otr.343.1569604461562; 
 Fri, 27 Sep 2019 10:14:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm1750040oin.26.2019.09.27.10.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 10:14:21 -0700 (PDT)
Date: Fri, 27 Sep 2019 12:14:20 -0500
From: Rob Herring <robh@kernel.org>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [v4,3/3] Documentation: dt: binding: fsl: Add
 'fsl,ippdexpcr1-alt-addr' property
Message-ID: <20190927171420.GA28375@bogus>
References: <20190926024118.15931-1-biwen.li@nxp.com>
 <20190926024118.15931-3-biwen.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926024118.15931-3-biwen.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_101423_034184_8255EA2B 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, ran.wang_1@nxp.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 10:41:18AM +0800, Biwen Li wrote:
> The 'fsl,ippdexpcr1-alt-addr' property is used to handle an errata A-008646
> on LS1021A
> 
> Signed-off-by: Biwen Li <biwen.li@nxp.com>
> ---
> Change in v4:
> 	- rename property name
> 	  fsl,ippdexpcr-alt-addr -> fsl,ippdexpcr1-alt-addr
> 
> Change in v3:
> 	- rename property name
> 	  fsl,rcpm-scfg -> fsl,ippdexpcr-alt-addr
> 
> Change in v2:
> 	- update desc of the property 'fsl,rcpm-scfg'
> 
>  .../devicetree/bindings/soc/fsl/rcpm.txt      | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> index 5a33619d881d..751a7655b694 100644
> --- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> +++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
> @@ -34,6 +34,13 @@ Chassis Version		Example Chips
>  Optional properties:
>   - little-endian : RCPM register block is Little Endian. Without it RCPM
>     will be Big Endian (default case).
> + - fsl,ippdexpcr1-alt-addr : The property is related to a hardware issue
> +   on SoC LS1021A and only needed on SoC LS1021A.
> +   Must include 1 + 2 entries.
> +   The first entry must be a link to the SCFG device node.
> +   The non-first entry must be offset of registers of SCFG.
> +   The second and third entry compose an alt offset address
> +   for IPPDEXPCR1(SCFG_SPARECR8)

If only on 1 SoC, can't all this be implied by "fsl,ls1021a-rcpm"?

Adding a property means you need both a new dtb and kernel to fix the 
errata. Using the compatible string means you only need a new kernel.

>  
>  Example:
>  The RCPM node for T4240:
> @@ -43,6 +50,20 @@ The RCPM node for T4240:
>  		#fsl,rcpm-wakeup-cells = <2>;
>  	};
>  
> +The RCPM node for LS1021A:
> +	rcpm: rcpm@1ee2140 {
> +		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";

Both of these compatible strings aren't documented.

> +		reg = <0x0 0x1ee2140 0x0 0x8>;
> +		#fsl,rcpm-wakeup-cells = <2>;
> +
> +		/*
> +		 * The second and third entry compose an alt offset
> +		 * address for IPPDEXPCR1(SCFG_SPARECR8)
> +		 */
> +		fsl,ippdexpcr1-alt-addr = <&scfg 0x0 0x51c>;
> +	};
> +
> +
>  * Freescale RCPM Wakeup Source Device Tree Bindings
>  -------------------------------------------
>  Required fsl,rcpm-wakeup property should be added to a device node if the device
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
