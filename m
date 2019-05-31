Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4077531047
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aiu7B+YADmxKTcFSfCX81AtiKj2HO3t6YsdpdcvEP64=; b=kkNl6fcv5C8lhvMim18k9QjtGQ
	GVhyf8XTJIccA3pfeM3nJJqyK7v8sGge2W8MUw+gQ7q9y0SPUJKQZAJrsID1HmLLpc4gimcWCsNfW
	xcJ5pTTGuM9XgtSML8nq2TT7vi3aUkdWkcKgHBf7ZHS4utQROGV4zomGd+xjaQrSub2uqyX/cCDYq
	PBs6hyTjDsiIv6a+q81Mqnz6aSN4wSnPaQugfiR9+bWDGnUGofdDTr8KbJrqoA1ghGqaEnIdOyNBv
	IF4Zep0QS3StcO9YtyFmLBeyyZ6qkjt0+eU3sSyCpMqLnecohSnUYBZoTfVJiv7hFWZTzXLIdPzeI
	pHL/Twkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWibp-0007bP-HG; Fri, 31 May 2019 14:34:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibG-0006z7-0K
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61CED165C;
 Fri, 31 May 2019 07:33:40 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8AFE53F5AF;
 Fri, 31 May 2019 07:33:38 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 2/6] mailbox: arm_mhu: reorder header inclusion and drop
 unneeded ones
Date: Fri, 31 May 2019 15:33:16 +0100
Message-Id: <20190531143320.8895-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073342_225005_A0308B04 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Mark Brown <broonie@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch just re-orders some of the headers includes and also drop
the ones that are unnecessary.

Cc: Jassi Brar <jaswinder.singh@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/mailbox/arm_mhu.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/mailbox/arm_mhu.c b/drivers/mailbox/arm_mhu.c
index 64d85c6a2bdf..747cab1090ff 100644
--- a/drivers/mailbox/arm_mhu.c
+++ b/drivers/mailbox/arm_mhu.c
@@ -13,16 +13,13 @@
  * GNU General Public License for more details.
  */
 
-#include <linux/interrupt.h>
-#include <linux/spinlock.h>
-#include <linux/mutex.h>
-#include <linux/delay.h>
-#include <linux/slab.h>
+#include <linux/amba/bus.h>
+#include <linux/device.h>
 #include <linux/err.h>
+#include <linux/interrupt.h>
 #include <linux/io.h>
-#include <linux/module.h>
-#include <linux/amba/bus.h>
 #include <linux/mailbox_controller.h>
+#include <linux/module.h>
 
 #define INTR_STAT_OFS	0x0
 #define INTR_SET_OFS	0x8
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
