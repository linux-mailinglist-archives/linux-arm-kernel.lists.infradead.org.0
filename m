Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF6F21BFE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOkB2VYUpklKf7L0Zlmju6L5/S4YpDT2tOec/cX2f00=; b=YPuxUih7gWmfEl
	zlitZN1Yxl4wj5PT3aSSHS4Lsul3nd1yZejoYnWLHCdcToFjy1L1fNwoBfVjE5nugwavZeKVBOrFB
	jSOEuDVP/E9Lesq7B0k5I7Pxy/1I0L7AEsuTuQuuySL9Am8+zDWLaUZO0/n61cyH7YW91AsfUQ1/B
	qWKH4xVwygScI3ch+43n8gi/gGNOYOSd510l7BKo2YXHBXrBM2SYwc3DFH5IRWYf9LPINUQXjN5no
	XCPlh/myrz+smsw/0MswCh7eybh9MkrV1dwaOt0ijdiT33JoF9uNRSK9RVbu7S84Usv7iSXwgU70I
	hvNx8sJFDgQFJ0Y9tFtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg25-00085i-5S; Fri, 17 May 2019 16:48:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1S-0007Sr-9G
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id r18so3581646pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CqKPKWAOqqK2fAPeJ19AHkkbMpccuE5V5twNlxY2yj4=;
 b=l5axbd7GCjC8UzCQX6le433fYI5Gy+AP17dysVHzpJd5K1V3v/AHW4gWkJNCz7RvkX
 U/Da5n4quZkQBum7RcbcB/GoUQGFlxfPOuZ2L8sPSnntSKwbhQY1PEaQHXxJ91PjHzMn
 phj4VIypQewbe385bAXnxglk7G8q2eho9KcGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CqKPKWAOqqK2fAPeJ19AHkkbMpccuE5V5twNlxY2yj4=;
 b=KfrLntm6nHXKcvy+zNsTGr4DFHNcMenKhX8BJTTnMuQZSDqVzT4OYToo6zCX46jEx0
 hFFPQmwbP+DhlRXGOZio8THXDl3CvUwF9seQXRID4jpMgZU982FqYYpxO3/4lUavNcFK
 yycrOxCZSIRv7MSljuvLYA5mrl1Sks5zD9FaJInGXawdwT6nxQ/m0cKWfh5ea5T8/mcM
 0D5dT8mJjdFMZuRQECqM9UXuwg8tqpNWhZ/ONKminFDXGVbX/x6PzqTRkdIonIq9uYI5
 hxCzG8uNSEjrNbarO9FoC2aHqpdR/LJ8AcJQ78aeIiTtNIho5DyOkSc3/xieQrfog/Q6
 CXRw==
X-Gm-Message-State: APjAAAXl8vGzMiOFDEo90IQjiZw5HL0uYas6v7vSeR/rY3u9mxWdvgTb
 mvmAhTM0EzYpijL3guQ+/H53pg==
X-Google-Smtp-Source: APXvYqyAp8uRsjVVx2sdnL7aIY5IBJRUMYDjonUYiJUCfdadaA7UoNqRxgke+HnZZ6Yy3quetwwBow==
X-Received: by 2002:a17:902:ac98:: with SMTP id
 h24mr1729914plr.265.1558111673755; 
 Fri, 17 May 2019 09:47:53 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:53 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 3/5] memremap: Add support for read-only memory mappings
Date: Fri, 17 May 2019 09:47:44 -0700
Message-Id: <20190517164746.110786-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094754_320603_3B55FDAF 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
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
index f7525e14ebc6..8d3cf74a32cb 100644
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
 		 * MEMREMAP_WB is special in that it can be satisifed
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
