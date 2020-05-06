Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5771A1C6A54
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IM8jjaLRxyr9A7Fg3pPjrIfX/qtBtFlBywytrxqCID4=; b=QFSftgQvcghZpp9xnVdjBXEaI
	tGkYMLjmoL0fc30RGdejrFPjCtN1aldyr50jRQH67K8Z81GZT79SToAI3CU1rdvNYYjF839b2gdwi
	1GhE9ATvQLIbOvor6LfYL5Kxv6HEreymSoHil6YxfI2i590IDWxH/UihnYvKKq6puqvvYMZo17cCY
	v/SDMv5r2JvOuk6VSIFMPXj8jpeZOBwULIrp20vZnCsPo1eRPJ4LA4NjblDxrn8t3PDcrGbtpEDzY
	FL/VI4tSnABJhFOfAzrcOwQgX7mz36kW5mBGuvjeg9/NfRYX7xotrZSaEI7YyWAMjheZToMFUF6ah
	WpgpWJBQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWElo-0003cr-Sf; Wed, 06 May 2020 07:47:08 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWElh-0003c8-DX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:47:03 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0467hNXZ020268; Wed, 6 May 2020 09:46:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=tXxQmbpMfcFKXtnY4AZkiivJh3bpPFj5ua7wsu7Lbng=;
 b=rETEWOPcZrNQTtX06jTbChKkjWjdr8e9ugeXrTeP7hAzi39AInowVtX5bZM/HKsOODqo
 5mQFsUFSIIAJp9hMwL9ng6FIqMtaugcfw8b2K+VkkgTkgjt9s7tPa0TNgD2yrx4D2atm
 553k3haeU4Hd1QN++NuDBSlcanZbOrR7/O4TxyHtb6dcar5AGSPviOhlIsLzZRzBJHWU
 eqL5RpK0tdR+OJVgcTh8YKNnagY6U9cxJ9u8OpoT3vZcLNlz/wNALLy/pCmPOAE/t+A0
 o1ZknFmXS7d5w5PdY77h4D4MXYeTBjmxGWTM61so1PC+UyffCEFvaIchJfQ2h/hF0uU6 WA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxmvmj7y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 May 2020 09:46:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C7CFD10002A;
 Wed,  6 May 2020 09:46:54 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B1C1A2A5BB0;
 Wed,  6 May 2020 09:46:54 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.49) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 6 May
 2020 09:46:51 +0200
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Marek Vasut <marex@denx.de>, <linux-arm-kernel@lists.infradead.org>
References: <20200429163743.67854-1-marex@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
Date: Wed, 6 May 2020 09:46:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200429163743.67854-1-marex@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_02:2020-05-04,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_004701_818557_D2D03F53 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 4/29/20 6:37 PM, Marek Vasut wrote:
> Add another mux option for I2C2 pins, this is used on AV96 board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index aeddcaadb829..ca4edcf369d0 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -408,6 +408,23 @@ pins {
>   		};
>   	};
>   
> +	i2c2_pins_c: i2c2-4 {
> +		pins {
> +			pinmux = <STM32_PINMUX('F', 1, AF4)>, /* I2C2_SCL */
> +				 <STM32_PINMUX('H', 5, AF4)>; /* I2C2_SDA */
> +			bias-disable;
> +			drive-open-drain;
> +			slew-rate = <0>;
> +		};
> +	};
> +
> +	i2c2_pins_sleep_c: i2c2-5 {

should be i2c2-sleep-4. I'll fix it directly when I'll merge.

> +		pins {
> +			pinmux = <STM32_PINMUX('F', 1, ANALOG)>, /* I2C2_SCL */
> +				 <STM32_PINMUX('H', 5, ANALOG)>; /* I2C2_SDA */
> +		};
> +	};
> +
>   	i2c5_pins_a: i2c5-0 {
>   		pins {
>   			pinmux = <STM32_PINMUX('A', 11, AF4)>, /* I2C5_SCL */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
