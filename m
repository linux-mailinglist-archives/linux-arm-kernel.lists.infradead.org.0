Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4A83B44C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:59:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BiGWQ5cbAAov48XYBm68kFpLvvsD/Hslgd57P+mgo3M=; b=Y77Y17hVEoNy72
	FknOwz6c1naNdbCD/xr/k75svQgzyceJvK9u8AamJY6DA9gPO7A9H0RUy4isgxr13ia2ojvKE/wB4
	fuyrtXjEVkJp4GceM3LfdExfFWeLWGkXxEa14w/gWFo8VQ7dbjKPHa/CEXpYhr7YEx+TnAgjrEV77
	rzCcZBb50a+cgJbY06/FVO8KZ+bDOIBwAHtzPmSa2brKjL82k/8WEjNxyzX1AZuLb6Gh3q5FbAHqp
	pFCSskDq1nBfo5E6XCXH1HdAF6JtfF7YzTKAfCO1dZmGUQR6mP5/KbzT8HlyJaX+l1wXuBXoRRsGj
	sasp80y5hnNblKB9qxJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIxv-00054Z-Ex; Mon, 10 Jun 2019 11:59:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haIxg-000510-BW
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:59:42 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 5FA8D80CD;
 Mon, 10 Jun 2019 11:59:59 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] bus: ti-sysc: Add support for module specific reset quirks
Date: Mon, 10 Jun 2019 04:59:35 -0700
Message-Id: <20190610115935.40448-1-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_045940_438683_762D5CF0 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some older interconnect target modules need module internal clock
toggling quirks to reset properly. We've been doing this in the
platform code earlier, but need to be able to it directly in the
ti-sysc driver when we no longer rely on on the platform code.

Let's add reset handling for 1-wire, i2c and watchdog. Later on
we can add more modules like msdi and dss as they get tested.
For dra7 pcie, we should be able to just use the rstctrl reset
driver when available.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---

This is based on the following series I posted earlier:

[PATCHv2 00/13] ti-sysc driver changes to drop custom hwmods property

---
 drivers/bus/ti-sysc.c                 | 129 +++++++++++++++++++++++++-
 include/linux/platform_data/ti-sysc.h |   3 +
 2 files changed, 127 insertions(+), 5 deletions(-)

diff --git a/drivers/bus/ti-sysc.c b/drivers/bus/ti-sysc.c
--- a/drivers/bus/ti-sysc.c
+++ b/drivers/bus/ti-sysc.c
@@ -71,6 +71,9 @@ static const char * const clock_names[SYSC_MAX_CLOCKS] = {
  * @name: name if available
  * @revision: interconnect target module revision
  * @needs_resume: runtime resume needed on resume from suspend
+ * @clk_enable_quirk: module specific clock enable quirk
+ * @clk_disable_quirk: module specific clock disable quirk
+ * @reset_done_quirk: module specific reset done quirk
  */
 struct sysc {
 	struct device *dev;
@@ -94,6 +97,9 @@ struct sysc {
 	unsigned int child_needs_resume:1;
 	unsigned int disable_on_idle:1;
 	struct delayed_work idle_work;
+	void (*clk_enable_quirk)(struct sysc *sysc);
+	void (*clk_disable_quirk)(struct sysc *sysc);
+	void (*reset_done_quirk)(struct sysc *sysc);
 };
 
 static void sysc_parse_dts_quirks(struct sysc *ddata, struct device_node *np,
@@ -760,8 +766,11 @@ static int sysc_ioremap(struct sysc *ddata)
 			    ddata->offsets[SYSC_SYSCONFIG],
 			    ddata->offsets[SYSC_SYSSTATUS]);
 
+		if (size < SZ_1K)
+			size = SZ_1K;
+
 		if ((size + sizeof(u32)) > ddata->module_size)
-			return -EINVAL;
+			size = ddata->module_size;
 	}
 
 	ddata->module_va = devm_ioremap(ddata->dev,
@@ -1234,6 +1243,22 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 		   SYSC_QUIRK_EXT_OPT_CLOCK | SYSC_QUIRK_NO_RESET_ON_INIT |
 		   SYSC_QUIRK_SWSUP_SIDLE),
 
+	/* Quirks that need to be set based on detected module */
+	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x00000006, 0xffffffff,
+		SYSC_MODULE_QUIRK_HDQ1W),
+	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x0000000a, 0xffffffff,
+		   SYSC_MODULE_QUIRK_HDQ1W),
+	SYSC_QUIRK("i2c", 0, 0, 0x20, 0x10, 0x00000036, 0x000000ff,
+		   SYSC_MODULE_QUIRK_I2C),
+	SYSC_QUIRK("i2c", 0, 0, 0x20, 0x10, 0x0000003c, 0x000000ff,
+		   SYSC_MODULE_QUIRK_I2C),
+	SYSC_QUIRK("i2c", 0, 0, 0x20, 0x10, 0x00000040, 0x000000ff,
+		   SYSC_MODULE_QUIRK_I2C),
+	SYSC_QUIRK("i2c", 0, 0, 0x10, 0x90, 0x5040000a, 0xfffff0f0,
+		   SYSC_MODULE_QUIRK_I2C),
+	SYSC_QUIRK("wdt", 0, 0, 0x10, 0x14, 0x502a0500, 0xfffff0f0,
+		   SYSC_MODULE_QUIRK_WDT),
+
 #ifdef DEBUG
 	SYSC_QUIRK("adc", 0, 0, 0x10, -1, 0x47300001, 0xffffffff, 0),
 	SYSC_QUIRK("atl", 0, 0, -1, -1, 0x0a070100, 0xffffffff, 0),
@@ -1247,11 +1272,8 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("dwc3", 0, 0, 0x10, -1, 0x500a0200, 0xffffffff, 0),
 	SYSC_QUIRK("epwmss", 0, 0, 0x4, -1, 0x47400001, 0xffffffff, 0),
 	SYSC_QUIRK("gpu", 0, 0x1fc00, 0x1fc10, -1, 0, 0, 0),
-	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x00000006, 0xffffffff, 0),
-	SYSC_QUIRK("hdq1w", 0, 0, 0x14, 0x18, 0x0000000a, 0xffffffff, 0),
 	SYSC_QUIRK("hsi", 0, 0, 0x10, 0x14, 0x50043101, 0xffffffff, 0),
 	SYSC_QUIRK("iss", 0, 0, 0x10, -1, 0x40000101, 0xffffffff, 0),
-	SYSC_QUIRK("i2c", 0, 0, 0x10, 0x90, 0x5040000a, 0xfffff0f0, 0),
 	SYSC_QUIRK("lcdc", 0, 0, 0x54, -1, 0x4f201000, 0xffffffff, 0),
 	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44306302, 0xffffffff, 0),
 	SYSC_QUIRK("mcasp", 0, 0, 0x4, -1, 0x44307b02, 0xffffffff, 0),
@@ -1287,7 +1309,6 @@ static const struct sysc_revision_quirk sysc_revision_quirks[] = {
 	SYSC_QUIRK("usb_host_hs", 0, 0, 0x10, -1, 0x50700101, 0xffffffff, 0),
 	SYSC_QUIRK("usb_otg_hs", 0, 0x400, 0x404, 0x408, 0x00000050,
 		   0xffffffff, 0),
-	SYSC_QUIRK("wdt", 0, 0, 0x10, 0x14, 0x502a0500, 0xfffff0f0, 0),
 	SYSC_QUIRK("vfpe", 0, 0, 0x104, -1, 0x4d001200, 0xffffffff, 0),
 #endif
 };
@@ -1360,6 +1381,94 @@ static void sysc_init_revision_quirks(struct sysc *ddata)
 	}
 }
 
+/* 1-wire needs module's internal clocks enabled for reset */
+static void sysc_clk_enable_quirk_hdq1w(struct sysc *ddata)
+{
+	int offset = 0x0c;	/* HDQ_CTRL_STATUS */
+	u16 val;
+
+	val = sysc_read(ddata, offset);
+	val |= BIT(5);
+	sysc_write(ddata, offset, val);
+}
+
+/* I2C needs extra enable bit toggling for reset */
+static void sysc_clk_quirk_i2c(struct sysc *ddata, bool enable)
+{
+	int offset;
+	u16 val;
+
+	/* I2C_CON, omap2/3 is different from omap4 and later */
+	if ((ddata->revision & 0xffffff00) == 0x001f0000)
+		offset = 0x24;
+	else
+		offset = 0xa4;
+
+	/* I2C_EN */
+	val = sysc_read(ddata, offset);
+	if (enable)
+		val |= BIT(15);
+	else
+		val &= ~BIT(15);
+	sysc_write(ddata, offset, val);
+}
+
+static void sysc_clk_enable_quirk_i2c(struct sysc *ddata)
+{
+	sysc_clk_quirk_i2c(ddata, true);
+}
+
+static void sysc_clk_disable_quirk_i2c(struct sysc *ddata)
+{
+	sysc_clk_quirk_i2c(ddata, false);
+}
+
+/* Watchdog timer needs a disable sequence after reset */
+static void sysc_reset_done_quirk_wdt(struct sysc *ddata)
+{
+	int wps, spr, error;
+	u32 val;
+
+	wps = 0x34;
+	spr = 0x48;
+
+	sysc_write(ddata, spr, 0xaaaa);
+	error = readl_poll_timeout(ddata->module_va + wps, val,
+				   !(val & 0x10), 100,
+				   MAX_MODULE_SOFTRESET_WAIT);
+	if (error)
+		dev_warn(ddata->dev, "wdt disable spr failed\n");
+
+	sysc_write(ddata, wps, 0x5555);
+	error = readl_poll_timeout(ddata->module_va + wps, val,
+				   !(val & 0x10), 100,
+				   MAX_MODULE_SOFTRESET_WAIT);
+	if (error)
+		dev_warn(ddata->dev, "wdt disable wps failed\n");
+}
+
+static void sysc_init_module_quirks(struct sysc *ddata)
+{
+	if (ddata->legacy_mode || !ddata->name)
+		return;
+
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_HDQ1W) {
+		ddata->clk_enable_quirk = sysc_clk_enable_quirk_hdq1w;
+
+		return;
+	}
+
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_I2C) {
+		ddata->clk_enable_quirk = sysc_clk_enable_quirk_i2c;
+		ddata->clk_disable_quirk = sysc_clk_disable_quirk_i2c;
+
+		return;
+	}
+
+	if (ddata->cfg.quirks & SYSC_MODULE_QUIRK_WDT)
+		ddata->reset_done_quirk = sysc_reset_done_quirk_wdt;
+}
+
 static int sysc_clockdomain_init(struct sysc *ddata)
 {
 	struct ti_sysc_platform_data *pdata = dev_get_platdata(ddata->dev);
@@ -1468,10 +1577,16 @@ static int sysc_reset(struct sysc *ddata)
 	else
 		syss_done = ddata->cfg.syss_mask;
 
+	if (ddata->clk_disable_quirk)
+		ddata->clk_disable_quirk(ddata);
+
 	sysc_val = sysc_read_sysconfig(ddata);
 	sysc_val |= sysc_mask;
 	sysc_write(ddata, sysc_offset, sysc_val);
 
+	if (ddata->clk_enable_quirk)
+		ddata->clk_enable_quirk(ddata);
+
 	/* Poll on reset status */
 	if (syss_offset >= 0) {
 		error = readx_poll_timeout(sysc_read_sysstatus, ddata, rstval,
@@ -1485,6 +1600,9 @@ static int sysc_reset(struct sysc *ddata)
 					   100, MAX_MODULE_SOFTRESET_WAIT);
 	}
 
+	if (ddata->reset_done_quirk)
+		ddata->reset_done_quirk(ddata);
+
 	return error;
 }
 
@@ -1531,6 +1649,7 @@ static int sysc_init_module(struct sysc *ddata)
 
 	ddata->revision = sysc_read_revision(ddata);
 	sysc_init_revision_quirks(ddata);
+	sysc_init_module_quirks(ddata);
 
 	if (ddata->legacy_mode) {
 		error = sysc_legacy_init(ddata);
diff --git a/include/linux/platform_data/ti-sysc.h b/include/linux/platform_data/ti-sysc.h
--- a/include/linux/platform_data/ti-sysc.h
+++ b/include/linux/platform_data/ti-sysc.h
@@ -47,6 +47,9 @@ struct sysc_regbits {
 	s8 emufree_shift;
 };
 
+#define SYSC_MODULE_QUIRK_HDQ1W		BIT(17)
+#define SYSC_MODULE_QUIRK_I2C		BIT(16)
+#define SYSC_MODULE_QUIRK_WDT		BIT(15)
 #define SYSS_QUIRK_RESETDONE_INVERTED	BIT(14)
 #define SYSC_QUIRK_SWSUP_MSTANDBY	BIT(13)
 #define SYSC_QUIRK_SWSUP_SIDLE_ACT	BIT(12)
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
