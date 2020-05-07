Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8994C1C8602
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/WMKd2RlCkas9pCJpVqkhazAhLyXTmA25nHf1EZr5hA=; b=QPwOy5d5WvyfS4toXcyKHcdeF
	k3GnSv0kFhr3GxN3NDKOrTt8WD+xTRk1FVNaEFoxEzjZO47pjUse3nBQHT6A/2S2cvyReENT4p9f6
	+2DTbntFVPF+OSOkrOFgU7TmrOoknkxy481C+AbkyS5sK8W0Cur1w1h85o4aZHqHLKQkDWIRCPow0
	SjW1gGq+Ko0+FHv4YL1gIMDPGuJSKjBJHB+g8VhL9QDMqpBSWwf91OXo4fL4Ow3Z4VI5Zg2caQC2j
	YGefzrgF0g50ueACHVql/bnOa5iaxHF9QsA38YxcOkgtmBRU7dWIa5L3d4Z/CVzDtFXKOq5XqHMWp
	Jccxenlfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWd3X-0001uZ-KL; Thu, 07 May 2020 09:43:03 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWd3P-0001tr-QN
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:42:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0479fPWk022718; Thu, 7 May 2020 11:42:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=C6VZfWVT/W089/elvBzkkxDMJ3kKhbKEFFjieRseRaI=;
 b=xeYU70BQt0Cv+Qih+qGvv2jPnN4Zf9PolFzyjnSKQep+ZqAw4I4wgc4RKnQt63gFf+m3
 WLrh1Y5NhNWtBPdyM+jJ+eFkYYWxUgCyrMalDGood79NHdCw0jk9pIYUMCGaA+O3rH/s
 gUD5BjqHtF+WDvGogqLZZmy7mv8cpny71SSoSNNvfoDWsuwyjYMiJ+UCJP7KczTgCUBu
 0Y201GQwZORG/Ah/8GIKhW1GcG+T8/8irKxeD3Pw/2gg+4ajJ1AdMG9Ga/QpdakrocaA
 3v+WVBDLt/NIgx4DCWqLa6ythpSlPviLP6pKpC3zDmDTfykYYw6K4+6rwPMRB1w78YL3 7Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rx08u41g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 May 2020 11:42:52 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7632410002A;
 Thu,  7 May 2020 11:42:51 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 67A3C2AC599;
 Thu,  7 May 2020 11:42:51 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 7 May
 2020 11:42:47 +0200
Subject: Re: [PATCH 3/4] ARM: dts: stm32: enable stmpe811 on stm32429-disco
 board
To: <dillon.minfei@gmail.com>, <mcoquelin.stm32@gmail.com>,
 <philippe.schenker@toradex.com>
References: <philippe.schenker@toradex.com>
 <1588842971-20495-1-git-send-email-dillon.minfei@gmail.com>
 <1588842971-20495-2-git-send-email-dillon.minfei@gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <67c1d18e-033d-30d5-3945-7985a03bf142@st.com>
Date: Thu, 7 May 2020 11:42:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1588842971-20495-2-git-send-email-dillon.minfei@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-07_06:2020-05-05,
 2020-05-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_024256_213502_10D3A5BA 
X-CRM114-Status: GOOD (  19.80  )
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dillon

On 5/7/20 11:16 AM, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Enable the stmpe811 touch screen on stm32429-disco board.
> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---

You have to add version to your patches. When you send updates of your 
patches, it is better to resend the whole series by adding [PATCH v2] 
... instead of [PATCH] (you can do it easily using git format-patch and 
subject-prefix). Then in your cover letter you have to explain changes 
between 2 series versions.

So please resend the whole series by adding V2 prefix, update 
cover-letter explaining changes, and add a title to your cover-letter 
please.

regards
alex



>   arch/arm/boot/dts/stm32f429-disco.dts | 47 +++++++++++++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
> index 30c0f67..fad1ec1 100644
> --- a/arch/arm/boot/dts/stm32f429-disco.dts
> +++ b/arch/arm/boot/dts/stm32f429-disco.dts
> @@ -49,6 +49,8 @@
>   #include "stm32f429.dtsi"
>   #include "stm32f429-pinctrl.dtsi"
>   #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
>   
>   / {
>   	model = "STMicroelectronics STM32F429i-DISCO board";
> @@ -127,3 +129,48 @@
>   	pinctrl-names = "default";
>   	status = "okay";
>   };
> +
> +&i2c3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c3_pins>;
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	stmpe811@41 {
> +		compatible = "st,stmpe811";
> +		reg = <0x41>;
> +		interrupts = <15 IRQ_TYPE_EDGE_FALLING>;
> +		interrupt-parent = <&gpioa>;
> +		/* 3.25 MHz ADC clock speed */
> +		st,adc-freq = <1>;
> +		/* 12-bit ADC */
> +		st,mod-12b = <1>;
> +		/* internal ADC reference */
> +		st,ref-sel = <0>;
> +		/* ADC converstion time: 80 clocks */
> +		st,sample-time = <4>;
> +
> +		stmpe_touchscreen {
> +			compatible = "st,stmpe-ts";
> +			/* 8 sample average control */
> +			st,ave-ctrl = <3>;
> +			/* 7 length fractional part in z */
> +			st,fraction-z = <7>;
> +			/*
> +			 * 50 mA typical 80 mA max touchscreen drivers
> +			 * current limit value
> +			 */
> +			st,i-drive = <1>;
> +			/* 1 ms panel driver settling time */
> +			st,settling = <3>;
> +			/* 5 ms touch detect interrupt delay */
> +			st,touch-det-delay = <5>;
> +		};
> +
> +		stmpe_adc {
> +			compatible = "st,stmpe-adc";
> +			/* forbid to use ADC channels 3-0 (touch) */
> +			st,norequest-mask = <0x0F>;
> +		};
> +	};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
