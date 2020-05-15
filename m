Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897261D46A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcRYIEeAg2wl79aNyLsHn0ecfUV+yoUzu9EVlxeWiDI=; b=P9noiaSOZa0op5
	sII+kiO8YguRYSxvbc3I075o6REr9M52MXql3+ccShBQjOM5f2VfrQ1kv64x/FTo0d6xbAObQ7aEb
	BvUx+RJ8yOBWdpWGiIjSSu91AU6Vlw+U8FUIRr5lk7ccP02Uo11evNL7/wkcths9uLHZ2CFbNG9WN
	RKpTEs4lzm/sv+MQgfH5clLc3U9Ffc9TeJk2vkKIWub8rZBiU4yGxZq7yiPz4eNpkR9bm0Y5+aujt
	jQQM4aP/SOZBkRgxYpqLGSGdZlu2iC3HQFw1vwI9444lUSkPllnATNtxAmtegB4RKQpiNieJzuQRW
	Ok1nRSIms7fQPjAi7hOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUQ3-0004jX-0L; Fri, 15 May 2020 07:06:07 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUPv-0004iL-2G
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:06:00 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 318A6F1B7B422E81CA00;
 Fri, 15 May 2020 15:05:51 +0800 (CST)
Received: from [10.57.101.250] (10.57.101.250) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.487.0; Fri, 15 May 2020 15:05:46 +0800
Subject: Re: [PATCH] arm64: dts: hikey960: pinctrl: Fix spi2/spi3 pinconf
To: Loic Poulain <loic.poulain@linaro.org>, <robh+dt@kernel.org>
References: <1585044472-16706-1-git-send-email-loic.poulain@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <5EBE3F4A.7090006@hisilicon.com>
Date: Fri, 15 May 2020 15:05:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <1585044472-16706-1-git-send-email-loic.poulain@linaro.org>
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_000559_282609_C782729D 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Loic,

On 2020/3/24 18:07, Loic Poulain wrote:
> Only the pinmux was selected, not the pinconf, leading to spi issues.
> Increase drive strength so that max speed (25Mhz) can be achieved.
> 
> Signed-off-by: Loic Poulain <loic.poulain@linaro.org>

Thanks!
Applied to the hisilicon arm64 dt tree.

Best Regards,
Wei

> ---
>  arch/arm64/boot/dts/hisilicon/hi3660.dtsi           | 4 ++--
>  arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> index 253cc34..c39b7898 100644
> --- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
> @@ -974,7 +974,7 @@
>  			clocks = <&crg_ctrl HI3660_CLK_GATE_SPI2>;
>  			clock-names = "apb_pclk";
>  			pinctrl-names = "default";
> -			pinctrl-0 = <&spi2_pmx_func>;
> +			pinctrl-0 = <&spi2_pmx_func &spi2_cfg_func>;
>  			num-cs = <1>;
>  			cs-gpios = <&gpio27 2 0>;
>  			status = "disabled";
> @@ -989,7 +989,7 @@
>  			clocks = <&crg_ctrl HI3660_CLK_GATE_SPI3>;
>  			clock-names = "apb_pclk";
>  			pinctrl-names = "default";
> -			pinctrl-0 = <&spi3_pmx_func>;
> +			pinctrl-0 = <&spi3_pmx_func &spi3_cfg_func>;
>  			num-cs = <1>;
>  			cs-gpios = <&gpio18 5 0>;
>  			status = "disabled";
> diff --git a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
> index d11efc8..920a311 100644
> --- a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
> @@ -717,7 +717,7 @@
>  			spi3_cfg_func: spi3_cfg_func {
>  				pinctrl-single,pins = <
>  					0x008 0x0 /* SPI3_CLK */
> -					0x0 /* SPI3_DI */
> +					0x00c 0x0 /* SPI3_DI */
>  					0x010 0x0 /* SPI3_DO */
>  					0x014 0x0 /* SPI3_CS0_N */
>  				>;
> @@ -734,7 +734,7 @@
>  					PULL_UP
>  				>;
>  				pinctrl-single,drive-strength = <
> -					DRIVE7_02MA DRIVE6_MASK
> +					DRIVE7_06MA DRIVE6_MASK
>  				>;
>  			};
>  		};
> @@ -1031,7 +1031,7 @@
>  					PULL_UP
>  				>;
>  				pinctrl-single,drive-strength = <
> -					DRIVE7_02MA DRIVE6_MASK
> +					DRIVE7_06MA DRIVE6_MASK
>  				>;
>  			};
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
