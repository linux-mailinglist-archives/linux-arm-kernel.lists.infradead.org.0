Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FC2B719B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 04:34:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RtBNxCxfMF9CS3/1LzogZZCm3uYFA5662POeX1pMCIY=; b=LIGsSAH+7X4yu9238eVkjQYtX
	XOnPVIzwV2FNxDAS62Mm8KzfHs2dt3e53stc9uR7LheqEyNvBgGpb95BfuiU5tjn0T+ZnFaVl+1TU
	VjrkZs/WQuH4WTqGG3do3DxTXMd5Nl0Ye0Np6w4Z5PMjWmc9cjqO7HINajAfEABHSpi3G1Hy5GI0A
	haswqoqwYP3sKxl+f8G7Ivp/sHpfWsFgORimMXDHq2Ab81lWMA5hdz2OI1rOf7wqdMfyy3amwF9am
	nKI6h6XjAuN3pYnM83tYal3Ta6LkATOR6QT4SxNmrwz0+c4f9FCjzKTxYF24oYjRbOBYK/Iq/AOR9
	+OL+Enwyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAmGq-0005PU-QX; Thu, 19 Sep 2019 02:34:12 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAmGc-0005Ow-0e; Thu, 19 Sep 2019 02:33:59 +0000
Received: from [10.28.19.63] (10.28.19.63) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 19 Sep
 2019 10:34:49 +0800
Subject: Re: [PATCH 2/3] dt-bindings: reset: add bindings for the Meson-A1 SoC
 Reset Controller
To: Neil Armstrong <narmstrong@baylibre.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Kevin Hilman <khilman@baylibre.com>
References: <1568808746-1153-1-git-send-email-xingyu.chen@amlogic.com>
 <1568808746-1153-3-git-send-email-xingyu.chen@amlogic.com>
 <d99786ec-7635-67e5-3e47-738ce131b634@baylibre.com>
From: Xingyu Chen <xingyu.chen@amlogic.com>
Message-ID: <b6d7ad13-1bb4-5aea-ed13-3d695e8218e1@amlogic.com>
Date: Thu, 19 Sep 2019 10:34:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d99786ec-7635-67e5-3e47-738ce131b634@baylibre.com>
Content-Language: en-GB
X-Originating-IP: [10.28.19.63]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_193358_058154_D5117B86 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Neil
Thanks for your review

On 2019/9/18 20:39, Neil Armstrong wrote:
> Hi,
> 
> On 18/09/2019 14:12, Xingyu Chen wrote:
>> Add DT bindings for the Meson-A1 SoC Reset Controller include file,
>> and also slightly update documentation.
>>
>> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>   .../bindings/reset/amlogic,meson-reset.txt         |  4 +-
> 
> The reset bindings has been moved to yaml, either rebase on linux-next or wait for v5.4-rc1 :
> https://kernel.googlesource.com/pub/scm/linux/kernel/git/next/linux-next/+/refs/tags/next-20190917/Documentation/devicetree/bindings/reset/amlogic%2Cmeson-reset.yaml
> 
> NeilI will fix it in next version.
> 
>>   include/dt-bindings/reset/amlogic,meson-a1-reset.h | 59 ++++++++++++++++++++++
>>   2 files changed, 61 insertions(+), 2 deletions(-)
>>   create mode 100644 include/dt-bindings/reset/amlogic,meson-a1-reset.h
>>
>> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
>> index 28ef6c2..011151a 100644
>> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
>> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
>> @@ -5,8 +5,8 @@ Please also refer to reset.txt in this directory for common reset
>>   controller binding usage.
>>   
>>   Required properties:
>> -- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset" or
>> -	"amlogic,meson-axg-reset".
>> +- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset",
>> +	"amlogic,meson-axg-reset" or "amlogic,meson-a1-reset".
>>   - reg: should contain the register address base
>>   - #reset-cells: 1, see below
>>   
>> diff --git a/include/dt-bindings/reset/amlogic,meson-a1-reset.h b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
>> new file mode 100644
>> index 00000000..8d76a47
>> --- /dev/null
>> +++ b/include/dt-bindings/reset/amlogic,meson-a1-reset.h
>> @@ -0,0 +1,59 @@
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> + *
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + * Author: Xingyu Chen <xingyu.chen@amlogic.com>
>> + *
>> + */
>> +
>> +#ifndef _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
>> +#define _DT_BINDINGS_AMLOGIC_MESON_A1_RESET_H
>> +
>> +/* RESET0 */
>> +#define RESET_AM2AXI_VAD		1
>> +#define RESET_PSRAM			4
>> +#define RESET_PAD_CTRL			5
>> +#define RESET_TEMP_SENSOR		7
>> +#define RESET_AM2AXI_DEV		8
>> +#define RESET_SPICC_A			10
>> +#define RESET_MSR_CLK			11
>> +#define RESET_AUDIO			12
>> +#define RESET_ANALOG_CTRL		13
>> +#define RESET_SAR_ADC			14
>> +#define RESET_AUDIO_VAD			15
>> +#define RESET_CEC			16
>> +#define RESET_PWM_EF			17
>> +#define RESET_PWM_CD			18
>> +#define RESET_PWM_AB			19
>> +#define RESET_IR_CTRL			21
>> +#define RESET_I2C_S_A			22
>> +#define RESET_I2C_M_D			24
>> +#define RESET_I2C_M_C			25
>> +#define RESET_I2C_M_B			26
>> +#define RESET_I2C_M_A			27
>> +#define RESET_I2C_PROD_AHB		28
>> +#define RESET_I2C_PROD			29
>> +
>> +/* RESET1 */
>> +#define RESET_ACODEC			32
>> +#define RESET_DMA			33
>> +#define RESET_SD_EMMC_A			34
>> +#define RESET_USBCTRL			36
>> +#define RESET_USBPHY			38
>> +#define RESET_RSA			42
>> +#define RESET_DMC			43
>> +#define RESET_IRQ_CTRL			45
>> +#define RESET_NIC_VAD			47
>> +#define RESET_NIC_AXI			48
>> +#define RESET_RAMA			49
>> +#define RESET_RAMB			50
>> +#define RESET_ROM			53
>> +#define RESET_SPIFC			54
>> +#define RESET_GIC			55
>> +#define RESET_UART_C			56
>> +#define RESET_UART_B			57
>> +#define RESET_UART_A			58
>> +#define RESET_OSC_RING			59
>> +
>> +/* RESET2 Reserved */
>> +
>> +#endif
>>
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
