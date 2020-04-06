Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BEE19F732
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LDewnF+Divc5/QRs6BxXimaxudqHQM7RcXg4oJcYmM8=; b=cFd
	f/GYYwS/fmM236wttjWUEDac3XAxVqvXKxcukUdWei+ExU4tMkjPUj4SorkCY2P7L9tLobCRUlsFw
	DY3LTtVVho008DRX+qeDaddEnyXtRTqV6UXH8PxxuR37PDp0r9r8ZgenR2xes4ggl7QL0oRwXQT7U
	NsWbRitTuSt4p/EPQL+o4bkwy1A24ms9zyuibXAKEbrk/Oy3qYITGFlvFltTgz3nOn/oSrKuxZs6Q
	/ZIZtJIxUNihi9FguBX2Gz+lQsjMG6qLsnuI8KrVDAZc86gPiS/KJheEdiX+HGSjCwfLGycZBzZ2B
	GycMp83bhHb05/IOitL1aqwhuat32VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLS7z-0003pj-Sl; Mon, 06 Apr 2020 13:49:27 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.87.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLS7t-0003p5-5l
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:49:22 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C55D9C0384;
 Mon,  6 Apr 2020 13:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586180959; bh=ZlXcrKakS3xNCjgGOMDwWxQfO9zxlDvxLe1htROlAFQ=;
 h=From:To:Cc:Subject:Date:From;
 b=TZRMQw/SLJo3cmRDiPXdd7uTAeyG75fKtY0F4K+yQnz8lFjf34livgcdyZAupG6aw
 zpe0I4LC7QEuhC0OCfrk72Q+VReG2jLlqzwQibl0vxfJKi3QQ+0iepUqIhMXI12j1a
 sgU6UCfV1+EPLcTdWReFlFJtez0DtROOyp2U2oOeqCFXlAffMY4SJx31eqL5WOiOFX
 FqyG7kC+Biwq3uvEgTH6LrFRvZivy8fOAUL43ODRjxwGr8IyrIm8CO1lam5wT1WSZp
 xZ1rvVBwgLmuFeD+sxfrtIXT7SNLuor3Yjm8lShzbUjM7C8I5w26KpvTPvTVGwvXbi
 mbw4FsdZ8jieQ==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 85677A005C;
 Mon,  6 Apr 2020 13:49:13 +0000 (UTC)
From: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
To: yannick.fertre@st.com, philippe.cornu@st.com, benjamin.gaignard@st.com,
 airlied@linux.ie, daniel@ffwll.ch, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 pop.adrian61@gmail.com
Subject: [PATCH v2] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config through
 debugfs
Date: Mon,  6 Apr 2020 15:49:03 +0200
Message-Id: <a809feb7d7153a92e323416f744f1565e995da01.1586180592.git.angelo.ribeiro@synopsys.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_064921_278865_18E0A758 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 Joao Pinto <Joao.Pinto@synopsys.com>,
 Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the video pattern generator (VPG) BER pattern mode and
configuration in runtime.

This enables using the debugfs interface to manipulate the VPG after
the pipeline is set.
Also, enables the usage of the VPG BER pattern.

Changes in v2:
  - Added VID_MODE_VPG_MODE
  - Solved incompatible return type on __get and __set

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Adrian Pop <pop.adrian61@gmail.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Cc: Joao Pinto <jpinto@synopsys.com>
Cc: Jose Abreu <jose.abreu@synopsys.com>
Signed-off-by: Angelo Ribeiro <angelo.ribeiro@synopsys.com>
---
 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 98 ++++++++++++++++++++++++---
 1 file changed, 90 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index b18351b..9de3645 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -91,6 +91,7 @@
 #define VID_MODE_TYPE_BURST			0x2
 #define VID_MODE_TYPE_MASK			0x3
 #define VID_MODE_VPG_ENABLE		BIT(16)
+#define VID_MODE_VPG_MODE		BIT(20)
 #define VID_MODE_VPG_HORIZONTAL		BIT(24)
 
 #define DSI_VID_PKT_SIZE		0x3c
@@ -221,6 +222,21 @@
 #define PHY_STATUS_TIMEOUT_US		10000
 #define CMD_PKT_STATUS_TIMEOUT_US	20000
 
+#ifdef CONFIG_DEBUG_FS
+#define VPG_DEFS(name, dsi) \
+	((void __force *)&((*dsi).vpg_defs.name))
+
+#define REGISTER(name, mask, dsi) \
+	{ #name, VPG_DEFS(name, dsi), mask, dsi }
+
+struct debugfs_entries {
+	const char				*name;
+	bool					*reg;
+	u32					mask;
+	struct dw_mipi_dsi			*dsi;
+};
+#endif /* CONFIG_DEBUG_FS */
+
 struct dw_mipi_dsi {
 	struct drm_bridge bridge;
 	struct mipi_dsi_host dsi_host;
@@ -238,9 +254,12 @@ struct dw_mipi_dsi {
 
 #ifdef CONFIG_DEBUG_FS
 	struct dentry *debugfs;
-
-	bool vpg;
-	bool vpg_horizontal;
+	struct debugfs_entries *debugfs_vpg;
+	struct {
+		bool vpg;
+		bool vpg_horizontal;
+		bool vpg_ber_pattern;
+	} vpg_defs;
 #endif /* CONFIG_DEBUG_FS */
 
 	struct dw_mipi_dsi *master; /* dual-dsi master ptr */
@@ -530,9 +549,11 @@ static void dw_mipi_dsi_video_mode_config(struct dw_mipi_dsi *dsi)
 		val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
 
 #ifdef CONFIG_DEBUG_FS
-	if (dsi->vpg) {
+	if (dsi->vpg_defs.vpg) {
 		val |= VID_MODE_VPG_ENABLE;
-		val |= dsi->vpg_horizontal ? VID_MODE_VPG_HORIZONTAL : 0;
+		val |= dsi->vpg_defs.vpg_horizontal ?
+		       VID_MODE_VPG_HORIZONTAL : 0;
+		val |= dsi->vpg_defs.vpg_ber_pattern ? VID_MODE_VPG_MODE : 0;
 	}
 #endif /* CONFIG_DEBUG_FS */
 
@@ -961,6 +982,68 @@ static const struct drm_bridge_funcs dw_mipi_dsi_bridge_funcs = {
 
 #ifdef CONFIG_DEBUG_FS
 
+int dw_mipi_dsi_debugfs_write(void *data, u64 val)
+{
+	struct debugfs_entries *vpg = data;
+	struct dw_mipi_dsi *dsi;
+	u32 mode_cfg;
+
+	if (!vpg)
+		return -ENODEV;
+
+	dsi = vpg->dsi;
+
+	*vpg->reg = (bool)val;
+
+	mode_cfg = dsi_read(dsi, DSI_VID_MODE_CFG);
+
+	if (*vpg->reg)
+		mode_cfg |= vpg->mask;
+	else
+		mode_cfg &= ~vpg->mask;
+
+	dsi_write(dsi, DSI_VID_MODE_CFG, mode_cfg);
+
+	return 0;
+}
+
+int dw_mipi_dsi_debugfs_show(void *data, u64 *val)
+{
+	struct debugfs_entries *vpg = data;
+
+	if (!vpg)
+		return -ENODEV;
+
+	*val = *vpg->reg;
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(fops_x32, dw_mipi_dsi_debugfs_show,
+			 dw_mipi_dsi_debugfs_write, "%llu\n");
+
+static void debugfs_create_files(void *data)
+{
+	struct dw_mipi_dsi *dsi = data;
+	struct debugfs_entries debugfs[] = {
+		REGISTER(vpg, VID_MODE_VPG_ENABLE, dsi),
+		REGISTER(vpg_horizontal, VID_MODE_VPG_HORIZONTAL, dsi),
+		REGISTER(vpg_ber_pattern, VID_MODE_VPG_MODE, dsi),
+	};
+	int i;
+
+	dsi->debugfs_vpg = kmalloc(sizeof(debugfs), GFP_KERNEL);
+	if (!dsi->debugfs_vpg)
+		return;
+
+	memcpy(dsi->debugfs_vpg, debugfs, sizeof(debugfs));
+
+	for (i = 0; i < ARRAY_SIZE(debugfs); i++)
+		debugfs_create_file(dsi->debugfs_vpg[i].name, 0644,
+				    dsi->debugfs, &dsi->debugfs_vpg[i],
+				    &fops_x32);
+}
+
 static void dw_mipi_dsi_debugfs_init(struct dw_mipi_dsi *dsi)
 {
 	dsi->debugfs = debugfs_create_dir(dev_name(dsi->dev), NULL);
@@ -969,14 +1052,13 @@ static void dw_mipi_dsi_debugfs_init(struct dw_mipi_dsi *dsi)
 		return;
 	}
 
-	debugfs_create_bool("vpg", 0660, dsi->debugfs, &dsi->vpg);
-	debugfs_create_bool("vpg_horizontal", 0660, dsi->debugfs,
-			    &dsi->vpg_horizontal);
+	debugfs_create_files(dsi);
 }
 
 static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi)
 {
 	debugfs_remove_recursive(dsi->debugfs);
+	kfree(dsi->debugfs_vpg);
 }
 
 #else
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
