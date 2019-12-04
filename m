Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDF8112E40
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EjjdzgQ2JL+ofVt9pN/bHQU1gah2/6SRhQc09XrGZik=; b=QEZWd/1y+QYMAkz/b8+YVcOzE
	imNSiMYYcTl6ACjGi77T8UMqEp754xKBembvV93u3mQbND1ImO7q27Dv8M0YSmVBEX30EIFJT+LUZ
	03+tx9AMSglOp1uuAvfufv4mByIEOD8lken613kGsWzeBRWERcs4fK878SxKf6dsCzdDhcgDEjHuY
	KCZ6ci0c/frR2Eq5akpMkXMln/TBZj7iTonGCW7yttioDxvKSKP74J9B61A9vSJl6PumyogV3v4yP
	zQDerhO2TsYLZ6A1XTnFJVTes47mysjPr0KK28dEZWCSnkJN1K3782nlZrkk1QPuDsNqG+tYpEKCo
	OH+XwnBQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWWO-0000Im-Sf; Wed, 04 Dec 2019 15:24:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWWH-0000I7-BJ
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:24:51 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4FM64a026212; Wed, 4 Dec 2019 16:24:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=GJUZvh1kGK/ZWmYptY9ufLGZpRTGP8Bz+9TxwpoDvDg=;
 b=ckQmYgBS0CcNVg/V3qNup+iCos72Iz/fhARwZEWGN42JALvh+t9auQwfZqBdUS8oiebf
 qmsUTSerFZatjyL/XTZORNO21l18xCrDJK+8tp5tERLluKY2qnG9j2V2++CUviG2flHG
 Y/stXHFH8bZONU27yh3qeofvuxA+zB/Ap+hxmAoGcg6SG8pPCyjpEqrChDcGtpaIDnhc
 jM26PZTBSQm0e1syvbmhPrsN3NY3X8UNt23pGQJd2eEoyu/JQm+NH0YEcBzoibc0tzln
 rronJSsDPcoRvpvfqI8mG49p/YvDLp/AZlUE4oKWj8JgUkA4b7qrxKfWtIrBnWM50D9f hA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkeea64c1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 16:24:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8C85B10002A;
 Wed,  4 Dec 2019 16:24:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7E0252C1AD8;
 Wed,  4 Dec 2019 16:24:40 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 4 Dec
 2019 16:24:39 +0100
Subject: Re: [PATCH] ARM: dts: stm32: remove "@" from stm32f4 pinmux groups
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191125121244.19591-1-benjamin.gaignard@st.com>
 <20191125121244.19591-2-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <ebba0ecf-2e18-83f7-3cbb-0ba6f98169b1@st.com>
Date: Wed, 4 Dec 2019 16:24:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125121244.19591-2-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_072449_676203_C413B470 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi benjamin

On 11/25/19 1:12 PM, Benjamin Gaignard wrote:
> Replace all "@" by "_" in pinmux groups for stm32f4 family.
> This avoid errors when using yaml to check the bindings.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 28 ++++++++++++++--------------
>   1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> index 35202896c093..722598cdf3b7 100644
> --- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> @@ -163,7 +163,7 @@
>   				st,bank-name = "GPIOK";
>   			};
>   
> -			usart1_pins_a: usart1@0 {
> +			usart1_pins_a: usart1_0 {

You fix a warning by adding a new one. Please use "usart1-0" instead of 
"usart1_0". To be done for all changes in this file.

regards
Alex


>   				pins1 {
>   					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
>   					bias-disable;
> @@ -176,7 +176,7 @@
>   				};
>   			};
>   
> -			usart3_pins_a: usart3@0 {
> +			usart3_pins_a: usart3_0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('B', 10, AF7)>; /* USART3_TX */
>   					bias-disable;
> @@ -189,7 +189,7 @@
>   				};
>   			};
>   
> -			usbotg_fs_pins_a: usbotg_fs@0 {
> +			usbotg_fs_pins_a: usbotg_fs_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
>   						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
> @@ -200,7 +200,7 @@
>   				};
>   			};
>   
> -			usbotg_fs_pins_b: usbotg_fs@1 {
> +			usbotg_fs_pins_b: usbotg_fs_1 {
>   				pins {
>   					pinmux = <STM32_PINMUX('B', 12, AF12)>, /* OTG_HS_ID */
>   						 <STM32_PINMUX('B', 14, AF12)>, /* OTG_HS_DM */
> @@ -211,7 +211,7 @@
>   				};
>   			};
>   
> -			usbotg_hs_pins_a: usbotg_hs@0 {
> +			usbotg_hs_pins_a: usbotg_hs_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT*/
>   						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
> @@ -231,7 +231,7 @@
>   				};
>   			};
>   
> -			ethernet_mii: mii@0 {
> +			ethernet_mii: mii_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('G', 13, AF11)>, /* ETH_MII_TXD0_ETH_RMII_TXD0 */
>   						 <STM32_PINMUX('G', 14, AF11)>, /* ETH_MII_TXD1_ETH_RMII_TXD1 */
> @@ -251,13 +251,13 @@
>   				};
>   			};
>   
> -			adc3_in8_pin: adc@200 {
> +			adc3_in8_pin: adc_200 {
>   				pins {
>   					pinmux = <STM32_PINMUX('F', 10, ANALOG)>;
>   				};
>   			};
>   
> -			pwm1_pins: pwm@1 {
> +			pwm1_pins: pwm_1 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 8, AF1)>, /* TIM1_CH1 */
>   						 <STM32_PINMUX('B', 13, AF1)>, /* TIM1_CH1N */
> @@ -265,14 +265,14 @@
>   				};
>   			};
>   
> -			pwm3_pins: pwm@3 {
> +			pwm3_pins: pwm_3 {
>   				pins {
>   					pinmux = <STM32_PINMUX('B', 4, AF2)>, /* TIM3_CH1 */
>   						 <STM32_PINMUX('B', 5, AF2)>; /* TIM3_CH2 */
>   				};
>   			};
>   
> -			i2c1_pins: i2c1@0 {
> +			i2c1_pins: i2c1_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1_SDA */
>   						 <STM32_PINMUX('B', 6, AF4)>; /* I2C1_SCL */
> @@ -282,7 +282,7 @@
>   				};
>   			};
>   
> -			ltdc_pins: ltdc@0 {
> +			ltdc_pins: ltdc_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('I', 12, AF14)>, /* LCD_HSYNC */
>   						 <STM32_PINMUX('I', 13, AF14)>, /* LCD_VSYNC */
> @@ -316,7 +316,7 @@
>   				};
>   			};
>   
> -			dcmi_pins: dcmi@0 {
> +			dcmi_pins: dcmi_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
>   						 <STM32_PINMUX('B', 7, AF13)>, /* DCMI_VSYNC */
> @@ -339,7 +339,7 @@
>   				};
>   			};
>   
> -			sdio_pins: sdio_pins@0 {
> +			sdio_pins: sdio_pins_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
>   						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
> @@ -352,7 +352,7 @@
>   				};
>   			};
>   
> -			sdio_pins_od: sdio_pins_od@0 {
> +			sdio_pins_od: sdio_pins_od_0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDIO_D0 */
>   						 <STM32_PINMUX('C', 9, AF12)>, /* SDIO_D1 */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
