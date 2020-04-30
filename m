Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8451BF1D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 09:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ep0YkTF3jAI82ZQxYM56WN2sPS9b0hB5SoUPac7NFSk=; b=A1A0eAbWzxFQTM
	dMD3buGD+RtFGLcSCCTkKHllFQ8dQguSE0C/rkqRo9wCCK1f1vIUz4R6TLmWCOmYyVrYDnx3xou1/
	FodPPCzDKtqlI/Q9wIGwu/5JsZ+SYoXJSX+Dk7VCPLtn/4ih3qoz1DVMxTQlW/bbveywR+FOcCzBb
	/2wCNgMWMOwnxx3vMC1hq6CZ6LuwD9M4ZcZCQw3KmIEqmPHJoOTZmLHHtBJtiK9RoMtPu1mRPGJog
	qB0ENvpoHoMNBDOaCD9YMEL8QoYzIBTp1bHxCojK4hg66pUwWazdlDT6V7CSNWqbuDkDofzWEpKWU
	fcT/mf9Vhjxcfq1qnNqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU40Z-0007Q2-M1; Thu, 30 Apr 2020 07:53:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU40O-0007Ob-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 07:53:14 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03U7qeNP027781; Thu, 30 Apr 2020 09:52:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=nNpjPfXaDpTj1MuVss1sEC1CkwsvuNELkclHvxqRjuk=;
 b=mGYUaPC5tsszTgiYAXjw65KfK8FzSp/hg/Kb/mUbkmqRGx6QAnvnXh9gsypDbQ2ODf1M
 bZRxTFR46p8V0vmGwe3FP/W18dQhRxiAKXrdKTpvgiqtKJjgzYKPx620HX0lAiZnOQAh
 qPi+lZslWd68ItaHxvBCmrsobpZWSfzmCuqq2m//xvaRCfgJmxXcvym7NRpzRhVIUzAg
 YrtUNz57ffn6FIi5CD3vzCU+08AiqoKzJzT4yzHzeBGszUIxb0fLaMWu7YKB9vUFVWKK
 b7J7E7rC174mGxqie2A/wE8CPGMjh6uN9nFSYKlxG1dyDlD8X3enjL2SPLGXH0eCbJrS BQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhjx2sv8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 30 Apr 2020 09:52:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5BDA5100034;
 Thu, 30 Apr 2020 09:52:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3BE402AAF69;
 Thu, 30 Apr 2020 09:52:58 +0200 (CEST)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 30 Apr
 2020 09:52:57 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 30 Apr 2020 09:52:57 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Valentin Schneider <valentin.schneider@arm.com>, "Rafael J. Wysocki"
 <rjw@rjwysocki.net>
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Topic: [RFC 0/3] Introduce cpufreq minimum load QoS
Thread-Index: AQHWGi06wBgeAQBseECYOK/U7Qvw76iQJdAAgAACCYCAAAQ3AIABBseA
Date: Thu, 30 Apr 2020 07:52:57 +0000
Message-ID: <6b5cde14-58b3-045d-9413-223e66b87bf0@st.com>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher> <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
 <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
In-Reply-To: <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.44]
Content-ID: <AE1AA8893A6E7D438296C06CD62B8BC8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-30_02:2020-04-30,
 2020-04-30 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_005313_033681_83DA5C27 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "len.brown@intel.com" <len.brown@intel.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Patrick Bellasi <patrick.bellasi@arm.com>, "pavel@ucw.cz" <pavel@ucw.cz>,
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



On 4/29/20 6:12 PM, Valentin Schneider wrote:
> On 29/04/2020 16:57, Benjamin GAIGNARD wrote:
>>
>> On 4/29/20 5:50 PM, Rafael J. Wysocki wrote:
>>> On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
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
>>> This seems to be addressing a use case that can be addressed with the help of
>>> utilization clamps with less power overhead.
>> Do mean clamping the policy frequencies ? I may have miss the API to do
>> that...
> IIUC Rafael is referring to uclamp, i.e. scheduler utilization clamping, see:
>
>    https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html#cpu
>
> The above describes the cgroup interface, note that you can also set clamps
> per task (via sched_setattr()).
>
> One thing that comes to mind however is that schedutil only "sees" the clamps
> of runnable tasks, and from reading your changelog you may not have moments
> without any (i.e. gears are grinding in HW). You'd have to try boosting
> (setting a high uclamp.min) whatever tasks you have on the software side and
> see how it all behaves.
Relying on userland side means that various applications need to be aware
of this specific hardware case and fix it. I was hoping to find a 
solution in side the kernel
to not impact the software side.

>
>>> Thanks!
>>>
>>>
>>>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
