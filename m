Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D87B2DDB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 04:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GM7lfMGmX4ot5PQEPeGUlyI48yWqSL9k/uzkeDcBEn4=; b=YKuUF9ebcy388c
	/hovf8zeKA2KsdxVrDDT5mX0dJq73gRDKBNjLhHc/BRhA027kaQvJZphi+8r5p3Ey67PrkHFkJxHu
	932jrNQkIizSqtB5rs1sqQS+4iutQeKB/QHnRxINxtKdFEZ2uezxmyyWpw5X0qbereI7F+te1NbRi
	d8D08AU1rFgwoQmEsH6+2B0/Ra+B81q2/NQnkQIWKGAD+HcdqOC2AdD4QmARqkWVQFLbPFA7SiOWF
	sNsRgC2dPDkDDM8tNWvadu9arsmuUOkube7OTReutozPcUNqPXEq2SOLJSPvvHOoFOEIM+DIvQA3j
	cz2NtsAO8ps25vjHAotQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9KOT-0007jM-4J; Sun, 15 Sep 2019 02:36:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9KOB-0007is-Qd
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 02:35:50 +0000
Received: by mail-pf1-x441.google.com with SMTP id q21so20328539pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Sep 2019 19:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fhQRRoTWVDlkY7bkl1HwIxtbioEN9dfRxohZkdD1f9M=;
 b=oXe4Q8xkuN/WPthulSrCIQoFnOzQuOLjaM94ovBClDefXyw5ovNZQI5UxwCo1NsTrI
 qVl/6cRRmr+qcvtWQPmX/5Yz+sphzpUOsP4WG9Y8yRIFaaysposUEHDahrjcSYfzD2fi
 dNjKpndLrX/FWkY6oJc6gHsADmWv45gjJMUL3WIzunxOmhd6N01z/PvDsnMKCwhfS9L8
 zmW986xrcgPO9AsSS0Y84PEZjyS6KkPVHSKUiUYvqnRwFH5DElGEZNhZOJ4d9Y/ITR70
 GcLf46BfWLGbFaNLXSH9EhNaOcg3wR+dNXqVvixO1ziCL4N5U+JiGLr5ilv//dX8FwsM
 fvvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fhQRRoTWVDlkY7bkl1HwIxtbioEN9dfRxohZkdD1f9M=;
 b=Lqin9Kx77tJBP9ZYQCWI3dnpv2ZowbG9q7cRICckouPAVnrgaccmAkfPPgvOC/Eujo
 2PwZSgerZ4WIIhRPPcJkoZyvzz+7M3HKA3mOOu3TAV6aikInfhEcrCl8WmiMBd0yI0PE
 U4mlEmjFT0DCI41+EDYJpED5SATfY2Y3kiVqBJkHJWgZgXQGX65gBiTqKQSo4Ctx48QT
 bzha0hiW9XLpAyJH3v0dZd4r35oItUeCiFqFvPg8RXxtAp9N1r2uBYc99YW6C4KmsfWR
 LumEH28yIbZy8xHUrT9WsHA38D3IBMzw9TZou7wYEeZbDet03+eJnAAyQxi9dxYJG6jT
 zu1Q==
X-Gm-Message-State: APjAAAWeqfa5ljF+shKhgGCgEheSVKbsnnEDo4BA0gnA+GQKmaeezIzk
 EBlCWzSP6fSB7muBNyrR8G0=
X-Google-Smtp-Source: APXvYqx06da70srL4i4scsPW1kg1/C9aD5pMasQ7FoZzWmxFwg25UIdGOhHDBr6G6FhNTB7IHEefjg==
X-Received: by 2002:a63:2216:: with SMTP id i22mr7782671pgi.430.1568514942554; 
 Sat, 14 Sep 2019 19:35:42 -0700 (PDT)
Received: from [192.168.68.119] (220-245-129-191.tpgi.com.au.
 [220.245.129.191])
 by smtp.gmail.com with ESMTPSA id e1sm3291519pgd.21.2019.09.14.19.35.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 14 Sep 2019 19:35:41 -0700 (PDT)
Subject: Re: [PATCH V7 2/3] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will@kernel.org
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-3-git-send-email-anshuman.khandual@arm.com>
From: Balbir Singh <bsingharora@gmail.com>
Message-ID: <66922798-9de7-a230-8548-1f205e79ea50@gmail.com>
Date: Sun, 15 Sep 2019 12:35:21 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567503958-25831-3-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_193547_890982_1004F8C1 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 Robin.Murphy@arm.com, logang@deltatee.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/9/19 7:45 pm, Anshuman Khandual wrote:
> The arm64 page table dump code can race with concurrent modification of the
> kernel page tables. When a leaf entries are modified concurrently, the dump
> code may log stale or inconsistent information for a VA range, but this is
> otherwise not harmful.
> 
> When intermediate levels of table are freed, the dump code will continue to
> use memory which has been freed and potentially reallocated for another
> purpose. In such cases, the dump code may dereference bogus addresses,
> leading to a number of potential problems.
> 
> Intermediate levels of table may by freed during memory hot-remove,
> which will be enabled by a subsequent patch. To avoid racing with
> this, take the memory hotplug lock when walking the kernel page table.
> 
> Acked-by: David Hildenbrand <david@redhat.com>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> ---
>  arch/arm64/mm/ptdump_debugfs.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
> index 064163f25592..b5eebc8c4924 100644
> --- a/arch/arm64/mm/ptdump_debugfs.c
> +++ b/arch/arm64/mm/ptdump_debugfs.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <linux/debugfs.h>
> +#include <linux/memory_hotplug.h>
>  #include <linux/seq_file.h>
>  
>  #include <asm/ptdump.h>
> @@ -7,7 +8,10 @@
>  static int ptdump_show(struct seq_file *m, void *v)
>  {
>  	struct ptdump_info *info = m->private;
> +
> +	get_online_mems();
>  	ptdump_walk_pgd(m, info);
> +	put_online_mems();

Looks sane, BTW, checking other arches they might have the same race.
Is there anything special about the arch?

Acked-by: Balbir Singh <bsingharora@gmail.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
