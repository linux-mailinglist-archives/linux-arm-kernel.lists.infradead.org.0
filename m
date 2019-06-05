Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B06366BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 23:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDyw2RcFZAuD2jpY/dsQeQPHtHT3ToSHlc+aBhkm4RA=; b=VUYjejQbgGclh3
	JuLpqQPTjg5TTTa3J7RaiK6lFUim+ozWnyxBDp25A59WSPWYVgMw1WpA3JPeFHhJP4UO10850gF1L
	StldjK25JYgVdGI9WmRPGJPAj+YCRG1uKcibQsTcPtHhHpnOPr0Xkjc4BEXQ3HKxy0OuK3N9oia3Z
	BcTLCBuB7PwaoVLxx84qCeiFa5Bko7gdDev1brJdOsonAWknSjhM3yTr1EfcPUOkE1zidk/YnN1Qs
	zwR75PvwasvW/B0Ed3llvqLz1tQ5POIp3DHQuYPQycmHC6vA9b3RYhtcU6R/wdj6dFfXuiaKSqEIs
	utddxScCHBazh3K6w/ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYdLn-0000Lc-Hm; Wed, 05 Jun 2019 21:21:39 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYdLe-0000JE-Qj
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 21:21:32 +0000
Received: by mail-ed1-x542.google.com with SMTP id f20so7711128edt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 14:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jmqIL302FliKztrku23iEbel/vN8Om9KZr4KoJVUQBs=;
 b=HtLdXNwlPpU1RFxmpHZq/rH78NiFyUbMRNR4XLHGl5DFaciTYXzczF+YOEaOthAltb
 LzfrkniAfXeG9XfS8k8l9WWdWJTCb5t0Qydwrx9HDSWfQxVverG9o6eBxNShll611+Xk
 D8MDiZNeQ9S8YaEkKYI92ohNxvxiKGjBgdANYmGfcUxcUcAmDq0kOuCUWCUGDd+d7T8p
 u6tdGt0M3uFblUt67ApuYvpm2psLcK1H66EYwESimtXZEx5o8tKBJ+DBxrVlRNPstQNp
 2xk+bEsv5+yigah3/6Lj+npsGt7LKO/9d2Bkh2IRQhSgPxae7KCEIl0WkMOEkno6k2FP
 1Lng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=jmqIL302FliKztrku23iEbel/vN8Om9KZr4KoJVUQBs=;
 b=e9EXUqsza3le+HAgTGBBjbnO+zW0TfAs5VFiGbpiAmePj5f+9Dl9JB1lKoTA2IIo6G
 0Y4QEpPpjKNKRnFCfucgXXpHJP9ElfAlZYbWMTDpAjHUDMndiEM+9NJ/psSzjxiwgE0K
 LOnw2MJPW8lsOCb7UX6VwFDln65pXuHvnixDdERDliSNMAcOvnRrk/xQkOteJsns114V
 0BT7W4i/O7BdUHqUjGrlhKoYFAOl4up1DUunaQZrCzmQW2cRM91Ig0vPG7jKXrxqji6P
 ldxpRPY/7j4mDujrWYpn/ZJz5NoaMAIwqlftFBmqUEvg/7/21abAselCRaDxsbaocNUk
 NlBQ==
X-Gm-Message-State: APjAAAVKyNfvAeThkpRA6edfUSar/UvAX6/5SSzeGYIKBG540OMJ26rF
 +OwRwHPvASHXPyj5MuomJuI=
X-Google-Smtp-Source: APXvYqxldygk3PkHMpihOlAqhwTjzhXRQF4Z9tCxVu286QjlehnozfaHCkEEtI5NYMQPFpu5SuYeWg==
X-Received: by 2002:a50:ca48:: with SMTP id e8mr45737760edi.101.1559769687081; 
 Wed, 05 Jun 2019 14:21:27 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id e19sm3550413edy.36.2019.06.05.14.21.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 14:21:26 -0700 (PDT)
Date: Wed, 5 Jun 2019 21:21:25 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 11/11] mm/memory_hotplug: Remove "zone" parameter from
 sparse_remove_one_section
Message-ID: <20190605212125.gwmvjjicylhp3wcz@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-12-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-12-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_142130_869279_07D15104 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weiyang[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-kernel@vger.kernel.org,
 Wei Yang <richard.weiyang@gmail.com>, linux-mm@kvack.org,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:52PM +0200, David Hildenbrand wrote:
>The parameter is unused, so let's drop it. Memory removal paths should
>never care about zones. This is the job of memory offlining and will
>require more refactorings.
>
>Reviewed-by: Dan Williams <dan.j.williams@intel.com>
>Signed-off-by: David Hildenbrand <david@redhat.com>

Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>

>---
> include/linux/memory_hotplug.h | 2 +-
> mm/memory_hotplug.c            | 2 +-
> mm/sparse.c                    | 4 ++--
> 3 files changed, 4 insertions(+), 4 deletions(-)
>
>diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
>index 2f1f87e13baa..1a4257c5f74c 100644
>--- a/include/linux/memory_hotplug.h
>+++ b/include/linux/memory_hotplug.h
>@@ -346,7 +346,7 @@ extern void move_pfn_range_to_zone(struct zone *zone, unsigned long start_pfn,
> extern bool is_memblock_offlined(struct memory_block *mem);
> extern int sparse_add_one_section(int nid, unsigned long start_pfn,
> 				  struct vmem_altmap *altmap);
>-extern void sparse_remove_one_section(struct zone *zone, struct mem_section *ms,
>+extern void sparse_remove_one_section(struct mem_section *ms,
> 		unsigned long map_offset, struct vmem_altmap *altmap);
> extern struct page *sparse_decode_mem_map(unsigned long coded_mem_map,
> 					  unsigned long pnum);
>diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>index 82136c5b4c5f..e48ec7b9dee2 100644
>--- a/mm/memory_hotplug.c
>+++ b/mm/memory_hotplug.c
>@@ -524,7 +524,7 @@ static void __remove_section(struct zone *zone, struct mem_section *ms,
> 	start_pfn = section_nr_to_pfn((unsigned long)scn_nr);
> 	__remove_zone(zone, start_pfn);
> 
>-	sparse_remove_one_section(zone, ms, map_offset, altmap);
>+	sparse_remove_one_section(ms, map_offset, altmap);
> }
> 
> /**
>diff --git a/mm/sparse.c b/mm/sparse.c
>index d1d5e05f5b8d..1552c855d62a 100644
>--- a/mm/sparse.c
>+++ b/mm/sparse.c
>@@ -800,8 +800,8 @@ static void free_section_usemap(struct page *memmap, unsigned long *usemap,
> 		free_map_bootmem(memmap);
> }
> 
>-void sparse_remove_one_section(struct zone *zone, struct mem_section *ms,
>-		unsigned long map_offset, struct vmem_altmap *altmap)
>+void sparse_remove_one_section(struct mem_section *ms, unsigned long map_offset,
>+			       struct vmem_altmap *altmap)
> {
> 	struct page *memmap = NULL;
> 	unsigned long *usemap = NULL;
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
