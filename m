Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC491BE382
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOKvPsm6/i89YsNrZSwNx/Aikz6PblP94PzHZcBrxIY=; b=NRrMiabXaJGCZd
	x82OHIkwdVefbCTGIOTFm7uumDUs4uVdwDk4z7IEkSk0jeXU6xsVsS4qFWf9AJmizx2u0TruHKEp1
	RG6BLTjxkc3iqzsU/3Tz7b+pi2bj4tEfUMBpVNDKcaeSuznZXQg8vdCfVbcEiVb+1uXe6zZI17h1K
	IqCI6KWDexCUZUtLJMW1ReEPINF/Zq9uD5dKH7KCyupeeDnfqCll8zdxl1LvuEP700qc6tejvP6ri
	JJn3xXlaR7VSGuWGne5PATWGKtmICpIHg0C7399JV1bl7/H49tA3+/PkhekY4DQWz9JHaTJCKgphB
	Enas/8hVSWcLutDRGD2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpKF-0002CL-IM; Wed, 29 Apr 2020 16:12:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpK6-0002BD-02
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:12:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7552E1045;
 Wed, 29 Apr 2020 09:12:31 -0700 (PDT)
Received: from [10.0.2.15] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 89FE63F73D;
 Wed, 29 Apr 2020 09:12:29 -0700 (PDT)
Subject: Re: [RFC 0/3] Introduce cpufreq minimum load QoS
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>
References: <20200424114058.21199-1-benjamin.gaignard@st.com>
 <7657495.QyJl4BcWH5@kreacher> <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <70e743cf-b88e-346a-5114-939b8724c83d@arm.com>
Date: Wed, 29 Apr 2020 17:12:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <30cdecf9-703a-eb2b-7c2b-f1e21c805add@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_091234_081216_25B0F1B9 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 29/04/2020 16:57, Benjamin GAIGNARD wrote:
> 
> 
> On 4/29/20 5:50 PM, Rafael J. Wysocki wrote:
>> On Friday, April 24, 2020 1:40:55 PM CEST Benjamin Gaignard wrote:
>>> When start streaming from the sensor the CPU load could remain very low
>>> because almost all the capture pipeline is done in hardware (i.e. without
>>> using the CPU) and let believe to cpufreq governor that it could use lower
>>> frequencies. If the governor decides to use a too low frequency that
>>> becomes a problem when we need to acknowledge the interrupt during the
>>> blanking time.
>>> The delay to ack the interrupt and perform all the other actions before
>>> the next frame is very short and doesn't allow to the cpufreq governor to
>>> provide the required burst of power. That led to drop the half of the frames.
>>>
>>> To avoid this problem, DCMI driver informs the cpufreq governors by adding
>>> a cpufreq minimum load QoS resquest.
>> This seems to be addressing a use case that can be addressed with the help of
>> utilization clamps with less power overhead.
> Do mean clamping the policy frequencies ? I may have miss the API to do 
> that...
>>

IIUC Rafael is referring to uclamp, i.e. scheduler utilization clamping, see:

  https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html#cpu

The above describes the cgroup interface, note that you can also set clamps
per task (via sched_setattr()).

One thing that comes to mind however is that schedutil only "sees" the clamps
of runnable tasks, and from reading your changelog you may not have moments
without any (i.e. gears are grinding in HW). You'd have to try boosting
(setting a high uclamp.min) whatever tasks you have on the software side and
see how it all behaves.

>> Thanks!
>>
>>
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
