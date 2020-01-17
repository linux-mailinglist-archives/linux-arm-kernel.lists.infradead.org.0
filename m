Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA95E140F72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7eRsjHLGvKGQJqAj/eY1ffAI2uK9oh3r/83tw6YGPCc=; b=uQXBKtsxtqUZDK2a6QImza6oG
	C/0aR3JhYcJGG0hk6oQuNsvCfkNL+fBTJmtRMysq5bxweL2lLbiwDuGx7zXfznImPAh9rDXwc9ZD+
	dQeNXNFi0sMDdXki1ei6vhhLPLGpsDZxMA5lxpBFR8LRikhN+eLy7jzKc+tWQswzTxCj7BJcBcHnJ
	Z71rxoR/V3mQnhv4KWd8G7wDqIafXrLJ82Z0TCtSiXEwOOADuRt2lKhpaQDM5Z8Y99f0n9GN1lZKj
	/Psj7mDQlJrZeRxS4I3/kTburpSXPSEi/USiMSlfxlxVp1hN2CHC2FM6ctaoHmFP29yQZfqu5C08A
	UUuc0cwuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUwA-0003v6-BG; Fri, 17 Jan 2020 16:57:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUw0-0003uY-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:57:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00HGrXCG029102; Fri, 17 Jan 2020 17:57:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ToWKcgdqHr2y9NGwMN8FxA1C8N8+itLWrzlpfIiirBA=;
 b=mgUiZuPBnyuXekfOc07M8ZrLuFHk4l1tSZaR1p0ERH3OFsdqtHjFJlrC7MkfaiJNoSoE
 fiC8SgiVTKiuxZGF4boZhnavXCQ2P7nqGbVkLLlkz+NhoK8Tlt7uBW7o/K5n/0AkId+q
 OVxCyYDNBPelp6Crh2pBYmC/ywNhAmLcp5JzLHWBwJn6TnHmiHS8oqlQLuWhW76Nfvi6
 PFOBohbGx5C2vAYI1+gvj4Uf+YMubqU++LodsTV2/M5uwDrWJ41ycirNwwUmsBTNo1so
 6OJMhIqVK5ji4ZKmsvFghg2W1qqvfyHebv1+Ht5gtHmJaLdmCYSCvDbMXNGBl281660u yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xk0r7cp76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 17 Jan 2020 17:57:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D2466100038;
 Fri, 17 Jan 2020 17:57:13 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C73B222169C;
 Fri, 17 Jan 2020 17:57:13 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.47) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 17 Jan
 2020 17:57:13 +0100
Subject: Re: [PATCH] ARM: dts: stm32: Add DH Electronics DHCOM SoM and PDK2
 board
To: Marek Vasut <marex@denx.de>, Patrick DELAUNAY <patrick.delaunay@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
References: <20200115094714.154581-1-marex@denx.de>
 <2881f2b053b04d718eba35e61f7b5403@SFHDAG6NODE3.st.com>
 <435364e8-9737-58ab-1497-f532f57af65d@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <6b3a1cb7-02e9-2293-00c9-710979cbc258@st.com>
Date: Fri, 17 Jan 2020 17:57:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <435364e8-9737-58ab-1497-f532f57af65d@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG6NODE2.st.com (10.75.127.17) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-17_04:2020-01-16,
 2020-01-17 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_085725_131372_F1CD4A0C 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

Minor comments below.

On 1/17/20 1:51 PM, Marek Vasut wrote:
> On 1/15/20 5:46 PM, Patrick DELAUNAY wrote:
>> Hi Marek;
> 
> Hi,
> 
>> Adds the Linux Maintainers for STM32M linux patch:
> 
> Added, if there is a need for V2.
> 
> (no further comments below)
> 
> [...]
>>
>> Hi Alexandre,
>>
>> Can you review this patch.
>>
>> Regards
>>
>> Patrick
>>
>>> -----Original Message-----
>>> From: Marek Vasut <marex@denx.de>
>>> Sent: mercredi 15 janvier 2020 10:47
>>> To: linux-arm-kernel@lists.infradead.org
>>> Cc: Marek Vasut <marex@denx.de>; Patrick DELAUNAY
>>> <patrick.delaunay@st.com>; Patrice CHOTARD <patrice.chotard@st.com>
>>> Subject: [PATCH] ARM: dts: stm32: Add DH Electronics DHCOM SoM and PDK2
>>> board
>>> Importance: High
>>>
>>> Add support for DH Electronics DHCOM SoM and PDK2 rev. 400 carrier board.
>>> This is an SoM with STM32MP157C and an evaluation kit. The baseboard
>>> provides Ethernet, UART, USB, CAN and optional display.
>>>
>>> Signed-off-by: Marek Vasut <marex@denx.de>
>>> Cc: Patrick Delaunay <patrick.delaunay@st.com>
>>> Cc: Patrice Chotard <patrice.chotard@st.com>
>>> ---
>>>   arch/arm/boot/dts/Makefile                   |   1 +
>>>   arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts | 351 ++++++++++++++++++
>>> arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi | 368 +++++++++++++++++++
>>>   3 files changed, 720 insertions(+)
>>>   create mode 100644 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
>>>   create mode 100644 arch/arm/boot/dts/stm32mp157c-dhcom-som.dtsi
>>>

...

>>> +
>>> +&m_can1 {
>>> +	pinctrl-names = "default", "sleep";
>>> +	pinctrl-0 = <&m_can1_pins_a>;
>>> +	pinctrl-1 = <&m_can1_sleep_pins_a>;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&pinctrl {

You could define DH pinctrl addons in stm32mp15-pinctrl.dtsi

>>> +	ethernet0_rmii_pins_a: rmii-0 {
>>> +		pins1 {
>>> +			pinmux = <STM32_PINMUX('G', 13, AF11)>, /*
>>> ETH1_RMII_TXD0 */
>>> +				 <STM32_PINMUX('G', 14, AF11)>, /*
>>> ETH1_RMII_TXD1 */
>>> +				 <STM32_PINMUX('B', 11, AF11)>, /*
>>> ETH1_RMII_TX_EN */
>>> +				 <STM32_PINMUX('A', 1, AF0)>,   /*
>>> ETH1_RMII_REF_CLK */
>>> +				 <STM32_PINMUX('A', 2, AF11)>,  /* ETH1_MDIO
>>> */
>>> +				 <STM32_PINMUX('C', 1, AF11)>;  /* ETH1_MDC
>>> */
>>> +			bias-disable;
>>> +			drive-push-pull;
>>> +			slew-rate = <2>;
>>> +		};
>>> +		pins2 {
>>> +			pinmux = <STM32_PINMUX('C', 4, AF11)>,  /*
>>> ETH1_RMII_RXD0 */
>>> +				 <STM32_PINMUX('C', 5, AF11)>,  /*
>>> ETH1_RMII_RXD1 */
>>> +				 <STM32_PINMUX('A', 7, AF11)>;  /*
>>> ETH1_RMII_CRS_DV */
>>> +			bias-disable;
>>> +		};
>>> +	};
>>> +
>>> +	ethernet0_rmii_pins_sleep_a: rmii-sleep-0 {
>>> +		pins1 {
>>> +			pinmux = <STM32_PINMUX('G', 13, ANALOG)>, /*
>>> ETH1_RMII_TXD0 */
>>> +				 <STM32_PINMUX('G', 14, ANALOG)>, /*
>>> ETH1_RMII_TXD1 */
>>> +				 <STM32_PINMUX('B', 11, ANALOG)>, /*
>>> ETH1_RMII_TX_EN */
>>> +				 <STM32_PINMUX('A', 2, ANALOG)>,  /*
>>> ETH1_MDIO */
>>> +				 <STM32_PINMUX('C', 1, ANALOG)>,  /*
>>> ETH1_MDC */
>>> +				 <STM32_PINMUX('C', 4, ANALOG)>,  /*
>>> ETH1_RMII_RXD0 */
>>> +				 <STM32_PINMUX('C', 5, ANALOG)>,  /*
>>> ETH1_RMII_RXD1 */
>>> +				 <STM32_PINMUX('A', 1, ANALOG)>,  /*
>>> ETH1_RMII_REF_CLK */
>>> +				 <STM32_PINMUX('A', 7, ANALOG)>;  /*
>>> ETH1_RMII_CRS_DV */
>>> +		};
>>> +	};
>>> +
>>> +	sai2_pins_a: sai2-0 {
>>> +		pins1 {
>>> +			pinmux = <STM32_PINMUX('I', 6, AF10)>,	/*
>>> SAI2_SD_A */
>>> +				 <STM32_PINMUX('I', 7, AF10)>,	/*
>>> SAI2_FS_A */
>>> +				 <STM32_PINMUX('D', 13, AF10)>;	/*
>>> SAI2_SCK_A */
>>> +			slew-rate = <0>;
>>> +			drive-push-pull;
>>> +			bias-disable;
>>> +		};
>>> +		pins2 {
>>> +			pinmux = <STM32_PINMUX('F', 11, AF10)>;	/*
>>> SAI2_SD_B */
>>> +			bias-disable;
>>> +		};
>>> +	};
>>> +
>>> +	sai2_sleep_pins_a: sai2-sleep-0 {
>>> +		pins {
>>> +			pinmux = <STM32_PINMUX('I', 6, ANALOG)>,  /*
>>> SAI2_SD_A */
>>> +				 <STM32_PINMUX('I', 7, ANALOG)>,  /*
>>> SAI2_FS_A */
>>> +				 <STM32_PINMUX('D', 13, ANALOG)>, /*
>>> SAI2_SCK_A */
>>> +				 <STM32_PINMUX('F', 11, ANALOG)>; /*
>>> SAI2_SD_B */
>>> +		};
>>> +	};
>>> +
>>> +	usart3_pins_a: usart3-0 {
>>> +		pins1 {
>>> +			pinmux = <STM32_PINMUX('B', 10, AF7)>; /*
>>> USART3_TX */
>>> +			bias-disable;
>>> +			drive-push-pull;
>>> +			slew-rate = <0>;
>>> +		};
>>> +		pins2 {
>>> +			pinmux = <STM32_PINMUX('B', 12, AF8)>; /*
>>> USART3_RX */
>>> +			bias-disable;
>>> +		};

...

>>> +&sdmmc3 {
>>> +	pinctrl-names = "default", "opendrain", "sleep";
>>> +	pinctrl-0 = <&sdmmc3_b4_pins_a>;
>>> +	pinctrl-1 = <&sdmmc3_b4_od_pins_a>;
>>> +	pinctrl-2 = <&sdmmc3_b4_sleep_pins_a>;
>>> +	broken-cd;
>>> +	st,neg-edge;
>>> +	bus-width = <4>;
>>> +	vmmc-supply = <&v3v3>;
>>> +	vqmmc-supply = <&v3v3>;
>>> +	mmc-ddr-3_3v;
>>> +	status = "okay";
>>> +};
>>> +
>>> +&qspi {

If you follow alphabetic order reorder this node.

>>> +	pinctrl-names = "default", "sleep";
>>> +	pinctrl-0 = <&qspi_clk_pins_a &qspi_bk1_pins_a &qspi_bk2_pins_a>;
>>> +	pinctrl-1 = <&qspi_clk_sleep_pins_a &qspi_bk1_sleep_pins_a
>>> &qspi_bk2_sleep_pins_a>;
>>> +	reg = <0x58003000 0x1000>, <0x70000000 0x4000000>;
>>> +	#address-cells = <1>;
>>> +	#size-cells = <0>;
>>> +	status = "okay";
>>> +
>>> +	flash0: mx66l51235l@0 {
>>> +		compatible = "jedec,spi-nor";
>>> +		reg = <0>;
>>> +		spi-rx-bus-width = <4>;
>>> +		spi-max-frequency = <108000000>;
>>> +		#address-cells = <1>;
>>> +		#size-cells = <1>;
>>> +	};
>>> +};
>>> +
>>> +&uart4 {
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&uart4_pins_a>;
>>> +	status = "okay";
>>> +};
>>> --
>>> 2.24.1
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
