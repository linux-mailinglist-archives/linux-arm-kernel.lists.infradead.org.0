Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA59F16BF32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 11:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6AfRq69DTQdawJWaQGFGL+XdbUibfUlwJP3GdCg+2v0=; b=MqaBXBtZBx78IDBspttqPsmFm
	/2/woWZyiiityoFQ893U7dKNVQZynTWRNQsMAIST6jk272NsYgRbJI7HSfAltVPVyRquspzKvU13h
	H8Uy5P7ebmpex31NGJ4/pi9I6o4NvHkby0mH7qtg7gD4N4V2Ax6MXVQuYHy3I4fHgF7FwtLsDWIgY
	iKLGKgQIoDScbmAu5E6oKko85JBUDbklwG8FReVlZW43deUt8DpRla3+EVdxF3nss1GtXcPgQuBeX
	OUkaRVmj1PxRYG1zBZL46bEpP8S0itnP+Kxc52/NOqVzV0vg2ttvxdXBHZCmh+2lrkR+0KZisbeRs
	IC/MhWAvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Xts-0004Qi-Hp; Tue, 25 Feb 2020 10:57:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6XtR-00047F-9p; Tue, 25 Feb 2020 10:56:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80E7A30E;
 Tue, 25 Feb 2020 02:56:46 -0800 (PST)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75D703F6CF;
 Tue, 25 Feb 2020 02:56:36 -0800 (PST)
Subject: Re: [PATCH v3 1/4] PM / EM: add devices to Energy Model
To: Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200221194731.13814-1-lukasz.luba@arm.com>
 <20200221194731.13814-2-lukasz.luba@arm.com>
 <4ac6a187-1a09-335d-5c05-bf810ff81aaa@infradead.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <cf0d6bf7-ad87-4fbf-0392-646d5aa6d52b@arm.com>
Date: Tue, 25 Feb 2020 10:56:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4ac6a187-1a09-335d-5c05-bf810ff81aaa@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_025649_404356_E7063385 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, daniel.lezcano@linaro.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, rjw@rjwysocki.net, agross@kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Randy,

Thank you for taking the time to look into this patch.

On 2/22/20 12:42 AM, Randy Dunlap wrote:
> Hi,
> One minor nit. Please see inline:
> 
> On 2/21/20 11:47 AM, Lukasz Luba wrote:
>> Add support of other devices into the Energy Model framework not only the
>> CPUs. Change the interface to be more unified which can handle other
>> devices as well.
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
>>   Documentation/power/energy-model.rst     | 133 ++++----
>>
>> diff --git a/Documentation/power/energy-model.rst b/Documentation/power/energy-model.rst
>> index 90a345d57ae9..7576820664e5 100644
>> --- a/Documentation/power/energy-model.rst
>> +++ b/Documentation/power/energy-model.rst
> 
>> @@ -85,13 +89,20 @@ API.
>>   2.3 Accessing performance domains
>>   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>   
>> +There is two API functions which provide the access to the energy model:
> 
>     There are two

Indeed a mistake, I will fix it.

> 
>> +em_cpu_get() which takes CPU id as an argument and em_pd_get() with device
>> +pointer as an argument. It depends on the subsystem which interface it is
>> +going to use, but in case of CPU devices both functions return the same
>> +performance domain.
>> +
> 
> 
> cheers.
> 

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
