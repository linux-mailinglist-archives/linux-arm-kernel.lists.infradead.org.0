Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A939C1D46AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbtCphu+IHn9wSeD0jnfMAjJMnTWS5ru3rW0JDyRZks=; b=UcLQzLFOXQXBnN
	clm2zeaeEotew4SSi9xkJnwRQmD/AAz9olzmurNx7npXSJX5jG2zFxGRKQ000IWehR1VZvwopNOS1
	INOnwHQvl4oHYE2M2mC6ER2oNHXJLzSd5hY+L0Luu/bHCMPjsLQlJz/RiNV+aTuSi0LY1QLFBZ8zz
	VNISEZpYBBXQcn2rWq8EfzoNw8RKUd+trx0xUD/9iZPNHH3yy+4u2U5ytlO61N6svSx4S+xFq6j6m
	gnTVzcBBzo0V43/avYo7u5Aj6cH4BJis9knyZSTtGsaofbDmZh1ionnJYXqWddt76lAPysSRwqlV0
	nt6jGNRPZ7Dv74ZyvRNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUQS-0004zb-C2; Fri, 15 May 2020 07:06:32 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUQI-0004yX-KJ
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:06:24 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F2B0C63752B1B774BB0;
 Fri, 15 May 2020 15:06:19 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:06:18 +0800
Subject: Re: [PATCH] dt-bindings: hisilicon: Add CTI bindings for hi-6220
To: Mike Leach <mike.leach@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <coresight@lists.linaro.org>
References: <20200415201259.15831-1-mike.leach@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5EBE3F6A.10501@hisilicon.com>
Date: Fri, 15 May 2020 15:06:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20200415201259.15831-1-mike.leach@linaro.org>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_000622_835743_CBA9E7F0 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
Cc: mathieu.poirier@linaro.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On 2020/4/16 4:12, Mike Leach wrote:
> Adds in CTI device tree information for the Hikey620 board.
> 
> Tested on Linux 5.7-rc1.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> Tested-by: Leo Yan <leo.yan@linaro.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>  .../boot/dts/hisilicon/hi6220-coresight.dtsi  | 130 ++++++++++++++++--
>  1 file changed, 122 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
> index 651771a73ed6..27f067e87601 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
> @@ -213,7 +213,7 @@
>  			};
>  		};
>  
> -		etm@f659c000 {
> +		etm0: etm@f659c000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf659c000 0 0x1000>;
>  
> @@ -232,7 +232,7 @@
>  			};
>  		};
>  
> -		etm@f659d000 {
> +		etm1: etm@f659d000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf659d000 0 0x1000>;
>  
> @@ -251,7 +251,7 @@
>  			};
>  		};
>  
> -		etm@f659e000 {
> +		etm2: etm@f659e000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf659e000 0 0x1000>;
>  
> @@ -270,7 +270,7 @@
>  			};
>  		};
>  
> -		etm@f659f000 {
> +		etm3: etm@f659f000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf659f000 0 0x1000>;
>  
> @@ -289,7 +289,7 @@
>  			};
>  		};
>  
> -		etm@f65dc000 {
> +		etm4: etm@f65dc000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf65dc000 0 0x1000>;
>  
> @@ -308,7 +308,7 @@
>  			};
>  		};
>  
> -		etm@f65dd000 {
> +		etm5: etm@f65dd000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf65dd000 0 0x1000>;
>  
> @@ -327,7 +327,7 @@
>  			};
>  		};
>  
> -		etm@f65de000 {
> +		etm6: etm@f65de000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf65de000 0 0x1000>;
>  
> @@ -346,7 +346,7 @@
>  			};
>  		};
>  
> -		etm@f65df000 {
> +		etm7: etm@f65df000 {
>  			compatible = "arm,coresight-etm4x", "arm,primecell";
>  			reg = <0 0xf65df000 0 0x1000>;
>  
> @@ -364,5 +364,119 @@
>  				};
>  			};
>  		};
> +
> +		/* System CTIs */
> +		/* CTI 0 - TMC and TPIU connections */
> +		cti@f6403000 {
> +			compatible = "arm,coresight-cti", "arm,primecell";
> +			reg = <0 0xf6403000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +		};
> +
> +		/* CTI - CPU-0 */
> +		cti@f6598000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf6598000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu0>;
> +			arm,cs-dev-assoc = <&etm0>;
> +		};
> +
> +		/* CTI - CPU-1 */
> +		cti@f6599000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf6599000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu1>;
> +			arm,cs-dev-assoc = <&etm1>;
> +		};
> +
> +		/* CTI - CPU-2 */
> +		cti@f659a000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf659a000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu2>;
> +			arm,cs-dev-assoc = <&etm2>;
> +		};
> +
> +		/* CTI - CPU-3 */
> +		cti@f659b000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf659b000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu3>;
> +			arm,cs-dev-assoc = <&etm3>;
> +		};
> +
> +		/* CTI - CPU-4 */
> +		cti@f65d8000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf65d8000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu4>;
> +			arm,cs-dev-assoc = <&etm4>;
> +		};
> +
> +		/* CTI - CPU-5 */
> +		cti@f65d9000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf65d9000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu5>;
> +			arm,cs-dev-assoc = <&etm5>;
> +		};
> +
> +		/* CTI - CPU-6 */
> +		cti@f65da000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf65da000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu6>;
> +			arm,cs-dev-assoc = <&etm6>;
> +		};
> +
> +		/* CTI - CPU-7 */
> +		cti@f65db000 {
> +			compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +				     "arm,primecell";
> +			reg = <0 0xf65db000 0 0x1000>;
> +
> +			clocks = <&acpu_sctrl HI6220_ACPU_SFT_AT_S>;
> +			clock-names = "apb_pclk";
> +
> +			cpu = <&cpu7>;
> +			arm,cs-dev-assoc = <&etm7>;
> +		};
>  	};
>  };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
