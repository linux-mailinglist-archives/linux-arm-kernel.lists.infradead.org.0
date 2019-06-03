Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C69339F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 23:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnNHrWGbvz3FEhtWIM9E1HVmglx9vyQQ2+WYgC8X5ek=; b=ZhjvtbnKN4QrIe
	mYmxICaqC/25ZrZWU5irRb71ZgdqDOxhSgu2x3DHMm+EKXBlPgu/ygqt8YtbBAkpot4tuxB94PxOV
	OKrRZcU1+o5tmkrAZOj/XW4ggnKTupOYeHo4vU6KhHt+bviY/7j28FV4pp7/Gz1BWyniI9PxvfRbn
	FowwZsUaCFPLo6YfyJ/Fb3Dd/EOZbhPORON8HNsnGJgBifQJCc9Uz9CV5ojFLEKhNhCLyB80io3BO
	TLP/8hbbe8lx9JW2uc1sTlsltL96z6dFUtWFwCgRArsH+CSHA6ACfmquO3GdKinSCkP/03PI4ZfA2
	/9LOng6hM4mg31TFIbvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuiF-0003gI-3C; Mon, 03 Jun 2019 21:41:51 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXui6-0003eq-Br
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 21:41:43 +0000
Received: by mail-ed1-x543.google.com with SMTP id x25so16695278eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 14:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yhLYhpx5r94UcNbu2SZQmZBVQeUmPq6PVimIkeEn7pk=;
 b=scIwGBKI357lkVXW52kw03XCI4+Ae6ho42noCT0DWTtPRkLPw37gVYJBmgatjte/fr
 txxL6xswgG2bwv4dcBi9ilccueJ2EbcEKZtiqgVr0w/zR7p00TQxQ68X081DlJksiVJp
 bQq/Q6WuN9RqstqJonmfHCKtiFMA7q9w/UyTa+NDl7ayqnpxpJkR/MsE/cnrEjpN5UnF
 pDmYt0I6nf0M8NtJy0pn3MNogc07CPwCXpJcmFU/YcoTOESdyv+YzC8Zd1MT32D8/vBb
 qcdBZinoMMfM8+8dbAMFVV623Db3nfb+VmQu9rZFXZf1rykogdgYpXDWtPbozhqhF8So
 ROsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=yhLYhpx5r94UcNbu2SZQmZBVQeUmPq6PVimIkeEn7pk=;
 b=jlZKEvKhP82fDxY6m0WAf9OJayBDUbkbMJjuQm9GgR+z11lEz4WLDDWcB4MiLZb5G5
 Fol0Yhii23PaJe1dVKROTLfKIV45baGJbE506u4Cu9MnoaAkUxXCnW3l3Zmid6BHBv5O
 cCosdHWajnPr1UsLWskazj519ywvRAY7mEW3VkPEqELOcttiTuCyG9hM9t9cnpahWCj0
 Ghl0ckYAI5L2er/bkLjhZFY2Ipk+I/1Bye7SE0F//yysev+Csy5T8wMWS7J2dqgvqk2W
 1ChjjrR+lzEaqXFk0CeUwoTKaczfQSawhhcmGkmk/kcWVXh3ef5LTRuF9JGAHc/z6xho
 griw==
X-Gm-Message-State: APjAAAUAaSfQ2lQFsfx5dT83mbX4P8zAPVuji8KtfYqJPtXSTfWPE7OO
 2j8kZbCn5TXf10xOgPkf080=
X-Google-Smtp-Source: APXvYqwCMUWcithGJqx45+EgRmxCCI6sjYqisr91FRxovWqn6/a/0IS0IDUQUvDAHCpQkkCQxu0u/A==
X-Received: by 2002:a17:907:20d0:: with SMTP id
 qq16mr14587748ejb.244.1559598100632; 
 Mon, 03 Jun 2019 14:41:40 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id e45sm4208929edb.12.2019.06.03.14.41.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 14:41:39 -0700 (PDT)
Date: Mon, 3 Jun 2019 21:41:39 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 04/11] arm64/mm: Add temporary arch_remove_memory()
 implementation
Message-ID: <20190603214139.mercn5hol2yyfl2s@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-5-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-5-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_144142_400684_22E275FD 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reply-To: Wei Yang <richard.weiyang@gmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>, linux-s390@vger.kernel.org,
 linux-ia64@vger.kernel.org, Yu Zhao <yuzhao@google.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 Jun Yao <yaojun8558363@gmail.com>, linux-mm@kvack.org,
 Chintan Pandya <cpandya@codeaurora.org>, Igor Mammedov <imammedo@redhat.com>,
 akpm@linux-foundation.org, Mike Rapoport <rppt@linux.ibm.com>,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:45PM +0200, David Hildenbrand wrote:
>A proper arch_remove_memory() implementation is on its way, which also
>cleanly removes page tables in arch_add_memory() in case something goes
>wrong.

Would this be better to understand?

    removes page tables created in arch_add_memory

>
>As we want to use arch_remove_memory() in case something goes wrong
>during memory hotplug after arch_add_memory() finished, let's add
>a temporary hack that is sufficient enough until we get a proper
>implementation that cleans up page table entries.
>
>We will remove CONFIG_MEMORY_HOTREMOVE around this code in follow up
>patches.
>
>Cc: Catalin Marinas <catalin.marinas@arm.com>
>Cc: Will Deacon <will.deacon@arm.com>
>Cc: Mark Rutland <mark.rutland@arm.com>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
>Cc: Chintan Pandya <cpandya@codeaurora.org>
>Cc: Mike Rapoport <rppt@linux.ibm.com>
>Cc: Jun Yao <yaojun8558363@gmail.com>
>Cc: Yu Zhao <yuzhao@google.com>
>Cc: Robin Murphy <robin.murphy@arm.com>
>Cc: Anshuman Khandual <anshuman.khandual@arm.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>
>---
> arch/arm64/mm/mmu.c | 19 +++++++++++++++++++
> 1 file changed, 19 insertions(+)
>
>diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>index a1bfc4413982..e569a543c384 100644
>--- a/arch/arm64/mm/mmu.c
>+++ b/arch/arm64/mm/mmu.c
>@@ -1084,4 +1084,23 @@ int arch_add_memory(int nid, u64 start, u64 size,
> 	return __add_pages(nid, start >> PAGE_SHIFT, size >> PAGE_SHIFT,
> 			   restrictions);
> }
>+#ifdef CONFIG_MEMORY_HOTREMOVE
>+void arch_remove_memory(int nid, u64 start, u64 size,
>+			struct vmem_altmap *altmap)
>+{
>+	unsigned long start_pfn = start >> PAGE_SHIFT;
>+	unsigned long nr_pages = size >> PAGE_SHIFT;
>+	struct zone *zone;
>+
>+	/*
>+	 * FIXME: Cleanup page tables (also in arch_add_memory() in case
>+	 * adding fails). Until then, this function should only be used
>+	 * during memory hotplug (adding memory), not for memory
>+	 * unplug. ARCH_ENABLE_MEMORY_HOTREMOVE must not be
>+	 * unlocked yet.
>+	 */
>+	zone = page_zone(pfn_to_page(start_pfn));

Compared with arch_remove_memory in x86. If altmap is not NULL, zone will be
retrieved from page related to altmap. Not sure why this is not the same?

>+	__remove_pages(zone, start_pfn, nr_pages, altmap);
>+}
>+#endif
> #endif
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
