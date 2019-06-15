Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C846EF6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 10:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F9C61HHmNpDgaoxc8RRRmeT0M6NjAgNse01CcpjoOOM=; b=UeG6d960GdzLES
	453y1iCioCCLsn11fcA/3yWSt3r9YJNnVgVFxxNMYtwy2+GrvTa4gfq0vPiZpnnCY6BKE+JyoUyZK
	Y+xIowNnmz1PfPDJNGjKR305eunBMnEAZ3qKfWkDp1A0suGk9jVl1CHtO+x3caV4h0xeqnIA3G9MB
	5Sa4pfrj761XXPIYd15ZJGR0iHGfFI5Nm+qaHVKgSlls9OHz+7/ztI880tPKb4ebdxLhWqsDPgpYz
	aOnXOuNzRAeVN9InkA/POp2cEibpHDIPK/R6fkwBVOIAZuLgs5qEgFSWZS9oNlZEz7j2Ps0nLkylX
	G/+oCfLgHJp9Qp0+wYgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc3yp-0005fe-Bh; Sat, 15 Jun 2019 08:24:07 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc3yZ-0005ek-74
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 08:23:53 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D11044BB0A4B7A6B23F0;
 Sat, 15 Jun 2019 16:23:39 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Sat, 15 Jun 2019 16:23:33 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-acpi@vger.kernel.org>
Subject: [PATCH] MAINTAINERS: Update my email address
Date: Sat, 15 Jun 2019 16:21:12 +0800
Message-ID: <1560586872-40099-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_012351_645268_B8E8ACB9 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Hanjun Guo <guohanjun@huawei.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The @linaro.org address is not working and bonucing, so update the
references.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 57f496c..2fed10f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -364,7 +364,7 @@ F:	drivers/acpi/fan.c
 
 ACPI FOR ARM64 (ACPI/arm64)
 M:	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
-M:	Hanjun Guo <hanjun.guo@linaro.org>
+M:	Hanjun Guo <guohanjun@huawei.com>
 M:	Sudeep Holla <sudeep.holla@arm.com>
 L:	linux-acpi@vger.kernel.org
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
