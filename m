Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC237FC50
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:34:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67vVyPDd4+I507r3np4pxGzJSPHTyhXTrB8BHoPBsu4=; b=iQrRM9WaCRtGH3
	zkQrqHqdGNtex71f4669R9kgL4obxb/ywzJ23cqvUkQYgRLngj3wIX+oetrDqOsfQEZNxM8UlZb6b
	l/YaSm0QOl62ZeoPjJ2LZVM72ePuBOzUu4ntzTJdHKurXTLL1iQkBtFBZNQBRm4zUghSBtDWfgiQg
	bNbXZHzLYrH8PtbfKupTQIjbpcWkgT/s+ekDT7VRfKVBCZLFB9DbkP6/j4Y9piI/IsAFwp9WUod0q
	qfBDM4PbiRyel6STcJRhNakuR0ZnB9Srl5/WCyyl/18alz+JnBIZWVB9qivNt+ODQzJ9HxKmrrMnm
	yxHOWRGXesZibXVKIMHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYda-0003Jl-2i; Fri, 02 Aug 2019 14:34:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYdU-0003JR-Pz
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:34:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B12F1596;
 Fri,  2 Aug 2019 07:34:24 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2A313F575;
 Fri,  2 Aug 2019 07:34:21 -0700 (PDT)
Subject: Re: [PATCH v4 3/9] arm: perf: save/resore pmsel
To: Will Deacon <will@kernel.org>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
 <1563351432-55652-4-git-send-email-julien.thierry@arm.com>
 <20190801130126.xxsot2mabvisq76e@willie-the-truck>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <1a349743-8fcf-9f05-00b4-b5e31340854e@arm.com>
Date: Fri, 2 Aug 2019 15:34:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801130126.xxsot2mabvisq76e@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_073424_884833_A6164611 
X-CRM114-Status: GOOD (  11.17  )
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
 will.deacon@arm.com, Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, stable@vger.kernel.org,
 namhyung@kernel.org, sthotton@marvell.com, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/08/2019 14:01, Will Deacon wrote:
> [typo in subject: resore ->restore]
> 
> On Wed, Jul 17, 2019 at 09:17:06AM +0100, Julien Thierry wrote:
>> The callback pmu->read() can be called with interrupts enabled.
>> Currently, on ARM, this can cause the following callchain:
>>
>> armpmu_read() -> armpmu_event_update() -> armv7pmu_read_counter()
> 
> Why can't we just disable irqs in armv7pmu_read_counter() ?
> 

We could. But since we get rid of the lock after (otherwise it is the
only reason we have to keep the lock) we might as well find another
solution.

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
