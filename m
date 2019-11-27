Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C47210B56E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+I3usKoFE/KKN8uX1kOrLxFTawE+J1RCxIPsJQvlwWI=; b=sxCMHP5j50AMi1
	vXMBvdjn/A1zAsBtmC1QStcGi72XClfFFHVMm+8cteKYs0WExX8d7KSsZzflj8o4hxOF9k9guP936
	LlMeKaxIrwV+yDdrmJY2HIUxKvtWXL4ptPbiQWFCnpV3+E7qbIzdF0JrEycJIrQUlUfJpB00ust50
	0IKwywkJdpkqhwvDruABnWRQH3iWCYuizU7sD08GeG7HFE5E4DvZ5w3cgJ4EDBa9pKxIcEkricg7k
	7S+Veg4Or+w5SsPC+kJMAfQh3zqWk81FbeufsOaq1mK/q6xFSoya4tPJjA5LG1LGDZS/hQDIjNbPX
	4iEREP3wVxlkkVz6tNng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1tc-0007DR-Gx; Wed, 27 Nov 2019 18:18:36 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1tT-0007Cb-Ip
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:18:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id 193so11403417pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 10:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bfDvBw1gAc7BRbE9wfzbKD0CUOm1Td77/KqA/8EW93Y=;
 b=L75u/TCWrHuuNz2+svRbonBxR++aKFIZ/nB4V3ELrN9OTCvbI1xVbKJqXp09gkjQ8D
 bspxuiYCPHGPc69iijiqTNuBE9M/gl6oSjvLuVR5o8wVj1Z7lknXoBQtXU2vYKMAvTnw
 Jn2jhRBf4ItlLCgBsx7RrIh8IfXMB55EA1kCGe1joeHMu37MkHE61Aej3kP5hk9dADn6
 9pav6jOWgTszynKePD3/9son7ZZNrr2CtRezi8orYygUrBd5jzUU9oeDCnKB1ZDhEaPx
 9MPewZhbcBOCVPJGxTSKCKZxUGL1+hEZKHsqg6K6d4/b4Xor1iuArOMeJ+serq99u/Vj
 /VIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bfDvBw1gAc7BRbE9wfzbKD0CUOm1Td77/KqA/8EW93Y=;
 b=WQrhOL3rCkMXxWy7FouvjV6JX4PRntVDlGTFRT1auqDHxRmLIZbQw3SRAYsyqFSZxh
 ei/8GAesDB4/Mxbj3ojcocxJBX/14byG6ecpjXbHC8+6ipqCqKycCv4nruIeqj7waPMP
 QngyPuitlJDaJm6ALXHCv85mpZPc6h6fICfMxCIS41yzUfWevImoVq0vx2x8nSq85c/0
 gZWABfos0MYee/eOglC6qLZNo6R1NNru0og2obi49IEhfHefM5RWIQQkoc8+LZAHXNU1
 vIem6EDa1Wo82rRhRjuYC48ux7p+c7UM7ZUTBkiROQvrYqaQj60H81tnrob10jROBnM7
 +Zrw==
X-Gm-Message-State: APjAAAWtz46Lzgy6G+rgrX9rXnPycUgiRvzSKoS9d4y/Qzatlg7YQWjI
 PMGuTxeeqPZCMTVhP86sprwcZA==
X-Google-Smtp-Source: APXvYqw7DPbnxGIgVZoKtiSPir+1u0Qs/+XHelmwuNmOcwqg/QpNYQm/SfQ9MvP82WXtAcoSykpwHA==
X-Received: by 2002:a63:184c:: with SMTP id 12mr6623165pgy.418.1574878705740; 
 Wed, 27 Nov 2019 10:18:25 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id c6sm17762524pfj.59.2019.11.27.10.18.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 10:18:25 -0800 (PST)
Date: Wed, 27 Nov 2019 11:18:23 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v5 10/14] dt-bindings: qcom: Add CTI options for qcom
 msm8916
Message-ID: <20191127181823.GB26544@xps15>
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-11-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119231912.12768-11-mike.leach@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_101827_641030_8E9BBDB3 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:19:08PM +0000, Mike Leach wrote:
> Adds system and CPU bound CTI definitions for Qualcom msm8916 platform
> (Dragonboard DB410C).
> System CTIs 2-11 are omitted as no information available at present.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 85 +++++++++++++++++++++++++--
>  1 file changed, 81 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> index 5ea9fb8f2f87..9589fc2cba22 100644
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
> @@ -1357,7 +1358,7 @@
>  			cpu = <&CPU3>;
>  		};
>  
> -		etm@85c000 {
> +		etm0: etm@85c000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85c000 0x1000>;
>  
> @@ -1375,7 +1376,7 @@
>  			};
>  		};
>  
> -		etm@85d000 {
> +		etm1: etm@85d000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85d000 0x1000>;
>  
> @@ -1393,7 +1394,7 @@
>  			};
>  		};
>  
> -		etm@85e000 {
> +		etm2: etm@85e000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85e000 0x1000>;
>  
> @@ -1411,7 +1412,7 @@
>  			};
>  		};
>  
> -		etm@85f000 {
> +		etm3: etm@85f000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0x85f000 0x1000>;
>  
> @@ -1429,6 +1430,82 @@
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
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x858000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			arm,cti-v8-arch;
> +			cpu = <&CPU0>;
> +			arm,cs-dev-assoc = <&etm0>;
> +
> +		};
> +
> +		/* CTI - CPU-1 */
> +		cti@859000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x859000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			arm,cti-v8-arch;
> +			cpu = <&CPU1>;
> +			arm,cs-dev-assoc = <&etm1>;
> +		};
> +
> +		/* CTI - CPU-2 */
> +		cti@85a000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x85a000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			arm,cti-v8-arch;
> +			cpu = <&CPU2>;
> +			arm,cs-dev-assoc = <&etm2>;
> +		};
> +
> +		/* CTI - CPU-3 */
> +		cti@85b000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0x85b000 0x1000>;
> +
> +			clocks = <&rpmcc RPM_QDSS_CLK>;
> +			clock-names = "apb_pclk";
> +
> +			arm,cti-v8-arch;
> +			cpu = <&CPU3>;
> +			arm,cs-dev-assoc = <&etm3>;
> +		};
> +
> +

This looks good to me.  Since Andy Gross maintains this file you will have to CC
him on your next revision.  Right now chances are he hasn't see it. 

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
