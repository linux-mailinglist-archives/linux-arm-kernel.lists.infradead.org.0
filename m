Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68BA18CA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 17:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sehH64vBqZmhsdfouYo7xNa0Kfu6Usv93SPAHXO/ueo=; b=S6hjjEj49qSd7H
	OafQUFeOoGQ3xq7ejgw9cpN9UWAz5WMH1iqJfUIaXG9o0kb8jQFprTVhRISWRLOg3rgFgsgqtrjq7
	yRcIGiZe3DBgS8ioItZcTTzkkriS25mG12W6AL96G458ZaIBguY6Vg6cxJlYrNn6ObLbZUz54XXHH
	k2APCjDYeepm0ldtLoJJyPwYmlBqt7NmmP3d27Y62ZdW9A3OcxTktPRwSMNUlVaXOcTJvWfGSRlNK
	rzV1+AVlvt2ZuwKQ97agVdAuBxjobGZJ+aTZ7GzLwymhT+IRz42GcDeouhIuFJrOMIryT/Dy6p6Ti
	5H1+csNhRt8Y4gEzCmvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOkaW-0003s2-Kf; Thu, 09 May 2019 15:04:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOkaL-0003r4-HC
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 15:03:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EEA7374;
 Thu,  9 May 2019 08:03:49 -0700 (PDT)
Received: from [10.1.196.69] (e112269-lin.cambridge.arm.com [10.1.196.69])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52BDD3F6C4;
 Thu,  9 May 2019 08:03:45 -0700 (PDT)
Subject: Re: [PATCH v8 05/20] KVM: PPC: Book3S HV: Remove pmd_is_leaf()
To: Paul Mackerras <paulus@ozlabs.org>
References: <20190403141627.11664-1-steven.price@arm.com>
 <20190403141627.11664-6-steven.price@arm.com>
 <20190429020555.GB11154@blackberry>
From: Steven Price <steven.price@arm.com>
Message-ID: <bf689c22-92ab-e0bf-65d8-9cd495d9e6e1@arm.com>
Date: Thu, 9 May 2019 16:03:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429020555.GB11154@blackberry>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_080349_571062_D7E312A8 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 linux-mm@kvack.org, "H. Peter Anvin" <hpa@zytor.com>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Arnd Bergmann <arnd@arndb.de>, kvm-ppc@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/04/2019 03:05, Paul Mackerras wrote:
> On Wed, Apr 03, 2019 at 03:16:12PM +0100, Steven Price wrote:
>> Since pmd_large() is now always available, pmd_is_leaf() is redundant.
>> Replace all uses with calls to pmd_large().
> 
> NAK.  I don't want to do this, because pmd_is_leaf() is purely about
> the guest page tables (the "partition-scoped" radix tree which
> specifies the guest physical to host physical translation), not about
> anything to do with the Linux process page tables.  The guest page
> tables have the same format as the Linux process page tables, but they
> are managed separately.

Fair enough, I'll drop this patch in the next posting.

> If it makes things clearer, I could rename it to "guest_pmd_is_leaf()"
> or something similar.

I'll leave that decision up to you - it might prevent similar confusion
in the future.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
