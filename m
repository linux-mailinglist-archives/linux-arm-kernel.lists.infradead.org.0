Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7D412882
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gDkIFaQwPwW0j1fWNfrsLCLuV9sO97gFWNegyF0C/Gw=; b=W+bzOK5N1aqKc3vQ8+IQjr+11
	svOGx4Xk33xksOuzJJAbFNWz4U6QMcfQSCAtUUoMJOUurq5DOJe9J9bExS72KewQI0aCp5UG9gMKL
	0HcZyyxO8Th76FUSsThym+FnNbSpSjvjbMvPh4TMsnGK2AWJhCdr1STfmuhPteIBYVYQRCyxP6C9E
	oryh++qOgqYIjX7v7pSi4uZ7T92Pv2sIAd8kuYYMl7pVeSXRD4COLiBy7VbSwfo3U+xT2z3bunlNK
	WoBVhEiiWQ5Hl/1uReQ8T8/cNmCNcBgvf/XMLqJ6auGREKRqYSocsh9OUbwUe9UwQi6Af5WIcnCYA
	xpW8Sv5Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSOC-0000e9-1t; Fri, 03 May 2019 07:13:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMSO4-0000dl-FA
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:13:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4376qPM027874; Fri, 3 May 2019 09:13:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=/6Z2KyQOPl3FSVk+uXWK41nlphShPXx7ZFPnixJ5kcs=;
 b=peg63AqFBuEHUy4meGtp7rX6Zkxkj5W5NN48lDRZtgWC8KWm9W8Kko4/cdvJkNg9g9Jn
 Ti3t67EocyLA1WkmQNdI0sjQFkdmgs372W5vA95a3MSaqY9O4xpNZZIm5j54T18pqy13
 4xG1xRW3EFxhLSH87K08UAX+FwGAalrf+TNQGYXmyvof0d11hAkQ7I7nlBww1Fp6u0Nl
 wC4/7i6JO9i+CcPvVVdEUUsAM6gRfSEWaBf+yn+/FBBSE6RPOjltbw4dzuEQKZb3Ld9H
 Z56LS6H3KvZwaaVh/fOh2lLR/tWwSGwYHA/PswUGOeda2GBukhK4Xxq+y+IR4GiZUTMq 2Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2s6xgrvhe9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 03 May 2019 09:13:29 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 06F9331;
 Fri,  3 May 2019 07:13:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D3EF11318;
 Fri,  3 May 2019 07:13:28 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 3 May
 2019 09:13:28 +0200
Subject: Re: [PATCH 2/3] ARM: dts: stm32mp157: Add missing pinctrl definitions
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <robh+dt@kernel.org>
References: <20190503053123.6828-1-manivannan.sadhasivam@linaro.org>
 <20190503053123.6828-3-manivannan.sadhasivam@linaro.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <369b2593-71b6-0b00-b72c-041967ffba73@st.com>
Date: Fri, 3 May 2019 09:13:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503053123.6828-3-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_001340_965219_A1D0E136 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, loic.pallardy@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani

On 5/3/19 7:31 AM, Manivannan Sadhasivam wrote:
> Add missing pinctrl definitions for STM32MP157 MPU.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 62 +++++++++++++++++++++++
>   1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> index 85c417d9983b..0b5bcf6a7c97 100644
> --- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
> @@ -241,6 +241,23 @@
>   				};
>   			};
>   
> +			i2c1_pins_b: i2c1-2 {
> +				pins {
> +					pinmux = <STM32_PINMUX('F', 14, AF5)>, /* I2C1_SCL */
> +						 <STM32_PINMUX('F', 15, AF5)>; /* I2C1_SDA */
> +					bias-disable;
> +					drive-open-drain;
> +					slew-rate = <0>;
> +				};
> +			};
> +
> +			i2c1_pins_sleep_b: i2c1-3 {
> +				pins {
> +					pinmux = <STM32_PINMUX('F', 14, ANALOG)>, /* I2C1_SCL */
> +						 <STM32_PINMUX('F', 15, ANALOG)>; /* I2C1_SDA */
> +				};
> +			};
> +
>   			i2c2_pins_a: i2c2-0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('H', 4, AF4)>, /* I2C2_SCL */
> @@ -258,6 +275,23 @@
>   				};
>   			};
>   
> +			i2c2_pins_b: i2c2-2 {
> +				pins {
> +					pinmux = <STM32_PINMUX('Z', 0, AF3)>, /* I2C2_SCL */
> +						 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */

You can't do that. <STM32_PINMUX('Z', 0, AF3)> has to be declared in 
pincontroller-z. So in your case, you have to define 2 groups for i2C2 
for your default state (the same for the sleep state).

regards
Alex




> +					bias-disable;
> +					drive-open-drain;
> +					slew-rate = <0>;
> +				};
> +			};
> +
> +			i2c2_pins_sleep_b: i2c2-3 {
> +				pins {
> +					pinmux = <STM32_PINMUX('Z', 0, ANALOG)>, /* I2C2_SCL */
> +						 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
> +				};
> +			};
> +
>   			i2c5_pins_a: i2c5-0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
> @@ -599,6 +633,34 @@
>   					bias-disable;
>   				};
>   			};
> +
> +			uart4_pins_b: uart4-1 {
> +				pins1 {
> +					pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
> +					bias-disable;
> +					drive-push-pull;
> +					slew-rate = <0>;
> +				};
> +				pins2 {
> +					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> +					bias-disable;
> +				};
> +			};
> +
> +			uart7_pins_a: uart7-0 {
> +				pins1 {
> +					pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
> +					bias-disable;
> +					drive-push-pull;
> +					slew-rate = <0>;
> +				};
> +				pins2 {
> +					pinmux = <STM32_PINMUX('E', 7, AF7)>, /* UART4_RX */
> +						 <STM32_PINMUX('E', 10, AF7)>, /* UART4_CTS */
> +						 <STM32_PINMUX('E', 9, AF7)>; /* UART4_RTS */
> +					bias-disable;
> +				};
> +			};
>   		};
>   
>   		pinctrl_z: pin-controller-z@54004000 {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
