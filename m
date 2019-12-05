Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DC8114540
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 18:00:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GuUrXpVUDZ9x6ubGLFnui4Ml/B3Yt7LxgcaXlN02pFc=; b=ubmKG3JatAAKTsu3u+1kKDnBz
	VkMv6rjqtN0sSj6e2v0G1/ZDOb4YsWTrFWf/DN+O2E6R42WRoHsfkl+xyeD/EcXsj6V0V6DYAuTos
	cmoc5gtqwb7ge5FKwfeCjuUn3y/FaVvXcZCsEXS0ZRy+N01Pagi5s16wo2nKlK7gXkqNCGFhDWSnc
	oDKaERfqRQfQMeDU3PVcgJqRy6Zzd5Ocy7YVNFGrnRcy+46Epy5a1uL1cWkjroUwcqSjDX3lm/v2R
	aRWVQ7vdF0ipvzkm/gAkjBe/bqfq0qtQAgo+6zcGhrbfG4tVkBHNjtSPl6vKvq3OTj1PRe0lGlvfa
	UygOL/enQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuTx-00038S-RW; Thu, 05 Dec 2019 17:00:01 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuTo-00037o-El
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:59:53 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1icuTj-000168-Aj; Thu, 05 Dec 2019 17:59:47 +0100
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: PSCI checker query
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Thu, 05 Dec 2019 16:59:47 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191205165331.GA21023@bogus>
References: <5c3c69bf-cae9-8ad5-9da2-c0af7a5932e7@huawei.com>
 <50f79699a2de7856eb201c8cc1dc51d7@www.loen.fr>
 <20191205165331.GA21023@bogus>
Message-ID: <0154ac8c24f9b525b3272bcf78b26b51@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: sudeep.holla@arm.com, john.garry@huawei.com,
 mark.rutland@arm.com, lorenzo.pieralisi@arm.com, linuxarm@huawei.com,
 wanghuiqiang@huawei.com, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_085952_639904_67582C0B 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 John Garry <john.garry@huawei.com>, Linuxarm <linuxarm@huawei.com>,
 linux-arm-kernel@lists.infradead.org, wanghuiqiang <wanghuiqiang@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-05 16:53, Sudeep Holla wrote:

> For a moment, I thought PSCI checker found some issue that normal 
> hotplug
> operation didn't. Guess what, I am wrong :). Normal HP tests from the
> kernel triggers this, which is good as not all normally run this PSCI
> tests.
>
> Anyways, looks like the firmware is broken. If there are hardware
> limitations, the firmware can fail to poweroff as a workaround. If
> it is anything to do with some secure service or OS, we have PSCI
> ways to convey the same and we now avoid starting the CPU down 
> sequence
> by marking it not hotpluggable. PSCI tests may not be able to use it
> but I expect the firmware to return error for CPU_DOWN in that case.

Indeed. Failing the CPU_DOWN would have been just fine. Failing CPU_UP
is pretty bad though, and I don't think we can work around it.

Oh well. As John said, this is "legacy"...

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
