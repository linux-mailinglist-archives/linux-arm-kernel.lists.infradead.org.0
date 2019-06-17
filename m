Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A60647D46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ty38QphYRIJP37BGcsZhqMFaVNmoLJvv/gfwhqWE0e4=; b=bWzK9xXmRyq9uo
	cDpdYM3mPKD5ObrwGwlICZQ9RtEAzFuF65eEvFCQActTrGch4hWmoPNkWy8BqleSj9kylm7+wsBmG
	L8/SYsPbQXA9uGAa6OGrvGYw3CrRKfsbwT4s/XdvXixtAVYS1O+D2UpGeRMs+Ful8GgQlqTEUdSjp
	fSRhLmzYtITMxqwLhr4Rrc6/rDc0o5WtcAUylalVBO8VAqNjKLNVzFiyI+VcjfCNqeF+D1nzhfy6v
	hc9XpAmmZ9Qx/glwxSWzd5BOqhNyZ45b1SHKH4M+aY/qhxu9V0JeXI/oi6XnaXn6EkEMPBP6agoWi
	ZDE3EerHx02KnVRovWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn8p-0004WF-Em; Mon, 17 Jun 2019 08:37:27 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn8Y-0004RR-OV
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:37:12 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7645971360ECAA5C908A;
 Mon, 17 Jun 2019 16:37:01 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Mon, 17 Jun 2019
 16:36:57 +0800
Subject: Re: [PATCH v4 0/4] arm64: SPE ACPI enablement
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190615010910.33921-1-jeremy.linton@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <7215e7f2-b8d3-999e-427b-428282765276@huawei.com>
Date: Mon, 17 Jun 2019 16:36:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190615010910.33921-1-jeremy.linton@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013711_035444_F9490008 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/15 9:09, Jeremy Linton wrote:
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
> 
> v3->v4: Rebase to 5.2.
> 	Minor formatting, patch rearrangement.
> 	Add missing `inline` in static header definition.
> 	Drop ARM_SPE_ACPI and just use ARM_SPE_PMU.

Tested on top of 5.2-rc1, I can see in the boot log:

arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]

and I also tested perf record, and works as expected,

Tested-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
