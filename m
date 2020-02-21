Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8A91687E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 20:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yH9O01doUGgwN5KETfDNw1UTwA2dN+a7D+Y+lcm6yeo=; b=E3vk8Ey/fZQEli
	u5GO2Vm7gI/hFK5ibX3S7ED+TwyaFZRXuonwkeKuRtqjAh7Cg4rBCsS9eziI6zn0PAzGaxz/ZzBu/
	FZYq2EInoFu20r9vjt02vShUpERx3rXTZD+w8GxmazR0IKYNGbkhMIk31f8+1hr5Ecqiwy3dBiXZD
	VRe18iybgL7YFmqq24aZdzPVCvnpb2iwzCPaCpy4dmvv/I7Q7HPfBjT1MxyPleUo0xRw3WJqZ6so2
	Tkpj8Qe3ZmWslAsxp4ql/0W2gnCxspqwNKxgAOGZJhW6/Iqc4ZVZxPr6z2ty4cTFc4+aA7reeAUXE
	IQbrDpDBdr1b9GAkDEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5EN3-0005jV-UJ; Fri, 21 Feb 2020 19:53:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5EMJ-0005Ik-LD
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 19:53:13 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id F18108161;
 Fri, 21 Feb 2020 19:53:54 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/7] bus: ti-sysc: Rename clk related quirks to pre_reset and
 post_reset quirks
Date: Fri, 21 Feb 2020 11:52:51 -0800
Message-Id: <20200221195256.54016-3-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221195256.54016-1-tony@atomide.com>
References: <20200221195256.54016-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_115311_738733_0B6CFDB0 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andr=C3=A9=20Hentschel?= <nerv@dawncrow.de>,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clk_disable_quirk and clk_enable_quirk should really be called
pre_reset_quirk and post_reset_quirk to avoid confusion like we had
with hdq1w reset.

Let's also rename the related functions so the code is easier to follow.
Note that we also have reset_done_quirk that is needed in some cases
after checking the separate register for reset done bit.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/bus/ti-sysc.c | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -70,8 +70,8 @@ static const char * const clock_names[SYSC_MAX_CLOCKS] = {
  * @child_needs_resume: runtime resume needed for child on resume from suspend
  * @disable_on_idle: status flag used for disabling modules with resets
  * @idle_work: work structure used to perform delayed idle on a module
- * @clk_enable_quirk: module specific clock enable quirk
- * @clk_disable_quirk: module specific clock disable quirk
+ * @pre_reset_quirk: module specific pre-reset quirk
+ * @post_reset_quirk: module specific post-reset quirk
  * @reset_done_quirk: module specific reset done quirk
  * @module_enable_quirk: module specific enable quirk
  * @module_disable_quirk: module specific disable quirk
@@ -97,8 +97,8 @@ struct sysc {
 	unsigned int needs_resume:1;
 	unsigned int child_needs_resume:1;
 	struct delayed_work idle_work;
-	void (*clk_enable_quirk)(struct sysc *sysc);
-	void (*clk_disable_quirk)(struct sysc *sysc);
+	void (*pre_reset_quirk)(struct sysc *sysc);
+	void (*post_reset_quirk)(struct sysc *sysc);
 	void (*reset_done_quirk)(struct sysc *sysc);
 	void (*module_enable_quirk)(struct sysc *sysc);
 	void (*module_disable_quirk)(struct sysc *sysc);
@@ -1418,7 +1418,7 @@ static void sysc_module_enable_quirk_aess(struct sysc *ddata)
 	sysc_write(ddata, offset, 1);
 }
 
-/* I2C needs extra enable bit toggling for reset */
+/* I2C needs to be disabled for reset */
 static void sysc_clk_quirk_i2c(struct sysc *ddata, bool enable)
 {
 	int offset;
@@ -1439,14 +1439,14 @@ static void sysc_clk_quirk_i2c(struct sysc *ddata, bool enable)
 	sysc_write(ddata, offset, val);
 }
 
-static void sysc_clk_enable_quirk_i2c(struct sysc *ddata)
+static void sysc_pre_reset_quirk_i2c(struct sysc *ddata)
 {
-	sysc_clk_quirk_i2c(ddata, true);
+	sysc_clk_quirk_i2c(ddata, false);
 }
 
-static void sysc_clk_disable_quirk_i2c(struct sysc *ddata)
+static void sysc_post_reset_quirk_i2c(struct sysc *ddata)
 {
-	sysc_clk_quirk_i2c(ddata, false);
+	sysc_clk_quirk_i2c(ddata, true);
 }
 
 /* 36xx SGX needs a quirk for to bypass OCP IPG interrupt logic */
@@ -1488,14 +1488,14 @@ static void sysc_init_module_quirks(struct sysc *ddata)
 		return;
 
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_HDQ1W) {
-		ddata->clk_disable_quirk = sysc_pre_reset_quirk_hdq1w;
+		ddata->pre_reset_quirk = sysc_pre_reset_quirk_hdq1w;
 
 		return;
 	}
 
 	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_I2C) {
-		ddata->clk_enable_quirk = sysc_clk_enable_quirk_i2c;
-		ddata->clk_disable_quirk = sysc_clk_disable_quirk_i2c;
+		ddata->pre_reset_quirk = sysc_pre_reset_quirk_i2c;
+		ddata->post_reset_quirk = sysc_post_reset_quirk_i2c;
 
 		return;
 	}
@@ -1583,8 +1583,8 @@ static int sysc_reset(struct sysc *ddata)
 	else
 		syss_done = ddata->cfg.syss_mask;
 
-	if (ddata->clk_disable_quirk)
-		ddata->clk_disable_quirk(ddata);
+	if (ddata->pre_reset_quirk)
+		ddata->pre_reset_quirk(ddata);
 
 	sysc_val = sysc_read_sysconfig(ddata);
 	sysc_val |= sysc_mask;
@@ -1594,8 +1594,8 @@ static int sysc_reset(struct sysc *ddata)
 		usleep_range(ddata->cfg.srst_udelay,
 			     ddata->cfg.srst_udelay * 2);
 
-	if (ddata->clk_enable_quirk)
-		ddata->clk_enable_quirk(ddata);
+	if (ddata->post_reset_quirk)
+		ddata->post_reset_quirk(ddata);
 
 	/* Poll on reset status */
 	if (syss_offset >= 0) {
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
