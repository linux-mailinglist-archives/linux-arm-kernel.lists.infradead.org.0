Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE11E144A7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 04:34:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2197cP93eWmpdXXwMxP4MnyqPLRRdu5Yna1Kn0BaDho=; b=KngHZ5v9BuhhQn
	MXfZrul+E107Z6OGLDjQhlZpTB8nq1VfT4hqcXcc0dNJ/yn24NjctmJo3JAVEfK5oOGBIuECGhEqS
	3ky8vHz/lFc5C+WA75WxoKDYER67VpGoIGMH2cZlESsSQ1Q7pr44MkbXBZg3hUIMf9JsJKeYeNVZ7
	qVioQB2uD9Y8rPqb+1QpizDhvk3zxX/KKudh40hSw3s98MvDWWN1Zti8r4NEYGEkxV9Y1Uzzvfz76
	CMuEjXq+zZCVpCDlrEu+VAwGS0J9ttBy144drzMTyART/kk8ryevM/VZqgIzwCSwDrK5L0chN23Uz
	ody+N57wamgmieMX9kxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu6mR-0003pT-9O; Wed, 22 Jan 2020 03:34:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu6mF-0003pA-Er
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 03:34:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CD1C30E;
 Tue, 21 Jan 2020 19:33:56 -0800 (PST)
Received: from [10.163.1.202] (unknown [10.163.1.202])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27E263F6C4;
 Tue, 21 Jan 2020 19:33:42 -0800 (PST)
Subject: Re: [PATCH V12 0/2] arm64/mm: Enable memory hot remove
To: Will Deacon <will@kernel.org>
References: <1579157135-10360-1-git-send-email-anshuman.khandual@arm.com>
 <20200121151822.GA13306@willie-the-truck>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <3cbdc6f9-093d-975e-f960-68c274aa75a1@arm.com>
Date: Wed, 22 Jan 2020 09:05:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200121151822.GA13306@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_193359_541605_27B4CCA4 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, david@redhat.com, catalin.marinas@arm.com,
 linux-mm@kvack.org, arunks@codeaurora.org, cpandya@codeaurora.org,
 ira.weiny@intel.com, logang@deltatee.com, steven.price@arm.com,
 valentin.schneider@arm.com, suzuki.poulose@arm.com, broonie@kernel.org,
 cai@lca.pw, ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 Robin.Murphy@arm.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/21/2020 08:48 PM, Will Deacon wrote:
> On Thu, Jan 16, 2020 at 12:15:33PM +0530, Anshuman Khandual wrote:
>> This series enables memory hot remove functionality on arm64 platform. This
>> is based on Linux 5.5-rc6 and particularly deals with a problem caused when
>> boot memory is attempted to be removed.

Hello Will,

> 
> Unfortunately, this results in a conflict with mainline since the arm64
> -next branches are based on -rc3 and there was a fix merged after that
> (feee6b298916 ("mm/memory_hotplug: shrink zones when offlining memory"))
> which changes the type of __remove_pages().

Right, that fix went in last couple of weeks.

> 
> So I think I'll leave this for 5.7.

Just wondering if there is any chance this can still make it to 5.6
or its already too late ?

> 
> Will
> 

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
