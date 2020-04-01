Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D955A19A8F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QlV6rWNwUFTgmtdnDRa0wHA34QeVNjvW9bFRrWJ8B9I=; b=tWYQE+7BArebXJT5LQ53eDJ+F
	CvPl7wERJwGjU6GHJoay1vULVNlJdpIED0f3POU0X+u2tFu5L/kDVRG1NerVCBqFBsalNqFJ0rJbt
	oloINbksVRU+bx9UfbE7Q0Oegtuq+t2qkA/Fg3d4vk0k7H3sXYRLfPKQRWOflDrq5zHO+9OVgNfIy
	lQ9eJaJKIMy+73hfMz0r+q/2OL7NmwN5Vm4fF7nLNjzY1P8jlVU7IwkPzgZLaYeRqvIMFAD1n8ZoR
	x9EW512DYO3dev6iSlkr6ltsBcW+5BDDQFUsDyTkfif7dlBIIrJBvZPHTtUtX7A83J6vevtihu4S7
	nW/kTebBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJa3W-0006RN-46; Wed, 01 Apr 2020 09:53:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJa3M-0006QX-A9
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:52:59 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0319mtHG030915; Wed, 1 Apr 2020 11:52:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=OcoxKwl0YMkRJbpTgRA6E6/dPYePve5cafkXLgAkCcc=;
 b=ceE1wCZi9dwn9BVL/OuBNQCuOmiW26kYObYDYqH3/OkVcVflaGPat5AHFlSX9dP68f2H
 Bw4DS0qw8q4JJvmyauGtxg3w68Wojj91B4+C8tNoQbqGasZh6OqD3U9ocrrIFo7l3BRD
 tWW4dwqFzWFWToZPn25jzIDht+S+dEa+eS3EbSxQMv498P3s0UXj+UHHGT1zvDzeBDhd
 znypGaANyWoh64moFICs7WVQHXOuOzMrJleV3IhqfkhkRHikDLMdXDcHduTrhT5KZO1i
 FCPAz7zJf/eq8NWfEjP4uVi5IOoJNCgiiCtUKbGty9oxqLU3RgAxE9LF00rYLJwV/kKq sA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmmbcs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 11:52:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 989EF10002A;
 Wed,  1 Apr 2020 11:52:48 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 88E0A21F68F;
 Wed,  1 Apr 2020 11:52:48 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 11:52:44 +0200
Subject: Re: [PATCH V3 01/22] ARM: dts: stm32: Add alternate pinmux for
 ethernet RGMII
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200331175811.205153-1-marex@denx.de>
 <20200331175811.205153-2-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <06ad9a40-3118-7336-056d-b115aef66599@st.com>
Date: Wed, 1 Apr 2020 11:52:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200331175811.205153-2-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_025256_648437_927CC6AE 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 3/31/20 7:57 PM, Marek Vasut wrote:
> Add another mux option for DWMAC RGMII, this is used on AV96 board.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> V3: No change
> ---
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 51 ++++++++++++++++++++++++
>   1 file changed, 51 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index 73c07f0dfad2..4569dc16e5a1 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -196,6 +196,57 @@ pins1 {
>   		};
>   	};
>   
> +	ethernet0_rgmii_pins_b: rgmii-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */
> +				 <STM32_PINMUX('G', 4, AF11)>, /* ETH_RGMII_GTX_CLK */
> +				 <STM32_PINMUX('B', 12, AF11)>, /* ETH_RGMII_TXD0 */
> +				 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
> +				 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('G', 11, AF11)>, /* ETH_RGMII_TX_CTL */
> +				 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <2>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins3 {
> +			pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
> +				 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
> +				 <STM32_PINMUX('H', 6, AF11)>, /* ETH_RGMII_RXD2 */
> +				 <STM32_PINMUX('B', 1, AF11)>, /* ETH_RGMII_RXD3 */
> +				 <STM32_PINMUX('A', 1, AF11)>, /* ETH_RGMII_RX_CLK */
> +				 <STM32_PINMUX('A', 7, AF11)>; /* ETH_RGMII_RX_CTL */
> +			bias-disable;
> +		};
> +	};
> +
> +	ethernet0_rgmii_pins_sleep_b: rgmii-sleep-1 {

I just merged a series from Ahmad that unify pins group name. So it 
should be ethernet0_rgmii_sleep_pins_b. As a lot change have been done 
in pinctrl dtsi diles, can you rebase on top of stm32-net please?

> +		pins1 {
> +			pinmux = <STM32_PINMUX('G', 5, ANALOG)>, /* ETH_RGMII_CLK125 */
> +				 <STM32_PINMUX('G', 4, ANALOG)>, /* ETH_RGMII_GTX_CLK */
> +				 <STM32_PINMUX('B', 12, ANALOG)>, /* ETH_RGMII_TXD0 */
> +				 <STM32_PINMUX('G', 14, ANALOG)>, /* ETH_RGMII_TXD1 */
> +				 <STM32_PINMUX('C', 2, ANALOG)>, /* ETH_RGMII_TXD2 */
> +				 <STM32_PINMUX('E', 2, ANALOG)>, /* ETH_RGMII_TXD3 */
> +				 <STM32_PINMUX('G', 11, ANALOG)>, /* ETH_RGMII_TX_CTL */
> +				 <STM32_PINMUX('A', 2, ANALOG)>, /* ETH_MDIO */
> +				 <STM32_PINMUX('C', 1, ANALOG)>, /* ETH_MDC */
> +				 <STM32_PINMUX('C', 4, ANALOG)>, /* ETH_RGMII_RXD0 */
> +				 <STM32_PINMUX('C', 5, ANALOG)>, /* ETH_RGMII_RXD1 */
> +				 <STM32_PINMUX('H', 6, ANALOG)>, /* ETH_RGMII_RXD2 */
> +				 <STM32_PINMUX('B', 1, ANALOG)>, /* ETH_RGMII_RXD3 */
> +				 <STM32_PINMUX('A', 1, ANALOG)>, /* ETH_RGMII_RX_CLK */
> +				 <STM32_PINMUX('A', 7, ANALOG)>; /* ETH_RGMII_RX_CTL */
> +		};
> +	};
> +
>   	fmc_pins_a: fmc-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('D', 4, AF12)>, /* FMC_NOE */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
