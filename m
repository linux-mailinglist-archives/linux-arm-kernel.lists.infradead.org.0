Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED111D63B0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 20:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM7j6NipY6ps/atQ0bBB5u8JIiOsHLC69J+cSSWa3hA=; b=j4x7XTIvi3z9jc
	RYe/RXDi22HMZ/gZPvaBKAi9FuEXWVNyTws6yFeS47lfMToroE044A7rZLAgo1vIDrnS04rIIMsKO
	5ZTbp0yXgHDvNDqodrNAU1XneJLd/7eIwpOMm3EDQxiT4ChCHvxkGOWZD977AWQxXV+3/CQ49A6c+
	wq8IKzHxC2Cvd0Kmy7/f+0sccfV3sVSjsFPvciM4wo8QgUCAV5ruvvt+42G9jIZ5rq0DzZBdoBFSU
	3zKi4ttH8+uZ59zrbJHWFkUf8+VyZEa+3x4JXFY9FGbdbI+sJY2RCIrMeN9LRRHOAQ9ER+REUrlUJ
	4geEs90zf81RGN2mSqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja1ua-0006bx-J5; Sat, 16 May 2020 18:51:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja1uR-0006ap-O9
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 18:51:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04GIlKQa019731; Sat, 16 May 2020 20:51:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=98PF3Cew3LuM6AYgQh1W40dQPXP7atthK4LeCf/+19E=;
 b=f1ExUjU3NRU+4fQ/2OWAUPkl6B9gIPBoQr51OjScurx0Td7hqEuOgkcBiZjcyYlchX0V
 YtDzQrw29iM1ZdJhOgjAh3GYzz8Ad/AQvyAY8JMIpB3E21MQHZrjstaGLVrEryURAdSX
 wfRWPo5/eFdyzorJIxLJqQQJWM1Oy6lAmcQI5FcqxOhrqtOYoQGN7GxH481DUoeKl1+4
 P6d6sbsHPJJNNiCfzE4mijWxTvuZaKGXbZXYM5XZR5rM6NdxV2Q/LakdoTjX/JB4HJeE
 5yjW2mCZuRPFf0c2qw3edsPaIi8LP6R68O++OfwhLUH4bAz64yyjSktkiISm7IlmzqKO 3Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3125a8uv1p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 16 May 2020 20:51:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 29BED10002A;
 Sat, 16 May 2020 20:51:27 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EC7A02BBAE6;
 Sat, 16 May 2020 20:51:26 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Sat, 16 May
 2020 20:51:26 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Sat, 16 May 2020 20:51:26 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Fabrice GASNIER
 <fabrice.gasnier@st.com>, "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Subject: Re: [Linux-stm32] [PATCH v7 5/6] clocksource: Add Low Power STM32
 timers driver
Thread-Topic: [Linux-stm32] [PATCH v7 5/6] clocksource: Add Low Power STM32
 timers driver
Thread-Index: AQHWIq5ye17eyc+P4UqbHd8uXquVx6ipMz+AgAHL3IA=
Date: Sat, 16 May 2020 18:51:26 +0000
Message-ID: <a9c2c278-9b45-972e-c015-8235f8fe9731@st.com>
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
 <20200420121620.2099-6-benjamin.gaignard@st.com>
 <bbac5aa5-1c95-456e-3141-006d4fa86095@st.com>
 <103c5558-4dc9-63c9-4994-5c8f97646eee@linaro.org>
In-Reply-To: <103c5558-4dc9-63c9-4994-5c8f97646eee@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <BDD34949A5A120498BAFB2CEE1F28DE1@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-16_11:2020-05-15,
 2020-05-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_115144_224426_F281CECA 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Pascal
 PAILLET-LME <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/15/20 5:25 PM, Daniel Lezcano wrote:
> Hi Benjamin,
>
> On 05/05/2020 09:26, Benjamin GAIGNARD wrote:
>>
>> On 4/20/20 2:16 PM, Benjamin Gaignard wrote:
>>> From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
>>>
>>> Implement clock event driver using low power STM32 timers.
>>> Low power timer counters running even when CPUs are stopped.
>>> It could be used as clock event broadcaster to wake up CPUs but not like
>>> a clocksource because each it rise an interrupt the counter restart from 0.
>>>
>>> Low power timers have a 16 bits counter and a prescaler which allow to
>>> divide the clock per power of 2 to up 128 to target a 32KHz rate.
>> Gentle ping to reviewers on this driver part of the series.
>> The bindings and the MFD have been reviewed so I hope I can progress
>> on the driver part too.
> [ ... ]
>
> sorry for the delay.
>
> How do you want these patches to be merged?
>
> Shall I pick patch 6/7 ?
If Lee agrees I think the best is to get all the patches in mfd tree because
of the dependencies between them.

Benjamin
>
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
