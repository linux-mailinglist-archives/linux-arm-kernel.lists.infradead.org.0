Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1732DD99
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:59:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vc8/x0EEsbYey2RY5FM9eyBtgAPzNMZ5MYaYdPU+Dns=; b=pEg1CMOfx5E90Q
	64JW/DBvim6S+jKEwmJIKTIGQy3n4TiNkZL78ySO9Zm3T2J37OdrBsPPj7J3roF1NuObteG+hzsdM
	jKf1Za2+RanHXeS8x0ykk90KVDioqX/Rha0vTDP8wSPLS1iJmXavuAAfjpWWULynlOMpjW2lVD+70
	zG97PnER2lgxWyEHxxJlt88xSFKVHeOGXWluG2xP/4rI4EM4lcU1Wi2+vJaw9v/8VhC4/LUBjFSdj
	LsafJtwJHR25w2J89hVmUQNAOtpJq3SCKcxAeByK+tgu8viyBDQe937++MaysvUjJ3BmxWy1TUesQ
	i4JdmGz3JM0+THLr0tIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyAa-0001Rf-64; Wed, 29 May 2019 12:59:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyAT-0001R0-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:58:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9D0C80D;
 Wed, 29 May 2019 05:58:56 -0700 (PDT)
Received: from [10.162.41.181] (p8cg001049571a15.blr.arm.com [10.162.41.181])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 A1BA63F59C; Wed, 29 May 2019 05:58:54 -0700 (PDT)
Subject: Re: [PATCH 0/4] arm64/mm: Fixes and cleanups for do_page_fault()
To: Will Deacon <will.deacon@arm.com>
References: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
 <20190529124120.GF4485@fuggles.cambridge.arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <e5834e61-d6ac-39cc-6cbf-70b80b841db0@arm.com>
Date: Wed, 29 May 2019 18:29:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190529124120.GF4485@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_055857_417780_EF0FCA53 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrey Konovalov <andreyknvl@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/29/2019 06:11 PM, Will Deacon wrote:
> Hi Anshuman,
> 
> On Wed, May 29, 2019 at 06:04:41PM +0530, Anshuman Khandual wrote:
>> This series contains some fixes and cleanups for page fault handling in
>> do_page_fault(). This has been boot tested on arm64 platform along with
>> some stress test but just build tested on others.
> 
> These all seem to be cleanups, which is fine, but I just wanted to make
> sure I'm not missing something that should be aiming for 5.2. Are there
> actually fixes in this series?

The following one might qualify (I would not insist though) but right now
this is not very problematic.

- arm64/mm: Drop mmap_sem before calling __do_kernel_fault() 

> 
> (in future, it's best to post fixes separately so I don't miss them)

Sure will do.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
