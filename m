Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC747A3DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:18:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5YytrDz+XHKSGQnS14svBUIjYBV4mraJriQ9Xb9AOdE=; b=bCUnHn1Qj92Pls
	7vXQNHigarQYQ52CVJ7ltAQdIGuw+hWw63B0Em1bYBNbp9c7jgJBF/+irYFu9cgXCfK7WFNXfe/0b
	We1cnhscauD1fx/9ASeeUkIX3adbMlMrjNhzrgGWPPtuXDWGKmzOKLY64ClgniNjZS353nGh9oFpI
	dpUGymgoV9mIm4cgr+1cTqJjQZ4XWPZQqSidDhAC7UW2sisQR7g/NiCiyFIDhwDMUbY2oizYsVeDJ
	/0TdyL24ErzksR1yKr3DZmSO8A7ke1HB4K2N0tSu+7KDW/AoLY/7kifaK60nyElf1jNSQLOkbj+J9
	ZTtlCT4EKOAxzdPo6yGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOHH-0007Pv-Vv; Tue, 30 Jul 2019 09:18:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOGy-0007Pa-6S
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:18:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18571344;
 Tue, 30 Jul 2019 02:18:19 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 976A63F575;
 Tue, 30 Jul 2019 02:18:17 -0700 (PDT)
Subject: Re: [PATCH v4 9/9] arm_pmu: Use NMIs for PMU
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
 <20190730091143.GX1330@shell.armlinux.org.uk>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <95e39e79-e400-f516-c6c6-f2c15b39d26b@arm.com>
Date: Tue, 30 Jul 2019 10:18:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190730091143.GX1330@shell.armlinux.org.uk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021820_277010_E67710DE 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, peterz@infradead.org, liwei391@huawei.com,
 will.deacon@arm.com, acme@kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On 30/07/2019 10:11, Russell King - ARM Linux admin wrote:
> On Wed, Jul 17, 2019 at 09:17:12AM +0100, Julien Thierry wrote:
>> Add required PMU interrupt operations for NMIs. Request interrupt lines as
>> NMIs when possible, otherwise fall back to normal interrupts.
>>
>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>> Tested-by: Shijith Thotton <sthotton@marvell.com>
>> Cc: Will Deacon <will.deacon@arm.com>
>> Cc: Mark Rutland <mark.rutland@arm.com>
> 
> This has no effect on 32-bit ARM?
> 

It shouldn't. request_nmi()/request_percpu_nmi() should fail on a
platform that doesn't have the NMI (through IRQ framework) support .
Currently, only arm64 with GICv3 provides that support.

So the pmu driver should fallback to request_irq()/request_percpu_irq()
for a 32-bit ARM kernel platforms and work as before. I can clarify that
in the commit message if there is a respin (or if maintainers agree to
amend).

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
