Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAEB1B5400
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 07:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nu9cujgIMjjFfafjjA9jFniXNucb80QJ213pKNhAhTo=; b=SYaOX/yjC4BXV1
	osehtg5UWYv6dwipoE7P0btexHXuW+Vx9FEysyaw+0OEjgFgH/A71rdLRLju5C7hdwArf6ytCb8ol
	cASYJthz428XmdTinymyG7XmmhkJ5ieqYdlYsK7IAOJK6zN88BDIepgIwVwBhkosi7F/sswWyOl/Q
	vLcKKPIbaRhYrf23ZNyWhL7L/cr0wbIffqClWZ6EZAyPlNG+B/FaKED/8cvmFB9TL7C9lkzem8ClQ
	Vnb3bDsA14WCFBDA6TXhcq36EhKjWyWPvpgmCzdwIYymrGZKRXii/jOGmogK3nrTHo54YX8qlW2YZ
	ZYaS47QJEg3PjJyaI0yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRU9R-0004og-QO; Thu, 23 Apr 2020 05:11:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRU9B-0004nh-Ov
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 05:11:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id n16so2303332pgb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 22:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Yc32X/aAdo81NM2Ng9MB4yytdXrsHIlLZZkusOtg3Cs=;
 b=HYR8W91YkdfQ9BEpxvoJ5lEIoU1HlVsx791SaNb8KhkRjX5eUuy9Pd2WX1d3OmH97O
 /vCcw8DQ4uN1FVcJ6eiXVfi0UcZuAF4vYq+rlKq6Lt1tg2PDkc4xoz1lPJBy/K3YUJ8I
 a6dAPtHj/hGnN1ZrsqZt1HIBFvuUFsXvGYRDmHIsGi6wTXnrxdCYiCRFRJk0I5F+mPLW
 jUpzwIhX7M+uqTdIp2OwsVghV6fP0stzWOvj8iwnAIuyGIsj07OwIvqab8w3P+bu8f4C
 jlNTqVVIB621Al0poCevGGza6pg7o5sEFwsFqSX3zXEO17HkSUm570gpQhGFS5A5HX2A
 8fZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Yc32X/aAdo81NM2Ng9MB4yytdXrsHIlLZZkusOtg3Cs=;
 b=UnFwqLMC9F0fbLz+zkSRvwZMmOl4E6pQvRlTqLYtUoC+Ods4W5OT9lOoC1247sZ4XV
 vO7e+v6LUhjC8ujJZdRySIbmlIQ6PrX56rmlldBJglO+1UrTLmZWIVv5bm3w3vrA9Dnx
 qTUycB+CcZ5JN8Qb+5nF264B4PgfgB7j4e2YnfA3cmC6ZoqSWy98v33YpkFIYLk+V/6m
 i90tz6kklKa0mAEd7In6G0ICQth1TkhjSesmSHrloIQTgWoJ8vri/+NlssadRh1fYdBB
 294Oj6FqSLEXGIW2Wqfidr459kcU3IUKNDXqThdHzgI9z0WqVzHg6re+fybGG9Kl7VZN
 Wglw==
X-Gm-Message-State: AGi0PuZOELdCnpLr4hndJf5jZAKAJZ2/9h5ybTJtsSJtlkfrFlUuDY15
 Q2bCJi1S3DSM8gvzg8d9P31kWw==
X-Google-Smtp-Source: APiQypLLlBRF6h5e5tqeCuF1xkPBkYwn9ONGOEDPFznQbi6y+fM664bxJYpObA+MQw707I67sCzrUA==
X-Received: by 2002:aa7:9d90:: with SMTP id f16mr2201897pfq.48.1587618697014; 
 Wed, 22 Apr 2020 22:11:37 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id r26sm1344769pfq.75.2020.04.22.22.11.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 22:11:36 -0700 (PDT)
Date: Wed, 22 Apr 2020 22:12:03 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH] dt-bindings: qcom: Add CTI options for qcom msm8916
Message-ID: <20200423051203.GA2166963@builder.lan>
References: <20200415201230.15766-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415201230.15766-1-mike.leach@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_221138_608562_37C7AD94 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mathieu.poirier@linaro.org,
 suzuki.poulose@arm.com, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed 15 Apr 13:12 PDT 2020, Mike Leach wrote:

> Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
> (Dragonboard DB410C).
> System CTIs 2-11 are omitted as no information available at present.
> 
> Tested on Linux 5.7-rc1.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks Mike, I adjusted subject and have applied the patch towards 5.8.

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
>  1 file changed, 81 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index a88a15f2352b..194d5e45f4e5 100644
> --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/reset/qcom,gcc-msm8916.h>
>  #include <dt-bindings/clock/qcom,rpmcc.h>
>  #include <dt-bindings/thermal/thermal.h>
> +#include <dt-bindings/arm/coresight-cti-dt.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -1424,7 +1425,7 @@
>  			cpu = <&CPU3>;
>  		};
>  
> -		etm@85c000 {
> +		etm0: etm@85c000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85c000 0x1000>;
>  
> @@ -1443,7 +1444,7 @@
>  			};
>  		};
>  
> -		etm@85d000 {
> +		etm1: etm@85d000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85d000 0x1000>;
>  
> @@ -1462,7 +1463,7 @@
>  			};
>  		};
>  
> -		etm@85e000 {
> +		etm2: etm@85e000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85e000 0x1000>;
>  
> @@ -1481,7 +1482,7 @@
>  			};
>  		};
>  
> -		etm@85f000 {
> +		etm3: etm@85f000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85f000 0x1000>;
>  
> @@ -1500,6 +1501,82 @@
>  			};
>  		};
>  
> +		/* System CTIs */
> +		/* CTI 0 - TMC connections */
> +		cti@810000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x810000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		/* CTI 1 - TPIU connections */
> +		cti@811000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x811000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		/* CTIs 2-11 - no information - not instantiated */
> +
> +		/* Core CTIs; CTIs 12-15 */
> +		/* CTI - CPU-0 */
> +		cti@858000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0x858000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&CPU0>;
> +			arm,cs-dev-assoc = <&etm0>;
> +
> +		};
> +
> +		/* CTI - CPU-1 */
> +		cti@859000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0x859000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&CPU1>;
> +			arm,cs-dev-assoc = <&etm1>;
> +		};
> +
> +		/* CTI - CPU-2 */
> +		cti@85a000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0x85a000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&CPU2>;
> +			arm,cs-dev-assoc = <&etm2>;
> +		};
> +
> +		/* CTI - CPU-3 */
> +		cti@85b000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0x85b000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&CPU3>;
> +			arm,cs-dev-assoc = <&etm3>;
> +		};
> +
> +
>  		venus: video-codec@1d00000 {
>  			compatible = "qcom,msm8916-venus";
>  			reg = <0x01d00000 0xff000>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
