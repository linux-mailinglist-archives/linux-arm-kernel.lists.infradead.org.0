Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96801178E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M4nhLA0ueOJh0R+H2B00ds3kx//Gz2t9/R/YAfKbbu8=; b=MyHoH6rJPzblY+
	JJrTa/4060uexkXfzxwcY0M4RMj/T25CD48tKqZ1JS8UuYmW2922LlCFVcGZ4h9nZv8B+mOdVKo2/
	1zEV8v6fMX98bY4olsEQD766i9aF1LnNGENuchjvfu9Kz8GwhOUJK8lg7eYMLJkowUR6SNUYTTVl1
	u30PJDI2aATmdTBQMA7Tr2IavFXiYXE0N9y5jrnSt6uLU5N72Uznx0PIlzfXcsiEM0/VJFL9OIX53
	tfleTnZbCj5WYDyLkb+yQ+Z44sKBf8elvvNYRyNVDjJmi1qdXUhPO/uy5rfyZB4jjce8XeqJak8Uv
	ARZgnClmeV/QYibU2Y2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieR0P-0000Bk-AM; Mon, 09 Dec 2019 21:55:49 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieR0J-0000BT-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:55:44 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 2C95080CD;
 Mon,  9 Dec 2019 21:56:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Fix missing force mstandby quirk handling
Date: Mon,  9 Dec 2019 13:55:40 -0800
Message-Id: <20191209215540.22801-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_135543_287652_10FF5FF1 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 03856e928b0e ("bus: ti-sysc: Handle mstandby quirk and use it for
musb") added quirk handling for mstandby quirk but did not consider that
we also need a quirk variant for SYSC_QUIRK_FORCE_MSTANDBY.

We need to use forced idle mode for both SYSC_QUIRK_SWSUP_MSTANDBY and
SYSC_QUIRK_FORCE_MSTANDBY, but SYSC_QUIRK_SWSUP_MSTANDBY also need to
additionally also configure no-idle mode when enabled.

Fixes: 03856e928b0e ("bus: ti-sysc: Handle mstandby quirk and use it for musb")
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c                 | 3 ++-
 include/linux/platform_data/ti-sysc.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -981,7 +981,8 @@ static int sysc_disable_module(struct device *dev)
 		return ret;
 	}
 
-	if (ddata->cfg.quirks & SYSC_QUIRK_SWSUP_MSTANDBY)
+	if (ddata->cfg.quirks & (SYSC_QUIRK_SWSUP_MSTANDBY) ||
+	    ddata->cfg.quirks & (SYSC_QUIRK_FORCE_MSTANDBY))
 		best_mode = SYSC_IDLE_FORCE;
 
 	reg &= ~(SYSC_IDLE_MASK << regbits->midle_shift);
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -49,6 +49,7 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSC_QUIRK_FORCE_MSTANDBY	BIT(20)
 #define SYSC_MODULE_QUIRK_AESS		BIT(19)
 #define SYSC_MODULE_QUIRK_SGX		BIT(18)
 #define SYSC_MODULE_QUIRK_HDQ1W		BIT(17)
-- 
2.24.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
