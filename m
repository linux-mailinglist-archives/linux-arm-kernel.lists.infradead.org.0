Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A01871ECA9F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARFcxkr0Ptyk0io2Rx6gMElq7WYb6iminlsmM0Lid6o=; b=fmmOvhsr5bj2vI
	G2ovafAVMVuwWvKtfXQ8ziP1fPrCNVJaNv4lJ3yGzcg9MMUOIZea9KzPR8CixIq9YNOupC9Lbam5+
	Jv0J+oHKt1EVyzg/5bU5N4AqcIHqZA6TtiUe31m3UeJQkj+GX4JR7UmVwxbmGbGVRbHBS5U0YmcOq
	lKsvE8fWWibqkzLMbcBziEQK2++XQhCRDidurJdETZskZvyNQBy9wuYZfSn9x5pwHpoegt7eFi/Z/
	eWwSe0V4/py5THI8TUIsMIdawdxEJ+Yf2bOYNkLJJQG3a2kgjyFIYZDMtxbEJPtXF5Q/i8LV1DWiK
	6Dq+sVw3XwHVMXCtGUGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNuw-0007HA-Bl; Wed, 03 Jun 2020 07:34:30 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNuo-0007Gd-Qe
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:34:24 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0537XPHE021565; Wed, 3 Jun 2020 09:34:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=dvyUJs8o6kUEeuCGb8i9PeF6Oa2j1pEYn0SCIXZTWRQ=;
 b=c3dxij/t3E/97u08riL5vamIIH5ZfAApuIY6SKzQUuiL5Yzs2/g+/jkZZRDjLxfAfODO
 ThrOKkihXG0D5qrstMz5PfwfMio7hQM8XRCw+cJhRfqaOrm3+9tTRgkPLQ3j4SKmp7tk
 N8jKJMDPm0pReetQay9AHDKLlUXRf0+e121C704AMjB2kP7ffpPq0cbR4FWm28Bh6DQN
 oIqI0RLJKfJ/rJyyrZztBNvJHy105vw8hGRmwGM/Gh8X6Zb/hHzhevcBnSQ/fpWRdfgN
 OeHWp1dsqsZMuoQ7L7dlv9d7DgITusuxL4uEQhjL3D6jex4UG1I4gX3iiND7zv+mUAbl Mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31bd8w2vf7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 09:34:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BA70710002A;
 Wed,  3 Jun 2020 09:34:13 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A03D82AE6B2;
 Wed,  3 Jun 2020 09:34:13 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 3 Jun
 2020 09:34:12 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Wed, 3 Jun 2020 09:34:13 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Valentin Schneider <valentin.schneider@arm.com>
Subject: Re: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Topic: [PATCH] media: stm32-dcmi: Set minimum cpufreq requirement
Thread-Index: AQHWNDnEPjQ+BLRck0Okhc2Oie/dNajE9yuAgAAjSoCAACDvgIABLWEA
Date: Wed, 3 Jun 2020 07:34:13 +0000
Message-ID: <1b0ace18-e7f8-0b75-f6fe-968a269626b0@st.com>
References: <20200527151613.16083-1-benjamin.gaignard@st.com>
 <jhjpnahizkm.mognet@arm.com> <f95ce45f-7a1c-0feb-afa8-203ddb500f2f@st.com>
 <jhjo8q1io9o.mognet@arm.com>
In-Reply-To: <jhjo8q1io9o.mognet@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <2D00D8D0FB5BE449A19E3E0E430841A6@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-03_06:2020-06-02,
 2020-06-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_003423_309262_2B8D9BD3 
X-CRM114-Status: GOOD (  24.66  )
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
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



On 6/2/20 3:35 PM, Valentin Schneider wrote:
> On 02/06/20 12:37, Benjamin GAIGNARD wrote:
>> On 6/2/20 11:31 AM, Valentin Schneider wrote:
>>>> @@ -99,6 +100,8 @@ enum state {
>>>>
>>>>    #define OVERRUN_ERROR_THRESHOLD	3
>>>>
>>>> +#define DCMI_MIN_FREQ	650000 /* in KHz */
>>>> +
>>> This assumes the handling part is guaranteed to always run on the same CPU
>>> with the same performance profile (regardless of the platform). If that's
>>> not guaranteed, it feels like you'd want this to be configurable in some
>>> way.
>> Yes I could add a st,stm32-dcmi-min-frequency (in KHz) parameter the
>> device tree node.
>>
> Something like that - I'm not sure how well this fits with the DT
> landscape, as you could argue it isn't really a description of the
> hardware, more of a description of the performance expectations of the
> software. I won't really argue here.
>
>>>>    struct dcmi_graph_entity {
>>>>         struct v4l2_async_subdev asd;
>>>>
>>> [...]
>>>> @@ -2020,6 +2042,8 @@ static int dcmi_probe(struct platform_device *pdev)
>>>>                 goto err_cleanup;
>>>>         }
>>>>
>>>> +	dcmi->policy = cpufreq_cpu_get(0);
>>>> +
>>> Ideally you'd want to fetch the policy of the CPU your IRQ (and handling
>>> thread) is affined to; The only compatible DTS I found describes a single
>>> A7, which is somewhat limited in the affinity area...
>> If I move this code just before start streaming and use get_cpu(), would
>> it works ?
>>
> AFAIA streaming_start() is not necessarily executing on the same CPU as the
> one that will handle the interrupt. I was thinking you could use the IRQ's
> effective affinity as a hint of which CPU(s) to boost, i.e. something like:
>
> ---
>      struct cpumask_var_t visited;
>      struct irq_data *d = irq_get_irq_data(irq);
>
>      err = alloc_cpumask_var(visited, GFP_KERNEL);
>      /* ... */
>      for_each_cpu(cpu, irq_data_get_effective_affinity_mask(d)) {
>              /* check if not already spanned */
>              if (cpumask_test_cpu(cpu, visited))
>                      continue;
>
>              policy = cpufreq_cpu_get(cpu);
>              cpumask_or(visited, visited, policy->cpus);
>              /* do the boost for that policy here */
>              /* ... */
>              cpufreq_cpu_put(policy);
>      }
> ---
>
> That of course falls apart when hotplug gets involved, and the effective
> affinity changes... There's irq_set_affinity_notifier() out there, but it
> seems it's only about the affinity, not the effective_affinity, I'm not
> sure how valid it would be to query the effective_affinity in that
> notifier.
If I wait to be in the irq it will be too late so I think I will do a 
loop over all possible CPUs
before start the streaming to change the policies.

>
>> Benjamin
>>>>         dev_info(&pdev->dev, "Probe done\n");
>>>>
>>>>         platform_set_drvdata(pdev, dcmi);
>>>> @@ -2049,6 +2073,9 @@ static int dcmi_remove(struct platform_device *pdev)
>>>>
>>>>         pm_runtime_disable(&pdev->dev);
>>>>
>>>> +	if (dcmi->policy)
>>>> +		cpufreq_cpu_put(dcmi->policy);
>>>> +
>>>>         v4l2_async_notifier_unregister(&dcmi->notifier);
>>>>         v4l2_async_notifier_cleanup(&dcmi->notifier);
>>>>         media_entity_cleanup(&dcmi->vdev->entity);
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
