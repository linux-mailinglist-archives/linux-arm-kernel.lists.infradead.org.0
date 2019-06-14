Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 492E646B29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sV9bG7y8EE47OYVKW8ZCAl0c6DYZ2bjC8j6+RXBVu4=; b=rlYraqjsqYiN3i
	FLsEYmg5NFAuKxGUSP3B+8t7hk4GabCAu09Kyct0dIFETiJxqsKbUOcRVnC2JIcN3mRjsr10XIceu
	mlXhsZxY4aImdg2shCTOOKVWsI66NKgXCY5IHgV7vbDNG/EEm45qEbhlQ3c1ws9dHPWDzH/HHRBs6
	jSs0oH+3lUuBFa0FeSTw+aHLFkpzwzFcUbGzXMmWUilG+bOp4WP8+iGNw3Sj1QOl9J6DXw2rb9sd8
	8cE3TMJK3k1HelZ+udaH/3FGFRx9mhqJaI2mTl6kV20vtypxYizFrhIehLF1jGUgMHNaogiFM/qaf
	NL/WlKTlt2nrBRzpg/Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt1k-0001Ta-Hj; Fri, 14 Jun 2019 20:42:24 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswt-0004LQ-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:34 +0000
Received: by mail-pg1-x544.google.com with SMTP id s27so2173499pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TIy8YQDmiH0lGYDV1tdQuIF92/7kUVyaQcmdzLpFsEA=;
 b=DPpqEvR2xRVIvswlW2ndF1y9QKk/EJuzPD08Z5oPj4JN719FIPwvtEToWha++Fa1Hp
 Qb8VmkV96OQsM+BbP3DUKWo9ridoF9L2RV+ZNbYHAh3544fZJLPFVqEXyCPQQGyc1ld8
 9f5H6/eK3vxM8AsDZbD/TWhdCBBhZQTLmxhYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TIy8YQDmiH0lGYDV1tdQuIF92/7kUVyaQcmdzLpFsEA=;
 b=r7gMvcwzhh63jSpyvIRqm53HD36KlfkXdkesjV4wZ9QU6lyNysAdgMjOhlVnmkvONM
 hJrAi4ETaCnNEHV9x8yXU8NzfRsZvvm7RROOFz6epXRG0W8vLo/FW1RBFJMLuyClerzy
 GEkNJ/D/vDfmNO29R/O6Lh16fCG/AaYRCGtAKudM6Dg8pVyGGrR3BSnz8aXuCR+TLFSV
 Enl1aykZ/Hd9NMjxNNTrqn2VU5PhRSKV+CejxWmxpCu59MOTFn8wElFdM8Uyv9VIerO/
 vFVPsyRKJlpYEoGvjpe7WGiFE9lHJEmHcV0bvft9Xcjq/H7VKHrjjKVZkcR977RdUk9Z
 82qw==
X-Gm-Message-State: APjAAAWiUyqOzGXqahZVIWzfXk9uDGPQGONWvOlg4ETmeCQSSN18ugny
 PZcKW0QsifijJBc7IOa21ZHbtA==
X-Google-Smtp-Source: APXvYqxmpfHSDjrUYD6uZNYIRRn0cr0CR+UNJC8dHrCxflAPdm/P9a9hwNIpx+rOpjwL7hA2RLbd6A==
X-Received: by 2002:a63:81c6:: with SMTP id
 t189mr36883280pgd.293.1560544641989; 
 Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 3/5] memremap: Add support for read-only memory mappings
Date: Fri, 14 Jun 2019 13:37:15 -0700
Message-Id: <20190614203717.75479-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133723_564744_30885740 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sometimes we have memories that are supposed to be read-only, but when
we map these regions the best we can do is map them as write-back with
MEMREMAP_WB. Introduce a read-only memory mapping (MEMREMAP_RO) that
allows us to map reserved memory regions as read-only. This way, we're
less likely to see these special memory regions become corrupted by
stray writes to them.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 include/linux/io.h |  1 +
 kernel/iomem.c     | 15 +++++++++++++--
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/include/linux/io.h b/include/linux/io.h
index 32e30e8fb9db..16c7f4498869 100644
--- a/include/linux/io.h
+++ b/include/linux/io.h
@@ -159,6 +159,7 @@ enum {
 	MEMREMAP_WC = 1 << 2,
 	MEMREMAP_ENC = 1 << 3,
 	MEMREMAP_DEC = 1 << 4,
+	MEMREMAP_RO = 1 << 5,
 };
 
 void *memremap(resource_size_t offset, size_t size, unsigned long flags);
diff --git a/kernel/iomem.c b/kernel/iomem.c
index 93c264444510..10d5ef0ff09e 100644
--- a/kernel/iomem.c
+++ b/kernel/iomem.c
@@ -19,6 +19,13 @@ static void *arch_memremap_wb(resource_size_t offset, unsigned long size)
 }
 #endif
 
+#ifndef arch_memremap_ro
+static void *arch_memremap_ro(resource_size_t offset, unsigned long size)
+{
+	return NULL;
+}
+#endif
+
 #ifndef arch_memremap_can_ram_remap
 static bool arch_memremap_can_ram_remap(resource_size_t offset, size_t size,
 					unsigned long flags)
@@ -84,7 +91,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
 	}
 
 	/* Try all mapping types requested until one returns non-NULL */
-	if (flags & MEMREMAP_WB) {
+	if ((flags & MEMREMAP_RO) && is_ram != REGION_INTERSECTS)
+		addr = arch_memremap_ro(offset, size);
+
+	if (!addr && (flags & MEMREMAP_WB)) {
 		/*
 		 * MEMREMAP_WB is special in that it can be satisfied
 		 * from the direct map.  Some archs depend on the
@@ -103,7 +113,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
 	 * address mapping.  Enforce that this mapping is not aliasing
 	 * System RAM.
 	 */
-	if (!addr && is_ram == REGION_INTERSECTS && flags != MEMREMAP_WB) {
+	if (!addr && is_ram == REGION_INTERSECTS &&
+	    (flags != MEMREMAP_WB || flags != MEMREMAP_RO)) {
 		WARN_ONCE(1, "memremap attempted on ram %pa size: %#lx\n",
 				&offset, (unsigned long) size);
 		return NULL;
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
