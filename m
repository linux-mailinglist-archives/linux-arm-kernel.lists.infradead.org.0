Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B37B11299C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tp2NZILSCJDYOa0a8P+qaNokYi/ai/ksuAWYDtUtqP4=; b=FxF9WRMqq+oGlctfKmQVD0f3f
	N0xR0MMCErbC87E1SlCxaslB01UnlOQA579tZDgJYgCScVir3a1E/xnFGHaeXSYe/K/lDtJtBAEf+
	uspjcWn+uTcmLE2W/YZ58qEMQklvMG8G49Iax5zuGbtidOHn/TuSYuZYVU6+J9MRY+5lCmNMc/cyg
	Pr8KUhXdVjEmNULY81AjaXOGNwBW/DHqVqaHmTiLfitWYSOM2GrmknhYy6+zMTWa5nBYBh4t5AWqE
	ViKOjXp755fBIh9AZHCiK5WMlqN/G7X/OratvLplgTJCBmaUcTfyuK43lF/DO/Nni/bFJBXuKEagm
	ZDKzjbnYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSKL-0006Qy-0P; Wed, 04 Dec 2019 10:56:13 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSKD-0006Q9-MI
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:56:06 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5de790b50000>; Wed, 04 Dec 2019 02:55:49 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 04 Dec 2019 02:56:04 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 04 Dec 2019 02:56:04 -0800
Received: from [10.24.37.103] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 4 Dec
 2019 10:56:00 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
From: sumitg <sumitg@nvidia.com>
Message-ID: <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
Date: Wed, 4 Dec 2019 16:25:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1575456949; bh=ro08D4nTCDKA4g/LLllSz/rbWxxm0KL/lEFg2RZ47Wg=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Transfer-Encoding:
 Content-Language;
 b=P4H8jDxrbYNjwagumhpUnHqnetpmMZzW87JXeCX1JSxVhjfywTV1YyPYsSFU4yJV5
 98IVAqHE8ZEO4q26s7lq/9ZFuZi2cgn7mQNFNRcL3oJYTrYYGmPV9OsxjpvgcOGJEH
 BACSgNHLeZmwUmxT3ZEm3ZNxvDPnJgEPxItaiwELRwh9fah9jVpBwyo50jyP/rEjWj
 yNj8tu4mSPYFpY6pOlxMIXcNPQIjADM3ba4CAozwjR+xqyI5AC0eNPFlUwnflDgfCg
 CpwT45CN/exfjs9u0qLC+GtyrqbO/OJg+EuisdZ4a9x3OTEY0dJ+nqaMkZknpFY+xR
 I2TyXKPywKNoQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_025605_737469_F3869919 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On 04/12/19 11:10 AM, Viresh Kumar wrote:
> Hi Sumit,
>
> On 03-12-19, 23:02, Sumit Gupta wrote:
>> Add support for CPU frequency scaling on Tegra194. The frequency
>> of each core can be adjusted by writing a clock divisor value to
>> an MSR on the core. The range of valid divisors is queried from
>> the BPMP.
>>
>> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
>> Signed-off-by: Sumit Gupta <sumitg@nvidia.com>
>> ---
>>   drivers/cpufreq/Kconfig.arm        |   6 +
>>   drivers/cpufreq/Makefile           |   1 +
>>   drivers/cpufreq/tegra194-cpufreq.c | 423 +++++++++++++++++++++++++++++++++++++
>>   3 files changed, 430 insertions(+)
>>   create mode 100644 drivers/cpufreq/tegra194-cpufreq.c
> Overall these are the things that you are doing here in the driver:
>
> - open coded clk_{get|set}_rate(), why can't you implement a clock
>    driver for the CPU and use the clk framework? You may not need the
>    (hacky) work-queue usage then probably.

In T194, CCPLEX doesn't have access to set clocks and the

clk_{get|set}_rate() functions set clocks by hook to BPMP R5.

CPU freq can be directly set by CCPLEX using MSR(NVFREQ_REQ_EL1).

As DVFS run's on BPMP, another MSR (NVFREQ_FEEDBACK_EL1) is

used to read the counters and calculate "actual" cpu freq at CCPLEX.

So, "cpuinfo_cur_freq" node gives the actual cpu frequency and not

given by node "scaling_cur_freq".

>
> - populating cpufreq table, you can probably add OPPs instead using
>    the same mechanism

We are reading available frequencies from BPMP to populate

cpufreq table and not using static opp table.

>
> - And then you can reuse the cpufreq-dt driver for your platform as
>    well, as is the case for few other tegra platforms.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
