Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AC0B69E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKlMaxAn+XkLFdMScNDmX6Dz/DpI1VnBORXX9XOr6Do=; b=TNoC0PgG+n+/Tu
	qWHVpGEwYGtQ3rf6d+Wrtu2szFlZMAFxTrG1Do2kczWqF0WbqSJ0NJlFg0kncG/kaQCp2YGvF9DpX
	poRfeIly6Fw4Q7QHlGx9VwJHGnJ4n963dKmT4EZlFsmkDlFWcTjZS5MWv/y+cOz2yGGTSZhHjBwtI
	ELn0ivez3Xc9LOLdi+iF4CrcXqezaauClpmTNLd4jhCMRVC/MM8LXF72tB1IcIhEpF97T1pzuc9yT
	xQbZw4wHfFf9nXgFjHXJBiu1WmBx2PxWPlAoDzdWC0eNLT6D98gCFOgWRcGeCcqmyWBSTD0Yg40gJ
	89/vPEG0xAEzLUHbmj/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAe8Q-0006P2-U5; Wed, 18 Sep 2019 17:52:58 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAe85-0006Ih-GP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:52:39 +0000
Received: by mail-ot1-x344.google.com with SMTP id e11so641098otl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=JWWH0nLE5gW80rwb17oSZfM6VHlugSoNSjEeC143ARI=;
 b=kY3Nlxw4jpobVoe1JNyEjEGVhrVb4uyehLGgS2nDS2Limxn/shG8A6UvTSmRmamYf2
 vpwJWEl0pAb1fTuvIm0LsMimt1aZGBGW7khdC8YTa6mZMWQBgNcgOjhkth8enlqk8txQ
 Ae58XB9KDodcprJ1+qW2Vd2g3Hj7eg/CzfS+9/r+j6C/7zwelWxgfjiiVIBKflrizYNg
 dLiTBEYyiQYtg7ouCjOE7MeRbNcfZPYmM4OpCYleG6Pv7X2Laj/RmtQzO8GQPnw7QWfJ
 sfV41kc38Vx9O9JU4Osh/nqinznN8zZcm/K3WaI5q2HT2bNdBne56siHa6p/8uFHnYXR
 XmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=JWWH0nLE5gW80rwb17oSZfM6VHlugSoNSjEeC143ARI=;
 b=FxYguz/U+0ecmtFDqbTOaBZ/wVwNQCMqz90LRQRP+80+LuQ32K3CqR/Q+GPcGiLyR0
 PTF+4wc/NBIAPza3autL/8YH05o1rf6Ejl0/1UNf2R+5qhwEwQwd461jbbzdF8g5OYQ0
 aAODIHsvMxewgiDQSfvUQan0VT6gq6ToWnrLN1xV6c/NuJkhfwzmHB3fqsTmPk9wIBqs
 +4THm/yTZkohIXmAgMLPnLZpX16OWfaDOg/OO96PGFqtjusOthWSN3FzpyHBbXjfmIjE
 NrwDhLkZgonpxDXBG1P80dH8juii+L+n/80hUKAQdp+mTQxAzFrLymM8QWdT9kvm5o54
 yQ2A==
X-Gm-Message-State: APjAAAU+jHlQsM54b6iCkTzegsWxIEwThU4VZqoqz2abMf/TBHJITmjz
 KxLNjQco9Zw/OVn6JkhuAH8=
X-Google-Smtp-Source: APXvYqyH5jZB85XcGwqiW8u/CLFVrXYTftFKTWVpkVfA0lyvGzPyLpjSrqJtEvx3oszxU7OaB0xUKw==
X-Received: by 2002:a05:6830:214d:: with SMTP id
 r13mr3623505otd.121.1568829156454; 
 Wed, 18 Sep 2019 10:52:36 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id e5sm1998110otr.81.2019.09.18.10.52.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 10:52:35 -0700 (PDT)
Subject: [PATCH v10 1/6] mm: Adjust shuffle code to allow for future coalescing
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 david@redhat.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, mhocko@kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 akpm@linux-foundation.org, mgorman@techsingularity.net,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Wed, 18 Sep 2019 10:52:33 -0700
Message-ID: <20190918175233.23474.93686.stgit@localhost.localdomain>
In-Reply-To: <20190918175109.23474.67039.stgit@localhost.localdomain>
References: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105238_150685_2E2A0A2B 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, lcapitulino@redhat.com, wei.w.wang@intel.com,
 aarcange@redhat.com, nitesh@redhat.com, pbonzini@redhat.com,
 dan.j.williams@intel.com, alexander.h.duyck@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexander Duyck <alexander.h.duyck@linux.intel.com>

Move the head/tail adding logic out of the shuffle code and into the
__free_one_page function since ultimately that is where it is really
needed anyway. By doing this we should be able to reduce the overhead
and can consolidate all of the list addition bits in one spot.

Acked-by: David Hildenbrand <david@redhat.com>
Reviewed-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
---
 include/linux/mmzone.h |   12 --------
 mm/page_alloc.c        |   71 ++++++++++++++++++++++++++++--------------------
 mm/shuffle.c           |   12 ++++----
 mm/shuffle.h           |    6 ++++
 4 files changed, 54 insertions(+), 47 deletions(-)

diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index bda20282746b..125f300981c6 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -116,18 +116,6 @@ static inline void add_to_free_area_tail(struct page *page, struct free_area *ar
 	area->nr_free++;
 }
 
-#ifdef CONFIG_SHUFFLE_PAGE_ALLOCATOR
-/* Used to preserve page allocation order entropy */
-void add_to_free_area_random(struct page *page, struct free_area *area,
-		int migratetype);
-#else
-static inline void add_to_free_area_random(struct page *page,
-		struct free_area *area, int migratetype)
-{
-	add_to_free_area(page, area, migratetype);
-}
-#endif
-
 /* Used for pages which are on another list */
 static inline void move_to_free_area(struct page *page, struct free_area *area,
 			     int migratetype)
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 3334a769eb91..268a25830114 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -878,6 +878,36 @@ static inline struct capture_control *task_capc(struct zone *zone)
 #endif /* CONFIG_COMPACTION */
 
 /*
+ * If this is not the largest possible page, check if the buddy
+ * of the next-highest order is free. If it is, it's possible
+ * that pages are being freed that will coalesce soon. In case,
+ * that is happening, add the free page to the tail of the list
+ * so it's less likely to be used soon and more likely to be merged
+ * as a higher order page
+ */
+static inline bool
+buddy_merge_likely(unsigned long pfn, unsigned long buddy_pfn,
+		   struct page *page, unsigned int order)
+{
+	struct page *higher_page, *higher_buddy;
+	unsigned long combined_pfn;
+
+	if (order >= MAX_ORDER - 2)
+		return false;
+
+	if (!pfn_valid_within(buddy_pfn))
+		return false;
+
+	combined_pfn = buddy_pfn & pfn;
+	higher_page = page + (combined_pfn - pfn);
+	buddy_pfn = __find_buddy_pfn(combined_pfn, order + 1);
+	higher_buddy = higher_page + (buddy_pfn - combined_pfn);
+
+	return pfn_valid_within(buddy_pfn) &&
+	       page_is_buddy(higher_page, higher_buddy, order + 1);
+}
+
+/*
  * Freeing function for a buddy system allocator.
  *
  * The concept of a buddy system is to maintain direct-mapped table
@@ -906,11 +936,13 @@ static inline void __free_one_page(struct page *page,
 		struct zone *zone, unsigned int order,
 		int migratetype)
 {
-	unsigned long combined_pfn;
+	struct capture_control *capc = task_capc(zone);
 	unsigned long uninitialized_var(buddy_pfn);
-	struct page *buddy;
+	unsigned long combined_pfn;
+	struct free_area *area;
 	unsigned int max_order;
-	struct capture_control *capc = task_capc(zone);
+	struct page *buddy;
+	bool to_tail;
 
 	max_order = min_t(unsigned int, MAX_ORDER, pageblock_order + 1);
 
@@ -979,35 +1011,16 @@ static inline void __free_one_page(struct page *page,
 done_merging:
 	set_page_order(page, order);
 
-	/*
-	 * If this is not the largest possible page, check if the buddy
-	 * of the next-highest order is free. If it is, it's possible
-	 * that pages are being freed that will coalesce soon. In case,
-	 * that is happening, add the free page to the tail of the list
-	 * so it's less likely to be used soon and more likely to be merged
-	 * as a higher order page
-	 */
-	if ((order < MAX_ORDER-2) && pfn_valid_within(buddy_pfn)
-			&& !is_shuffle_order(order)) {
-		struct page *higher_page, *higher_buddy;
-		combined_pfn = buddy_pfn & pfn;
-		higher_page = page + (combined_pfn - pfn);
-		buddy_pfn = __find_buddy_pfn(combined_pfn, order + 1);
-		higher_buddy = higher_page + (buddy_pfn - combined_pfn);
-		if (pfn_valid_within(buddy_pfn) &&
-		    page_is_buddy(higher_page, higher_buddy, order + 1)) {
-			add_to_free_area_tail(page, &zone->free_area[order],
-					      migratetype);
-			return;
-		}
-	}
-
+	area = &zone->free_area[order];
 	if (is_shuffle_order(order))
-		add_to_free_area_random(page, &zone->free_area[order],
-				migratetype);
+		to_tail = shuffle_pick_tail();
 	else
-		add_to_free_area(page, &zone->free_area[order], migratetype);
+		to_tail = buddy_merge_likely(pfn, buddy_pfn, page, order);
 
+	if (to_tail)
+		add_to_free_area_tail(page, area, migratetype);
+	else
+		add_to_free_area(page, area, migratetype);
 }
 
 /*
diff --git a/mm/shuffle.c b/mm/shuffle.c
index 3ce12481b1dc..923af4fe887e 100644
--- a/mm/shuffle.c
+++ b/mm/shuffle.c
@@ -183,11 +183,11 @@ void __meminit __shuffle_free_memory(pg_data_t *pgdat)
 		shuffle_zone(z);
 }
 
-void add_to_free_area_random(struct page *page, struct free_area *area,
-		int migratetype)
+bool shuffle_pick_tail(void)
 {
 	static u64 rand;
 	static u8 rand_bits;
+	bool ret;
 
 	/*
 	 * The lack of locking is deliberate. If 2 threads race to
@@ -198,10 +198,10 @@ void add_to_free_area_random(struct page *page, struct free_area *area,
 		rand = get_random_u64();
 	}
 
-	if (rand & 1)
-		add_to_free_area(page, area, migratetype);
-	else
-		add_to_free_area_tail(page, area, migratetype);
+	ret = rand & 1;
+
 	rand_bits--;
 	rand >>= 1;
+
+	return ret;
 }
diff --git a/mm/shuffle.h b/mm/shuffle.h
index 777a257a0d2f..4d79f03b6658 100644
--- a/mm/shuffle.h
+++ b/mm/shuffle.h
@@ -22,6 +22,7 @@ enum mm_shuffle_ctl {
 DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
 extern void page_alloc_shuffle(enum mm_shuffle_ctl ctl);
 extern void __shuffle_free_memory(pg_data_t *pgdat);
+extern bool shuffle_pick_tail(void);
 static inline void shuffle_free_memory(pg_data_t *pgdat)
 {
 	if (!static_branch_unlikely(&page_alloc_shuffle_key))
@@ -44,6 +45,11 @@ static inline bool is_shuffle_order(int order)
 	return order >= SHUFFLE_ORDER;
 }
 #else
+static inline bool shuffle_pick_tail(void)
+{
+	return false;
+}
+
 static inline void shuffle_free_memory(pg_data_t *pgdat)
 {
 }


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
