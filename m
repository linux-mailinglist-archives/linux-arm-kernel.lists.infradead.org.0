Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3E3AEF42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbJAl9DqQ7IyeITrr3f31uQcKHvhctil5ttLTpjIvIk=; b=K+6mdPRXhuW1uj
	nKS5cqE4LZ6Gdv15XP0Qp1xbyqjwrcAA/4CaYo02EqshDRgqXTA/Szr2py8vX4jwdFNJBr1vxSWpB
	1Dy9+6c6LW5xdFJCEMtcEKDMTVW3oUHLot+8MTgHAzm5XlNzwGJ+OgVmDWODhx+trZgzfrmd5dYPV
	68Nm+iGoSh3BF0hRuZEO84GJYUtcN7dLceJ50LCpounoYtn2DkhAnVAtcE8IwIvhwLipnKWZmeUwS
	gBkvHbKr2RT2mI/GaJkLfstRhphsy7kAfyImkcpoSGgsUgSYejAjEKfqvrI5Ku3OUnbPN4r15rZZl
	MyubACey3V/4shQ/LAyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iiL-0004z7-B8; Tue, 10 Sep 2019 16:09:57 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ihY-0004LF-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:09:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id y22so11816970pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YIkLTnrkWt/EuuPaM/5KgusucJyV+/pu2XQTD6+l1B4=;
 b=foUXLvfXEBZ8ItH2km73P/GyOobcyj/2AlkrAl5hS06ssjzVy3VMEdus9dZJ3XfRko
 n3d1oj1yZXYkG2g88eBnSetaXilib5WWGGyXSHK7SjUDXQXeIo8DFzlrCmNLoyCGk1MI
 BMHL2SWL8Fvoc+XCOlcilC9vuG29PN8KWwjVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YIkLTnrkWt/EuuPaM/5KgusucJyV+/pu2XQTD6+l1B4=;
 b=h8OW9cdl1vvPn+0fu5sccZeoLKOEZ071fixZU3Nu3MKUZEiPueyO45rVqdkEIC+ouT
 hl26fqv38wajjpBGoiEz7yZmvO/MuUrzijIRTM4x1bmeYLBRB/txSkAto3V3hw/zw9pY
 R7uT8XdtG+gCsBKikl5vWQhbYG97LE3JE+n3UnFtRXua451I48bjINllcd6r5W/DMmWW
 BRr5fRNPTXnLXve0asBIethiTbUuodD3J0KdzyH/nSrqExB2O/G0Fp8tjlQTd9AjfbxC
 efXUrtO3KPv9nVqdCvUn5HpF7Exz6F4IdDInnxtksN4PtYZgg1Jg1b99od+2HmP+fdp+
 dkOA==
X-Gm-Message-State: APjAAAXKS8Hdda9VKGf1f+sLHwIPPKwcMfydQUWUDvMD2IAOFe44UHLR
 aTb+Xh5+8Vq1Fn/XbI4OPGc9Yw==
X-Google-Smtp-Source: APXvYqxx4DKXHSRmc5pwbVIhiOSXS9FCZbm2hSlKbDrWsuFklc4KYT0VzXEO62KHo4IIpzzRXcJKAg==
X-Received: by 2002:aa7:81d1:: with SMTP id c17mr35893243pfn.219.1568131747300; 
 Tue, 10 Sep 2019 09:09:07 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 09:09:06 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 3/5] memremap: Add support for read-only memory mappings
Date: Tue, 10 Sep 2019 09:09:01 -0700
Message-Id: <20190910160903.65694-4-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
In-Reply-To: <20190910160903.65694-1-swboyd@chromium.org>
References: <20190910160903.65694-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090908_865994_661CAB78 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 kernel/iomem.c     | 20 +++++++++++++++++---
 2 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/include/linux/io.h b/include/linux/io.h
index accac822336a..15a63efcd153 100644
--- a/include/linux/io.h
+++ b/include/linux/io.h
@@ -148,6 +148,7 @@ enum {
 	MEMREMAP_WC = 1 << 2,
 	MEMREMAP_ENC = 1 << 3,
 	MEMREMAP_DEC = 1 << 4,
+	MEMREMAP_RO = 1 << 5,
 };
 
 void *memremap(resource_size_t offset, size_t size, unsigned long flags);
diff --git a/kernel/iomem.c b/kernel/iomem.c
index 62c92e43aa0d..6d76b7398714 100644
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
@@ -45,7 +52,7 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
  * @offset: iomem resource start address
  * @size: size of remap
  * @flags: any of MEMREMAP_WB, MEMREMAP_WT, MEMREMAP_WC,
- *		  MEMREMAP_ENC, MEMREMAP_DEC
+ *		  MEMREMAP_ENC, MEMREMAP_DEC, MEMREMAP_RO
  *
  * memremap() is "ioremap" for cases where it is known that the resource
  * being mapped does not have i/o side effects and the __iomem
@@ -53,6 +60,9 @@ static void *try_ram_remap(resource_size_t offset, size_t size,
  * mapping types will be attempted in the order listed below until one of
  * them succeeds.
  *
+ * MEMREMAP_RO - establish a mapping whereby writes are ignored/rejected.
+ * Attempts to map System RAM with this mapping type will fail.
+ *
  * MEMREMAP_WB - matches the default mapping for System RAM on
  * the architecture.  This is usually a read-allocate write-back cache.
  * Moreover, if MEMREMAP_WB is specified and the requested remap region is RAM
@@ -84,7 +94,10 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
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
@@ -103,7 +116,8 @@ void *memremap(resource_size_t offset, size_t size, unsigned long flags)
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
