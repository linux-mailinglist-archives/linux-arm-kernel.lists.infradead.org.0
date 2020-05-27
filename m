Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0292B1E42A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPc9HUArT22K3vnEhDv4B5/xGX5/8U8ru4mWDLfJkIs=; b=ts20VMosMcvcLs
	L6esCZf8IFgZ/2g8tqg5LaH3wETbcWNja+iDTaBfFOHG/BlTGqNNWTzxwS0135qZ6xeYu0uwsfhp1
	mt6PnrzfvGECj23wA1ruLniMT76zZpLkm2Evbr/8kg1/0/D5n/vkTLcpjZUnACsvOPs+C6R6cmB2i
	50iBDpYZowIuI9d68g6Br3ggEn4n3OFkcdAuiPf//Lg8Vq1L4LKEf1b10ApdIA51hxwwFvtzJa49E
	RVRS9AOp1GRs2dO2GJQYyoUcdiO2GQ+cxqvQfjJzMi5sL7YrjlVw7zkOI28AMYsyaBzGaStEuDAZF
	oTIc1DiMES0pn52NYEkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvUu-0008Ik-L1; Wed, 27 May 2020 12:49:28 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvUh-0008Hs-3t
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:49:17 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04RCm1ie006236; Wed, 27 May 2020 14:48:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=26IMlLvf/Y93jh9yA1Ns2+y1tGX2JVHjVd/Qs0j7tx0=;
 b=Y19tcPxK/czXOsbRcP6sSkKPo3NkL5FNgJBrp8S/XYQ+NFurz30lZ4/GvLPUjWolo1rj
 DfAOay8gU8SyqtKDzI1ZNDgmcmwYJWQBjmJc5SfnIr6bDJfgiLWC+DZ+xcKxDM2KXBea
 uDPeOcvmgPLZti7JGTtcgRo6bk/qHvc5jB0ZlnIeaAKE6M2eCH/MxxeuCAJm2cbhNSSr
 YCQ8JGYhdvmNRMe/8Bgwj46XYzOBX7DBOSbpcdTqa3uXKFE4ByeXqQhGbOiPzjWptEGK
 hRNUip9zAnIGxdb3a/VMG1UYj6tsPqtFfnP5Qd9/ma5UGLllAkmC9BXmV9ILKwaHvf8p zQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa25rd5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 May 2020 14:48:46 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5768910002A;
 Wed, 27 May 2020 14:48:45 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1C95D2B7620;
 Wed, 27 May 2020 14:48:45 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 27 May
 2020 14:48:44 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 27 May 2020 14:48:44 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
Thread-Topic: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
Thread-Index: AQHWM3CeA6bTrCFpTUymlrJxXTw8j6i7lUyAgAATBICAABI/gIAAB1gA
Date: Wed, 27 May 2020 12:48:44 +0000
Message-ID: <51917583-f8ff-3933-7783-2eedc91484a4@st.com>
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
 <CAKfTPtBt6Ju-CnETnn6_FkgR0CAJ+jYnySz9OHP9X2hmxWHM7w@mail.gmail.com>
In-Reply-To: <CAKfTPtBt6Ju-CnETnn6_FkgR0CAJ+jYnySz9OHP9X2hmxWHM7w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <A1EFABD517AC9847AA7C19D754960F2E@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-27_03:2020-05-27,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_054915_604593_DD263140 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "len.brown@intel.com" <len.brown@intel.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>, "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/27/20 2:22 PM, Vincent Guittot wrote:
> On Wed, 27 May 2020 at 13:17, Benjamin GAIGNARD
> <benjamin.gaignard@st.com> wrote:
>>
>>
>> On 5/27/20 12:09 PM, Valentin Schneider wrote:
>>> Hi Benjamin,
>>>
>>> On 26/05/20 16:16, Benjamin Gaignard wrote:
>>>> A first round [1] of discussions and suggestions have already be done on
>>>> this series but without found a solution to the problem. I resend it to
>>>> progress on this topic.
>>>>
>>> Apologies for sleeping on that previous thread.
>>>
>>> So what had been suggested over there was to use uclamp to boost the
>>> frequency of the handling thread; however if you use threaded IRQs you
>>> get RT threads, which already get the max frequency by default (at least
>>> with schedutil).
>>>
>>> Does that not work for you, and if so, why?
>> That doesn't work because almost everything is done by the hardware blocks
>> without charge the CPU so the thread isn't running. I have done the
>> tests with schedutil
>> and ondemand scheduler (which is the one I'm targeting). I have no
>> issues when using
>> performance scheduler because it always keep the highest frequencies.
> IMHO, the only way to ensure a min frequency for anything else than a
> thread is to use freq_qos_add_request() just like cpufreq cooling
> device but for the opposite QoS. This can be applied only on the
> frequency domain of the CPU which handles the interrupt.
I will give a try with this idea.
Thanks.
> Have you also checked the wakeup latency of your idle state ?
It just could go in WFI so latency should be minimal.
>
>>
>>>> When start streaming from the sensor the CPU load could remain very low
>>>> because almost all the capture pipeline is done in hardware (i.e. without
>>>> using the CPU) and let believe to cpufreq governor that it could use lower
>>>> frequencies. If the governor decides to use a too low frequency that
>>>> becomes a problem when we need to acknowledge the interrupt during the
>>>> blanking time.
>>>> The delay to ack the interrupt and perform all the other actions before
>>>> the next frame is very short and doesn't allow to the cpufreq governor to
>>>> provide the required burst of power. That led to drop the half of the frames.
>>>>
>>>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
>>>> a cpufreq minimum load QoS resquest.
>>>>
>>>> Benjamin
>>>>
>>>> [1] https://lkml.org/lkml/2020/4/24/360
>>>>
>>>> Benjamin Gaignard (3):
>>>>     PM: QoS: Introduce cpufreq minimum load QoS
>>>>     cpufreq: governor: Use minimum load QoS
>>>>     media: stm32-dcmi: Inform cpufreq governors about cpu load needs
>>>>
>>>>    drivers/cpufreq/cpufreq_governor.c        |   5 +
>>>>    drivers/media/platform/stm32/stm32-dcmi.c |   8 ++
>>>>    include/linux/pm_qos.h                    |  12 ++
>>>>    kernel/power/qos.c                        | 213 ++++++++++++++++++++++++++++++
>>>>    4 files changed, 238 insertions(+)
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
