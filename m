Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703B169C67
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 03:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fy/r448LbRoBaYRRnlorHikxmj45mg9hX+bCF4H7sXo=; b=EYf4He67phWWT5
	UVPNR0jlYDDNPNugB74CqKPiubZAa+t/T77neJBTjkxUxR+CNbD7LiWZ2SCuCMAO3OXgzZe5ZZY1q
	Yxr0StXR1Yw4g3HTq4HjFquaPziAcsphwclic9szZLXyqWQyqIMIkADfIi/pnK5aIWSFFiyE+uYQG
	K0SzlXSUh/ZvIgSlH7C+dtnk7gFfM9ERhbKD/QX26C1GeAkzta/mZ9T0k/GRfpI4B5RP2FohVfV/M
	tb9mzlewqqWdSR50I9L0XYd839IggUL8nsC+y4uK652de9oKJwm0BZMpNPRyPw02kol2Q4AxW77Ch
	80FncGS24fha6MYPGv1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j63qA-0002Gx-59; Mon, 24 Feb 2020 02:51:26 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j63q1-0002Fv-14
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 02:51:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 08295B1E631B9B876FB6;
 Mon, 24 Feb 2020 10:51:01 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Mon, 24 Feb 2020 10:50:52 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>, <maz@kernel.org>
Subject: [PATCH] irqchip/gic-v3-its: Clear Valid before writing any bits else
 in VPENDBASER
Date: Mon, 24 Feb 2020 10:50:29 +0800
Message-ID: <20200224025029.92-1-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_185117_633686_418C9FCB 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 Yanlei Jia <jiayanlei@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Valid bit must be cleared before changing anything else when writing
GICR_VPENDBASER to avoid the UNPREDICTABLE behavior. This is exactly what
we've done on 32bit arm, but not on arm64.

This works fine on GICv4 where we only clear Valid for a vPE deschedule.
With the introduction of GICv4.1, we might also need to talk something else
(e.g., PendingLast, Doorbell) to the redistributor when clearing the Valid.
Let's port the 32bit gicr_write_vpendbaser() to arm64 so that hardware can
do the right thing after descheduling the vPE.

Cc: Yanlei Jia <jiayanlei@huawei.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm64/include/asm/arch_gicv3.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 25fec4bde43a..effe66e1ca58 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -143,7 +143,18 @@ static inline u32 gic_read_rpr(void)
 #define gicr_write_vpropbaser(v, c)	writeq_relaxed(v, c)
 #define gicr_read_vpropbaser(c)		readq_relaxed(c)
 
-#define gicr_write_vpendbaser(v, c)	writeq_relaxed(v, c)
+#define gicr_write_vpendbaser(v, c) do {		\
+	u64 tmp = readq_relaxed(c);			\
+							\
+	/* Clear Valid before writing any bits else. */	\
+	if (tmp & GICR_VPENDBASER_Valid) {		\
+		tmp &= ~GICR_VPENDBASER_Valid;		\
+		writeq_relaxed(tmp, c);			\
+	}						\
+							\
+	writeq_relaxed(v, c);				\
+} while (0)
+
 #define gicr_read_vpendbaser(c)		readq_relaxed(c)
 
 static inline bool gic_prio_masking_enabled(void)
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
