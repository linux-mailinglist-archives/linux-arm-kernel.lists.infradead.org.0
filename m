Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697303C524
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=To4DUIM9l9leCwCfZVzglRQaxqzTV1rm2gYYbjzFsJ4=; b=EpQ6f2iyjXJBWA
	jFB9YMlDNKn5t1TJgYxgxaPdc0IpHod/9U9RA+C6jxhBE62zTn7qMJZFaMFVJehjtDYEja0PpWjiw
	16QhCDRkW4axib6GrUnjwqJA8Xs30mf5QyHmTGfs+3YrYiYtzwhmFQIsqsWTJpKMBN9UTt0k9VUcb
	6lqdafVXnXuykwsO3Jo44mPjDTKiZ0De1L+IfyjJJo2Qh4KA2EKBjUwmRPQ0WFIviTwrAUutpIMp2
	8CmXrTy/ecb5gCZwJb4SUm+ZnExbceaqdabCrXw+oNODbjs3wHiUeyxuJgNa8/PK7J3tw4lQZo3uR
	v0SMjmsQmhTNuYL1gJLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habFz-00042w-L3; Tue, 11 Jun 2019 07:31:48 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habE5-0001Cx-TU
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:29:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 3A1EE104F7F;
 Tue, 11 Jun 2019 09:29:48 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ykM-gJ9HGNYC; Tue, 11 Jun 2019 09:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E8CDB104F82;
 Tue, 11 Jun 2019 09:29:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id iCoJZXaH6guT; Tue, 11 Jun 2019 09:29:27 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id E5B7C104F81;
 Tue, 11 Jun 2019 09:29:24 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 5/6] ARM: pxa: Switch to SPDX header
Date: Tue, 11 Jun 2019 09:29:20 +0200
Message-Id: <20190611072921.2979446-6-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611072921.2979446-1-lkundrak@v3.sk>
References: <20190611072921.2979446-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002950_267014_623174D5 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Daniel Mack <daniel@zonque.org>,
 Wei Xu <xuwei5@hisilicon.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original license text had a typo ("publishhed") which would be
likely to confuse automated licensing auditing tools. Let's just switch
to SPDX instead of fixing the wording.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-pxa/littleton.c | 5 +----
 arch/arm/mach-pxa/pxa-dt.c    | 5 +----
 arch/arm/mach-pxa/saar.c      | 5 +----
 arch/arm/mach-pxa/tavorevb.c  | 5 +----
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-pxa/littleton.c b/arch/arm/mach-pxa/littleton.c
index 464b8bd2bcb9..5c78bf53be5c 100644
--- a/arch/arm/mach-pxa/littleton.c
+++ b/arch/arm/mach-pxa/littleton.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-pxa/littleton.c
  *
@@ -9,10 +10,6 @@
  *
  *  2007-11-22  modified to align with latest kernel
  *              eric miao <eric.miao@marvell.com>
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-pxa/pxa-dt.c b/arch/arm/mach-pxa/pxa-dt.c
index aa9b255f5570..e5508e04fadc 100644
--- a/arch/arm/mach-pxa/pxa-dt.c
+++ b/arch/arm/mach-pxa/pxa-dt.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-pxa/pxa-dt.c
  *
  *  Copyright (C) 2012 Daniel Mack
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/irq.h>
diff --git a/arch/arm/mach-pxa/saar.c b/arch/arm/mach-pxa/saar.c
index 834991034f30..a5f5bc5c20fb 100644
--- a/arch/arm/mach-pxa/saar.c
+++ b/arch/arm/mach-pxa/saar.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-pxa/saar.c
  *
  *  Support for the Marvell PXA930 Handheld Platform (aka SAAR)
  *
  *  Copyright (C) 2007-2008 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/module.h>
diff --git a/arch/arm/mach-pxa/tavorevb.c b/arch/arm/mach-pxa/tavorevb.c
index 4b38e821ac9c..129b7de675a7 100644
--- a/arch/arm/mach-pxa/tavorevb.c
+++ b/arch/arm/mach-pxa/tavorevb.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-pxa/tavorevb.c
  *
  *  Support for the Marvell PXA930 Evaluation Board
  *
  *  Copyright (C) 2007-2008 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/module.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
