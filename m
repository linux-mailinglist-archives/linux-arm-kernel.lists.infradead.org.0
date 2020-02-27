Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAD0170F52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:04:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvvXpAWv50YUWR2/l+aw8ZALwSa87P6FXnJ3lu37LnU=; b=pmQQZJh0Ck0826
	ES4mLzdjANI9AiMxfc/QH3jjYfO1ByfxGYu0nPHKLSKh7S0m6B52TGyaCMHAIkcs+CqrMs7/c22PL
	9PZgD/AXR2oaNt100N1EXMjJGfLCJHAZoI7JUulHSSgPmcR1DiKfN1kSf4BH1TALfW/YWlwpuryY0
	Q2mK+5VsWOy1ZVKV4cmjlOJ2HCk8pplcX3fKLUZFp2+V5Mq225Ms7iZMWWyzcnqNnc9Crg80RdZCl
	bgYZe5WQFuZMutBFpjLJo3YrJj0Fachv+l7XjeAJjEFRbK1JTV96l7xhl6DI6lgOqWrVzVIqOpsKE
	WgtcnS1u7dKp5Pa/9ycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7AP7-0001OY-89; Thu, 27 Feb 2020 04:04:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7AOx-0001NZ-MG; Thu, 27 Feb 2020 04:03:57 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D80E124685;
 Thu, 27 Feb 2020 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582776234;
 bh=dlJV6X0I7IrGWbU/KtcbtANr08nwFCVTfE1alETj44U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hEshnkY+tvGit0cKDfeluAySLkQ4Xled8zmc5jvOITOHKbmYgwRCgZhr11yYlZCaI
 QkeZdgAbSbrNzA3JROFuXOzJ0V7vmn3oqMn/+vctVVCl4wtBE8lv4P5PYNPqJ5zhBr
 6sL43sJMfYsduFtDrJ6WJ+ZOQLAYvoMayLwJqBKk=
Date: Wed, 26 Feb 2020 20:03:53 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V14] mm/debug: Add tests validating architecture page
 table helpers
Message-Id: <20200226200353.ea5c8ec2efacfb1192f3f3f4@linux-foundation.org>
In-Reply-To: <52db1e9b-83b3-c41f-ef03-0f43e2159a83@arm.com>
References: <1581909460-19148-1-git-send-email-anshuman.khandual@arm.com>
 <1582726182.7365.123.camel@lca.pw>
 <1582726340.7365.124.camel@lca.pw>
 <eb154054-68ab-a659-065b-f4f7dcbb8671@c-s.fr>
 <52db1e9b-83b3-c41f-ef03-0f43e2159a83@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_200355_774378_1AED5004 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 linux-snps-arc@lists.infradead.org, Vasily Gorbik <gor@linux.ibm.com>,
 Qian Cai <cai@lca.pw>, Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Borislav Petkov <bp@alien8.de>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 08:04:05 +0530 Anshuman Khandual <anshuman.khandual@arm=
.com> wrote:

> > Must be something wrong with the following in debug_vm_pgtable()
> > =

> > =A0=A0=A0=A0paddr =3D __pa(&start_kernel);
> > =

> > Is there any explaination why start_kernel() is not in linear memory on=
 ARM64 ?
> =

> =

> Cc: + James Morse <james.morse@arm.com>
> =

> This warning gets exposed with DEBUG_VIRTUAL due to __pa() on a kernel sy=
mbol
> i.e 'start_kernel' which might be outside the linear map. This happens du=
e to
> kernel mapping position randomization with KASLR. Adding James here in ca=
se he
> might like to add more.
> =

> __pa_symbol() should have been used instead, for accessing the physical a=
ddress
> here. On arm64 __pa() does check for linear address with __is_lm_address(=
) and
> switch accordingly if it is a kernel text symbol. Nevertheless, its much =
better
> to use __pa_symbol() here rather than __pa().
> =

> Rather than respining the patch once more, will just send a fix replacing=
 this
> helper __pa() with __pa_symbol() for Andrew to pick up as this patch is a=
lready
> part of linux-next (next-20200226). But can definitely respin if that wil=
l be
> preferred.

I didn't see this fix?  I assume it's this?  If so, are we sure it's OK to =
be
added to -next without testing??



From: Andrew Morton <akpm@linux-foundation.org>
Subject: mm-debug-add-tests-validating-architecture-page-table-helpers-fix

A warning gets exposed with DEBUG_VIRTUAL due to __pa() on a kernel symbol
i.e 'start_kernel' which might be outside the linear map.  This happens
due to kernel mapping position randomization with KASLR.

__pa_symbol() should have been used instead, for accessing the physical
address here.  On arm64 __pa() does check for linear address with
__is_lm_address() and switch accordingly if it is a kernel text symbol. =

Nevertheless, its much better to use __pa_symbol() here rather than
__pa().

Reported-by: Qian Cai <cai@lca.pw>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
---

 mm/debug_vm_pgtable.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/mm/debug_vm_pgtable.c~mm-debug-add-tests-validating-architecture-page=
-table-helpers-fix
+++ a/mm/debug_vm_pgtable.c
@@ -331,7 +331,7 @@ void __init debug_vm_pgtable(void)
 	 * helps avoid large memory block allocations to be used for mapping
 	 * at higher page table levels.
 	 */
-	paddr =3D __pa(&start_kernel);
+	paddr =3D __pa_symbol(&start_kernel);
 =

 	pte_aligned =3D (paddr & PAGE_MASK) >> PAGE_SHIFT;
 	pmd_aligned =3D (paddr & PMD_MASK) >> PAGE_SHIFT;
_


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
