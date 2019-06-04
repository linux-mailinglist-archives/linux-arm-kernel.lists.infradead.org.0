Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2906A3522A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 23:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poxGw8R8HONI6jR0bM1MrY1h2qgIzuBlMad+CR/s6mQ=; b=tgcUaghBSagqXx
	KSoJnAHN/YlYd97bcvJT130bK+IZNcHRcqgEMQBNjRwMnMJi1d5mNSlfLPg7WuOqdjCH/vEzXJNY0
	Vjhta6iHi5V+iBWYI7TC1LyY4yPKA3XNkLssucIHftLxVLiamAAoCbGDQ2TMB2Is0MKbcFuTkU401
	dXsKqMTKq122D0gQOfr/OI82X8hl364BZDqo8VHxbMgeRWEebQqE1zhTtLYnLpHr0GXRqg7HqeiP1
	5a2/Hy+n27/d5DoMaYlSUPghZt0t2VmG9lABPUD628LXInDR1/0ny0Xg5ZBi3vC4GEEGS1RIQuIMl
	74tU9xJuJ+YZfKlz4NAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHHo-0005B8-Ot; Tue, 04 Jun 2019 21:48:04 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHHh-0005Af-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 21:47:58 +0000
Received: by mail-ed1-x542.google.com with SMTP id a8so2627117edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 14:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YAOiP57A01Sn4VN1p2tU0pXmqdLPIiJ4XRB9cBH/L60=;
 b=LHVOjJU+PrWUKjw2La9VE1vPKl5KearF9vd1gx+fMOah0NIYnTCpk/hLPywmGuD7Qx
 ubKVoOSXllgIIOtqhu2gVJ3x9B0/bsgZ7dOqAY3y5Ayi0qhLPf1tZQD8IUflfR/bo3b1
 F4TaQlhPSFK4tf44OdTct45QOW1HbhpVKmRS1UPgsRmJ8ykiC6IB1kc0IjzAbHbpYgcW
 XocfR253q6JmXmpbPH+wSLE5nYqYTiHdUq2ypGGmgfgczCsKHTbAbfTkEuh649zZZ9c/
 Obhuc+H39gsisfGYj1xrWFrX2Lyh1bRdUjq62tExuKhoIe4zwnBrI2RwiYnmhdgPNIGz
 bDHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=YAOiP57A01Sn4VN1p2tU0pXmqdLPIiJ4XRB9cBH/L60=;
 b=eSmUcQjA2Ec/7CLyOGIkCk/1zu6EZo4TCHWHQqovaMO/wSyd9RcK4KixLbgB7D3Vcu
 QpU0HuPHkapAfg7sKAiykHO0KK8H2qrf7x+0PNUXFSjEAiR/mta3DHeXvUZ2b1cBXtMJ
 tS6JEG7OyaTpQF0FVgT0C+TTKkrD+liRzBpfBcHHctRq/6831kaU/5fZ86/cmWDlpT2t
 J1kc7AN9TJR/f2FVJ+oYsi315SVeFDCCF+AnuVHCPGzVZMBJ1pAj+XEkRGeOQeNMR263
 02yPUxvyjEugC3ng1KTokLObzT79qwg/GFqNagGQHOhN58NzZL+CwoxD9sk1Bh6y+qPA
 veYA==
X-Gm-Message-State: APjAAAXeM+YttR9UAkmpLRV4oxbfRkQg1Z96qNcevUWVQh/85SIlkei5
 T1nPA+J2R0U5oiKJ0Gbo8qA=
X-Google-Smtp-Source: APXvYqwDVoxJj2tIOxzLuK3nYNHPwTJ67OHC1d3ag5SDYh0bPqzR5f57ZgPalm+F2A4DDOJ5mfMHNQ==
X-Received: by 2002:a50:bb24:: with SMTP id y33mr38369134ede.116.1559684875305; 
 Tue, 04 Jun 2019 14:47:55 -0700 (PDT)
Received: from localhost ([185.92.221.13])
 by smtp.gmail.com with ESMTPSA id n5sm2897404edt.65.2019.06.04.14.47.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 04 Jun 2019 14:47:54 -0700 (PDT)
Date: Tue, 4 Jun 2019 21:47:53 +0000
From: Wei Yang <richard.weiyang@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v3 08/11] mm/memory_hotplug: Drop MHP_MEMBLOCK_API
Message-ID: <20190604214753.utbdrjtjavgi7yhf@master>
References: <20190527111152.16324-1-david@redhat.com>
 <20190527111152.16324-9-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527111152.16324-9-david@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_144757_323105_254575F6 
X-CRM114-Status: GOOD (  13.14  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Oscar Salvador <osalvador@suse.com>, linux-s390@vger.kernel.org,
 Michal Hocko <mhocko@suse.com>, linux-ia64@vger.kernel.org,
 Pavel Tatashin <pasha.tatashin@soleen.com>, linux-sh@vger.kernel.org,
 Mathieu Malaterre <malat@debian.org>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 linux-kernel@vger.kernel.org, Wei Yang <richard.weiyang@gmail.com>,
 linux-mm@kvack.org, Arun KS <arunks@codeaurora.org>, Qian Cai <cai@lca.pw>,
 Igor Mammedov <imammedo@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 01:11:49PM +0200, David Hildenbrand wrote:
>No longer needed, the callers of arch_add_memory() can handle this
>manually.
>
>Cc: Andrew Morton <akpm@linux-foundation.org>
>Cc: David Hildenbrand <david@redhat.com>
>Cc: Michal Hocko <mhocko@suse.com>
>Cc: Oscar Salvador <osalvador@suse.com>
>Cc: Pavel Tatashin <pasha.tatashin@soleen.com>
>Cc: Wei Yang <richard.weiyang@gmail.com>
>Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
>Cc: Qian Cai <cai@lca.pw>
>Cc: Arun KS <arunks@codeaurora.org>
>Cc: Mathieu Malaterre <malat@debian.org>
>Signed-off-by: David Hildenbrand <david@redhat.com>

Reviewed-by: Wei Yang <richardw.yang@linux.intel.com>

>---
> include/linux/memory_hotplug.h | 8 --------
> mm/memory_hotplug.c            | 9 +++------
> 2 files changed, 3 insertions(+), 14 deletions(-)
>
>diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
>index 2d4de313926d..2f1f87e13baa 100644
>--- a/include/linux/memory_hotplug.h
>+++ b/include/linux/memory_hotplug.h
>@@ -128,14 +128,6 @@ extern void arch_remove_memory(int nid, u64 start, u64 size,
> extern void __remove_pages(struct zone *zone, unsigned long start_pfn,
> 			   unsigned long nr_pages, struct vmem_altmap *altmap);
> 
>-/*
>- * Do we want sysfs memblock files created. This will allow userspace to online
>- * and offline memory explicitly. Lack of this bit means that the caller has to
>- * call move_pfn_range_to_zone to finish the initialization.
>- */
>-
>-#define MHP_MEMBLOCK_API               (1<<0)
>-
> /* reasonably generic interface to expand the physical pages */
> extern int __add_pages(int nid, unsigned long start_pfn, unsigned long nr_pages,
> 		       struct mhp_restrictions *restrictions);
>diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>index b1fde90bbf19..9a92549ef23b 100644
>--- a/mm/memory_hotplug.c
>+++ b/mm/memory_hotplug.c
>@@ -251,7 +251,7 @@ void __init register_page_bootmem_info_node(struct pglist_data *pgdat)
> #endif /* CONFIG_HAVE_BOOTMEM_INFO_NODE */
> 
> static int __meminit __add_section(int nid, unsigned long phys_start_pfn,
>-		struct vmem_altmap *altmap, bool want_memblock)
>+				   struct vmem_altmap *altmap)
> {
> 	int ret;
> 
>@@ -294,8 +294,7 @@ int __ref __add_pages(int nid, unsigned long phys_start_pfn,
> 	}
> 
> 	for (i = start_sec; i <= end_sec; i++) {
>-		err = __add_section(nid, section_nr_to_pfn(i), altmap,
>-				restrictions->flags & MHP_MEMBLOCK_API);
>+		err = __add_section(nid, section_nr_to_pfn(i), altmap);
> 
> 		/*
> 		 * EEXIST is finally dealt with by ioresource collision
>@@ -1067,9 +1066,7 @@ static int online_memory_block(struct memory_block *mem, void *arg)
>  */
> int __ref add_memory_resource(int nid, struct resource *res)
> {
>-	struct mhp_restrictions restrictions = {
>-		.flags = MHP_MEMBLOCK_API,
>-	};
>+	struct mhp_restrictions restrictions = {};
> 	u64 start, size;
> 	bool new_node = false;
> 	int ret;
>-- 
>2.20.1

-- 
Wei Yang
Help you, Help me

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
