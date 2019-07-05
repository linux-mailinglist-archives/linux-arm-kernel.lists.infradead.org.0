Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D23B60719
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NHGmeElNL6AxRBr2eP9vu0w4+UBbRaS+oBKO4AAa5s4=; b=ecOLavD35L8nkLEITYJYeBJaA
	UWktXpfDJriC6HyjORiZossRdcWa5UDqG5rA5JV+NrZX9rKt9j6Es2JgEncPtyvYRwf0MxeO63xHc
	kq2EY3VUgGpVHTRXCvFS0sNUXAOHxT0dzqdhn3UD2gUI3G9UWMidZXmBp301m9lQD4gmanM7hcz8T
	oXmav9xHVnhfXz2wy/TUF+sxMP3MSpHO6EqQhwZt+/iOC4vgcuJWes1lTm/ljfaO6CWdB4H8eb3nG
	l4DfASzyiIE8QwsJ4E9vgTj0voxnVAOKhAkciagbQe9f73vvJInrw+KUx2hkKFPElZb+D18apGvfv
	Pf0//3RVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOnE-0006E1-CF; Fri, 05 Jul 2019 14:02:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfh-0004zA-JO
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 13:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hcCysOb0fV5PB4onrn+Z2hf+HkNCar9Z741PWfWLs1c=; b=ZMxXDslt/gFNUW+fleKZKuCspr
 g6KgooFr/v+3sQ0fcg3tPx9y/us7YZZ9jAM9kKUEPDTkJDOCQ5dtWB15+oZjI2An1acUEZlxLl7Vx
 TE4qqBReug4HXyZkcXnnjPkJg7Xu91eVYDQiQO4V/TaSoGlGAhE3dIT851zTa5iqe/pQOuVWBPUG3
 D5E8raTMVzws/nkwzagsHE5InTCIR6PgAxvEjr6tUDadVZtT/6ajCaKa9IaMyEjHn33AYNvIudOou
 xslHRrI+u0C3dhtss/uXwF2TXlX10NyOw/8EVAVg54PRS/0aHbgwkCw/aE/AV66crV5I1Apeg9DVE
 P9m6KaWQ==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjMCz-0005y0-Hl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 11:16:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 070222B;
 Fri,  5 Jul 2019 04:16:16 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A6613F703;
 Fri,  5 Jul 2019 04:16:14 -0700 (PDT)
Subject: Re: [PATCH v3 0/4] Devmap cleanups + arm64 support
To: Andrew Morton <akpm@linux-foundation.org>
References: <cover.1558547956.git.robin.murphy@arm.com>
 <20190626073533.GA24199@infradead.org>
 <20190626123139.GB20635@lakrids.cambridge.arm.com>
 <20190626153829.GA22138@infradead.org> <20190626154532.GA3088@mellanox.com>
 <20190626203551.4612e12be27be3458801703b@linux-foundation.org>
 <20190704115324.c9780d01ef6938ab41403bf9@linux-foundation.org>
 <20190704195934.GA23542@mellanox.com>
 <de2286d9-6f5c-a79c-dcee-de4225aca58a@arm.com>
 <20190704141358.495791a385f7dd762cb749c2@linux-foundation.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <63abcc24-2b2d-b148-36bf-01dd730948c6@arm.com>
Date: Fri, 5 Jul 2019 12:16:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190704141358.495791a385f7dd762cb749c2@linux-foundation.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_121653_713920_38191FE9 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michal Hocko <mhocko@suse.com>,
 "anshuman.khandual@arm.com" <anshuman.khandual@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Dan Williams <dan.j.williams@intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/07/2019 22:13, Andrew Morton wrote:
> On Thu, 4 Jul 2019 21:54:36 +0100 Robin Murphy <robin.murphy@arm.com> wrote:
> 
>>>> mm-clean-up-is_device__page-definitions.patch
>>>> mm-introduce-arch_has_pte_devmap.patch
>>>> arm64-mm-implement-pte_devmap-support.patch
>>>> arm64-mm-implement-pte_devmap-support-fix.patch
>>>
>>> This one we discussed, and I thought we agreed would go to your 'stage
>>> after linux-next' flow (see above). I think the conflict was minor
>>> here.
>>
>> I can rebase and resend tomorrow if there's an agreement on what exactly
>> to base it on - I'd really like to get this ticked off for 5.3 if at all
>> possible.
> 
> I took another look.  Yes, it looks like the repairs were simple.
> 
> Let me now try to compile all this...

Thanks, the revised patches look OK to me, and I've confirmed that 
today's -next builds and boots for arm64.

Cheers,
Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
