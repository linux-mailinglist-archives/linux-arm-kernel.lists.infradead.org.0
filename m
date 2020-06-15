Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE821F93D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J8FiygAWLOwy/HqC4gGlSy5VCMLHODUo/qT6e+T/wyM=; b=Q54jNpu1ahC3Cg2Ntrm4cOCyf
	tKoQZsDINlQw2rCjADkc73IyfP0zpJiA60lNGxoNOWffB58zDbMADDBNXnDSITMHbDsdeMyFk/wtc
	THxCowDx9R34Tikjl8tY08RcksVpeHFM8axaRAdpsIXW1SmN2NM9DyfGhVgnvzyCXqwhbSvAbSuDu
	ET4QmKrUS0lMk44/kbK0E2IV3glZvTYfi6t2cVyFTrAMiBYR8Yf3hOl5BXiOSq/MC4DOYhqhrNHvS
	NbIodUiD+9s6QfWKTG5WkU9LFCf8t/szGXOO8ml7TsiFuw6XFFgVlS5YbYIDBcZlIHnqGM9PskID/
	g5HANX9WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklgu-00011h-IQ; Mon, 15 Jun 2020 09:46:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklgj-000103-JW
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:45:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05F9YmAg015035; Mon, 15 Jun 2020 11:45:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=HzRMy6iVCZcLIfFdNcJlFmRB2z9fKYZjPMelH03qdYY=;
 b=nOlzI78SZ3BXZsTxqFqoExmXdRONkXi5UKuqpvBc92FLtDOUT9oj+HyLeFTjarNKmxwH
 yO/6GjTPHN7RMfwgh0/kv5U1rUzXgEF2o3ZEJ68+kTo7R+HkRAqEGRAGvOT/p44c7azE
 8ZGDzljkTLZb8dokG1oa27eTNcQCzjEL9LCX9FjHPQMYBhPa0PdxQkYXyvYgzkUrVGI4
 CXDJPCMmEMMQsah697bvJDTc1OsChq0OhJn4cAf/iMsje5syLv6nRGy8cd1SdFTBhA1Y
 Vl6vgqwoLU1Aw8xGzNpiRgQn1uVKdFOCKIZIODsOkx94i2/l8/9eUFykiSzy6m3273J7 tw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvrwjd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 11:45:38 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1B0C710002A;
 Mon, 15 Jun 2020 11:45:38 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E456E2C298D;
 Mon, 15 Jun 2020 11:45:37 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun
 2020 11:45:36 +0200
Subject: Re: [PATCH v6 2/9] ARM: dts: stm32: Add pin map for ltdc & spi5 on
 stm32f429-disco board
To: <dillon.minfei@gmail.com>, <robh+dt@kernel.org>, <p.zabel@pengutronix.de>, 
 <mcoquelin.stm32@gmail.com>, <thierry.reding@gmail.com>,
 <sam@ravnborg.org>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <andy.shevchenko@gmail.com>, <noralf@tronnes.org>,
 <linus.walleij@linaro.org>, <broonie@kernel.org>
References: <1590564453-24499-1-git-send-email-dillon.minfei@gmail.com>
 <1590564453-24499-3-git-send-email-dillon.minfei@gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2273a168-7b14-9e28-5904-b9d2c2e2d9d3@st.com>
Date: Mon, 15 Jun 2020 11:45:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1590564453-24499-3-git-send-email-dillon.minfei@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_01:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_024558_022160_A517EB64 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-spi@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dillon

On 5/27/20 9:27 AM, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> This patch adds the pin configuration for ltdc and spi5 controller
> on stm32f429-disco board.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>   arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 67 ++++++++++++++++++++++++++++++++++
>   1 file changed, 67 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> index 392fa143ce07..0eb107f968cd 100644
> --- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
> @@ -316,6 +316,73 @@
>   				};
>   			};
>   
> +			ltdc_pins_f429_disco: ltdc-1 {

Sorry I missed this issue during review. I changed ltdc_pins_f429_disco 
by ltdc_pins_b when I applied your patch.


Regards
alex

> +				pins {
> +					pinmux = <STM32_PINMUX('C', 6,  AF14)>,
> +						/* LCD_HSYNC */
> +						 <STM32_PINMUX('A', 4,  AF14)>,
> +						 /* LCD_VSYNC */
> +						 <STM32_PINMUX('G', 7,  AF14)>,
> +						 /* LCD_CLK */
> +						 <STM32_PINMUX('C', 10, AF14)>,
> +						 /* LCD_R2 */
> +						 <STM32_PINMUX('B', 0,  AF9)>,
> +						 /* LCD_R3 */
> +						 <STM32_PINMUX('A', 11, AF14)>,
> +						 /* LCD_R4 */
> +						 <STM32_PINMUX('A', 12, AF14)>,
> +						 /* LCD_R5 */
> +						 <STM32_PINMUX('B', 1,  AF9)>,
> +						 /* LCD_R6*/
> +						 <STM32_PINMUX('G', 6,  AF14)>,
> +						 /* LCD_R7 */
> +						 <STM32_PINMUX('A', 6,  AF14)>,
> +						 /* LCD_G2 */
> +						 <STM32_PINMUX('G', 10, AF9)>,
> +						 /* LCD_G3 */
> +						 <STM32_PINMUX('B', 10, AF14)>,
> +						 /* LCD_G4 */
> +						 <STM32_PINMUX('D', 6,  AF14)>,
> +						 /* LCD_B2 */
> +						 <STM32_PINMUX('G', 11, AF14)>,
> +						 /* LCD_B3*/
> +						 <STM32_PINMUX('B', 11, AF14)>,
> +						 /* LCD_G5 */
> +						 <STM32_PINMUX('C', 7,  AF14)>,
> +						 /* LCD_G6 */
> +						 <STM32_PINMUX('D', 3,  AF14)>,
> +						 /* LCD_G7 */
> +						 <STM32_PINMUX('G', 12, AF9)>,
> +						 /* LCD_B4 */
> +						 <STM32_PINMUX('A', 3,  AF14)>,
> +						 /* LCD_B5 */
> +						 <STM32_PINMUX('B', 8,  AF14)>,
> +						 /* LCD_B6 */
> +						 <STM32_PINMUX('B', 9,  AF14)>,
> +						 /* LCD_B7 */
> +						 <STM32_PINMUX('F', 10, AF14)>;
> +						 /* LCD_DE */
> +					slew-rate = <2>;
> +				};
> +			};
> +
> +			spi5_pins: spi5-0 {
> +				pins1 {
> +					pinmux = <STM32_PINMUX('F', 7, AF5)>,
> +						/* SPI5_CLK */
> +						 <STM32_PINMUX('F', 9, AF5)>;
> +						/* SPI5_MOSI */
> +					bias-disable;
> +					drive-push-pull;
> +					slew-rate = <0>;
> +				};
> +				pins2 {
> +					pinmux = <STM32_PINMUX('F', 8, AF5)>;
> +						/* SPI5_MISO */
> +					bias-disable;
> +				};
> +			};
> +
>   			dcmi_pins: dcmi-0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 4, AF13)>, /* DCMI_HSYNC */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
