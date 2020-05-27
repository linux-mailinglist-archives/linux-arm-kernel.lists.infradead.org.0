Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F59F1E42FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dG8RycH7eUo7gkojSxURZqDDhU5WDMZaEHY4dxi89Do=; b=tq6PE7TSGl4bwr
	wATcGYaApaQhu7aqOXyoFA5xCOIkMlcHmkdL37L/fDY9mMEUkt88w70kFyx6Fmf17GgjIGuS6IolZ
	GdGcm3s+7nLjWDCnozITQPWRO2hszksUYkg/3P/gXcfFcFtSs8IRkL88TPWo1u15GTrqMM9vS53qv
	KtxhId17zaSrJRwJqVmyfcRb0n4MaPtQqZInim0p1dR02hKngU7NA/qJvOBWVvB7vi5Qy3B/vmcx3
	dhOJLYozI6YatU/NeGD29rscr8f0LuegyaeFoNuYajpSKyckBCf2r5fFbp+IkZFf9gKtDFROB+xrw
	n3QTDKCsyTwTggLes0Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvqk-0007fh-KR; Wed, 27 May 2020 13:12:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvqb-0007e2-Ka
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:11:55 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04RD8AFR008753; Wed, 27 May 2020 15:11:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=msqWAAt3W24QRgICYNWFWTZaQ/yQljeulY2121WBxwQ=;
 b=SD6qx4d3rijF6tZWnCcsYWW7jfmei4vLK6Z5aocb2/DoMgk19LbBCfF6kjgcCfGLiEvP
 wlM9t4PQePAVb/4x4hvxpvcVd8ir2/Fshu6uBUv8ga1NR3PG9OxktXqlrGFUNoBeDes0
 lksiyR29y/5FOCyN1llf0v7/4gAzHr3qVv4NTimBjFNNMwNxMbZ4PAeMGNcKJrwrnMjG
 jSJcF0bITSMQwLOdrx2xRe3zvSWU1MP5MXyV8W5rFd5uND4T29dQigUCDGhGuRojlkoo
 obhFVrsVydHxQ+sPQ6WYngGeTbSL1UndsdleKKRZy/0DJa94vpeJAYN5ZTCV83waGoyq lQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316skwe06k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 May 2020 15:11:43 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 80D2710002A;
 Wed, 27 May 2020 15:11:43 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 668F82AC7CD;
 Wed, 27 May 2020 15:11:43 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 27 May
 2020 15:11:42 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 27 May 2020 15:11:42 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
Thread-Topic: [RFC RESEND 0/3] Introduce cpufreq minimum load QoS
Thread-Index: AQHWM3CeA6bTrCFpTUymlrJxXTw8j6i7lUyAgAATBICAAA//AIAAEAGA
Date: Wed, 27 May 2020 13:11:42 +0000
Message-ID: <099f5b6c-aa81-be4a-19bf-52a2fff7b3db@st.com>
References: <20200526151619.8779-1-benjamin.gaignard@st.com>
 <jhjk10xu1tq.mognet@arm.com> <ab4340c0-bda3-e752-9073-e162e6325bb1@st.com>
 <jhjwo4xinhb.mognet@arm.com>
In-Reply-To: <jhjwo4xinhb.mognet@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <706816CEE5C22249B8804FAF19ABB7CF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-27_03:2020-05-27,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_061154_034485_535BD5B1 
X-CRM114-Status: GOOD (  23.95  )
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
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Hugues FRUCHET <hugues.fruchet@st.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/27/20 2:14 PM, Valentin Schneider wrote:
> On 27/05/20 12:17, Benjamin GAIGNARD wrote:
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
>> without charge the CPU so the thread isn't running.
> I'm not sure I follow; the frequency of the CPU doesn't matter while
> your hardware blocks are spinning, right? AIUI what matters is running
> your interrupt handler / action at max freq, which you get if you use
> threaded IRQs and schedutil.
Yes but not limited to schedutil.
Given the latency needed to change of frequencies I think it could 
already too late
to change the CPU frequency when handling the threaded interrupt.
>
> I think it would help if you could clarify which tasks / parts of your
> pipeline you need running at high frequencies. The point is that setting
> a QoS request affects all tasks, whereas we could be smarter and only
> boost the required tasks.
What make us drop frames is that the threaded IRQ is scheduled too late.
The not thread part of the interrupt handler where we clear the 
interrupt flags
is going fine but the thread part not.
>
>> I have done the
>> tests with schedutil
>> and ondemand scheduler (which is the one I'm targeting). I have no
>> issues when using
>> performance scheduler because it always keep the highest frequencies.
>>
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
