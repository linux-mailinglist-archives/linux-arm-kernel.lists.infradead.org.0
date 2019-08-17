Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713EA90C4D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 04:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJYfD3VA38d1RK5rfR+eUGwRVk31xLBY0zlpIXRXE6k=; b=BR0q/YNaEnhoet
	5VL4n/EdCbL6H7XKwx+Lv9xCwtN6717cOcaU/v4upRx6vqFnSkpgFYgPdUdBtCFBG86f4NX+JmZam
	o+JSh+3it5ccEOrQQIQtSxRbv6QI1O12BwoZ5VR6w9h5pfqctAnqWNYf1Pn7Odh8aYt16aXOoluqB
	DMtcpIGTO/pYJjSs5xlhtIpe7TJoWEewYFhWq/EtZiqVUxAeGuOaGXCMGyQXXxWfh7jfiPWNeAicK
	PmwHaJXA8fsimAGQ19wI4El0qXpBLQ7xuD6+uRtvnqX/p/Zt10rO/gG42mhssDLFMAUnH3EwK90vJ
	9kfG8yXczxXPnQ8p1BVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyolY-0003uP-F2; Sat, 17 Aug 2019 02:48:28 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojo-0002UW-L8
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 02:46:44 +0000
Received: by mail-qt1-x841.google.com with SMTP id b11so8195372qtp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 19:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=6MXr7ZNXr9pMh8s805CN1W/EkafXMpyZxym4cVvk9wc=;
 b=Jk5d2DZoBShB4ze9idh4b2whUtX/SmRx3TmrhS9c1oewUdCmJEzH/hGw70meFsxow+
 YDVZ3g0EIXKLmKSP1feQTYCGq491WhjWp3qsTbrKER7ArdWIh+EthjCYgIfVGvoygFUV
 tlHsVX4W+sVOY918LixttJyVlaBCZPFsYG/tnp66k+QKq69YlEcdd8RSyu/uuUQ4HzmN
 A2B4BbxV4o4Zdo2HKLL7ZT2tz79MNM8jtjl4cPB7HdLIkuSvqyw1UBAIJzHx9+L9WUOK
 x90PRf3db1rUecDzrbU/GBXEF5jwUHyMjdo64PX/wkrXaBHGfKHryUcwkyGIRw2NodIV
 GEhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6MXr7ZNXr9pMh8s805CN1W/EkafXMpyZxym4cVvk9wc=;
 b=maLpDWPhJsMcQHbamwz66mkeaKIgqkvxIFEgnUslW4fIfLrwXc6AIaVF8VhrwLcLn9
 7DSby7Aqlo6CjRuGcrDOcQB6aKD9OPp3axO+ueAcG/enhjz9dqE0JsJOBgjP9x5yTJPq
 0CenU9EhACVyqZEcjtP1kqlXM5Ls/v5WxQhPF/MygK9UZCX0nrupVNYfnA1RV/7BtOLX
 1IJbAQs2MUF/nKgMwICOfaoxAtUaPcCJ8wjgbl3NcIYpV/9D8mxkJ9xbA4EAuq+IsgtL
 lfEnpA4DvczqntpPRxaO1smLCFeWD7Jvjgj07ZBC9CY8ITRNwka5FF7frt/dIGIfPM+e
 MuPw==
X-Gm-Message-State: APjAAAWqVoSo7+cfypbi9cbJSQ6TN9sWH8G6uF86oXDomyQQqOGu7kLI
 CCFdjEjbba8JGfVUzhulvsyW1g==
X-Google-Smtp-Source: APXvYqxndPHKSjrYVebk9sscUfiq8znh7MMHnkLzeCbrUekUG7hOvdYEmZRZVAY2SFXWMAuk/MAFdQ==
X-Received: by 2002:ac8:3737:: with SMTP id o52mr11736300qtb.9.1566009999892; 
 Fri, 16 Aug 2019 19:46:39 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:39 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 06/14] arm64, trans_table: add trans_table_create_empty
Date: Fri, 16 Aug 2019 22:46:21 -0400
Message-Id: <20190817024629.26611-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194640_794908_001EF1C3 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This functions returns a zeroed trans_table using the allocator that is
specified in the info argument.

trans_tables should be created by using this function.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/trans_table.h |  4 ++++
 arch/arm64/kernel/hibernate.c        |  6 +++---
 arch/arm64/mm/trans_table.c          | 12 ++++++++++++
 3 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/trans_table.h b/arch/arm64/include/asm/trans_table.h
index 1a57af09ded5..02d3a0333dc9 100644
--- a/arch/arm64/include/asm/trans_table.h
+++ b/arch/arm64/include/asm/trans_table.h
@@ -40,6 +40,10 @@ struct trans_table_info {
 	unsigned long trans_flags;
 };
 
+/* Create and empty trans table. */
+int trans_table_create_empty(struct trans_table_info *info,
+			     pgd_t **trans_table);
+
 int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
 			    unsigned long end);
 
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 524b68ec3233..3a7b362e5a58 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -216,9 +216,9 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy(page, src_start, length);
 	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	trans_table = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_table)
-		return -ENOMEM;
+	rc = trans_table_create_empty(&trans_info, &trans_table);
+	if (rc)
+		return rc;
 
 	rc = trans_table_map_page(&trans_info, trans_table, page, dst_addr,
 				  PAGE_KERNEL_EXEC);
diff --git a/arch/arm64/mm/trans_table.c b/arch/arm64/mm/trans_table.c
index 12f4b3cab6d6..6deb35f83118 100644
--- a/arch/arm64/mm/trans_table.c
+++ b/arch/arm64/mm/trans_table.c
@@ -164,6 +164,18 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 	return 0;
 }
 
+int trans_table_create_empty(struct trans_table_info *info, pgd_t **trans_table)
+{
+	pgd_t *dst_pgdp = trans_alloc(info);
+
+	if (!dst_pgdp)
+		return -ENOMEM;
+
+	*trans_table = dst_pgdp;
+
+	return 0;
+}
+
 int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
 			    unsigned long end)
 {
-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
