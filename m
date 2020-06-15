Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E46491F94DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 12:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6PUyriyqLyJIfws8qpTmNULpRCuwwEl8DUBV/twfoWo=; b=OHrstQbb5Ab+pKlix37b2SG4A
	dfKYMSXYRxElZ3X3/p9PZctNgMTSgigMKqEUfwjLveA8Q6X1iOOH0OHZiQzuRWeuHzbD9V39g9Gsi
	0lHUJpB0jE9nnL8iAqFU5e0sHXpgwvbjukIzA0rAcRQUR8gE+mWFgvdmckVy26YAK+1+kT0crFDx8
	8L2ePkt0fczewXbO8cunbwQguThl1NV7We5qVwev1SMLqrv0MabI6G78EZ5p5sXuRCrVKjuRblBp+
	gj79D4R8ZohSARmOitbjs5jJ96TyzPMeOP6ELG5Mi9bnFC9NK89HYsZxGUzfAsGpsf38b2dbnatq5
	iNNYahHsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkmh1-0002Tj-Hu; Mon, 15 Jun 2020 10:50:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkmgp-0001Qa-6S
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 10:50:09 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05FAWlLl003188; Mon, 15 Jun 2020 12:50:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6uazfPAhQsttgP5kzZTw92A9LjEqdyZWqPnjXh89SHU=;
 b=oS6225LDlBacpl1Ddp48BwFpC3AjwYU6WszDnpBmvJyMVLu3A99UsTAMux5ThvFGXLdT
 EGKbmHBHT1RwwsvWZtGETAqqnfqJUn8hacHEZ8fWeieTN3j3BuFUGFh3AnWEgWcAmSDe
 8mEKZpYJa2klMIpGrfOVeHs2OeaCBiemAmW3pJWkC5OABdFKlKbicvxyJiDDzjeVZxCM
 MJZT7wGb5ubVnMS8az9TEu4JpUCXYdYVzFftMfgQePUKsu7F9mYpB8etX2ZAbDrUEgnW
 ifHB1d6k5wffirFxYAsBj1HrqL3hw5EirUI4TT0ugMkXEzN1omzOFHoJnSBUSMLSQI21 9w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvs6j8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 15 Jun 2020 12:50:00 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6828B10002A;
 Mon, 15 Jun 2020 12:50:00 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3A0382B8A11;
 Mon, 15 Jun 2020 12:50:00 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 15 Jun
 2020 12:49:59 +0200
Subject: Re: [PATCH 1/5] ARM: dts: stm32: add usart2, usart3 and uart7 pins in
 stm32mp15-pinctrl
To: Erwan Le Ray <erwan.leray@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
References: <20200528074029.24962-1-erwan.leray@st.com>
 <20200528074029.24962-2-erwan.leray@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2ee07ea1-1336-3bc5-d978-c5dc5cd5f04f@st.com>
Date: Mon, 15 Jun 2020 12:49:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200528074029.24962-2-erwan.leray@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-15_02:2020-06-15,
 2020-06-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_035007_542820_A4C506EE 
X-CRM114-Status: GOOD (  16.91  )
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
Cc: devicetree@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Erwan

On 5/28/20 9:40 AM, Erwan Le Ray wrote:
> Adds usart2_pins_c, usart3_pins_b, usart3_pins_c and uart7_pins_c pins
> configurations in stm32mp15-pinctrl.
> - usart2_pins_c pins are connected to Bluetooth chip on dk2 board.
> - usart3_pins_b pins are connected to GPIO expansion connector on evx board.
> - usart3_pins_c pins are connected to GPIO expansion connector on dkx board.
> - uart7_pins_c pins are connected to Arduino Uno connector on dkx board.
> 
> Signed-off-by: Erwan Le Ray <erwan.leray@st.com>
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index fb98a66977fe..99e399e4e4c3 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1658,6 +1658,36 @@
>   		};
> 

...


> +	usart3_pins_b: usart3-0 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B', 10, AF7)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, AF8)>; /* USART3_RTS */

On EVx board this line is shared with ETH_CLK. The choice between both 
is done thanks to SB23 and default choice is "ETH_CLK". So hardware 
update has to be done to use usart3_rts. some words around that in 
comment would be great.

Thanks
alex

> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('B', 12, AF8)>, /* USART3_RX */
> +				 <STM32_PINMUX('I', 10, AF8)>; /* USART3_CTS_NSS */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart3_idle_pins_b: usart3-idle-0 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, ANALOG)>, /* USART3_RTS */
> +				 <STM32_PINMUX('I', 10, ANALOG)>; /* USART3_CTS_NSS */
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('B', 12, AF8)>; /* USART3_RX */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart3_sleep_pins_b: usart3-sleep-0 {
> +		pins {
> +			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, ANALOG)>, /* USART3_RTS */
> +				 <STM32_PINMUX('I', 10, ANALOG)>, /* USART3_CTS_NSS */
> +				 <STM32_PINMUX('B', 12, ANALOG)>; /* USART3_RX */
> +		};
> +	};
> +
> +	usart3_pins_c: usart3-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B', 10, AF7)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, AF8)>; /* USART3_RTS */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('B', 12, AF8)>, /* USART3_RX */
> +				 <STM32_PINMUX('B', 13, AF7)>; /* USART3_CTS_NSS */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart3_idle_pins_c: usart3-idle-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, ANALOG)>, /* USART3_RTS */
> +				 <STM32_PINMUX('B', 13, ANALOG)>; /* USART3_CTS_NSS */
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('B', 12, AF8)>; /* USART3_RX */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart3_sleep_pins_c: usart3-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('B', 10, ANALOG)>, /* USART3_TX */
> +				 <STM32_PINMUX('G', 8, ANALOG)>, /* USART3_RTS */
> +				 <STM32_PINMUX('B', 13, ANALOG)>, /* USART3_CTS_NSS */
> +				 <STM32_PINMUX('B', 12, ANALOG)>; /* USART3_RX */
> +		};
> +	};
> +
>   	usbotg_hs_pins_a: usbotg-hs-0 {
>   		pins {
>   			pinmux = <STM32_PINMUX('A', 10, ANALOG)>; /* OTG_ID */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
