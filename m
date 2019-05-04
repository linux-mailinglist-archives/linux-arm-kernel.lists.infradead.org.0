Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E114D1396D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 13:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1g26yU32aA25T7SNb0bFPaaiQnsMH5GJlqwIawmhDS8=; b=da8wJBO+cjVu2U
	Spto47ZJdo6FhkC6dAnSEm516sjNoR7QNoAbnyjDIsr0ZkcfimUnX74xSZ0UG+OC40M7x82Jv8mK6
	T/6FWYXtcaTyNt6AY1IrFNM/PFP5YE/IbLpnHc2ciUraZGf82aq3IOvHoD2v2ZBewl/1ibsFYDOMO
	89v/5rKX2R8qbQ4Bp2f/VjYU0xYsob2bCuiYr+sQBipqFktzQ9GGp+g7Y5+qq5KJ3KcxONr+xhY6g
	fBMuGELl90fX/H0xpFmTELo799dRdKWS5NiSptRR759DsoEQ4ur8DQIIq4+wTZWQiYtmuqm50UyGC
	i5oQr3XnJiGx12OgCsMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMsVn-0006qA-7A; Sat, 04 May 2019 11:07:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMsVd-0006pi-Vq
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 11:07:15 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EB4136EE082FC7102D6A;
 Sat,  4 May 2019 19:07:03 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Sat, 4 May 2019
 19:06:58 +0800
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
Date: Sat, 4 May 2019 19:06:19 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190503232407.37195-1-jeremy.linton@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_040714_236535_F40BBC1E 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, john.garry@huawei.com,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jeremy, Mark,

On 2019/5/4 7:24, Jeremy Linton wrote:
> This patch series enables the Arm Statistical Profiling
> Extension (SPE) on ACPI platforms.
> 
> This is possible because ACPI 6.3 uses a previously
> reserved field in the MADT to store the SPE interrupt
> number, similarly to how the normal PMU is described.
> If a consistent valid interrupt exists across all the
> cores in the system, a platform device is registered.
> That then triggers the SPE module, which runs as normal.
> 
> We also add the ability to parse the PPTT for IDENTICAL
> cores. We then use this to sanity check the single SPE
> device we create. This creates a bit of a problem with
> respect to the specification though. The specification
> says that its legal for multiple tree's to exist in the
> PPTT. We handle this fine, but what happens in the
> case of multiple tree's is that the lack of a common
> node with IDENTICAL set forces us to assume that there
> are multiple non-IDENTICAL cores in the machine.

Adding this patch set on top of latest mainline kernel,
and tested on D06 which has the SPE feature, in boot message
shows it was probed successfully:

arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]

but when I test it with spe events such as

perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls

it fails with:
failed to mmap with 12 (Cannot allocate memory),

Confirmed that patch [0] is merged and other perf events are working
fine.

I narrowed this issue down that mmap() failed to alloc 4M memory
in perf tool but seems have no relationship with this SPE patch set,
then I'm lost, could you take look please?

Thanks
Hanjun

[0]: https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=528871b456026e6127d95b1b2bd8e3a003dc1614


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
