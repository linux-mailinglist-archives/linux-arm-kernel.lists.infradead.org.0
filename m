Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E51B160810
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4a/Aq3dfYT7SJduDuBmsCUVodLz33ah0zRbrKoKWUCA=; b=nY6
	67HIiySGLW4oTuRPRza4VerL+AUJKimcm9STr9kg6quJlqhtj9GlEE7mqHpIMevn1iv6wFIZHGDWz
	9SvKD/lThqXNdxME6uwqaoxdK8rFloBAplJnnnEV/QOXZoETkLuW0vBRxY3YMJ4JwegMgAd7kiSBY
	lhcX2Eyc51boHrR9IzkSQYi92rMo9/DwxDg55cm41IepQyEuarQjEj3Q0tTJlGdkz4nHXvMtQDbGb
	j5b4OfCFLSd4/DG5iB8hW/toDu9XLxgMyhWicebnzgE1wWPuS258DQzVDRbFN++xx/9w4fOxGWsXl
	Ll6xM+AJQnsIah8NdbYTt1V9JbK0oQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W1s-0008C8-D8; Mon, 17 Feb 2020 02:21:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3W0h-000766-Ej
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:19:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5EC701A1E03;
 Mon, 17 Feb 2020 03:19:42 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2240C1A0018;
 Mon, 17 Feb 2020 03:19:37 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8AF0B402AB;
 Mon, 17 Feb 2020 10:19:30 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, robh@kernel.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] input: keyboard: imx_sc_key: Remove unused includes
Date: Mon, 17 Feb 2020 10:13:56 +0800
Message-Id: <1581905636-25830-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181947_652027_5A5A390F 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing in use from device.h/init.h/property.h, remove them.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/input/keyboard/imx_sc_key.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/input/keyboard/imx_sc_key.c b/drivers/input/keyboard/imx_sc_key.c
index 5379952..193c534 100644
--- a/drivers/input/keyboard/imx_sc_key.c
+++ b/drivers/input/keyboard/imx_sc_key.c
@@ -4,9 +4,7 @@
  */
 
 #include <linux/err.h>
-#include <linux/device.h>
 #include <linux/firmware/imx/sci.h>
-#include <linux/init.h>
 #include <linux/input.h>
 #include <linux/interrupt.h>
 #include <linux/jiffies.h>
@@ -14,7 +12,6 @@
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
-#include <linux/property.h>
 
 #define DEBOUNCE_TIME				30
 #define REPEAT_INTERVAL				60
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
