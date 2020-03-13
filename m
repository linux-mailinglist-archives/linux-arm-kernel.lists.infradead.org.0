Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D9918486C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 14:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wLW84do6D0f9XwPbDTpzUQc7Pyb3Qiwp2PDKg75UhCU=; b=FM2dlMhNxUn2J+
	idH7Amec3ke3f+Qqgg306mtRRGKGXLDrrCAIXVGbKGTmPftnfO73j+/3HMvHL9Vdu22hQws8o2bkA
	vOAt59jOaQkdF0MbmACth4Zzyabem9YeJMvbo7zU13xAg4rgnStEocwogkGKYqe0rahbp2YS/zKgM
	5M+tticfql+STtwAKSLIz7GUuQzm0QXWM/nFD30NUhMAaSggW+HnpOmWlAYaidc3ByZ+FTgAo8c2x
	lCKthL06v7T0b6PMCMkasKso0Kj5esR57n28ntUQhByJHDZKi5liS3SXv+pi6dXztBUh6dE1pPF5n
	oQQLVMs0LjXbao36DbVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkd4-00084Y-4l; Fri, 13 Mar 2020 13:45:34 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkcv-00083y-Ba
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:45:26 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02DDhImK025110; Fri, 13 Mar 2020 14:45:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=BzB5x9BXZs8Iatgp2DsUFoNfkqOLF0WtU1RaDu8c6yo=;
 b=C0AKIxz6AMmzFUGv9Ii97U25jySGU0BnwGzQ1zblOatfce7HuFpUZody8thgAtC7M9sE
 Fsh3hBpyeuZVrZkEpNNWaYv+UWLrG0g05Awhspf7EEsNfOP2dXpFh8i+xJUsNpGXrhS2
 sNmAE7AaSztqUOSXVevUOdVz+PARM22UcC2cWR3jCoykZzlKyA0uGpAsC//8RuT3WsUh
 9/EwwsD93SK3hTfF1ayQ8+/2yToB6s+/+gypbo+9PSigH5zalfWtE8Zl/6CDjr+DlUWy
 bhSt56ZmNlA38r1MyF4jZDLk+ef/cRTJd1AYDWn8NWviV1v8lzsXqhsnxE9RsvutAAMu +A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yqt8196eb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 13 Mar 2020 14:45:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A212A100038;
 Fri, 13 Mar 2020 14:45:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8C28C2A906E;
 Fri, 13 Mar 2020 14:45:09 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 13 Mar
 2020 14:45:08 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Fri, 13 Mar 2020 14:45:09 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, "lee.jones@linaro.org"
 <lee.jones@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, Fabrice GASNIER
 <fabrice.gasnier@st.com>
Subject: Re: [PATCH v4 3/3] clocksource: Add Low Power STM32 timers driver
Thread-Topic: [PATCH v4 3/3] clocksource: Add Low Power STM32 timers driver
Thread-Index: AQHV59mpsik/WRqXdUuknFgx3rC1tqgj1SiAgAAFrQCAIr0VgIAAAtYA
Date: Fri, 13 Mar 2020 13:45:09 +0000
Message-ID: <1cd9e136-ebdd-f604-9ed8-1f21d4c70adb@st.com>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-4-benjamin.gaignard@st.com>
 <687ab83c-6381-57aa-3bc1-3628e27644b5@linaro.org>
 <9cc4af9e-27d0-96c3-b3f1-20c88f89b70a@st.com>
 <ee131515-cd4c-00b2-5e1f-3abefb634bdd@linaro.org>
 <4f21f3db-50dd-f412-35dc-1fde7a139c52@linaro.org>
In-Reply-To: <4f21f3db-50dd-f412-35dc-1fde7a139c52@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <845C408BCC80DC4391DEC3D041AB6476@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-13_05:2020-03-12,
 2020-03-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_064525_757908_05E962FC 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pascal PAILLET-LME <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/13/20 2:34 PM, Daniel Lezcano wrote:
> Hi Benjamin,
>
> On 20/02/2020 12:05, Daniel Lezcano wrote:
>
> [ ... ]
>
>>> It has be exclusive and that exclude the problem you describe above.
>> Ok, the regmap_write is not a free operation and in this case you can
>> get rid of all the regmap-ish in this driver.
> Are you planning to send the non-regmap version?
No because the regmap is inherited from the mfd parent.
I could use fast-io to improve that.

Benjamin
>
>
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
