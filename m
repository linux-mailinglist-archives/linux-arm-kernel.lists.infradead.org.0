Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE47D2B4C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zATyFrgKLZJO4FF9cCpQUGKgFxwVRAYtsV+oyStkFo=; b=qpun9fY1QJdfvP
	IAws8gv5vNZyDQDrvQLjdYlOC3BWmdZPFipREj4Rnb4scDM2w2FGLQpzsUhyP7fyWH8MlPlB8FA6b
	jxwiI6q1XuveIATHw4HUPD2WUiWYE/FUYKuBKR3oJ9ljaHDei7ucL0bD0CSFd3ozVJaR6EoMCQWKD
	FPuD+FB1STPsZkW3/D9u5MwnHErOL83kJ71fthyTfMOPlBeAkHVAqaJUnxoQvoPbWzz8QWfnRjGsN
	1xC4IfMyM2EF+tFaUKRkSGxXkdPdz7b/Bw3cXR4FcwYikVbd9aiakZ9X83hugZuTxFQ9IoD5TUGE7
	LO7P8OEc/Udb/ZEARhoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEYv-0006A3-Sm; Mon, 27 May 2019 12:17:09 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEWM-0002NJ-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:14:35 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 17C13812F;
 Mon, 27 May 2019 12:14:48 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 10/12] bus: ti-sysc: Detect uarts also on omap34xx
Date: Mon, 27 May 2019 05:13:46 -0700
Message-Id: <20190527121348.45251-11-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527121348.45251-1-tony@atomide.com>
References: <20190527121348.45251-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051430_900956_EBA3256C 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, devicetree@vger.kernel.org,
 Faiz Abbas <faiz_abbas@ti.com>, Keerthy <j-keerthy@ti.com>,
 Suman Anna <s-anna@ti.com>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like we currently only detect UART on omap36xx, let's also
add support for omap34xx. And let's also fix the SWSUP mode, it should
be SWSUP_SIDLE for omap3, not SWSUP_SIDLE_ACT like for omap4 and later.

Note that we are still booting omap3 for most part without ti-sysc,
so no need to treat this change as a fix.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -1205,8 +1205,10 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   0),
 	SYSC_QUIRK("timer", 0, 0, 0x10, -1, 0x4fff1301, 0xffff00ff,
 		   0),
+	SYSC_QUIRK("uart", 0, 0x50, 0x54, 0x58, 0x00000046, 0xffffffff,
+		   SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_LEGACY_IDLE),
 	SYSC_QUIRK("uart", 0, 0x50, 0x54, 0x58, 0x00000052, 0xffffffff,
-		   SYSC_QUIRK_SWSUP_SIDLE_ACT | SYSC_QUIRK_LEGACY_IDLE),
+		   SYSC_QUIRK_SWSUP_SIDLE | SYSC_QUIRK_LEGACY_IDLE),
 	/* Uarts on omap4 and later */
 	SYSC_QUIRK("uart", 0, 0x50, 0x54, 0x58, 0x50411e03, 0xffff00ff,
 		   SYSC_QUIRK_SWSUP_SIDLE_ACT | SYSC_QUIRK_LEGACY_IDLE),
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
