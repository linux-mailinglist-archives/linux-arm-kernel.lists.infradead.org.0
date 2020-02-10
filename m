Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1249F157165
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:03:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJ41so3rg39DgbD7ls+gVocwrVCrF8k6tWH0xaZZM7w=; b=U/GgpYy0bKGnf2
	cJEJZJFWszyJ9U8GfAjWpsfzYohWCCuO795mmrbyT66EZeR9b/5dpiGzj56yYX3ALRxBypaE+Biwb
	70z9z0P5g6r8E6wBhHK/48/5w+n597oitIxW7s+Xy3K2J5d3sSVWT2lKwT3wGgxtXP8BWQOPWHcdi
	JBIG+sdyzMXpiV77Bdm6BcDsE7gMazH8h+YsgrVHD7xRKshh7A/ivZNu6zgVvGZjRwBE4stWssZSj
	kfxTfSu0h5XnVNJZV65Nt7BCjHyOy8F7YnV0Adb0eSjG5QtONhG+Fjq/XF7c3/xCDlkzP3XKNj9tE
	TtTkOGR8LcMJZeR0UqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14yE-0005cM-KO; Mon, 10 Feb 2020 09:03:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14y6-0005bs-2e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:03:03 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01A8mLPn001938; Mon, 10 Feb 2020 10:02:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=H3rjV2A7fROz9cnfk/NtpzzXf8VAhOt6rYAt5Ftt45U=;
 b=D5V7BBkvCc0kUybXL+upTzZgl75lCiYEW+mg1iyuSGZCPHhDqvHoOLqEIwWAHpsvx3JT
 lvYZvivPSRavo5I9BBLtWVpiBqbpSFtNLa5TUve6Sr8ggCN5Hcu6D7PowvHqmhZ9lZ9G
 vDepXpzaLOSvrHOH/kYlLUCn8WG1xVCKPykOH0L3Ry0LCAQuGllUluzwr9X0RWoA44rs
 aEhtdrV6O2OgcpZ2A3Sa0gKshHV458DIZuhKJqmGcCM1HKSo7z9m8vsTEc8PoCjFFGst
 Cyb1vC6w20bsewVzwgofcOqKYauilVE+Ms51/8SvoIYyPnd6sbaOSkqgAreHz5+QKCaa kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1urgr6gv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 10:02:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EAD0010002A;
 Mon, 10 Feb 2020 10:02:36 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D059F2B793A;
 Mon, 10 Feb 2020 10:02:36 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 10 Feb
 2020 10:02:36 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 10 Feb 2020 10:02:36 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Pascal PAILLET-LME <p.paillet@st.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 0/2] clockevent: add low power STM32 timer
Thread-Topic: [PATCH v3 0/2] clockevent: add low power STM32 timer
Thread-Index: AQHV1dN0ASRe/0fvOUqwQX9rlF1+nagUJUGA
Date: Mon, 10 Feb 2020 09:02:36 +0000
Message-ID: <7d062f5b-9272-c7db-7a9e-b908870dd8b4@st.com>
References: <20200128120702.26166-1-benjamin.gaignard@st.com>
In-Reply-To: <20200128120702.26166-1-benjamin.gaignard@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <5AF5E50E0266274A90729B9F125EDBE9@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_02:2020-02-07,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_010302_491832_CDB5F321 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/28/20 1:07 PM, Benjamin Gaignard wrote:
> This series add low power timer as boadcast clockevent device.
> Low power timer could runs even when CPUs are in idle mode and
> could wakeup them.

Gentle ping to reviewers.

Thanks,

Benjamin

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
> - document the bindings inside stm32 lptimer yaml
>
> Benjamin Gaignard (2):
>    dt-bindings: mfd: Document STM32 low power clkevent bindings
>    clocksource: Add Low Power STM32 timers driver
>
>   .../devicetree/bindings/mfd/st,stm32-lptimer.yaml  |  14 ++
>   drivers/clocksource/Kconfig                        |   4 +
>   drivers/clocksource/Makefile                       |   1 +
>   drivers/clocksource/timer-stm32-lp.c               | 248 +++++++++++++++++++++
>   4 files changed, 267 insertions(+)
>   create mode 100644 drivers/clocksource/timer-stm32-lp.c
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
