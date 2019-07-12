Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A0C66779
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 09:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoBKWCG+I8kSLoQAm6E1eC+SZiUMMa2ca6NCckOiQqE=; b=HA3E3AmtPCiyD2
	CJAQ5lgOIo5innZd9zhYjxqa2Vg6kRKhkFOTyhdpBIxrSVMxSlhB2W1CMi6cfukocIZjATy80OvO+
	PESZg1/fRP2iiLmECLlG4EtsAS4sKzf3X9+H3KOKMwMldhlwRfRlulncaCfqn898GMRa1ln1De4fk
	0oUvA1zvNqANCJJeOwQfayOb2HmWvBVGGkxN33mLWk+OyvWHTexqirRfJnSD584ABVtPrkNbN2wSC
	iA2X/6Wtq5OKP9gFMqh0YqEznV9B9Hnb8AyWzeYstjgbXu350lgZ8sFFa3LA6d8NmgRCLWAGdb7Ev
	O/6xRjK2/zE8yg/QBSDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlpf7-0004E3-Ri; Fri, 12 Jul 2019 07:08:10 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlpeq-0004D1-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 07:07:54 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45lPBs30dBz9s00;
 Fri, 12 Jul 2019 17:07:49 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH V2] mm/ioremap: Probe platform for p4d huge map support
In-Reply-To: <fbc147c7-bec2-daed-b828-c4ae170010a9@arm.com>
References: <1561699231-20991-1-git-send-email-anshuman.khandual@arm.com>
 <20190702160630.25de5558e9fe2d7d845f3472@linux-foundation.org>
 <fbc147c7-bec2-daed-b828-c4ae170010a9@arm.com>
Date: Fri, 12 Jul 2019 17:07:48 +1000
Message-ID: <87tvbrennf.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_000752_686162_9D9D6251 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual <anshuman.khandual@arm.com> writes:
> On 07/03/2019 04:36 AM, Andrew Morton wrote:
>> On Fri, 28 Jun 2019 10:50:31 +0530 Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>> 
>>> Finishing up what the commit c2febafc67734a ("mm: convert generic code to
>>> 5-level paging") started out while levelling up P4D huge mapping support
>>> at par with PUD and PMD. A new arch call back arch_ioremap_p4d_supported()
>>> is being added which just maintains status quo (P4D huge map not supported)
>>> on x86, arm64 and powerpc.
>> 
>> Does this have any runtime effects?  If so, what are they and why?  If
>> not, what's the actual point?
>
> It just finishes up what the previous commit c2febafc67734a ("mm: convert
> generic code to 5-level paging") left off with respect p4d based huge page
> enablement for ioremap. When HAVE_ARCH_HUGE_VMAP is enabled its just a simple
> check from the arch about the support, hence runtime effects are minimal.

The return value of arch_ioremap_p4d_supported() is stored in the
variable ioremap_p4d_capable which is then returned by
ioremap_p4d_enabled().

That is used by ioremap_try_huge_p4d() called from ioremap_p4d_range()
from ioremap_page_range().

The runtime effect is that it prevents ioremap_page_range() from trying
to create huge mappings at the p4d level on arches that don't support
it.

cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
