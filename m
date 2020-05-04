Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438D41C3566
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 11:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asOHCXwynP6RA1j+/N8YT1l3CVNwmTqRVJq+M0y7wgM=; b=SAO84fdlLq0OKI
	s7KvQ/wdPCAJwyv2um8O4nLo/rAE3st1HD3niG7j1KSvK+1EuvxjXJrAz5/LecxjUb2xLiC4Q0aNn
	RPGlvoR2TGCdAsmr4kU5KW7dzGlHODVAZ5cag4lojivPTcTF1yMbMyAQhIJnkNZYTtln39eDdc6A9
	sXSJftRCqpsV7SMxw5hw4+np69oGy350HnA4ZHYRjCn5X4NLp8NMLEOWZrx6IwmSrZL35JADR7gXF
	MLD3BzKP6GnCgr/1xbn708JbJ06y7Fovrd5pkHnFIDdbhi2Ft1YGDM6Haux8A4FmPhmOYNggwRR3F
	b0Md7LIRh+etBR3DI3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVXEk-0003UH-0g; Mon, 04 May 2020 09:18:06 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVXEd-0003TH-Am
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 09:18:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 044978Ts004044; Mon, 4 May 2020 11:17:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=t8yE9JoGl4flloHQYJEWfkrlpSIqoEFqyExGxmwsMx8=;
 b=SKVrCXff3h/xL4m3odmOVBOJUf2qGJNoKtavF7W6Rz0kENh4xvZMCpxwYDsfw58rWIxe
 uHRuHlXRWPeptG3pU39cL8A4BE1d0BtwMYevfaQHB/x2JNqzO9+rv8pP8e/Bm++04prk
 NdRdpi514nAwSf9qy1Vh0haZNOCXBmidZqBMY04DfYc6MFpEo1X2u3FXlifIRn7rEtbt
 SHgnlyxsUf/vuXjEWSG7CZZ98MkRvZu5Ey0Me0w2BRr4wkDbaVHNUqljBSysarYiAjBl
 atBmEB2Osx42GsTLk8y13PzfkW51ioujPXV2+37zvew1lZHY8NySEcot5hhcDaqikLV2 xg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rx089j7y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 May 2020 11:17:45 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1E65710002A;
 Mon,  4 May 2020 11:17:41 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D3AA22BBAA5;
 Mon,  4 May 2020 11:17:41 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 4 May
 2020 11:17:41 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Mon, 4 May 2020 11:17:41 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Topic: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Index: AQHWGi06wBgeAQBseECYOK/U7Qvw76iQJdAAgAACCYCAAAQ3AIABBseAgAAT0wCAAE7QgIAADU2AgAARzICAAAO9AIAF2zaA
Date: Mon, 4 May 2020 09:17:41 +0000
Message-ID: <b8757472-c973-a32d-d5c9-a584d7d703f8@st.com>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher> <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
 <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
 <6b5cde14-58b3-045d-9413-223e66b87bf0@st.com>
 <CAJZ5v0h6t6perZiibCWhEh1_V0pSXqFe-z22TFqH7KTFXYmqpQ@mail.gmail.com>
 <a234e123-6c15-8e58-8921-614b58ca24ca@st.com> <jhjtv11cabk.mognet@arm.com>
 <a20c5214-211b-1f70-1162-57b32e60549b@st.com> <jhjmu6tc6rz.mognet@arm.com>
In-Reply-To: <jhjmu6tc6rz.mognet@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <F04BFBC11629A34FAC8C983CAC60E3EF@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-04_05:2020-05-01,
 2020-05-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_021759_822026_47B7CD4B 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "len.brown@intel.com" <len.brown@intel.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "pavel@ucw.cz" <pavel@ucw.cz>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>,
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



On 4/30/20 5:50 PM, Valentin Schneider wrote:
> On 30/04/20 16:37, Benjamin GAIGNARD wrote:
>> On 4/30/20 4:33 PM, Valentin Schneider wrote:
>>> On 30/04/20 14:46, Benjamin GAIGNARD wrote:
>>>>> That's not what I meant.
>>>>>
>>>>> I suppose that the interrupt processing in question takes place in
>>>>> process context and so you may set the lower clamp on the utilization
>>>>> of the task carrying that out.
>>>> I have try to add this code when starting streaming (before the first
>>>> interrupt) the frames from the sensor:
>>>> const struct sched_attr sched_attr = {
>>>>      .sched_util_min = 10000, /* 100% of usage */
>>> Unless you play with SCHED_CAPACITY_SHIFT, the max should be 1024 -
>>> i.e. SCHED_CAPACITY_SCALE. That's a really big boost, but that's for you to
>>> benchmark.
>>>
>>>>      .sched_flags = SCHED_FLAG_UTIL_CLAMP_MIN,
>>>>     };
>>>>
>>>> sched_setattr(current, &sched_attr);
>>>>
>>>> I don't see any benefices maybe there is some configuration flags to set.
>>>>
>>>> How changing sched_util_min could impact cpufreq ondemand governor ?
>>>> Does it change the value returned when the governor check the idle time ?
>>>>
>>> You'll have to use the schedutil governor for uclamp to have an effect. And
>>> arguably that's what you should be using, unless something explicitly
>>> prevents you from doing that.
>> Even with schedutil and SCHED_CAPACITY_SCALE that it doesn't work.
>> cpufreq/cpuinfo_cur_freq values are always on the max value even if the
>> stats show transitions between the available frequencies.
>>
>> I see two possibles reasons to explain that:
>> - sched_setattr() is called in userland process context, but the
>> threaded irq handler is running in another process.
> Ah yes, this only works if the task you boost is the one that will handle
> whatever work you care about (in this case handling the irq). That said, if
> you do use threaded IRQs, that should give you a SCHED_FIFO thread, which
> should drive the frequency to its max when using schedutil (unrelated to
> uclamp).
Can I conclude that sched_setattr() isn't the good way to solve this 
problem ?
Does my patches make sense in this case ?

>> - because this use case is almost running all in hardware the process
>> isn't doing anything so the scheduler doesn't take care of it.
>>
>>>>> Alternatively, that task may be a deadline one.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
