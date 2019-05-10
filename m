Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 439EB19B3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:16:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDblzwVmgXC0WOQJUjxVVUSQUMAtd1xKOr49N/pSe6U=; b=QVt0ZKRJYwSOzl
	fFhciO9oMvRCNX9MlT8IGZUC00tAMPDcaQQ1FJjrIkMYqtsguhvmHx9l75kXACmagjofPudyukiTr
	1+r0um8HvW3/LKKn53fRzUttUIcJHNXakOxzKZq4hWU0V89NMyVZK0z5jo+4nWY9FFIzxK2YCRBiT
	71FXvk6DZlByMC2rm/csF8j0v3M7kOqvDVViJwUnfeUayriU0c1SqKMQKiDfDIjyPj8qd6FvYnhy8
	I7/q3aXDQW5jHKLJtPi2DHiP0DFx80gRP2nkcq4x5y6AlAOGPHW50iehnAZCAx8ViXoayP7uKHE3a
	Ppippegqyxuq1PQifIgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2Zk-0007Jn-9h; Fri, 10 May 2019 10:16:24 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2ZI-0006rF-Bf
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:16:00 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 4F167891B0;
 Fri, 10 May 2019 22:15:41 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483341;
 bh=v9Aw/YaE6GdbUbtrxy0F2tvVWbTIe52/yaBuyQsceOk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=wb2zQMJieaPnL/5Jpr6mqs1Owe21amgzlyuUkdTX0d9kkMmbOdzlVnwgfGdVHk+BM
 518LQ1vOSalblu+bDNvgQYiNFzUOXte4HGGywCR4C+m4OvafK3w7j0uv9uh5vKl9Si
 x/4lksomABVYvJ8vVh8sHBdxz1H5SkQU5ATGVe7D2IPJ2V3k/KJAk8WOMucBCzHQMj
 NKLjqznwLCm3CTtjdP/dY3uGEWrHjpZlpaKYNB7w1JLBdY37920z4blX9YajE2JfmE
 Oz05pAVG4dKiskt2xquRPQ4JJGyMWYYB2Cqg+lmGIOyBgRlEj2ZNIQiIWoPu55QSY9
 fkplyi7w3zf7g==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4c0002>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id D1D8A13EF8C;
 Fri, 10 May 2019 22:15:39 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 66CA71E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 2/9] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Date: Fri, 10 May 2019 22:15:29 +1200
Message-Id: <20190510101536.6724-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_031556_857518_DD73A3CA 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Gregory CLEMENT <gregory.clement@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

The macro name is too generic, so add a AURORA_ prefix.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Reviewed-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/include/asm/hardware/cache-aurora-l2.h | 2 +-
 arch/arm/mm/cache-l2x0.c                        | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/hardware/cache-aurora-l2.h b/arch/arm/include/asm/hardware/cache-aurora-l2.h
index c86124769831..dc5c479ec4c3 100644
--- a/arch/arm/include/asm/hardware/cache-aurora-l2.h
+++ b/arch/arm/include/asm/hardware/cache-aurora-l2.h
@@ -41,7 +41,7 @@
 #define AURORA_ACR_FORCE_WRITE_THRO_POLICY	\
 	(2 << AURORA_ACR_FORCE_WRITE_POLICY_OFFSET)
 
-#define MAX_RANGE_SIZE		1024
+#define AURORA_MAX_RANGE_SIZE	1024
 
 #define AURORA_WAY_SIZE_SHIFT	2
 
diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index a00d6f7fd34c..7d2d2a3c67d0 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -1364,8 +1364,8 @@ static unsigned long aurora_range_end(unsigned long start, unsigned long end)
 	 * since cache range operations stall the CPU pipeline
 	 * until completion.
 	 */
-	if (end > start + MAX_RANGE_SIZE)
-		end = start + MAX_RANGE_SIZE;
+	if (end > start + AURORA_MAX_RANGE_SIZE)
+		end = start + AURORA_MAX_RANGE_SIZE;
 
 	/*
 	 * Cache range operations can't straddle a page boundary.
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
