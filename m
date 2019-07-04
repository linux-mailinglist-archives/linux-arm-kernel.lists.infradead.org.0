Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578095FAD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 17:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKRlDeXnrAClfYx+6RKfW5iLSkyFC5W43JlC8nqAj4o=; b=rv5UPenyj7dlyc
	GZePCiOsj3HPY/xW47NhFiHTFgQQIfal91J2mx45LSc7L0kl9aagZxhqrnVVrgPYz0yprytz/9vHX
	TDP0RXwVvxzoZbdMD9/WHVxM1yK2oyVcG8zuJaargnAmVUk9Zf66iMdqbWS1OY/lIKhiEYUbLt4T2
	H/MbuPfqX1emYqYKvt251kvV/41fLArvWcQWfCcjRaFO8DLaPYLi9K7Pa4JRzKsomtLDqimjdpM3t
	LnWhFcYQsGy8fsEys4vDaC20+zZK2HqRgs5tYWHUzYezah0IUKu99iuPEoBc7nlr8qm8jvEdMWi2E
	KdIRMFfSzDk9WeemojFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj3d2-0005EP-Ed; Thu, 04 Jul 2019 15:26:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj3cr-0005E5-2s
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 15:26:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8316F2B;
 Thu,  4 Jul 2019 08:26:17 -0700 (PDT)
Received: from [10.162.40.119] (p8cg001049571a15.blr.arm.com [10.162.40.119])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 3B3A43F703; Thu,  4 Jul 2019 08:26:13 -0700 (PDT)
Subject: Re: [PATCH V2] mm/ioremap: Probe platform for p4d huge map support
To: Andrew Morton <akpm@linux-foundation.org>
References: <1561699231-20991-1-git-send-email-anshuman.khandual@arm.com>
 <20190702160630.25de5558e9fe2d7d845f3472@linux-foundation.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <fbc147c7-bec2-daed-b828-c4ae170010a9@arm.com>
Date: Thu, 4 Jul 2019 20:56:40 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190702160630.25de5558e9fe2d7d845f3472@linux-foundation.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_082621_173502_0E40447F 
X-CRM114-Status: GOOD (  14.06  )
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, x86@kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Andy Lutomirski <luto@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>, linuxppc-dev@lists.ozlabs.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/03/2019 04:36 AM, Andrew Morton wrote:
> On Fri, 28 Jun 2019 10:50:31 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> Finishing up what the commit c2febafc67734a ("mm: convert generic code to
>> 5-level paging") started out while levelling up P4D huge mapping support
>> at par with PUD and PMD. A new arch call back arch_ioremap_p4d_supported()
>> is being added which just maintains status quo (P4D huge map not supported)
>> on x86, arm64 and powerpc.
> 
> Does this have any runtime effects?  If so, what are they and why?  If
> not, what's the actual point?

It just finishes up what the previous commit c2febafc67734a ("mm: convert
generic code to 5-level paging") left off with respect p4d based huge page
enablement for ioremap. When HAVE_ARCH_HUGE_VMAP is enabled its just a simple
check from the arch about the support, hence runtime effects are minimal.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
