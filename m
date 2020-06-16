Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798831FAF78
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zmsy5y6Oia+2AHQx8sRbaW2HFU3zmHumb3CmNJRySzU=; b=YOa7UOBJksMRfq
	KAilvhB3Xn2KdYaiqYzidvHaCBD1NHcxmXtX6Iw4M54JE3MiblslsQqYaoBeAOu1wmZrSaRbBwtN4
	0a+xkZ9M7zp5ihoIwjvdnQLWi+sk5+QlGtQ4iWTIIvvqEzmsic+YfoEBwwsnIQal7sNs29buWFpZL
	DbB0XljaawdhxoEMcmYDcZfGxV47QPtVSQouT58nC/y34D+8TA5M/AvCSEcGnHs9VF2Xlzc5CeUeq
	iVVu0epF5iAFQyDgPwE0R2kzZLkr/Z8Sw9UKdHxACrx2iWm9ZLIPhSBdYq8k/SByfVzcjFAKuYePr
	LHrq1/4rzLCMH6wQspbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlA0v-0003bp-Nh; Tue, 16 Jun 2020 11:44:25 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlA0n-0003ah-Qu
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:44:19 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GBZ0Wk012134; Tue, 16 Jun 2020 13:44:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=NneIqC9y5kxpsEMwdz4kWV76JLL/a0bbk4vzbiTymbc=;
 b=z43s9fBxwe8u1Z2wLMtNhnb0RgCk2+j4zVOjmfmdqMgo3IwbIS8GbmxYvcj//IJXntWk
 GdKCcRbNOz5K+anwkSwBrkQNbEzSByLg21e+rUUBJS0/3lFrpqBuQGWjtmL14FqZcwb1
 MpFcsh3ooNLRGAGLCINvnqiH0ZWA1LfwoJPAnvDdmxOBE+sPV2O1lT/aT7ycVzXDYFMt
 iWal/IIAk1jW1O1f/0yIOEQo+wZVP6Rz9BvEw9AMvxzfe6wfY/a6Hsl/ioxggnfxjyhS
 FkOokVv9rz7ncGceHH0TwkE3f0g+bnf5E2haGxSEGKDB3aFb1jryIzuHHaoTby2bQmgH bA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvy2ef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 13:44:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 13E23100034;
 Tue, 16 Jun 2020 13:44:02 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 024CB2C198C;
 Tue, 16 Jun 2020 13:44:02 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 16 Jun
 2020 13:44:01 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 16 Jun 2020 13:44:01 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Fabrice GASNIER <fabrice.gasnier@st.com>, "lee.jones@linaro.org"
 <lee.jones@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Subject: Re: [RESEND v7 0/6] clockevent: add low power STM32 timer
Thread-Topic: [RESEND v7 0/6] clockevent: add low power STM32 timer
Thread-Index: AQHWOaYlv9Zz94A0REiA+Z4Po30KbajbEgYA
Date: Tue, 16 Jun 2020 11:44:01 +0000
Message-ID: <50df6585-d9df-4cb3-5589-aab2c97cad51@st.com>
References: <20200603125439.23275-1-benjamin.gaignard@st.com>
In-Reply-To: <20200603125439.23275-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <A3A9FD8EF4B9F44C864F4556F63E33A2@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_044418_171027_08F00454 
X-CRM114-Status: GOOD (  23.02  )
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/3/20 2:54 PM, Benjamin Gaignard wrote:
> This series add low power timer as boadcast clockevent device.
> Low power timer could runs even when CPUs are in idle mode and
> could wakeup them.
>
> Lee has acked the MFD part.
> Clocksource driver still need to be reviewed by maintainers.
> Add missing part of the bindings to describe interrupt.

Hi Lee,

I think everything has been reviewed and acked in this series.
May I have forgot something that prevent it to be merge ?

Benjamin

>
> version 7 resend:
> - with Daniel ack for driver patch
> - with Rob review for bindings patch
>
> version 7:
> - rebased on top of v5.7-rc2
>
> version 6:
> - simplify binding, DT and code to use only one interrupt
>
> version 5:
> - document interrupts and interrupt-names bindings
> - use a different wake up interrupt
> - add device-tree patch
> - make STM32MP157 select low power timer configuration flag
> - enable fast_io in regmap configuration
>
> version 4:
> - move defines in mfd/stm32-lptimer.h
> - change compatible and subnode names
> - document wakeup-source property
> - reword commit message
> - make driver Kconfig depends of MFD_STM32_LPTIMER
> - remove useless include
> - remove rate and clk fields from the private structure
> - to add comments about the registers sequence in stm32_clkevent_lp_set_timer
> - rework probe function and use devm_request_irq()
> - do not allow module to be removed
>
> version 3:
> - fix timer set sequence
> - don't forget to free irq on remove function
> - use devm_kzalloc to simplify errors handling in probe function
>
> version 2:
> - stm32 clkevent driver is now a child of the stm32 lp timer node
> - add a probe function and adpat the driver to use regmap provide
>    by it parent
> - stop using timer_of helpers
>
>
> Benjamin Gaignard (6):
>    dt-bindings: mfd: Document STM32 low power timer bindings
>    ARM: dts: stm32: Add timer subnodes on stm32mp15 SoCs
>    mfd: stm32: Add defines to be used for clkevent purpose
>    mfd: stm32: enable regmap fast_io for stm32-lptimer
>    clocksource: Add Low Power STM32 timers driver
>    ARM: mach-stm32: select low power timer for STM32MP157
>
>   .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |   5 +
>   arch/arm/boot/dts/stm32mp151.dtsi                  |  35 ++++
>   arch/arm/mach-stm32/Kconfig                        |   1 +
>   drivers/clocksource/Kconfig                        |   4 +
>   drivers/clocksource/Makefile                       |   1 +
>   drivers/clocksource/timer-stm32-lp.c               | 221 +++++++++++++++++++++
>   drivers/mfd/stm32-lptimer.c                        |   1 +
>   include/linux/mfd/stm32-lptimer.h                  |   5 +
>   8 files changed, 273 insertions(+)
>   create mode 100644 drivers/clocksource/timer-stm32-lp.c
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
