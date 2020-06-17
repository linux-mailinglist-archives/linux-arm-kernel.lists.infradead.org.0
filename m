Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36AB1FCC27
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kt6TozDEArWP3Et+b7/AcsO4Cq6rmyi6g4+KO6nPnlQ=; b=rmm7X7dPmxAbZ9
	/pSaF22rmD8hakLgN0gEE4c5k9obM32/GC7JKbwrCDE3KKy1gY2V6o2TKrZfrMZ8+1mn8DZ0BywHu
	eoOqR9Z2xtZACZrmm/Lg+ThhsbrmMdlhZ0B4yxrYlxzPV9mKuGLd9GhQ4vkJxF6S3o/PMyK/R+ceo
	IMCWrIaBaAyKDh+TjWUkgNd2JgMUtELmOWhWZHnvKHDKPVIIXrGgpI60/lzt1WgXpMfy0zqktSd8w
	Z4/T0qa1/lr5tiSRp0GlVp0tj1ZhlKNWW7VNM+WgMdnWcfxFHCOXdw4VAJx67DW2R8DITFCKwD9cU
	pXME3eHQWGpDqMaZHp0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlW8Z-0008U4-Az; Wed, 17 Jun 2020 11:21:47 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlW8R-0008TL-GB
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:21:41 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 923AB7197DF9F5C1D05F;
 Wed, 17 Jun 2020 19:21:30 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Wed, 17 Jun 2020 19:21:22 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] MAINTAINERS: Include drivers subdirs for ARM PMU PROFILING
 AND DEBUGGING entry
Date: Wed, 17 Jun 2020 19:17:28 +0800
Message-ID: <1592392648-128331-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_042139_702221_B39837FD 
X-CRM114-Status: UNSURE (   5.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: zhangshaokun@hisilicon.com, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ensure that the ARM PMU PROFILING AND DEBUGGING maintainers are included
for the HiSilicon PMU driver.

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..24f377f1d76c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1425,7 +1425,7 @@ F:	arch/arm*/include/asm/perf_event.h
 F:	arch/arm*/kernel/hw_breakpoint.c
 F:	arch/arm*/kernel/perf_*
 F:	arch/arm/oprofile/common.c
-F:	drivers/perf/*
+F:	drivers/perf/
 F:	include/linux/perf/arm_pmu.h
 
 ARM PORT
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
