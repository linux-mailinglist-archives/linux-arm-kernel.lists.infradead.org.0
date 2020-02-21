Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C57167AD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zscO1J3voZi9AjXF8fhRUL8cPZEeUMr8KJ96hGow2xw=; b=XdxJenn5qtOmv1aMPR3EvUdu2
	Gxv1nvhZwvh6XbFM5MW/ExKf2E7UbsxHVjkF0xpklnl3QQQFM0sIKROY8Xzj0tUTFtjVAKaOFFDCD
	aCsDG3UGrJIQMg2PBBmmEB1a9C7W2Xqt4mIWWoYHGoOI88Z5oYYq2/WQGqym9qH6xQLjdZWg2ByeN
	38faYRMCzmnM/TtWsXeWKG4krXQ1yceKbRy3xzUxVJ1uJKxdBwZw1H7yr7Dxdt9E4U1QJA3cJE8xP
	JB/RrzVNE01iYEE3mXjDJM5xtaf76SuYwgc7uo9Fr7GEYScJdRdu4ERdv19jnYiM5t0dXEU81OW72
	BVrR+gPhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55cO-0003NX-He; Fri, 21 Feb 2020 10:33:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55cF-0003MR-T0
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 10:33:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4350131B;
 Fri, 21 Feb 2020 02:32:59 -0800 (PST)
Received: from [10.37.12.243] (unknown [10.37.12.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 21EB53F68F;
 Fri, 21 Feb 2020 02:32:55 -0800 (PST)
Subject: Re: [RESEND PATCH v2 0/2] Enable Odroid-XU3/4 to use Energy Model and
 Energy Aware Scheduler
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20200220095636.29469-1-lukasz.luba@arm.com>
 <20200220180040.GA8338@kozik-lap>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <597f1475-754c-d77a-b599-0fa07d8ee948@arm.com>
Date: Fri, 21 Feb 2020 10:32:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200220180040.GA8338@kozik-lap>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_023304_029353_1D53DA40 
X-CRM114-Status: GOOD (  15.26  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 2/20/20 6:00 PM, Krzysztof Kozlowski wrote:
> On Thu, Feb 20, 2020 at 09:56:34AM +0000, Lukasz Luba wrote:
>> Hi all,
>>
>> This is just a resend, now with proper v2 in the patches subject.
>>
>> The Odroid-XU4/3 is a decent and easy accessible ARM big.LITTLE platform,
>> which might be used for research and development.
>>
>> This small patch set provides possibility to run Energy Aware Scheduler (EAS)
>> on Odroid-XU4/3 and experiment with it.
>>
>> The patch 1/2 provides 'dynamic-power-coefficient' in CPU DT nodes, which is
>> then used by the Energy Model (EM).
>> The patch 2/2 enables SCHED_MC (which adds another level in scheduling domains)
>> and enables EM making EAS possible to run (when schedutil is set as a CPUFreq
>> governor).
>>
>> 1. Test results
>>
>> Two types of different tests have been executed. The first is energy test
>> case showing impact on energy consumption of this patch set. It is using a
>> synthetic set of tasks (rt-app based). The second is the performance test
>> case which is using hackbench (less time to complete is better).
>> In both tests schedutil has been used as cpufreq governor. In all tests
>> PROVE_LOCKING has not been compiled into the kernels.
>>
>> 1.1 Energy test case
>>
>> 10 iterations of 24 periodic rt-app tasks (16ms period, 10% duty-cycle)
>> with energy measurement. The cpufreq governor - schedutil. Unit is Joules.
>> The energy is calculated based on hwmon0 and hwmon3 power1_input.
>> The goal is to save energy, lower is better.
>>
>> +-----------+-----------------+------------------------+
>> |           | Without patches | With patches           |
>> +-----------+--------+--------+----------------+-------+
>> | benchmark |  Mean  | RSD*   | Mean           | RSD*  |
>> +-----------+--------+--------+----------------+-------+
>> | 24 rt-app |  21.56 |  1.37% |  19.85 (-9.2%) | 0.92% |
>> |    tasks  |        |        |                |       |
>> +-----------+--------+--------+----------------+-------+
>>
>> 1.2 Performance test case
>>
>> 10 consecutive iterations of hackbench (hackbench -l 500 -s 4096),
>> no delay between two successive executions.
>> The cpufreq governor - schedutil. Units in seconds.
>> The goal is to see not regression, lower completion time is better.
>>
>> +-----------+-----------------+------------------------+
>> |           | Without patches | With patches           |
>> +-----------+--------+--------+----------------+-------+
>> | benchmark | Mean   | RSD*   | Mean           | RSD*  |
>> +-----------+--------+--------+----------------+-------+
>> | hackbench |  8.15  | 2.86%  |  7.95 (-2.5%)  | 0.60% |
>> +-----------+--------+--------+----------------+-------+
>>
>> *RSD: Relative Standard Deviation (std dev / mean)
> 
> Nice measurements!

Glad to hear that.

> 
> Applied both, thank you.
> 
> Best regards,
> Krzysztof
> 

Thank you for applying this.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
