Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE822112E38
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 16:23:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UolL3QsK/UqSmt8A4PX1XctqAMHQSh6I93EWpYE0q2k=; b=LR0s5CvJl+huJkdna3K3zrjTG
	mTqd5s8jACvneVABS29HAXUe1DF6SZ2o/yVPdYpBdzz7AbdMgXKzLyeg/6ZlaBPEA2KmS1rmPMvok
	rlnJmyyRPE0tIeMl8VMuUEUNqpEBS+CNaR5KF2NPBYbop+cuQ3y+W1l+pdGdgzGRH6mQRTcJdwxGH
	m0M51HISF49S9/87oSnaJb/7JpVntuvNSV3cjWvjvdLPgFgL+GBNofkaMhodwmoa4mdt+8H4h1yur
	o5it4AfaacgCKckckVh4pdzZbNQR6YCn+w+23YVSl+9kWnN3YL9ZfHcd8Szm6zURObgs3KVYtNn3o
	SvJN0dGCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icWV1-0008Qz-GJ; Wed, 04 Dec 2019 15:23:31 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icWUr-0008QX-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 15:23:23 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB4FM5wl026203; Wed, 4 Dec 2019 16:23:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=8BM+BgH6USRwz0DXxL6nJffx2+O6Ux7FvCH6ofepeP4=;
 b=vtGNWWKDWVVqMkFqQY9rewo2iWybFK9AfvQ/W/Xm69QL0FsoyROikRZES5lgkuvUgKb2
 CvhGu/DNWjvwjB7C9TmuRnkyVQhh0w7kEaNAl1ay3xQSCMI0TxRNpso8xOSqtmbZ6P2U
 YbpD+aE7jLDpCEwhx50GMAAh/t3Mje0ShPBmY6gpA09oUCBCd5caUHGu32Faj3LwuL+4
 jdNTSEiNtNtUIfXuJ8uC7CrzRU2n9TSPz3M+tdswwAaVYk0FKDpouSe3u/Ya9sAsqKCZ
 naOCPPea+wqmLcVe2o6xQcfTXy47FIOGl1rq8xF9MFmZ2C3QpPxUs3c50+9MZv+ImJo2 Yg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkeea645g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 16:23:17 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BF840100034;
 Wed,  4 Dec 2019 16:23:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ABE802C1AC8;
 Wed,  4 Dec 2019 16:23:16 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 4 Dec
 2019 16:23:15 +0100
Subject: Re: [PATCH] ARM: dts: stm32: remove "@" from stm32f7 pinmux groups
To: Benjamin Gaignard <benjamin.gaignard@st.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>
References: <20191125121244.19591-1-benjamin.gaignard@st.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <f277b73f-716c-0746-73b8-45a8096d0bff@st.com>
Date: Wed, 4 Dec 2019 16:23:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191125121244.19591-1-benjamin.gaignard@st.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_03:2019-12-04,2019-12-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_072322_282831_C12B8ACD 
X-CRM114-Status: GOOD (  17.97  )
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

Hi Benjamin

On 11/25/19 1:12 PM, Benjamin Gaignard wrote:
> Replace all "@" by "_" in pinmux groups for stm32f7 family.
> This avoid errors when using yaml to check the bindings.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>   arch/arm/boot/dts/stm32f7-pinctrl.dtsi | 22 +++++++++++-----------
>   1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
> index 9314128df185..5271df1017cb 100644
> --- a/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32f7-pinctrl.dtsi
> @@ -127,7 +127,7 @@
>   				st,bank-name = "GPIOK";
>   			};
>   
> -			cec_pins_a: cec@0 {
> +			cec_pins_a: cec_0 {

You fix a warning by adding a new one. Please use "cec-0" instead of 
"cec_0". To be done for all changes in this file.

regards
Alex


>   				pins {
>   					pinmux = <STM32_PINMUX('A', 15, AF4)>; /* HDMI CEC */
>   					slew-rate = <0>;
> @@ -136,7 +136,7 @@
>   				};
>   			};
>   
> -			usart1_pins_a: usart1@0 {
> +			usart1_pins_a: usart1_0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
>   					bias-disable;
> @@ -149,7 +149,7 @@
>   				};
>   			};
>   
> -			usart1_pins_b: usart1@1 {
> +			usart1_pins_b: usart1_1 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('A', 9, AF7)>; /* USART1_TX */
>   					bias-disable;
> @@ -162,7 +162,7 @@
>   				};
>   			};
>   
> -			i2c1_pins_b: i2c1@0 {
> +			i2c1_pins_b: i2c1_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('B', 9, AF4)>, /* I2C1 SDA */
>   						 <STM32_PINMUX('B', 8, AF4)>; /* I2C1 SCL */
> @@ -172,7 +172,7 @@
>   				};
>   			};
>   
> -			usbotg_hs_pins_a: usbotg-hs@0 {
> +			usbotg_hs_pins_a: usbotg-hs_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
>   						 <STM32_PINMUX('I', 11, AF10)>, /* OTG_HS_ULPI_DIR */
> @@ -192,7 +192,7 @@
>   				};
>   			};
>   
> -			usbotg_hs_pins_b: usbotg-hs@1 {
> +			usbotg_hs_pins_b: usbotg-hs_1 {
>   				pins {
>   					pinmux = <STM32_PINMUX('H', 4, AF10)>, /* OTG_HS_ULPI_NXT */
>   						 <STM32_PINMUX('C', 2, AF10)>, /* OTG_HS_ULPI_DIR */
> @@ -212,7 +212,7 @@
>   				};
>   			};
>   
> -			usbotg_fs_pins_a: usbotg-fs@0 {
> +			usbotg_fs_pins_a: usbotg-fs_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('A', 10, AF10)>, /* OTG_FS_ID */
>   						 <STM32_PINMUX('A', 11, AF10)>, /* OTG_FS_DM */
> @@ -223,7 +223,7 @@
>   				};
>   			};
>   
> -			sdio_pins_a: sdio_pins_a@0 {
> +			sdio_pins_a: sdio_pins_a_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
>   						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
> @@ -236,7 +236,7 @@
>   				};
>   			};
>   
> -			sdio_pins_od_a: sdio_pins_od_a@0 {
> +			sdio_pins_od_a: sdio_pins_od_a_0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1 D0 */
>   						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1 D1 */
> @@ -254,7 +254,7 @@
>   				};
>   			};
>   
> -			sdio_pins_b: sdio_pins_b@0 {
> +			sdio_pins_b: sdio_pins_b_0 {
>   				pins {
>   					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
>   						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
> @@ -267,7 +267,7 @@
>   				};
>   			};
>   
> -			sdio_pins_od_b: sdio_pins_od_b@0 {
> +			sdio_pins_od_b: sdio_pins_od_b_0 {
>   				pins1 {
>   					pinmux = <STM32_PINMUX('G', 9, AF11)>, /* SDMMC2 D0 */
>   						 <STM32_PINMUX('G', 10, AF11)>, /* SDMMC2 D1 */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
