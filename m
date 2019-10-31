Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ABF6EB2DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:36:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9gIBrdjEH0S+glbd5tYJm8tPeGBQfo2KltMEc9Jcn8=; b=ltMQplHSo4vXyu
	0aDdEJ2ZsnOa0CvJ/wUnPQ7DhmpNmM2n51j1cHVxAi9hbkLChLEBVzECjdmUQZzPf/74U3EMtFTpU
	SU1e4kbukKsLJlVATyOw2qe0AFywYv8cBf8PvMre1VzMXdh9NPpDxRjttr7FHISamVP0vXSgDfHpQ
	VYKgkqATVnRhVWOa97KBxyLX/5gollGBmvTQmhLLlGXqCS9z6Hy/jlxRFUtgRqv0T6E5FH1RbWPTt
	5fv03wxmv17AQcQWaOfzpMpvk9zQm4pau8JpfhDYXchSiiQzu1MEKw6GMrg/u+MhEVk9Z1yXjVq9D
	RYgMCM92WYNf5XBWtbcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBYb-0003lT-Ph; Thu, 31 Oct 2019 14:36:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBYU-0003lA-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:36:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0C111F1;
 Thu, 31 Oct 2019 07:36:05 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6ADB53F71E; Thu, 31 Oct 2019 07:36:03 -0700 (PDT)
Date: Thu, 31 Oct 2019 14:36:01 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH] mm: ptdump: Reduce level numbers by 1 in note_page()
Message-ID: <20191031143600.GD39590@arrakis.emea.arm.com>
References: <40956d62-241c-6685-72f1-bfc01183141e@arm.com>
 <20191031133322.3239-1-steven.price@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031133322.3239-1-steven.price@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_073606_613213_B1C39272 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H . Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 01:33:22PM +0000, Steven Price wrote:
> Rather than having to increment the 'depth' number by 1 in
> ptdump_hole(), let's change the meaning of 'level' in note_page() since
> that makes the code simplier.
> 
> Note that for x86, the level numbers were previously increased by 1 in
> commit 45dcd2091363 ("x86/mm/dump_pagetables: Fix printout of p4d level")
> and the comment "Bit 7 has a different meaning" was not updated, so this
> change also makes the code match the comment again.
> 
> Signed-off-by: Steven Price <steven.price@arm.com>
> ---
>  arch/arm64/mm/dump.c          |  6 +++---
>  arch/x86/mm/dump_pagetables.c | 19 ++++++++++---------
>  include/linux/ptdump.h        |  1 +
>  mm/ptdump.c                   | 16 ++++++++--------

For the arm64 part:

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
