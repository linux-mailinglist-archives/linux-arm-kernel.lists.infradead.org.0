Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154166653E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 05:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shY6BM4wiYdxYJ7elrOpIijPIy3+4UQjnrk3xUSj5VY=; b=mGnzAsa6nJIqf9
	DYbeXIKg8x2j8zTQDIaL3020hCX2uY6QnjA1eQ+hPv5yOszg1AUwANjTKBzpu3d3Yw+78azecRX5r
	pDeDePjH73NYzz/KYMU2GpskeWv+ECEK8J5xzPOZlJQwvy/0CiyDUDmT7/AELgzzIJT0IahW4NXr7
	eI0G/hyO0RhwgiJx5YPP/+rUha2yXg4PblN/1uIJJI0QxPuHlTBRz0JCMZCKhg6/gHPAqmX/0z2m+
	joeQtxzglYAfhNtP2YOe+yySEnsnCnLrY8BV9FXeVQGuLC4ndTxyJmp8yV9ZNfaMUROpwmy6N6x3+
	irGFPeexRVD98PMiFh1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlmZ5-0007o5-R8; Fri, 12 Jul 2019 03:49:43 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlmYk-0007gW-TS
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 03:49:24 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 96042891AD;
 Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1562903354;
 bh=fwvS8jv11krqvXlQA2Z/qa+UCaV2Q8ZSN+LH4FkYBnw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=wXpa/Ec/bqiUJzEFtX90h1O2Nglu63ADC+sYLIU2Bi/sYkujjX2rd69a+CE5evo//
 SVdXbvUXlmyyRSZLNbeiv2BcANWQ0GwpANCormnUupi5jgsPHOIBqJox/kvvyz7R84
 IlLtcJnra6ceJVzTD7JtvT3crnZ27TyTjhSgnQpe5j5e24qPJPduF7aqiLlByNaN6Z
 dFX9vaGbzwSaWgnJuH6/sWAJfllFai4oRbPrgDtEu7JswWFgPM48o79O7+zsGB7oze
 ogq8OzlzRcU/5pKkAIk/l4cqVjf07i38Edz7b3x9aiqj95TyJbeh61efj3qKi4Wkfn
 PNtUyKh2mHmsA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d28033a0001>; Fri, 12 Jul 2019 15:49:14 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id 0981D13EF47;
 Fri, 12 Jul 2019 15:49:16 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 401E01E1D7A; Fri, 12 Jul 2019 15:49:14 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: bp@alien8.de, robh+dt@kernel.org, mark.rutland@arm.com,
 linux@armlinux.org.uk, patches@armlinux.org.uk, mchehab@kernel.org,
 james.morse@arm.com, jlu@pengutronix.de
Subject: [PATCH v9 1/8] ARM: aurora-l2: add prefix to MAX_RANGE_SIZE
Date: Fri, 12 Jul 2019 15:48:57 +1200
Message-Id: <20190712034904.5747-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
References: <20190712034904.5747-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_204923_150401_7AA4BDC2 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 428d08718107..83b733a1f1e6 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -1352,8 +1352,8 @@ static unsigned long aurora_range_end(unsigned long start, unsigned long end)
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
