Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26452142ED9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 16:37:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aZS/fij5YlCv0ZcTz+kqVruYh09D1qL8O7AYyiGTpOs=; b=odYoQ6aZnep+Jwc/5SscHdmjg
	hyVt8ONSWwHe4uTDKig6ilWCVPepSaGnGYVLEiR2R9L3lSBrlRhhpsRA7y/WemqvnQisyguRTiFxH
	RVuQF9zleBZxAR/TVesgqf4Gig5HzFSqrs6Pwg2fyC0XsIAHG+dxAlIq8lFq9/hCyjR2/BMk5fbDS
	iL5rZL/PegxjYgSuJowL2VHfU8gxkQ/WSaiI0tAbUfFN4H8huY3pogU5107iohbsfphkxl7ec+w7r
	xYw4hNFUjbYfolsHm2q/Rb9Q+MrzRpEWfKpRmt79wqUGwLOsNTm4uVGQB8xcdD4Oc09F8G8EB3jcF
	liaY0G4lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itZ79-0000WV-FN; Mon, 20 Jan 2020 15:37:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itZ6p-0000UR-DU; Mon, 20 Jan 2020 15:37:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBC2830E;
 Mon, 20 Jan 2020 07:36:58 -0800 (PST)
Received: from [10.37.12.169] (unknown [10.37.12.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 024BF3F52E;
 Mon, 20 Jan 2020 07:36:48 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <17b77e0c-9455-0479-d37b-c57717c784c7@arm.com>
 <d0b90b97-3604-d4f4-b873-3879a9221532@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <38307e88-f7ff-bc2a-bbce-5e508e275526@arm.com>
Date: Mon, 20 Jan 2020 15:36:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d0b90b97-3604-d4f4-b873-3879a9221532@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_073659_500469_657148B1 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, bjorn.andersson@linaro.org, bsegall@google.com,
 festevam@gmail.com, Morten.Rasmussen@arm.com, robh@kernel.org,
 amit.kucheria@verdurent.com, khilman@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Chris.Redpath@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, shawnguo@kernel.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 ionela.voinescu@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/20/20 3:11 PM, Dietmar Eggemann wrote:
> On 20/01/2020 15:53, Dietmar Eggemann wrote:
>> On 16/01/2020 16:20, lukasz.luba@arm.com wrote:
>>> From: Lukasz Luba <lukasz.luba@arm.com>
> 
> [...]
> 
>>> +enum em_type {
>>> +	EM_SIMPLE,
>>> +	EM_CPU,
>>> +};
>>
>> s/EM_SIMPLE/EM_DEV ?
>>
>> Right now I only see energy models and _one_ specific type (the CPU EM).
>> So a tag 'is a CPU EM' would suffice. No need for EM_SIMPE ...
> 
> Wait, you even have
> 
> struct em_device {
>          struct em_perf_domain *em_pd;
>          struct device *dev;
>          ...
> }
> 
> static bool _is_cpu_device(struct device *dev)
> 
> Shouldn't this be enough to distinguish between EM and special CPU EM
> under the API? Even when required to use container_of() to get from
> em_perf_domain to device.
> 

Agree, I will remove this em_type related code.

Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
