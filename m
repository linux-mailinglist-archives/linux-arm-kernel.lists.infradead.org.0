Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DC51F1488
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YOGxsr3JQTJxsGj3NpgiB7SiruGPhiMSzHd99ZgW7ag=; b=J5+df+P2rOeF1XdapNFz+ywK+E
	pQnJPEDLH0nolCV+DnpdpGURomdDMZw4LKloKhTq7k+kl693L5SqR5WVoVWFwgQ9oovY7lpWUPfJc
	+SPT3k2Xz83Sr1sAU8qKu1+G8+OQYNpYKJ+3+fHYW52lLIEfRjM+ltuxtABVWS0eeJWvYNVoZ5rgM
	XmBEO1mIUICD3nScEJV7cdelLoUwUlWJ+fSpZL2SckL95akfz5/9JXibJdFfWnJ/mycJkUvx24JL8
	jbTh/PepgQ3HCrZnOriTnoy7y1va62n59+LrXrmOrUQRwisit1hiUEzcWAbk3DvpsdQp9fF/2xEc0
	JIyvjemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDBl-00043m-Ro; Mon, 08 Jun 2020 08:31:25 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDBD-0003hF-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:30:52 +0000
Received: by mail-pj1-x1044.google.com with SMTP id s88so5704005pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Sr4O+in7E3S8yGpfVSAumnolrH/mtR4MAGw7n2lSUi4=;
 b=moptvi0DYUIGze0sxGapOFQzHdn34hE207jfRTpbHONsJVGMYclaW933o/av3oG8CG
 Vuv/KoVfx1AI8AGmzrW5DacLpYSDCCa9nfxWdTJwyxWjNDMDYdnICwZh5brGMM8r1ZiT
 OAA9MmaR4rVNiQXY9uRhwIOejfHm/uYYEGMUMgw3dT+TwileefpJNWtOdCYsC45kFOLa
 +DdgPWAS2I6SbIwUspfrAqofBTLRIzBZ2JSR4vR9FnTaCKrDiB0a5aLiuiXW1FhyfV3s
 pIksOg51djhWhTBVsnrpqMjoUtQFLHvgFgzCkrqu48gxnjaStKkSDhCPxHkBhKTk8KyV
 HoWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Sr4O+in7E3S8yGpfVSAumnolrH/mtR4MAGw7n2lSUi4=;
 b=OLnVetPQAtaqzyc6KKXDKnJwsZR8MtBGTuOYHlWzKpIWmiQd3Xmzb50JZjPTQuGESM
 l6fu92Qh/dZHzYFqE/hos03h2sqBRGbJ1C9zzJO6cnNO7BMTBIKbWItLuf6Li/KRX/4e
 d0y7ODkV4WO+Xnd+xkaUtw+L2XVB+n5lB2HCgl0t/witn860fDlfmnws99qn187+sLJY
 BWPOa03lEYnV8wUdfWr7F0ZQtvhPjTaOj72zbIK50NyYkBS9h3htpPVMawfDmGtYvHH9
 H9j4VUv4NpPp3yuhbXA12+C22F/t6c/B+biaiR4wFThFNXxAXYlPbIl1EPAullwvC9Sa
 vB4A==
X-Gm-Message-State: AOAM533cyXAif/TmOL3NgVCSjTbdIVHM3kpS9371xBBbHOXdcc6p8HcU
 B3wXgN2LxP/1ooLVGtYPmek=
X-Google-Smtp-Source: ABdhPJwWeNEIRHE87XqxZWvoMrcDW/ma0+wwzJWzdrh9mEH1xMwsnwgl+Nww/37mNzaxFJbgWrKhDw==
X-Received: by 2002:a17:90a:cc5:: with SMTP id
 5mr15552855pjt.112.1591605050563; 
 Mon, 08 Jun 2020 01:30:50 -0700 (PDT)
Received: from fmin-OptiPlex-7060.nreal.work ([103.206.191.42])
 by smtp.gmail.com with ESMTPSA id 27sm1210829pjg.19.2020.06.08.01.30.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 01:30:50 -0700 (PDT)
From: dillon.minfei@gmail.com
To: robh+dt@kernel.org, mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
 linux@armlinux.org.uk, vladimir.murzin@arm.com,
 kstewart@linuxfoundation.org, allison@lohutok.net, info@metux.net,
 tglx@linutronix.de
Subject: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
Date: Mon,  8 Jun 2020 16:30:38 +0800
Message-Id: <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_013051_543437_58A05028 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dillon.minfei[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, dillon min <dillon.minfei@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: dillon min <dillon.minfei@gmail.com>

Currently, we use dma direct to request coherent memory for driver on armv7m
platform if 'cacheid' is zero, but dma_direct_can_mmap() is return false,
dma_direct_mmap() return -ENXIO for CONFIG_MMU undefined platform.

so we have to back to use 'arm_nommu_dma_ops', add use_reserved_mem() to check
if device support global or device corherent memory. if yes, then call
set_dma_ops()

Signed-off-by: dillon min <dillon.minfei@gmail.com>
---
 arch/arm/mm/dma-mapping-nommu.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index 287ef898a55e..e1c213fec152 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -14,6 +14,7 @@
 #include <asm/cacheflush.h>
 #include <asm/outercache.h>
 #include <asm/cp15.h>
+#include <linux/of.h>
 
 #include "dma.h"
 
@@ -188,6 +189,31 @@ const struct dma_map_ops arm_nommu_dma_ops = {
 };
 EXPORT_SYMBOL(arm_nommu_dma_ops);
 
+static bool use_reserved_mem(struct device *dev)
+{
+	struct device_node *np;
+
+	np = of_find_node_by_path("/reserved-memory/linux,dma");
+
+	if (np &&
+		of_device_is_compatible(np, "shared-dma-pool") &&
+		of_property_read_bool(np, "no-map") &&
+		of_property_read_bool(np, "linux,dma-default")) {
+		/* has global corherent mem support */
+		of_node_put(np);
+		return true;
+	}
+
+	np = of_parse_phandle(dev->of_node, "memory-region", 0);
+	if (np) {
+		/* has dev corherent mem support */
+		of_node_put(np);
+		return true;
+	}
+
+	return false;
+}
+
 void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 			const struct iommu_ops *iommu, bool coherent)
 {
@@ -206,6 +232,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 		dev->archdata.dma_coherent = (get_cr() & CR_M) ? coherent : true;
 	}
 
-	if (!dev->archdata.dma_coherent)
+	if (!dev->archdata.dma_coherent || use_reserved_mem(dev))
 		set_dma_ops(dev, &arm_nommu_dma_ops);
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
