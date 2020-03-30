Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E6E197A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4JSphGt0hhswYzYwEKxAT2W2vnsYL5OuHpxjTx5OMA=; b=DlruN0lbCK1ZDh
	VVhjcmdR0MFkh5id4ZEtzRZI9A55gc/Q6q7fA9HxPrI5Um/bfKxQOTcX2zQ/kLvUrOngiL83jiJ5F
	Zr9yhunShtQhtbauMy+5gB4DmwEwNmIBqdbeuTv9Km/jYIsmgcMfbZfft4VNvO9BQpoUzEsRfMzz6
	1/SkHWQUnjWIYuDQIELpmfzxYpkFhMZJoWt2+vaVKD7QUNAMfTPKK0Ob3vusBvO48ON/UjSLq8fJQ
	C8mMqegXhsmgUXhhKaini3iOSOrypdfO2DUDt5QbC7kU6njON6nJ3+nOIQjk0UmVKbpQoU8BfT5Wq
	D9yShbeTBFNO9i4SFC9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsKc-0004JG-6T; Mon, 30 Mar 2020 11:11:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsKS-0004In-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:11:42 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02UB8afW006240; Mon, 30 Mar 2020 13:11:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=3w0ZLgFqDDo+uyYqPmUKI+vaz4YWfQOfFh9HC8TxPRM=;
 b=taXinVTTY6Tir4i7rvJU/yDLRluQ7ecF5LQ/TbHBI48/mF7yJazzfKgWrOFdV3WKawR3
 zCA75PFS1kTtJLmLK65zJJ80ota1vSFy1xa1mAVrEkRZcxTXfD8EXt4pc4Widz4srQbB
 3CrAJ2U8FkFODbEaPuw55Vyr3PiYD9uEarOBPKREUc2IaT7HykKYZjt+ZFGaA742vS8I
 SLWk2VEQjJGqXCP8isJCPrTqmhJ1R5DCOCPEeo7mQHF3aqOXi4InODk7JFwJ6IdOOYMd
 IMcBhPcLh+f+youdITWWyvUn7qm0w/97m0NqdMuW4BpMIijr3q0ux1WJmSiYTAp0Btt1 zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y53k8w6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 30 Mar 2020 13:11:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D926F100038;
 Mon, 30 Mar 2020 13:11:33 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CCED62AD2AB;
 Mon, 30 Mar 2020 13:11:33 +0200 (CEST)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 30 Mar
 2020 13:11:33 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 30 Mar 2020 13:11:33 +0200
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Marek Vasut <marex@denx.de>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux for SDMMC2
 pins 4-7
Thread-Topic: [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux for SDMMC2
 pins 4-7
Thread-Index: AQHWBSQA4U8QbAdEAEu5txLKBHyoDKhg3CGA
Date: Mon, 30 Mar 2020 11:11:33 +0000
Message-ID: <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
In-Reply-To: <20200328171144.51888-8-marex@denx.de>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <0560D2E8DFAA6E4BB0C9993495FF72A8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-30_01:2020-03-27,
 2020-03-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_041141_243743_3A995FD7 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek

On 3/28/20 6:11 PM, Marek Vasut wrote:
> Add another mux option for SDMMC2 pins 4..7, this is used on AV96 board.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  arch/arm/boot/dts/stm32mp15-pinctrl.dtsi | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> index bfd255dfe81f..6a37af213eb6 100644
> --- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> +++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
> @@ -1062,6 +1062,27 @@ pins {
>  		};
>  	};
>  
> +	sdmmc2_d47_pins_b: sdmmc2-d47-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('A', 8, AF9)>, /* SDMMC2_D4 */
> +				 <STM32_PINMUX('A', 15, AF9)>, /* SDMMC2_D5 */
> +				 <STM32_PINMUX('C', 6, AF10)>, /* SDMMC2_D6 */
> +				 <STM32_PINMUX('C', 7, AF10)>; /* SDMMC2_D7 */
> +			slew-rate = <1>;
> +			drive-push-pull;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdmmc2_d47_sleep_pins_b: sdmmc2-d47-sleep-1 {
> +		pins {
> +			pinmux = <STM32_PINMUX('A', 8, ANALOG)>, /* SDMMC2_D4 */
> +				 <STM32_PINMUX('A', 15, ANALOG)>, /* SDMMC2_D5 */
> +				 <STM32_PINMUX('C', 6, ANALOG)>, /* SDMMC2_D6 */
> +				 <STM32_PINMUX('C', 7, ANALOG)>; /* SDMMC2_D7 */
> +		};
> +	};
> +
>  	sdmmc3_b4_pins_a: sdmmc3-b4-0 {
>  		pins1 {
>  			pinmux = <STM32_PINMUX('F', 0, AF9)>, /* SDMMC3_D0 */


For your information, another submitted patch uses the same pinctrl sdmmc2_d47_pins_b node with different muxing (SDMMC2_D5)

see https://lore.kernel.org/patchwork/patch/1216452/

I haven't checked other muxing if there are other conflict.

Patrice
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
