Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331E919B85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 12:23:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ia3IOBM8P2t0guGyHwO7DYQDblNBe2BWF55/QY+PVY=; b=N9KLl8YIlWxg2X
	iktCpapVbG1kk9fpjws6NJTaNDLu85JzSHGXqRbDGYa+dheJ4HotMuDtPxccV2a6/0LBUJpxIg60v
	NYIGLiTnLTXIGIt09QzJ0/Kp49uiV/OEDpMdCvWc2Y1PXOhFVa/JGB8hytRsSXa52ZAx5AvDkG6Jc
	UZ21DMkN1P8QUzJ7u+yN3QvtAjahAGZ+dpTRM3yBXNZCjSguoLF/RJe6kBj/Ov//oAhBJ8pJ2EimF
	kAvJJmRBAO1TklNoiZ3ZCMGDRAdCtvNK0VKmhCxMP5GdstyP2KGTGyjRDTnv8XIjSsfNi6Ba9CSoY
	PMzz0kkyHEsg7fBxiiMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP2gz-00020r-TQ; Fri, 10 May 2019 10:23:53 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2gk-0001li-Io
 for linux-arm-kernel@bombadil.infradead.org; Fri, 10 May 2019 10:23:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MiPXzREL9W1jwb0qqv3Cp/VmybxETnuh2vjHwP0eucw=; b=IUquMb/yd5SGvkJtEzh7imXdJT
 A1FgAoER4M+qRtPnWHosVJCBrhF2pwIDq9JWWm5e8Nm5N9rqmm1H4wvmzn7wcIco0+ZXLgGTzMl0N
 XZuUGDEjlEuAaFJmPff3lGI5TrL8cYHR1gKWSD/0kxwLL20u+L5cmi5aA2LYWft1CzZiTXgEvDEXE
 WpJX+0upHZckp+rN4Crvi62IV3nsFcA0QlCF7aMzh3jW+EHo9diIdqAw5fC2jZIB3bvwDNbyIK7yq
 JUfjH6W2iXRT5Vz4Hm91ePcL1nI65FkDN+EA2Km4GhoWtF0QyXFnUA4QeSr6QNmon70OzSQJMvFDv
 /0yOpjIg==;
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP2Zj-0004Tc-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 10:16:25 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9C3C3891AB;
 Fri, 10 May 2019 22:15:40 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1557483340;
 bh=MiPXzREL9W1jwb0qqv3Cp/VmybxETnuh2vjHwP0eucw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=WsjCO92j0IOB4jd+tn7TjfIi6I+yo6SCkUbe+smuu+fNk+vV9DMOWr7S98TVt26xw
 y3zv/Oo+NtCJ9VGt2ySw//uhoLOL/utK4wCNkI+hp4awDqO3++AK8OKscb3T27fTIU
 WgdYH36Ob+dS4N1Nea+0/02NEPbQVR5bWHTJETkHDXdFNH3MA3hmHigAESYENpCGNl
 7OKodWgRq+2kws6wOKh2XbeD0yIZiFwCdK3RowAb+dQXO+FFSgeHz0Xd97Ea0yuSGj
 529c2JUlg+jXW0vM+Ke1gESCkbw2Rvdk3mWpHTJaqDbsFm02fwrzk3zEmTMxNE5jKQ
 9z4D8TTuc9FpQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5cd54f4c0001>; Fri, 10 May 2019 22:15:41 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id AF00F13EEF9;
 Fri, 10 May 2019 22:15:39 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 43E741E1D5B; Fri, 10 May 2019 22:15:39 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: linux@armlinux.org.uk, bp@alien8.de, mark.rutland@arm.com,
 robh+dt@kernel.org, mchehab@kernel.org, james.morse@arm.com,
 jlu@pengutronix.de, gregory.clement@bootlin.com
Subject: [PATCH v8 1/9] ARM: l2c: move cache-aurora-l2.h to asm/hardware
Date: Fri, 10 May 2019 22:15:28 +1200
Message-Id: <20190510101536.6724-2-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
References: <20190510101536.6724-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_111623_661613_347EF489 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Gregory CLEMENT <gregory.clement@free-electrons.com>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

This include file will be used by the AURORA EDAC code.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Reviewed-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h | 0
 arch/arm/mm/cache-l2x0.c                                | 2 +-
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/{mm => include/asm/hardware}/cache-aurora-l2.h (100%)

diff --git a/arch/arm/mm/cache-aurora-l2.h b/arch/arm/include/asm/hardware/cache-aurora-l2.h
similarity index 100%
rename from arch/arm/mm/cache-aurora-l2.h
rename to arch/arm/include/asm/hardware/cache-aurora-l2.h
diff --git a/arch/arm/mm/cache-l2x0.c b/arch/arm/mm/cache-l2x0.c
index 808efbb89b88..a00d6f7fd34c 100644
--- a/arch/arm/mm/cache-l2x0.c
+++ b/arch/arm/mm/cache-l2x0.c
@@ -30,8 +30,8 @@
 #include <asm/cp15.h>
 #include <asm/cputype.h>
 #include <asm/hardware/cache-l2x0.h>
+#include <asm/hardware/cache-aurora-l2.h>
 #include "cache-tauros3.h"
-#include "cache-aurora-l2.h"
 
 struct l2c_init_data {
 	const char *type;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
