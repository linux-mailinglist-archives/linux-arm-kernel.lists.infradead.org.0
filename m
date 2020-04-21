Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 187BC1B24D6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 13:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TlFV3pRZWftk+bxdQZZDmr67MjbJzXIH/Ku8wQM2tLQ=; b=FWgLPyIdqs7gHJPUDZatVCTy1
	2I2xmnwetZ3HZC+X7+v9w9xVI2JMQPW3KpDC0pUS37J14JIIboFL3QQ6l45u5fTvYH76fnCsTajHw
	qnZMBTe2JQGJAbH7uOILxCcXFEghqhUATX2sV4Zgp04wyWGtS6USxS4AxVjZ7Dgpr4bj9WWQW56ix
	l6vbr0Ys2rDSq0v7FP+LddUym4WfMq/tAA47dnVSMyb8N70EFNtKQ4GuXwu7AZ1Lt6a8d1hE/Snue
	QipbwJ5/wGezFm0zSaIiE5G/Kvrin5f2utJzPeUtE87VCk5qUR/u8SCGWPWZm0NY/zmgwzjhhK/fC
	wLh6JKBIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQquQ-0002cw-He; Tue, 21 Apr 2020 11:17:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqtz-0002QQ-3Q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 11:17:21 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03LBC8lR025528; Tue, 21 Apr 2020 13:17:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=/c16tCY9ekQ35yC4luKxDhPkTxyEHJ14jZb/3fcZqkE=;
 b=pzKPTnjr6v2ZLEYjerQsEGRihro9YwPNcBh8DzpgozrlZcahPHcTbC36jXENi6xHwubV
 AttYW5Cymhc0xgMay9GU+9f/TTIN30xsSZTZnwS5SbjfOiIXiDdBbPPtEnbRRbU2ou3e
 suUD5EO2R2ozzGKmZP9AgTbPJMPPu59Pq0/+S5eijEsrN64l4c018FtiZwGilTNVQAaL
 SV6WLQlKVSMjoLOSyJK4prUd+xKeEKEJ+VZAHs5oOqsMARgGSsHENQMnlJv+J4QuRr9i
 lVxbV9mAexlrsu0LuX9h23Vt2pTuEs2B4ZtwMniZ/tToVkWqBDKlY57SwWI0RcYj3Lok +g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp8qx6h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Apr 2020 13:17:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE7FF10003B;
 Tue, 21 Apr 2020 13:17:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9EFB02ADA0F;
 Tue, 21 Apr 2020 13:17:10 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 21 Apr
 2020 13:17:04 +0200
Subject: Re: [PATCH 2/6] ARM: dts: Add missing pinctrl entries for STM32MP15
To: <mani@kernel.org>, <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>
References: <20200420173124.27416-1-mani@kernel.org>
 <20200420173124.27416-3-mani@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2241c327-7cd6-7abd-b94f-00abe43b97e1@st.com>
Date: Tue, 21 Apr 2020 13:16:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420173124.27416-3-mani@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-21_04:2020-04-20,
 2020-04-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_041719_586105_0423FCD1 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Mani

Commit title should be ARM: dts: stm32 ...
otherwise it's good.

regards
alex

On 4/20/20 7:31 PM, mani@kernel.org wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> These pinctrl definitions will be used by Stinger96/IoTBox boards
> from Shiratech.
> 
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>   arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 64 ++++++++++++++++++++++++
>   1 file changed, 64 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index aeddcaadb829..858c83038e5a 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1519,6 +1519,30 @@
>   		};
>   	};
>   
> +	usart2_pins_b: usart2-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 5, AF7)>, /* USART2_TX */
> +				 <STM32_PINMUX('A', 1, AF7)>; /* USART2_RTS */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('F', 4, AF7)>, /* USART2_RX */
> +				 <STM32_PINMUX('E', 15, AF7)>; /* USART2_CTS_NSS */
> +			bias-disable;
> +		};
> +	};
> +
> +	usart2_sleep_pins_b: usart2-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('F', 5, ANALOG)>, /* USART2_TX */
> +				 <STM32_PINMUX('A', 1, ANALOG)>, /* USART2_RTS */
> +				 <STM32_PINMUX('F', 4, ANALOG)>, /* USART2_RX */
> +				 <STM32_PINMUX('E', 15, ANALOG)>; /* USART2_CTS_NSS */
> +		};
> +	};
> +
>   	usart3_pins_a: usart3-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('B', 10, AF7)>; /* USART3_TX */
> @@ -1558,6 +1582,19 @@
>   		};
>   	};
>   
> +	uart4_pins_c: uart4-2 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('G', 11, AF6)>; /* UART4_TX */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
> +			bias-disable;
> +		};
> +	};
> +
>   	uart7_pins_a: uart7-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('E', 8, AF7)>; /* UART4_TX */
> @@ -1573,6 +1610,19 @@
>   		};
>   	};
>   
> +	uart7_pins_b: uart7-1 {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('F', 7, AF7)>; /* UART7_TX */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <0>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('F', 6, AF7)>; /* UART7_RX */
> +			bias-disable;
> +		};
> +	};
> +
>   	uart8_pins_a: uart8-0 {
>   		pins1 {
>   			pinmux = <STM32_PINMUX('E', 1, AF8)>; /* UART8_TX */
> @@ -1647,4 +1697,18 @@
>   			bias-disable;
>   		};
>   	};
> +
> +	spi4_pins_a: spi4-0 {
> +		pins {
> +			pinmux = <STM32_PINMUX('E', 12, AF5)>, /* SPI4_SCK */
> +				 <STM32_PINMUX('E', 6, AF5)>;  /* SPI4_MOSI */
> +			bias-disable;
> +			drive-push-pull;
> +			slew-rate = <1>;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('E', 13, AF5)>; /* SPI4_MISO */
> +			bias-disable;
> +		};
> +	};
>   };
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
