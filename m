Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A25A1F3854
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dgq9Dr8VhMrF588wlKhNBQ9yoJcFzno+wVI+uBCgfLo=; b=mC6bSB8ZzIpKA0
	PfJabuPTSaMtjFK9HXckQDwaD3kD83j0C6Ek5Ibsts+3DbGwEhRhaTsa89T64ViP3Kd5u+AbLfyFM
	1Dc2aH4FIqmUjryTxEwUBp0nY3LKZHYMy5LzKAiGkzvGSmhKs0kvacSfOPVRwJtdHiik0sc2Z5Rkr
	HD6Afs8R7Gdy+xLC7e4nSq2Aa9HBm5QiNffbTBmJ5iGAsxLx1J9oKPyW62fXvUQNTtXKQguJBF2EK
	AACSaOFpFi1uhW4HYyY1xGKQt3Cr2e9VQohir8fjz8WAvwocmvNyhEwN6y5czkbbWgLb2dLKXnmPD
	JhZlixz18GYtleoDr2XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiblc-0001XE-4q; Tue, 09 Jun 2020 10:46:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiblI-0001VS-Vs; Tue, 09 Jun 2020 10:45:47 +0000
X-UUID: 6199db9877374dcb9d81c021e0e3411c-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/FvX+ME5Lxoj2PxVGXv9GLjMv44t+ysUQ0DcooW+uMY=; 
 b=aHZdT+D3/A4Ii0TsDiQDVko8g4H2BVN12IrhkOQ5sNdRF7qdx4zVm9jsXJRM/CK4C/4lqw9+v3g2Qxz0HWj0mdaxGEZeRk0o4hFMI6zh/1levVWf5Qc6qeBFo/o2ZXgmb2u8MatJFWVwkqO+8OyMJAT39gHmJOZFQmEmgDtXfyo=;
X-UUID: 6199db9877374dcb9d81c021e0e3411c-20200609
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <roger.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2034157490; Tue, 09 Jun 2020 02:45:44 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 03:45:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 18:45:35 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 9 Jun 2020 18:45:35 +0800
From: Roger Lu <roger.lu@mediatek.com>
To: Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Nicolas Boichat <drinkcat@google.com>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v9 4/4] PM / AVS: SVS: add SVS debug commands
Date: Tue, 9 Jun 2020 18:45:34 +0800
Message-ID: <20200609104534.29314-5-roger.lu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200609104534.29314-1-roger.lu@mediatek.com>
References: <20200609104534.29314-1-roger.lu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B5761976C7CFF60A634A0996FAB4F794C749E45840E9272489D118505146DA502000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_034545_036984_F45B1F57 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 Angus Lin <Angus.Lin@mediatek.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>,
 linux-kernel@vger.kernel.org, Xiaoqing Liu <Xiaoqing.Liu@mediatek.com>,
 YT Lee <yt.lee@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, HenryC Chen <HenryC.Chen@mediatek.com>,
 Charles Yang <Charles.Yang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The purpose of SVS is to help find the suitable voltages
for DVFS. Therefore, if SVS bank voltages are concerned
to be wrong, we can adjust SVS bank voltages by this patch.

Change-Id: Ib09b22bc6c4188f622ad35657c0798552a1c0f59
Signed-off-by: Roger Lu <roger.lu@mediatek.com>
---
 drivers/power/avs/mtk_svs.c | 322 ++++++++++++++++++++++++++++++++++++
 1 file changed, 322 insertions(+)

diff --git a/drivers/power/avs/mtk_svs.c b/drivers/power/avs/mtk_svs.c
index 3e26191f6a3b..5cd5d334dc11 100644
--- a/drivers/power/avs/mtk_svs.c
+++ b/drivers/power/avs/mtk_svs.c
@@ -6,6 +6,7 @@
 #include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/completion.h>
+#include <linux/debugfs.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
@@ -24,6 +25,7 @@
 #include <linux/power/mtk_svs.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
+#include <linux/seq_file.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/thermal.h>
@@ -60,6 +62,39 @@
 #define SVSB_INTSTS_COMPLETE		(0x1)
 #define SVSB_INTSTS_CLEAN		(0x00ffffff)
 
+#define debug_fops_ro(name)						\
+	static int svs_##name##_debug_open(struct inode *inode,		\
+					   struct file *filp)		\
+	{								\
+		return single_open(filp, svs_##name##_debug_show,	\
+				   inode->i_private);			\
+	}								\
+	static const struct file_operations svs_##name##_debug_fops = {	\
+		.owner = THIS_MODULE,					\
+		.open = svs_##name##_debug_open,			\
+		.read = seq_read,					\
+		.llseek = seq_lseek,					\
+		.release = single_release,				\
+	}
+
+#define debug_fops_rw(name)						\
+	static int svs_##name##_debug_open(struct inode *inode,		\
+					   struct file *filp)		\
+	{								\
+		return single_open(filp, svs_##name##_debug_show,	\
+				   inode->i_private);			\
+	}								\
+	static const struct file_operations svs_##name##_debug_fops = {	\
+		.owner = THIS_MODULE,					\
+		.open = svs_##name##_debug_open,			\
+		.read = seq_read,					\
+		.write = svs_##name##_debug_write,			\
+		.llseek = seq_lseek,					\
+		.release = single_release,				\
+	}
+
+#define svs_dentry(name)	{__stringify(name), &svs_##name##_debug_fops}
+
 static DEFINE_SPINLOCK(mtk_svs_lock);
 struct mtk_svs;
 
@@ -353,6 +388,7 @@ struct thermal_parameter {
  * @opp_volts: signed-off voltages from default opp table
  * @freqs_pct: percent of "opp_freqs / freq_base" for bank init
  * @volts: bank voltages
+ * @reg_data: bank register data of each phase
  * @freq_base: reference frequency for bank init
  * @vboot: voltage request for bank init01 stage only
  * @volt_step: bank voltage step
@@ -372,6 +408,7 @@ struct thermal_parameter {
  * @opp_count: bank opp count
  * @int_st: bank interrupt identification
  * @sw_id: bank software identification
+ * @hw_id: bank hardware identification
  * @ctl0: bank thermal sensor selection
  * @of_compatible: of_compatible string of bank
  * @name: bank name
@@ -394,6 +431,7 @@ struct svs_bank {
 	u32 opp_volts[16];
 	u32 freqs_pct[16];
 	u32 volts[16];
+	u32 reg_data[3][reg_num];
 	u32 freq_base;
 	u32 vboot;
 	u32 volt_step;
@@ -432,6 +470,7 @@ struct svs_bank {
 	u32 opp_count;
 	u32 int_st;
 	u32 sw_id;
+	u32 hw_id;
 	u32 ctl0;
 	u8 *of_compatible;
 	u8 *name;
@@ -805,11 +844,15 @@ static void svs_set_bank_phase(struct mtk_svs *svs, u32 target_phase)
 static inline void svs_init01_isr_handler(struct mtk_svs *svs)
 {
 	struct svs_bank *svsb = svs->pbank;
+	enum svs_reg_index rg_i;
 
 	dev_notice(svsb->dev, "%s: VDN74:0x%08x, VDN30:0x%08x, DC:0x%08x\n",
 		   __func__, svs_readl(svs, VDESIGN74),
 		   svs_readl(svs, VDESIGN30), svs_readl(svs, DCVALUES));
 
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_INIT01][rg_i] = svs_readl(svs, rg_i);
+
 	svsb->phase = SVSB_PHASE_INIT01;
 	svsb->dc_voffset_in = ~(svs_readl(svs, DCVALUES) & GENMASK(15, 0)) + 1;
 	if (svsb->init01_volt_flag == SVSB_INIT01_VOLT_IGNORE)
@@ -832,11 +875,15 @@ static inline void svs_init02_isr_handler(struct mtk_svs *svs)
 {
 	const struct svs_platform *svsp = svs->platform;
 	struct svs_bank *svsb = svs->pbank;
+	enum svs_reg_index rg_i;
 
 	dev_notice(svsb->dev, "%s: VOP74:0x%08x, VOP30:0x%08x, DC:0x%08x\n",
 		   __func__, svs_readl(svs, VOP74), svs_readl(svs, VOP30),
 		   svs_readl(svs, DCVALUES));
 
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_INIT02][rg_i] = svs_readl(svs, rg_i);
+
 	svsb->phase = SVSB_PHASE_INIT02;
 	svsp->get_vops(svs);
 
@@ -850,6 +897,10 @@ static inline void svs_mon_mode_isr_handler(struct mtk_svs *svs)
 {
 	const struct svs_platform *svsp = svs->platform;
 	struct svs_bank *svsb = svs->pbank;
+	enum svs_reg_index rg_i;
+
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_MON][rg_i] = svs_readl(svs, rg_i);
 
 	svsb->phase = SVSB_PHASE_MON;
 	svsb->temp = svs_readl(svs, TEMP) & GENMASK(7, 0);
@@ -862,6 +913,7 @@ static inline void svs_error_isr_handler(struct mtk_svs *svs)
 {
 	const struct svs_platform *svsp = svs->platform;
 	struct svs_bank *svsb = svs->pbank;
+	enum svs_reg_index rg_i;
 
 	dev_err(svsb->dev, "%s: %s, CORESEL = 0x%08x\n",
 		__func__, svsp->name, svs_readl(svs, CORESEL));
@@ -876,6 +928,9 @@ static inline void svs_error_isr_handler(struct mtk_svs *svs)
 	dev_err(svsb->dev, "TEMPMONCTL0 = 0x%08x, TEMPMSRCTL1 = 0x%08x\n",
 		svs_readl(svs, TEMPMONCTL0), svs_readl(svs, TEMPMSRCTL1));
 
+	for (rg_i = TEMPMONCTL0; rg_i < reg_num; rg_i++)
+		svsb->reg_data[SVSB_PHASE_MON][rg_i] = svs_readl(svs, rg_i);
+
 	svsb->mode_support = SVSB_MODE_ALL_DISABLE;
 
 	if (svsb->phase != SVSB_PHASE_INIT01)
@@ -1561,10 +1616,270 @@ static int svs_resume(struct device *dev)
 	return 0;
 }
 
+/*
+ * svs_dump_debug_show - dump svs/thermal efuse and svs banks' registers
+ */
+static int svs_dump_debug_show(struct seq_file *m, void *p)
+{
+	struct mtk_svs *svs = (struct mtk_svs *)m->private;
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	unsigned long svs_reg_addr;
+	u32 idx, i, j;
+
+	for (i = 0; i < svs->efuse_num; i++)
+		if (svs->efuse && svs->efuse[i])
+			seq_printf(m, "M_HW_RES%d = 0x%08x\n",
+				   i, svs->efuse[i]);
+
+	for (i = 0; i < svs->thermal_efuse_num; i++)
+		if (svs->thermal_efuse)
+			seq_printf(m, "THERMAL_EFUSE%d = 0x%08x\n",
+				   i, svs->thermal_efuse[i]);
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		for (i = SVSB_PHASE_INIT01; i <= SVSB_PHASE_MON; i++) {
+			seq_printf(m, "Bank_number = %u\n", svsb->hw_id);
+
+			if (i < SVSB_PHASE_MON)
+				seq_printf(m, "mode = init%d\n", i + 1);
+			else
+				seq_puts(m, "mode = mon\n");
+
+			for (j = TEMPMONCTL0; j < reg_num; j++) {
+				svs_reg_addr = (unsigned long)(svs->base +
+							       svsp->regs[j]);
+				seq_printf(m, "0x%08lx = 0x%08x\n",
+					   svs_reg_addr, svsb->reg_data[i][j]);
+			}
+		}
+	}
+
+	return 0;
+}
+
+debug_fops_ro(dump);
+
+/*
+ * svs_enable_debug_show - show svs bank current enable phase
+ */
+static int svs_enable_debug_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+
+	if (svsb->phase == SVSB_PHASE_INIT01)
+		seq_puts(m, "init1\n");
+	else if (svsb->phase == SVSB_PHASE_INIT02)
+		seq_puts(m, "init2\n");
+	else if (svsb->phase == SVSB_PHASE_MON)
+		seq_puts(m, "mon mode\n");
+	else if (svsb->phase == SVSB_PHASE_ERROR)
+		seq_puts(m, "disabled\n");
+	else
+		seq_puts(m, "unknown\n");
+
+	return 0;
+}
+
+/*
+ * svs_enable_debug_write - we only support svs bank disable control
+ */
+static ssize_t svs_enable_debug_write(struct file *filp,
+				      const char __user *buffer,
+				      size_t count, loff_t *pos)
+{
+	struct svs_bank *svsb = file_inode(filp)->i_private;
+	struct mtk_svs *svs = dev_get_drvdata(svsb->dev);
+	unsigned long flags;
+	int enabled, ret;
+	char *buf = NULL;
+
+	if (count >= PAGE_SIZE)
+		return -EINVAL;
+
+	buf = (char *)memdup_user_nul(buffer, count);
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	ret = kstrtoint(buf, 10, &enabled);
+	if (ret)
+		return ret;
+
+	if (!enabled) {
+		flags = claim_mtk_svs_lock();
+		svs->pbank = svsb;
+		svsb->mode_support = SVSB_MODE_ALL_DISABLE;
+		svs_switch_bank(svs);
+		svs_writel(svs, SVSB_EN_OFF, SVSEN);
+		svs_writel(svs, SVSB_INTSTS_CLEAN, INTSTS);
+		release_mtk_svs_lock(flags);
+
+		svsb->phase = SVSB_PHASE_ERROR;
+		svs_adjust_pm_opp_volts(svsb, true);
+	}
+
+	kfree(buf);
+
+	return count;
+}
+
+debug_fops_rw(enable);
+
+/*
+ * svs_status_debug_show - show svs bank's tzone_temp/voltages/freqs_pct
+ * and its corresponding opp-table's opp_freqs/opp_volts
+ */
+static int svs_status_debug_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+	struct dev_pm_opp *opp;
+	unsigned long freq;
+	int tzone_temp, ret;
+	u32 i;
+
+	ret = svs_get_bank_zone_temperature(svsb->tzone_name, &tzone_temp);
+	if (ret)
+		seq_printf(m, "%s: cannot get zone \"%s\" temperature\n",
+			   svsb->name, svsb->tzone_name);
+	else
+		seq_printf(m, "%s: temperature = %d\n", svsb->name, tzone_temp);
+
+	for (i = 0, freq = U32_MAX; i < svsb->opp_count; i++, freq--) {
+		opp = dev_pm_opp_find_freq_floor(svsb->dev, &freq);
+		if (IS_ERR(opp)) {
+			seq_printf(m, "%s: error opp entry!!, err = %ld\n",
+				   svsb->name, PTR_ERR(opp));
+			return PTR_ERR(opp);
+		}
+
+		seq_printf(m, "opp_freqs[%02u]: %lu, opp_volts[%02u]: %lu, ",
+			   i, freq, i, dev_pm_opp_get_voltage(opp));
+		seq_printf(m, "svsb_volts[%02u]: 0x%x, freqs_pct[%02u]: %u\n",
+			   i, svsb->volts[i], i, svsb->freqs_pct[i]);
+		dev_pm_opp_put(opp);
+	}
+
+	return 0;
+}
+
+debug_fops_ro(status);
+
+/*
+ * svs_volt_offset_debug_show - show svs bank's voltage offset
+ */
+static int svs_volt_offset_debug_show(struct seq_file *m, void *v)
+{
+	struct svs_bank *svsb = (struct svs_bank *)m->private;
+
+	seq_printf(m, "%d\n", svsb->volt_offset);
+
+	return 0;
+}
+
+/*
+ * svs_volt_offset_debug_write - write svs bank's voltage offset
+ */
+static ssize_t svs_volt_offset_debug_write(struct file *filp,
+					   const char __user *buffer,
+					   size_t count, loff_t *pos)
+{
+	struct svs_bank *svsb = file_inode(filp)->i_private;
+	char *buf = NULL;
+	s32 volt_offset;
+
+	if (count >= PAGE_SIZE)
+		return -EINVAL;
+
+	buf = (char *)memdup_user_nul(buffer, count);
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	if (!kstrtoint(buf, 10, &volt_offset)) {
+		svsb->volt_offset = volt_offset;
+		svs_adjust_pm_opp_volts(svsb, true);
+	}
+
+	kfree(buf);
+
+	return count;
+}
+
+debug_fops_rw(volt_offset);
+
+static int svs_create_svs_debug_cmds(struct mtk_svs *svs)
+{
+	const struct svs_platform *svsp = svs->platform;
+	struct svs_bank *svsb;
+	struct dentry *svs_dir, *svsb_dir, *file_entry;
+	static const char *d = "/sys/kernel/debug/svs";
+	u32 i, idx;
+
+	struct svs_dentry {
+		const char *name;
+		const struct file_operations *fops;
+	};
+
+	struct svs_dentry svs_entries[] = {
+		svs_dentry(dump),
+	};
+
+	struct svs_dentry svsb_entries[] = {
+		svs_dentry(enable),
+		svs_dentry(status),
+		svs_dentry(volt_offset),
+	};
+
+	svs_dir = debugfs_create_dir("svs", NULL);
+	if (IS_ERR(svs_dir)) {
+		dev_notice(svs->dev, "cannot create %s: %ld\n",
+			   d, PTR_ERR(svs_dir));
+		return 0;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(svs_entries); i++) {
+		file_entry = debugfs_create_file(svs_entries[i].name, 0664,
+						 svs_dir, svs,
+						 svs_entries[i].fops);
+		if (IS_ERR(file_entry)) {
+			dev_err(svs->dev, "cannot create %s/%s: %ld\n",
+				d, svs_entries[i].name, PTR_ERR(file_entry));
+			return PTR_ERR(file_entry);
+		}
+	}
+
+	for (idx = 0; idx < svsp->bank_num; idx++) {
+		svsb = &svsp->banks[idx];
+
+		svsb_dir = debugfs_create_dir(svsb->name, svs_dir);
+		if (IS_ERR(svsb_dir)) {
+			dev_err(svsb->dev, "cannot create %s/%s: %ld\n",
+				d, svsb->name, PTR_ERR(svsb_dir));
+			return PTR_ERR(svsb_dir);
+		}
+
+		for (i = 0; i < ARRAY_SIZE(svsb_entries); i++) {
+			file_entry = debugfs_create_file(svsb_entries[i].name,
+							 0664, svsb_dir, svsb,
+							 svsb_entries[i].fops);
+			if (IS_ERR(file_entry)) {
+				dev_err(svsb->dev, "no %s/%s/%s?: %ld\n",
+					d, svsb->name, svsb_entries[i].name,
+					PTR_ERR(file_entry));
+				return PTR_ERR(file_entry);
+			}
+		}
+	}
+
+	return 0;
+}
+
 static struct svs_bank svs_mt8183_banks[4] = {
 	{
 		.of_compatible		= "mediatek,mt8183-svs-cpu-little",
 		.sw_id			= SVSB_CPU_LITTLE,
+		.hw_id			= 0,
 		.tzone_name		= "tzts4",
 		.buck_name		= "vcpu-little",
 		.mtcmos_request		= false,
@@ -1600,6 +1915,7 @@ static struct svs_bank svs_mt8183_banks[4] = {
 	{
 		.of_compatible		= "mediatek,mt8183-svs-cpu-big",
 		.sw_id			= SVSB_CPU_BIG,
+		.hw_id			= 1,
 		.tzone_name		= "tzts5",
 		.buck_name		= "vcpu-big",
 		.mtcmos_request		= false,
@@ -1635,6 +1951,7 @@ static struct svs_bank svs_mt8183_banks[4] = {
 	{
 		.of_compatible		= "mediatek,mt8183-svs-cci",
 		.sw_id			= SVSB_CCI,
+		.hw_id			= 2,
 		.tzone_name		= "tzts4",
 		.buck_name		= "vcci",
 		.mtcmos_request		= false,
@@ -1670,6 +1987,7 @@ static struct svs_bank svs_mt8183_banks[4] = {
 	{
 		.of_compatible		= "mediatek,mt8183-svs-gpu",
 		.sw_id			= SVSB_GPU,
+		.hw_id			= 3,
 		.tzone_name		= "tzts2",
 		.buck_name		= "vgpu",
 		.mtcmos_request		= true,
@@ -1832,6 +2150,10 @@ static int svs_probe(struct platform_device *pdev)
 	if (ret)
 		goto svs_probe_clk_disable;
 
+	ret = svs_create_svs_debug_cmds(svs);
+	if (ret)
+		goto svs_probe_clk_disable;
+
 	return 0;
 
 svs_probe_clk_disable:
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
