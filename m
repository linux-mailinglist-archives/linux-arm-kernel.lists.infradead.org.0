Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728072D7AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyJAE7W24fYMn9aPtrJHVO2IFdvv+hn5Mtxu3xXLgq4=; b=ap1YYjfEnrzJQl
	tbwVYCt0t5Wy23wsLp1suJ0UPWwfGQc832Os2E0UA5butCyvnTpZ1OObdadQG5nH1/LJ6Ty1l4BuB
	tiYw++uOBbXOe4Kx9jsVYgXPQICrObg3Gc/WhmZa1YYqeSknirFJRx9EWghGGC9c0zPM/siBC4S7f
	w/bk6IyF2+Nx7kgwyY4q2TFHV2z6pTS8u7GfS9p1C3oCRTQaCfLZlxKo9Nz9K6QahV+eIREXMqf5j
	29fGYMSAtb/Zbdmzy++cht2gl39BgTZwnFtagrJFo2xAvvb5Ejsfw4ySEXvmlwceFvXpAHl10s05J
	APhRS0y/OwpM7IuLhupg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtrx-0000NW-Rd; Wed, 29 May 2019 08:23:34 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtqV-0007W2-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:22:10 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cee41220000>; Wed, 29 May 2019 01:21:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 01:22:03 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 29 May 2019 01:22:03 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:22:02 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 29 May 2019 08:22:02 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cee41280001>; Wed, 29 May 2019 01:22:02 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Rob
 Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V4 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
Date: Wed, 29 May 2019 16:21:36 +0800
Message-ID: <20190529082139.5581-6-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529082139.5581-1-josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559118114; bh=WSXZPgthYc+kj8hn/QNql1jh44Eq4sCI5n7HpbbYvkM=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=gmel9DgtJ+TOuYTxnLPTUqiIOGGKdB7KxITK72Nh9QY4m1DWlEKwH8WrP5rnnmikZ
 T3yj6kUTiBComRqOjAA6Fz9bJpxwNUL4nvEvB16c1wlMMhuESetg6OrbjeuO85RnZZ
 NCtQ7ECl6gMFoP1mV1et6GaItw6rPO3LsxgokWdgxZq0X80cfxsttEuF+84J1ONenk
 u388ibGzTEgg6qx6goJW0MpamdcBkxn8EzOO/HXxc9t16QUr/yV5BefIu8MPxngrVe
 AcEGh2B87/LxOlcv8JdzgJxZPYVkow+34N7awsRsfaqTHi9YWICwcEkvdq/T1c+xMv
 xeY8wDbLUzVSQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012203_865355_AD0CD5B8 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the required APIs and variables for the EMC scaling
sequence code on Tegra210.

Based on the work of Peter De Schrijver <pdeschrijver@nvidia.com>.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v4:
- fix the API with generic naming
- use 'u16' in 'struct emc_table_register_offset'
---
 drivers/memory/tegra/tegra210-emc.c | 1365 +++++++++++++++++++++++++++
 drivers/memory/tegra/tegra210-emc.h |  718 ++++++++++++++
 2 files changed, 2083 insertions(+)

diff --git a/drivers/memory/tegra/tegra210-emc.c b/drivers/memory/tegra/tegra210-emc.c
index 80ea14d1e6ce..6eb26cdd9679 100644
--- a/drivers/memory/tegra/tegra210-emc.c
+++ b/drivers/memory/tegra/tegra210-emc.c
@@ -22,11 +22,27 @@
 #define EMC_CLK_EMC_2X_CLK_SRC_SHIFT			29
 #define EMC_CLK_EMC_2X_CLK_SRC_MASK			\
 	(0x7 << EMC_CLK_EMC_2X_CLK_SRC_SHIFT)
+#define EMC_CLK_SOURCE_PLLM_LJ				0x4
+#define EMC_CLK_SOURCE_PLLMB_LJ				0x5
 #define EMC_CLK_MC_EMC_SAME_FREQ			BIT(16)
 #define EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT		0
 #define EMC_CLK_EMC_2X_CLK_DIVISOR_MASK			\
 	(0xff << EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT)
 
+#define CLK_RST_CONTROLLER_CLK_SOURCE_EMC_DLL		0x664
+#define DLL_CLK_EMC_DLL_CLK_SRC_SHIFT			29
+#define DLL_CLK_EMC_DLL_CLK_SRC_MASK			\
+	(0x7 << DLL_CLK_EMC_DLL_CLK_SRC_SHIFT)
+#define DLL_CLK_EMC_DLL_DDLL_CLK_SEL_SHIFT		10
+#define DLL_CLK_EMC_DLL_DDLL_CLK_SEL_MASK		\
+	(0x3 << DLL_CLK_EMC_DLL_DDLL_CLK_SEL_SHIFT)
+#define PLLM_VCOA					0
+#define PLLM_VCOB					1
+#define EMC_DLL_SWITCH_OUT				2
+#define DLL_CLK_EMC_DLL_CLK_DIVISOR_SHIFT		0
+#define DLL_CLK_EMC_DLL_CLK_DIVISOR_MASK		\
+	(0xff << DLL_CLK_EMC_DLL_CLK_DIVISOR_SHIFT)
+
 #define MC_EMEM_ARB_MISC0_EMC_SAME_FREQ			BIT(27)
 
 #define TEGRA_EMC_MAX_FREQS		16
@@ -35,7 +51,46 @@
 #define CLK_CHANGE_DELAY 100
 #define TRAINING_TIME 100
 
+#define EMC0_EMC_DATA_BRLSHFT_0_INDEX	2
+#define EMC1_EMC_DATA_BRLSHFT_0_INDEX	3
+#define EMC0_EMC_DATA_BRLSHFT_1_INDEX	4
+#define EMC1_EMC_DATA_BRLSHFT_1_INDEX	5
+
+#define TRIM_REG(chan, rank, reg, byte)					\
+	(((EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
+	   _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _MASK &	\
+	   next_timing->trim_regs[EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ##	\
+				 rank ## _ ## reg ## _INDEX]) >>	\
+	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
+	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _SHIFT)	\
+	 +								\
+	 (((EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
+	    byte ## _DATA_BRLSHFT_MASK &				\
+	    next_timing->trim_perch_regs[EMC ## chan ##			\
+			      _EMC_DATA_BRLSHFT_ ## rank ## _INDEX]) >>	\
+	   EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
+	   byte ## _DATA_BRLSHFT_SHIFT) * 64))
+
+#define CALC_TEMP(rank, reg, byte1, byte2, n)				\
+	(((new[n] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##	\
+	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _SHIFT) & \
+	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
+	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _MASK)	\
+	 |								\
+	 ((new[n + 1] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##\
+	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _SHIFT) & \
+	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
+	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _MASK))
+
 enum {
+	TEGRA_DRAM_OVER_TEMP_NONE = 0,
+	TEGRA_DRAM_OVER_TEMP_REFRESH_X2,
+	TEGRA_DRAM_OVER_TEMP_REFRESH_X4,
+	TEGRA_DRAM_OVER_TEMP_THROTTLE, /* 4x Refresh + derating. */
+	TEGRA_DRAM_OVER_TEMP_MAX,
+};
+
+enum TEGRA_EMC_SOURCE {
 	TEGRA_EMC_SRC_PLLM,
 	TEGRA_EMC_SRC_PLLC,
 	TEGRA_EMC_SRC_PLLP,
@@ -80,17 +135,499 @@ static const struct supported_sequence supported_seqs[] = {
 };
 static const struct supported_sequence *seq = supported_seqs;
 static DEFINE_SPINLOCK(emc_access_lock);
+unsigned long dram_over_temp_state = TEGRA_DRAM_OVER_TEMP_NONE;
+
+const struct emc_table_register_offset reg_off = {
+	.burst_regs_off = {
+		EMC_RC,
+		EMC_RFC,
+		EMC_RFCPB,
+		EMC_REFCTRL2,
+		EMC_RFC_SLR,
+		EMC_RAS,
+		EMC_RP,
+		EMC_R2W,
+		EMC_W2R,
+		EMC_R2P,
+		EMC_W2P,
+		EMC_R2R,
+		EMC_TPPD,
+		EMC_CCDMW,
+		EMC_RD_RCD,
+		EMC_WR_RCD,
+		EMC_RRD,
+		EMC_REXT,
+		EMC_WEXT,
+		EMC_WDV_CHK,
+		EMC_WDV,
+		EMC_WSV,
+		EMC_WEV,
+		EMC_WDV_MASK,
+		EMC_WS_DURATION,
+		EMC_WE_DURATION,
+		EMC_QUSE,
+		EMC_QUSE_WIDTH,
+		EMC_IBDLY,
+		EMC_OBDLY,
+		EMC_EINPUT,
+		EMC_MRW6,
+		EMC_EINPUT_DURATION,
+		EMC_PUTERM_EXTRA,
+		EMC_PUTERM_WIDTH,
+		EMC_QRST,
+		EMC_QSAFE,
+		EMC_RDV,
+		EMC_RDV_MASK,
+		EMC_RDV_EARLY,
+		EMC_RDV_EARLY_MASK,
+		EMC_REFRESH,
+		EMC_BURST_REFRESH_NUM,
+		EMC_PRE_REFRESH_REQ_CNT,
+		EMC_PDEX2WR,
+		EMC_PDEX2RD,
+		EMC_PCHG2PDEN,
+		EMC_ACT2PDEN,
+		EMC_AR2PDEN,
+		EMC_RW2PDEN,
+		EMC_CKE2PDEN,
+		EMC_PDEX2CKE,
+		EMC_PDEX2MRR,
+		EMC_TXSR,
+		EMC_TXSRDLL,
+		EMC_TCKE,
+		EMC_TCKESR,
+		EMC_TPD,
+		EMC_TFAW,
+		EMC_TRPAB,
+		EMC_TCLKSTABLE,
+		EMC_TCLKSTOP,
+		EMC_MRW7,
+		EMC_TREFBW,
+		EMC_ODT_WRITE,
+		EMC_FBIO_CFG5,
+		EMC_FBIO_CFG7,
+		EMC_CFG_DIG_DLL,
+		EMC_CFG_DIG_DLL_PERIOD,
+		EMC_PMACRO_IB_RXRT,
+		EMC_CFG_PIPE_1,
+		EMC_CFG_PIPE_2,
+		EMC_PMACRO_QUSE_DDLL_RANK0_4,
+		EMC_PMACRO_QUSE_DDLL_RANK0_5,
+		EMC_PMACRO_QUSE_DDLL_RANK1_4,
+		EMC_PMACRO_QUSE_DDLL_RANK1_5,
+		EMC_MRW8,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_4,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_5,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_3,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_4,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_5,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_3,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_4,
+		EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_5,
+		EMC_PMACRO_DDLL_LONG_CMD_0,
+		EMC_PMACRO_DDLL_LONG_CMD_1,
+		EMC_PMACRO_DDLL_LONG_CMD_2,
+		EMC_PMACRO_DDLL_LONG_CMD_3,
+		EMC_PMACRO_DDLL_LONG_CMD_4,
+		EMC_PMACRO_DDLL_SHORT_CMD_0,
+		EMC_PMACRO_DDLL_SHORT_CMD_1,
+		EMC_PMACRO_DDLL_SHORT_CMD_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_3,
+		EMC_TXDSRVTTGEN,
+		EMC_FDPD_CTRL_DQ,
+		EMC_FDPD_CTRL_CMD,
+		EMC_FBIO_SPARE,
+		EMC_ZCAL_INTERVAL,
+		EMC_ZCAL_WAIT_CNT,
+		EMC_MRS_WAIT_CNT,
+		EMC_MRS_WAIT_CNT2,
+		EMC_AUTO_CAL_CHANNEL,
+		EMC_DLL_CFG_0,
+		EMC_DLL_CFG_1,
+		EMC_PMACRO_AUTOCAL_CFG_COMMON,
+		EMC_PMACRO_ZCTRL,
+		EMC_CFG,
+		EMC_CFG_PIPE,
+		EMC_DYN_SELF_REF_CONTROL,
+		EMC_QPOP,
+		EMC_DQS_BRLSHFT_0,
+		EMC_DQS_BRLSHFT_1,
+		EMC_CMD_BRLSHFT_2,
+		EMC_CMD_BRLSHFT_3,
+		EMC_PMACRO_PAD_CFG_CTRL,
+		EMC_PMACRO_DATA_PAD_RX_CTRL,
+		EMC_PMACRO_CMD_PAD_RX_CTRL,
+		EMC_PMACRO_DATA_RX_TERM_MODE,
+		EMC_PMACRO_CMD_RX_TERM_MODE,
+		EMC_PMACRO_CMD_PAD_TX_CTRL,
+		EMC_PMACRO_DATA_PAD_TX_CTRL,
+		EMC_PMACRO_COMMON_PAD_TX_CTRL,
+		EMC_PMACRO_VTTGEN_CTRL_0,
+		EMC_PMACRO_VTTGEN_CTRL_1,
+		EMC_PMACRO_VTTGEN_CTRL_2,
+		EMC_PMACRO_BRICK_CTRL_RFU1,
+		EMC_PMACRO_CMD_BRICK_CTRL_FDPD,
+		EMC_PMACRO_BRICK_CTRL_RFU2,
+		EMC_PMACRO_DATA_BRICK_CTRL_FDPD,
+		EMC_PMACRO_BG_BIAS_CTRL_0,
+		EMC_CFG_3,
+		EMC_PMACRO_TX_PWRD_0,
+		EMC_PMACRO_TX_PWRD_1,
+		EMC_PMACRO_TX_PWRD_2,
+		EMC_PMACRO_TX_PWRD_3,
+		EMC_PMACRO_TX_PWRD_4,
+		EMC_PMACRO_TX_PWRD_5,
+		EMC_CONFIG_SAMPLE_DELAY,
+		EMC_PMACRO_TX_SEL_CLK_SRC_0,
+		EMC_PMACRO_TX_SEL_CLK_SRC_1,
+		EMC_PMACRO_TX_SEL_CLK_SRC_2,
+		EMC_PMACRO_TX_SEL_CLK_SRC_3,
+		EMC_PMACRO_TX_SEL_CLK_SRC_4,
+		EMC_PMACRO_TX_SEL_CLK_SRC_5,
+		EMC_PMACRO_DDLL_BYPASS,
+		EMC_PMACRO_DDLL_PWRD_0,
+		EMC_PMACRO_DDLL_PWRD_1,
+		EMC_PMACRO_DDLL_PWRD_2,
+		EMC_PMACRO_CMD_CTRL_0,
+		EMC_PMACRO_CMD_CTRL_1,
+		EMC_PMACRO_CMD_CTRL_2,
+		EMC_TR_TIMING_0,
+		EMC_TR_DVFS,
+		EMC_TR_CTRL_1,
+		EMC_TR_RDV,
+		EMC_TR_QPOP,
+		EMC_TR_RDV_MASK,
+		EMC_MRW14,
+		EMC_TR_QSAFE,
+		EMC_TR_QRST,
+		EMC_TRAINING_CTRL,
+		EMC_TRAINING_SETTLE,
+		EMC_TRAINING_VREF_SETTLE,
+		EMC_TRAINING_CA_FINE_CTRL,
+		EMC_TRAINING_CA_CTRL_MISC,
+		EMC_TRAINING_CA_CTRL_MISC1,
+		EMC_TRAINING_CA_VREF_CTRL,
+		EMC_TRAINING_QUSE_CORS_CTRL,
+		EMC_TRAINING_QUSE_FINE_CTRL,
+		EMC_TRAINING_QUSE_CTRL_MISC,
+		EMC_TRAINING_QUSE_VREF_CTRL,
+		EMC_TRAINING_READ_FINE_CTRL,
+		EMC_TRAINING_READ_CTRL_MISC,
+		EMC_TRAINING_READ_VREF_CTRL,
+		EMC_TRAINING_WRITE_FINE_CTRL,
+		EMC_TRAINING_WRITE_CTRL_MISC,
+		EMC_TRAINING_WRITE_VREF_CTRL,
+		EMC_TRAINING_MPC,
+		EMC_MRW15,
+	},
+	.trim_regs_off = {
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_0,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_1,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_2,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_3,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_0,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_1,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_2,
+		EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_3,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_2,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_0,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_1,
+		EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_2,
+		EMC_PMACRO_IB_VREF_DQS_0,
+		EMC_PMACRO_IB_VREF_DQS_1,
+		EMC_PMACRO_IB_VREF_DQ_0,
+		EMC_PMACRO_IB_VREF_DQ_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_4,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_5,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2,
+		EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_2,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_0,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_1,
+		EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_2,
+		EMC_PMACRO_QUSE_DDLL_RANK0_0,
+		EMC_PMACRO_QUSE_DDLL_RANK0_1,
+		EMC_PMACRO_QUSE_DDLL_RANK0_2,
+		EMC_PMACRO_QUSE_DDLL_RANK0_3,
+		EMC_PMACRO_QUSE_DDLL_RANK1_0,
+		EMC_PMACRO_QUSE_DDLL_RANK1_1,
+		EMC_PMACRO_QUSE_DDLL_RANK1_2,
+		EMC_PMACRO_QUSE_DDLL_RANK1_3
+	},
+	.burst_mc_regs_off = {
+		MC_EMEM_ARB_CFG,
+		MC_EMEM_ARB_OUTSTANDING_REQ,
+		MC_EMEM_ARB_REFPB_HP_CTRL,
+		MC_EMEM_ARB_REFPB_BANK_CTRL,
+		MC_EMEM_ARB_TIMING_RCD,
+		MC_EMEM_ARB_TIMING_RP,
+		MC_EMEM_ARB_TIMING_RC,
+		MC_EMEM_ARB_TIMING_RAS,
+		MC_EMEM_ARB_TIMING_FAW,
+		MC_EMEM_ARB_TIMING_RRD,
+		MC_EMEM_ARB_TIMING_RAP2PRE,
+		MC_EMEM_ARB_TIMING_WAP2PRE,
+		MC_EMEM_ARB_TIMING_R2R,
+		MC_EMEM_ARB_TIMING_W2W,
+		MC_EMEM_ARB_TIMING_R2W,
+		MC_EMEM_ARB_TIMING_CCDMW,
+		MC_EMEM_ARB_TIMING_W2R,
+		MC_EMEM_ARB_TIMING_RFCPB,
+		MC_EMEM_ARB_DA_TURNS,
+		MC_EMEM_ARB_DA_COVERS,
+		MC_EMEM_ARB_MISC0,
+		MC_EMEM_ARB_MISC1,
+		MC_EMEM_ARB_MISC2,
+		MC_EMEM_ARB_RING1_THROTTLE,
+		MC_EMEM_ARB_DHYST_CTRL,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_0,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_1,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_2,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_3,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_4,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_5,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_6,
+		MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_7,
+	},
+	.la_scale_regs_off = {
+		MC_MLL_MPCORER_PTSA_RATE,
+		MC_FTOP_PTSA_RATE,
+		MC_PTSA_GRANT_DECREMENT,
+		MC_LATENCY_ALLOWANCE_XUSB_0,
+		MC_LATENCY_ALLOWANCE_XUSB_1,
+		MC_LATENCY_ALLOWANCE_TSEC_0,
+		MC_LATENCY_ALLOWANCE_SDMMCA_0,
+		MC_LATENCY_ALLOWANCE_SDMMCAA_0,
+		MC_LATENCY_ALLOWANCE_SDMMC_0,
+		MC_LATENCY_ALLOWANCE_SDMMCAB_0,
+		MC_LATENCY_ALLOWANCE_PPCS_0,
+		MC_LATENCY_ALLOWANCE_PPCS_1,
+		MC_LATENCY_ALLOWANCE_MPCORE_0,
+		MC_LATENCY_ALLOWANCE_HC_0,
+		MC_LATENCY_ALLOWANCE_HC_1,
+		MC_LATENCY_ALLOWANCE_AVPC_0,
+		MC_LATENCY_ALLOWANCE_GPU_0,
+		MC_LATENCY_ALLOWANCE_GPU2_0,
+		MC_LATENCY_ALLOWANCE_NVENC_0,
+		MC_LATENCY_ALLOWANCE_NVDEC_0,
+		MC_LATENCY_ALLOWANCE_VIC_0,
+		MC_LATENCY_ALLOWANCE_VI2_0,
+		MC_LATENCY_ALLOWANCE_ISP2_0,
+		MC_LATENCY_ALLOWANCE_ISP2_1,
+	},
+	.burst_regs_per_ch_off = {
+		{ .bank = REG_EMC0, .offset = EMC_MRW10, },
+		{ .bank = REG_EMC1, .offset = EMC_MRW10, },
+		{ .bank = REG_EMC0, .offset = EMC_MRW11, },
+		{ .bank = REG_EMC1, .offset = EMC_MRW11, },
+		{ .bank = REG_EMC0, .offset = EMC_MRW12, },
+		{ .bank = REG_EMC1, .offset = EMC_MRW12, },
+		{ .bank = REG_EMC0, .offset = EMC_MRW13, },
+		{ .bank = REG_EMC1, .offset = EMC_MRW13, },
+	},
+	.trim_regs_per_ch_off = {
+		{ .bank = REG_EMC0, .offset = EMC_CMD_BRLSHFT_0, },
+		{ .bank = REG_EMC1, .offset = EMC_CMD_BRLSHFT_1, },
+		{ .bank = REG_EMC0, .offset = EMC_DATA_BRLSHFT_0, },
+		{ .bank = REG_EMC1, .offset = EMC_DATA_BRLSHFT_0, },
+		{ .bank = REG_EMC0, .offset = EMC_DATA_BRLSHFT_1, },
+		{ .bank = REG_EMC1, .offset = EMC_DATA_BRLSHFT_1, },
+		{ .bank = REG_EMC0, .offset = EMC_QUSE_BRLSHFT_0, },
+		{ .bank = REG_EMC1, .offset = EMC_QUSE_BRLSHFT_1, },
+		{ .bank = REG_EMC0, .offset = EMC_QUSE_BRLSHFT_2, },
+		{ .bank = REG_EMC1, .offset = EMC_QUSE_BRLSHFT_3, },
+	},
+	.vref_regs_per_ch_off = {
+		{ .bank = REG_EMC0,
+		  .offset = EMC_TRAINING_OPT_DQS_IB_VREF_RANK0, },
+		{ .bank = REG_EMC1,
+		  .offset = EMC_TRAINING_OPT_DQS_IB_VREF_RANK0, },
+		{ .bank = REG_EMC0,
+		  .offset = EMC_TRAINING_OPT_DQS_IB_VREF_RANK1, },
+		{ .bank = REG_EMC1,
+		  .offset = EMC_TRAINING_OPT_DQS_IB_VREF_RANK1, },
+	},
+};
 
 static inline struct tegra_emc *clk_hw_to_emc(struct clk_hw *hw)
 {
 	return container_of(hw, struct tegra_emc, hw);
 }
 
+void emc_writel(struct tegra_emc *emc, u32 val, unsigned long offset)
+{
+	writel_relaxed(val, emc->emc_base[REG_EMC] + offset);
+}
+
 u32 emc_readl(struct tegra_emc *emc, unsigned long offset)
 {
 	return readl_relaxed(emc->emc_base[REG_EMC] + offset);
 }
 
+u32 emc1_readl(struct tegra_emc *emc, unsigned long offset)
+{
+	return readl_relaxed(emc->emc_base[REG_EMC1] + offset);
+}
+
+void emc_writel_per_ch(struct tegra_emc *emc, u32 val, int type,
+		       unsigned long offset)
+{
+	switch (type) {
+	case REG_EMC:
+	case REG_EMC0:
+		return writel_relaxed(val, emc->emc_base[REG_EMC] + offset);
+	case REG_EMC1:
+		return writel_relaxed(val, emc->emc_base[REG_EMC1] + offset);
+	}
+}
+
 u32 emc_readl_per_ch(struct tegra_emc *emc, int type,
 			    unsigned long offset)
 {
@@ -109,6 +646,14 @@ u32 emc_readl_per_ch(struct tegra_emc *emc, int type,
 	return val;
 }
 
+void ccfifo_writel(struct tegra_emc *emc, u32 val, unsigned long addr,
+		   u32 delay)
+{
+	writel_relaxed(val, emc->emc_base[REG_EMC] + EMC_CCFIFO_DATA);
+	writel_relaxed((addr & 0xffff) | ((delay & 0x7fff) << 16) | (1 << 31),
+		       emc->emc_base[REG_EMC] + EMC_CCFIFO_ADDR);
+}
+
 static inline u32 emc_src_val(u32 val)
 {
 	return (val & EMC_CLK_EMC_2X_CLK_SRC_MASK) >>
@@ -176,6 +721,826 @@ static inline unsigned long emc_get_src_clk_rate(void)
 	return rate;
 }
 
+static void tegra210_change_dll_src(struct tegra_emc *emc,
+				    u32 clksrc)
+{
+	u32 out_enb_x;
+	u32 dll_setting = emc->next_timing->dll_clk_src;
+	u32 emc_clk_src;
+	u32 emc_clk_div;
+
+	out_enb_x = 0;
+	emc_clk_src = (clksrc & EMC_CLK_EMC_2X_CLK_SRC_MASK) >>
+		       EMC_CLK_EMC_2X_CLK_SRC_SHIFT;
+	emc_clk_div = (clksrc & EMC_CLK_EMC_2X_CLK_DIVISOR_MASK) >>
+		       EMC_CLK_EMC_2X_CLK_DIVISOR_SHIFT;
+
+	dll_setting &= ~(DLL_CLK_EMC_DLL_CLK_SRC_MASK |
+			 DLL_CLK_EMC_DLL_CLK_DIVISOR_MASK);
+	dll_setting |= emc_clk_src << DLL_CLK_EMC_DLL_CLK_SRC_SHIFT;
+	dll_setting |= emc_clk_div << DLL_CLK_EMC_DLL_CLK_DIVISOR_SHIFT;
+
+	dll_setting &= ~DLL_CLK_EMC_DLL_DDLL_CLK_SEL_MASK;
+	if (emc_clk_src == EMC_CLK_SOURCE_PLLMB_LJ)
+		dll_setting |= (PLLM_VCOB <<
+				DLL_CLK_EMC_DLL_DDLL_CLK_SEL_SHIFT);
+	else if (emc_clk_src == EMC_CLK_SOURCE_PLLM_LJ)
+		dll_setting |= (PLLM_VCOA <<
+				DLL_CLK_EMC_DLL_DDLL_CLK_SEL_SHIFT);
+	else
+		dll_setting |= (EMC_DLL_SWITCH_OUT <<
+				DLL_CLK_EMC_DLL_DDLL_CLK_SEL_SHIFT);
+
+	tegra210_clk_emc_dll_update_setting(dll_setting);
+
+	if (emc->next_timing->clk_out_enb_x_0_clk_enb_emc_dll)
+		tegra210_clk_emc_dll_enable(true);
+	else
+		tegra210_clk_emc_dll_enable(false);
+}
+
+void emc_do_clock_change(struct tegra_emc *emc, u32 clksrc)
+{
+	int err;
+
+	mc_readl(emc->mc, MC_EMEM_ADR_CFG);
+	emc_readl(emc, EMC_INTSTATUS);
+
+	tegra210_clk_emc_update_setting(clksrc);
+
+	err = emc_wait_for_update(emc, EMC_INTSTATUS,
+				  EMC_INTSTATUS_CLKCHANGE_COMPLETE, true,
+				  REG_EMC);
+	if (err)
+		pr_warn("%s: clock change completion error: %d", __func__, err);
+}
+
+struct emc_table *emc_get_timing_from_freq(struct tegra_emc *emc,
+					   unsigned long rate)
+{
+	int i;
+
+	for (i = 0; i < emc->emc_table_size; i++)
+		if (emc->emc_table[i].rate == rate)
+			return &emc->emc_table[i];
+
+	return NULL;
+}
+
+int emc_wait_for_update(struct tegra_emc *emc, u32 status_reg, u32 bit_mask,
+			bool updated_state, int chan)
+{
+	int i, err = -ETIMEDOUT;
+	u32 reg;
+
+	for (i = 0; i < EMC_STATUS_UPDATE_TIMEOUT; i++) {
+		reg = emc_readl_per_ch(emc, chan, status_reg);
+		if (!!(reg & bit_mask) == updated_state) {
+			err = 0;
+			goto done;
+		}
+		udelay(1);
+	}
+
+done:
+	return err;
+}
+
+void emc_set_shadow_bypass(struct tegra_emc *emc, int set)
+{
+	u32 emc_dbg = emc_readl(emc, EMC_DBG);
+
+	if (set)
+		emc_writel(emc, emc_dbg | EMC_DBG_WRITE_MUX_ACTIVE, EMC_DBG);
+	else
+		emc_writel(emc, emc_dbg & ~EMC_DBG_WRITE_MUX_ACTIVE, EMC_DBG);
+}
+
+u32 emc_get_dll_state(struct emc_table *next_timing)
+{
+	bool next_dll_enabled;
+
+	next_dll_enabled = !(next_timing->emc_emrs & 0x1);
+	if (next_dll_enabled)
+		return DLL_ON;
+	else
+		return DLL_OFF;
+}
+
+u32 div_o3(u32 a, u32 b)
+{
+	u32 result = a / b;
+
+	if ((b * result) < a)
+		return result + 1;
+	else
+		return result;
+}
+
+void emc_timing_update(struct tegra_emc *emc, int dual_chan)
+{
+	int err = 0;
+
+	emc_writel(emc, 0x1, EMC_TIMING_CONTROL);
+	err |= emc_wait_for_update(emc, EMC_EMC_STATUS,
+				   EMC_EMC_STATUS_TIMING_UPDATE_STALLED,
+				   false, REG_EMC);
+	if (dual_chan)
+		err |= emc_wait_for_update(emc, EMC_EMC_STATUS,
+					   EMC_EMC_STATUS_TIMING_UPDATE_STALLED,
+					   false, REG_EMC1);
+	if (err)
+		pr_warn("%s: timing update error: %d", __func__, err);
+}
+
+u32 tegra210_actual_osc_clocks(u32 in)
+{
+	if (in < 0x40)
+		return in * 16;
+	else if (in < 0x80)
+		return 2048;
+	else if (in < 0xc0)
+		return 4096;
+	else
+		return 8192;
+}
+
+void tegra210_start_periodic_compensation(struct tegra_emc *emc)
+{
+	u32 mpc_req = 0x4b;
+
+	emc_writel(emc, mpc_req, EMC_MPC);
+	mpc_req = emc_readl(emc, EMC_MPC);
+}
+
+u32 tegra210_apply_periodic_compensation_trimmer(struct emc_table *next_timing,
+						 u32 offset)
+{
+	u32 i, temp = 0;
+	u32 next_timing_rate_mhz = next_timing->rate / 1000;
+	s32 tree_delta[4];
+	s32 tree_delta_taps[4];
+	s32 new[] = {
+		TRIM_REG(0, 0, 0, 0),
+		TRIM_REG(0, 0, 0, 1),
+		TRIM_REG(0, 0, 1, 2),
+		TRIM_REG(0, 0, 1, 3),
+
+		TRIM_REG(1, 0, 2, 4),
+		TRIM_REG(1, 0, 2, 5),
+		TRIM_REG(1, 0, 3, 6),
+		TRIM_REG(1, 0, 3, 7),
+
+		TRIM_REG(0, 1, 0, 0),
+		TRIM_REG(0, 1, 0, 1),
+		TRIM_REG(0, 1, 1, 2),
+		TRIM_REG(0, 1, 1, 3),
+
+		TRIM_REG(1, 1, 2, 4),
+		TRIM_REG(1, 1, 2, 5),
+		TRIM_REG(1, 1, 3, 6),
+		TRIM_REG(1, 1, 3, 7)
+	};
+
+	switch (offset) {
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3:
+	case EMC_DATA_BRLSHFT_0:
+		tree_delta[0] = 128 *
+				(next_timing->current_dram_clktree[C0D0U0] -
+				 next_timing->trained_dram_clktree[C0D0U0]);
+		tree_delta[1] = 128 *
+				(next_timing->current_dram_clktree[C0D0U1] -
+				 next_timing->trained_dram_clktree[C0D0U1]);
+		tree_delta[2] = 128 *
+				(next_timing->current_dram_clktree[C1D0U0] -
+				 next_timing->trained_dram_clktree[C1D0U0]);
+		tree_delta[3] = 128 *
+				(next_timing->current_dram_clktree[C1D0U1] -
+				 next_timing->trained_dram_clktree[C1D0U1]);
+
+		tree_delta_taps[0] = (tree_delta[0] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[1] = (tree_delta[1] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[2] = (tree_delta[2] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[3] = (tree_delta[3] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+
+		for (i = 0; i < 4; i++) {
+			if ((tree_delta_taps[i] > next_timing->tree_margin) ||
+			    (tree_delta_taps[i] <
+			    (-1 * next_timing->tree_margin))) {
+				new[i * 2] = new[i * 2] + tree_delta_taps[i];
+				new[i * 2 + 1] = new[i * 2 + 1] +
+						 tree_delta_taps[i];
+			}
+		}
+
+		if (offset == EMC_DATA_BRLSHFT_0) {
+			for (i = 0; i < 8; i++)
+				new[i] = new[i] / 64;
+		} else {
+			for (i = 0; i < 8; i++)
+				new[i] = new[i] % 64;
+		}
+		break;
+
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2:
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3:
+	case EMC_DATA_BRLSHFT_1:
+		tree_delta[0] = 128 *
+				(next_timing->current_dram_clktree[C0D1U0] -
+				 next_timing->trained_dram_clktree[C0D1U0]);
+		tree_delta[1] = 128 *
+				(next_timing->current_dram_clktree[C0D1U1] -
+				 next_timing->trained_dram_clktree[C0D1U1]);
+		tree_delta[2] = 128 *
+				(next_timing->current_dram_clktree[C1D1U0] -
+				 next_timing->trained_dram_clktree[C1D1U0]);
+		tree_delta[3] = 128 *
+				(next_timing->current_dram_clktree[C1D1U1] -
+				 next_timing->trained_dram_clktree[C1D1U1]);
+
+		tree_delta_taps[0] = (tree_delta[0] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[1] = (tree_delta[1] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[2] = (tree_delta[2] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+		tree_delta_taps[3] = (tree_delta[3] *
+				     (s32)next_timing_rate_mhz) / 1000000;
+
+		for (i = 0; i < 4; i++) {
+			if ((tree_delta_taps[i] > next_timing->tree_margin) ||
+			    (tree_delta_taps[i] <
+			     (-1 * next_timing->tree_margin))) {
+				new[8 + i * 2] = new[8 + i * 2] +
+						 tree_delta_taps[i];
+				new[8 + i * 2 + 1] = new[8 + i * 2 + 1] +
+						     tree_delta_taps[i];
+			}
+		}
+
+		if (offset == EMC_DATA_BRLSHFT_1) {
+			for (i = 0; i < 8; i++)
+				new[i + 8] = new[i + 8] / 64;
+		} else {
+			for (i = 0; i < 8; i++)
+				new[i + 8] = new[i + 8] % 64;
+		}
+		break;
+	}
+
+	switch (offset) {
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0:
+		temp = CALC_TEMP(0, 0, 0, 1, 0);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1:
+		temp = CALC_TEMP(0, 1, 2, 3, 2);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2:
+		temp = CALC_TEMP(0, 2, 4, 5, 4);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3:
+		temp = CALC_TEMP(0, 3, 6, 7, 6);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0:
+		temp = CALC_TEMP(1, 0, 0, 1, 8);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1:
+		temp = CALC_TEMP(1, 1, 2, 3, 10);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2:
+		temp = CALC_TEMP(1, 2, 4, 5, 12);
+		break;
+	case EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3:
+		temp = CALC_TEMP(1, 3, 6, 7, 14);
+		break;
+	case EMC_DATA_BRLSHFT_0:
+		temp = ((new[0] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE0_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE0_DATA_BRLSHFT_MASK) |
+		       ((new[1] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE1_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE1_DATA_BRLSHFT_MASK) |
+		       ((new[2] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE2_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE2_DATA_BRLSHFT_MASK) |
+		       ((new[3] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE3_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE3_DATA_BRLSHFT_MASK) |
+		       ((new[4] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE4_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE4_DATA_BRLSHFT_MASK) |
+		       ((new[5] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE5_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE5_DATA_BRLSHFT_MASK) |
+		       ((new[6] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE6_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE6_DATA_BRLSHFT_MASK) |
+		       ((new[7] <<
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE7_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_0_RANK0_BYTE7_DATA_BRLSHFT_MASK);
+		break;
+	case EMC_DATA_BRLSHFT_1:
+		temp = ((new[8] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE0_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE0_DATA_BRLSHFT_MASK) |
+		       ((new[9] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE1_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE1_DATA_BRLSHFT_MASK) |
+		       ((new[10] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE2_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE2_DATA_BRLSHFT_MASK) |
+		       ((new[11] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE3_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE3_DATA_BRLSHFT_MASK) |
+		       ((new[12] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE4_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE4_DATA_BRLSHFT_MASK) |
+		       ((new[13] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE5_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE5_DATA_BRLSHFT_MASK) |
+		       ((new[14] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE6_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE6_DATA_BRLSHFT_MASK) |
+		       ((new[15] <<
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE7_DATA_BRLSHFT_SHIFT) &
+			 EMC_DATA_BRLSHFT_1_RANK1_BYTE7_DATA_BRLSHFT_MASK);
+		break;
+	default:
+		break;
+	}
+
+	return temp;
+}
+
+u32 tegra210_dll_prelock(struct tegra_emc *emc, int dvfs_with_training,
+			 u32 clksrc)
+{
+	u32 emc_dig_dll_status;
+	u32 dll_locked;
+	u32 dll_out;
+	u32 emc_cfg_dig_dll;
+	u32 emc_dll_cfg_0;
+	u32 emc_dll_cfg_1;
+	u32 ddllcal_ctrl_start_trim_val;
+	u32 dll_en;
+	u32 dual_channel_lpddr4_case;
+	u32 dll_priv_updated;
+
+	dual_channel_lpddr4_case =
+	      !!(emc_readl(emc, EMC_FBIO_CFG7) & EMC_FBIO_CFG7_CH1_ENABLE) &
+	      !!(emc_readl(emc, EMC_FBIO_CFG7) & EMC_FBIO_CFG7_CH0_ENABLE);
+
+	emc_dig_dll_status = 0;
+	dll_locked = 0;
+	dll_out = 0;
+	emc_cfg_dig_dll = 0;
+	emc_dll_cfg_0 = 0;
+	emc_dll_cfg_1 = 0;
+	ddllcal_ctrl_start_trim_val = 0;
+	dll_en = 0;
+
+	emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL) &
+			  ~EMC_CFG_DIG_DLL_CFG_DLL_LOCK_LIMIT_MASK;
+	emc_cfg_dig_dll |= (3 << EMC_CFG_DIG_DLL_CFG_DLL_LOCK_LIMIT_SHIFT);
+	emc_cfg_dig_dll &= ~EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	emc_cfg_dig_dll &= ~EMC_CFG_DIG_DLL_CFG_DLL_MODE_MASK;
+	emc_cfg_dig_dll |= (3 << EMC_CFG_DIG_DLL_CFG_DLL_MODE_SHIFT);
+	emc_cfg_dig_dll |= EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_TRAFFIC;
+	emc_cfg_dig_dll &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_RW_UNTIL_LOCK;
+	emc_cfg_dig_dll &= ~EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_UNTIL_LOCK;
+
+	emc_writel(emc, emc_cfg_dig_dll, EMC_CFG_DIG_DLL);
+	emc_writel(emc, 1, EMC_TIMING_CONTROL);
+
+	emc_wait_for_update(emc, EMC_EMC_STATUS,
+			    EMC_EMC_STATUS_TIMING_UPDATE_STALLED,
+			    0, REG_EMC);
+	if (dual_channel_lpddr4_case)
+		emc_wait_for_update(emc, EMC_EMC_STATUS,
+				    EMC_EMC_STATUS_TIMING_UPDATE_STALLED,
+				    0, REG_EMC1);
+
+	do {
+		emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL);
+		dll_en = emc_cfg_dig_dll & EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	} while (dll_en == 1);
+
+	if (dual_channel_lpddr4_case) {
+		do {
+			emc_cfg_dig_dll = emc1_readl(emc, EMC_CFG_DIG_DLL);
+			dll_en = emc_cfg_dig_dll & EMC_CFG_DIG_DLL_CFG_DLL_EN;
+		} while (dll_en == 1);
+	}
+
+	emc_dll_cfg_0 = emc->next_timing->burst_regs[EMC_DLL_CFG_0_INDEX];
+
+	emc_writel(emc, emc_dll_cfg_0, EMC_DLL_CFG_0);
+
+	if (emc->next_timing->rate >= 400000
+		&& emc->next_timing->rate < 600000)
+		ddllcal_ctrl_start_trim_val = 150;
+	else if (emc->next_timing->rate >= 600000
+		&& emc->next_timing->rate < 800000)
+		ddllcal_ctrl_start_trim_val = 100;
+	else if (emc->next_timing->rate >= 800000
+		&& emc->next_timing->rate < 1000000)
+		ddllcal_ctrl_start_trim_val = 70;
+	else if (emc->next_timing->rate >= 1000000
+		&& emc->next_timing->rate < 1200000)
+		ddllcal_ctrl_start_trim_val = 30;
+	else
+		ddllcal_ctrl_start_trim_val = 20;
+
+	emc_dll_cfg_1 = emc_readl(emc, EMC_DLL_CFG_1);
+	emc_dll_cfg_1 &= EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_MASK;
+	emc_dll_cfg_1 |= ddllcal_ctrl_start_trim_val;
+	emc_writel(emc, emc_dll_cfg_1, EMC_DLL_CFG_1);
+
+	tegra210_change_dll_src(emc, clksrc);
+
+	emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL);
+	emc_cfg_dig_dll |= EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	emc_writel(emc, emc_cfg_dig_dll, EMC_CFG_DIG_DLL);
+
+	emc_timing_update(emc, dual_channel_lpddr4_case ?
+			  DUAL_CHANNEL : SINGLE_CHANNEL);
+
+	do {
+		emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL);
+		dll_en = emc_cfg_dig_dll & EMC_CFG_DIG_DLL_CFG_DLL_EN;
+	} while (dll_en == 0);
+
+	if (dual_channel_lpddr4_case) {
+		do {
+			emc_cfg_dig_dll = emc1_readl(emc, EMC_CFG_DIG_DLL);
+			dll_en = emc_cfg_dig_dll & EMC_CFG_DIG_DLL_CFG_DLL_EN;
+		} while (dll_en == 0);
+	}
+
+	do {
+		emc_dig_dll_status = emc_readl(emc, EMC_DIG_DLL_STATUS);
+		dll_locked = emc_dig_dll_status & EMC_DIG_DLL_STATUS_DLL_LOCK;
+		dll_priv_updated = emc_dig_dll_status &
+				   EMC_DIG_DLL_STATUS_DLL_PRIV_UPDATED;
+	} while (!dll_locked || !dll_priv_updated);
+
+	emc_dig_dll_status = emc_readl(emc, EMC_DIG_DLL_STATUS);
+	return emc_dig_dll_status & EMC_DIG_DLL_STATUS_DLL_OUT_MASK;
+}
+
+u32 tegra210_dvfs_power_ramp_up(struct tegra_emc *emc, u32 clk,
+				int flip_backward)
+{
+	u32 pmacro_cmd_pad;
+	u32 pmacro_dq_pad;
+	u32 pmacro_rfu1;
+	u32 pmacro_cfg5;
+	u32 pmacro_common_tx;
+	u32 ramp_up_wait = 0;
+
+	if (flip_backward) {
+		pmacro_cmd_pad = emc->current_timing->burst_regs[
+				 EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX];
+		pmacro_dq_pad = emc->current_timing->burst_regs[
+				EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+		pmacro_rfu1 = emc->current_timing->burst_regs[
+			      EMC_PMACRO_BRICK_CTRL_RFU1_INDEX];
+		pmacro_cfg5 = emc->current_timing->burst_regs[
+			      EMC_FBIO_CFG5_INDEX];
+		pmacro_common_tx = emc->current_timing->burst_regs[
+				   EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX];
+	} else {
+		pmacro_cmd_pad = emc->next_timing->burst_regs[
+				 EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX];
+		pmacro_dq_pad = emc->next_timing->burst_regs[
+				EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+		pmacro_rfu1 = emc->next_timing->burst_regs[
+			      EMC_PMACRO_BRICK_CTRL_RFU1_INDEX];
+		pmacro_cfg5 = emc->next_timing->burst_regs[
+			      EMC_FBIO_CFG5_INDEX];
+		pmacro_common_tx = emc->next_timing->burst_regs[
+					EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX];
+	}
+	pmacro_cmd_pad |= EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON;
+
+	if (clk < 1000000 / DVFS_FGCG_MID_SPEED_THRESHOLD) {
+		ccfifo_writel(emc, pmacro_common_tx & 0xa,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL, 0);
+		ccfifo_writel(emc, pmacro_common_tx & 0xf,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL,
+			      (100000 / clk) + 1);
+		ramp_up_wait += 100000;
+	} else {
+		ccfifo_writel(emc, pmacro_common_tx | 0x8,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL, 0);
+	}
+
+	if (clk < 1000000 / DVFS_FGCG_HIGH_SPEED_THRESHOLD) {
+		if (clk < 1000000 / IOBRICK_DCC_THRESHOLD) {
+			pmacro_cmd_pad |=
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC |
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC;
+			pmacro_cmd_pad &=
+				~(EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC |
+				  EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC);
+			ccfifo_writel(emc, pmacro_cmd_pad,
+				      EMC_PMACRO_CMD_PAD_TX_CTRL,
+				      (100000 / clk) + 1);
+			ramp_up_wait += 100000;
+
+			pmacro_dq_pad |=
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC;
+			pmacro_dq_pad &=
+			       ~(EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC |
+				 EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC);
+			ccfifo_writel(emc, pmacro_dq_pad,
+				      EMC_PMACRO_DATA_PAD_TX_CTRL, 0);
+			ccfifo_writel(emc, pmacro_rfu1 & 0xfe40fe40,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, 0);
+		} else {
+			ccfifo_writel(emc, pmacro_rfu1 & 0xfe40fe40,
+				      EMC_PMACRO_BRICK_CTRL_RFU1,
+				      (100000 / clk) + 1);
+			ramp_up_wait += 100000;
+		}
+
+		ccfifo_writel(emc, pmacro_rfu1 & 0xfeedfeed,
+			      EMC_PMACRO_BRICK_CTRL_RFU1, (100000 / clk) + 1);
+		ramp_up_wait += 100000;
+
+		if (clk < 1000000 / IOBRICK_DCC_THRESHOLD) {
+			pmacro_cmd_pad |=
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC |
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC |
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC |
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC;
+			ccfifo_writel(emc, pmacro_cmd_pad,
+				      EMC_PMACRO_CMD_PAD_TX_CTRL,
+				      (100000 / clk) + 1);
+			ramp_up_wait += 100000;
+
+			pmacro_dq_pad |=
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC;
+			ccfifo_writel(emc, pmacro_dq_pad,
+				      EMC_PMACRO_DATA_PAD_TX_CTRL, 0);
+			ccfifo_writel(emc, pmacro_rfu1,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, 0);
+		} else {
+			ccfifo_writel(emc, pmacro_rfu1,
+				      EMC_PMACRO_BRICK_CTRL_RFU1,
+				      (100000 / clk) + 1);
+			ramp_up_wait += 100000;
+		}
+
+		ccfifo_writel(emc, pmacro_cfg5 & ~EMC_FBIO_CFG5_CMD_TX_DIS,
+			      EMC_FBIO_CFG5, (100000 / clk) + 10);
+		ramp_up_wait += 100000 + (10 * clk);
+	} else if (clk < 1000000 / DVFS_FGCG_MID_SPEED_THRESHOLD) {
+		ccfifo_writel(emc, pmacro_rfu1 | 0x06000600,
+			      EMC_PMACRO_BRICK_CTRL_RFU1, (100000 / clk) + 1);
+		ccfifo_writel(emc, pmacro_cfg5 & ~EMC_FBIO_CFG5_CMD_TX_DIS,
+			      EMC_FBIO_CFG5, (100000 / clk) + 10);
+		ramp_up_wait += 100000 + 10 * clk;
+	} else {
+		ccfifo_writel(emc, pmacro_rfu1 | 0x00000600,
+			      EMC_PMACRO_BRICK_CTRL_RFU1, 0);
+		ccfifo_writel(emc, pmacro_cfg5 & ~EMC_FBIO_CFG5_CMD_TX_DIS,
+			      EMC_FBIO_CFG5, 12);
+		ramp_up_wait += 12 * clk;
+	}
+
+	pmacro_cmd_pad &= ~EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON;
+	ccfifo_writel(emc, pmacro_cmd_pad, EMC_PMACRO_CMD_PAD_TX_CTRL, 5);
+
+	return ramp_up_wait;
+}
+
+u32 tegra210_dvfs_power_ramp_down(struct tegra_emc *emc, u32 clk,
+				  int flip_backward)
+{
+	u32 ramp_down_wait = 0;
+	u32 pmacro_cmd_pad;
+	u32 pmacro_dq_pad;
+	u32 pmacro_rfu1;
+	u32 pmacro_cfg5;
+	u32 pmacro_common_tx;
+	u32 seq_wait;
+
+	if (flip_backward) {
+		pmacro_cmd_pad = emc->next_timing->burst_regs[
+				 EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX];
+		pmacro_dq_pad = emc->next_timing->burst_regs[
+				EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+		pmacro_rfu1 = emc->next_timing->burst_regs[
+			      EMC_PMACRO_BRICK_CTRL_RFU1_INDEX];
+		pmacro_cfg5 = emc->next_timing->burst_regs[
+			      EMC_FBIO_CFG5_INDEX];
+		pmacro_common_tx = emc->next_timing->burst_regs[
+				   EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX];
+	} else {
+		pmacro_cmd_pad = emc->current_timing->burst_regs[
+				 EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX];
+		pmacro_dq_pad = emc->current_timing->burst_regs[
+				EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX];
+		pmacro_rfu1 = emc->current_timing->burst_regs[
+			      EMC_PMACRO_BRICK_CTRL_RFU1_INDEX];
+		pmacro_cfg5 = emc->current_timing->burst_regs[
+			      EMC_FBIO_CFG5_INDEX];
+		pmacro_common_tx = emc->current_timing->burst_regs[
+				   EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX];
+	}
+
+	pmacro_cmd_pad |= EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON;
+
+	ccfifo_writel(emc, pmacro_cmd_pad, EMC_PMACRO_CMD_PAD_TX_CTRL, 0);
+	ccfifo_writel(emc, pmacro_cfg5 | EMC_FBIO_CFG5_CMD_TX_DIS,
+		      EMC_FBIO_CFG5, 12);
+	ramp_down_wait = 12 * clk;
+
+	seq_wait = (100000 / clk) + 1;
+
+	if (clk < (1000000 / DVFS_FGCG_HIGH_SPEED_THRESHOLD)) {
+		if (clk < (1000000 / IOBRICK_DCC_THRESHOLD)) {
+			pmacro_cmd_pad &=
+				~(EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC |
+				  EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC);
+			pmacro_cmd_pad |=
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC |
+				EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC;
+			ccfifo_writel(emc, pmacro_cmd_pad,
+				      EMC_PMACRO_CMD_PAD_TX_CTRL, seq_wait);
+			ramp_down_wait += 100000;
+
+			pmacro_dq_pad &=
+			      ~(EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC);
+			pmacro_dq_pad |=
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC;
+			ccfifo_writel(emc, pmacro_dq_pad,
+				      EMC_PMACRO_DATA_PAD_TX_CTRL, 0);
+			ccfifo_writel(emc, pmacro_rfu1 & ~0x01120112,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, 0);
+		} else {
+			ccfifo_writel(emc, pmacro_rfu1 & ~0x01120112,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, seq_wait);
+			ramp_down_wait += 100000;
+		}
+
+		ccfifo_writel(emc, pmacro_rfu1 & ~0x01bf01bf,
+			      EMC_PMACRO_BRICK_CTRL_RFU1, seq_wait);
+		ramp_down_wait += 100000;
+
+		if (clk < (1000000 / IOBRICK_DCC_THRESHOLD)) {
+			pmacro_cmd_pad &=
+				~(EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC |
+				  EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC |
+				  EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC |
+				  EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC);
+			ccfifo_writel(emc, pmacro_cmd_pad,
+				      EMC_PMACRO_CMD_PAD_TX_CTRL, seq_wait);
+			ramp_down_wait += 100000;
+
+			pmacro_dq_pad &=
+			      ~(EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC |
+				EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC);
+			ccfifo_writel(emc, pmacro_dq_pad,
+				      EMC_PMACRO_DATA_PAD_TX_CTRL, 0);
+			ccfifo_writel(emc, pmacro_rfu1 & ~0x07ff07ff,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, 0);
+		} else {
+			ccfifo_writel(emc, pmacro_rfu1 & ~0x07ff07ff,
+				      EMC_PMACRO_BRICK_CTRL_RFU1, seq_wait);
+			ramp_down_wait += 100000;
+		}
+	} else {
+		ccfifo_writel(emc, pmacro_rfu1 & ~0xffff07ff,
+			      EMC_PMACRO_BRICK_CTRL_RFU1, seq_wait + 19);
+		ramp_down_wait += 100000 + (20 * clk);
+	}
+
+	if (clk < (1000000 / DVFS_FGCG_MID_SPEED_THRESHOLD)) {
+		ramp_down_wait += 100000;
+		ccfifo_writel(emc, pmacro_common_tx & ~0x5,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL, seq_wait);
+		ramp_down_wait += 100000;
+		ccfifo_writel(emc, pmacro_common_tx & ~0xf,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL, seq_wait);
+		ramp_down_wait += 100000;
+		ccfifo_writel(emc, 0, 0, seq_wait);
+		ramp_down_wait += 100000;
+	} else {
+		ccfifo_writel(emc, pmacro_common_tx & ~0xf,
+			      EMC_PMACRO_COMMON_PAD_TX_CTRL, seq_wait);
+	}
+
+	return ramp_down_wait;
+}
+
+void tegra210_reset_dram_clktree_values(struct emc_table *table)
+{
+	table->current_dram_clktree[C0D0U0] =
+		table->trained_dram_clktree[C0D0U0];
+	table->current_dram_clktree[C0D0U1] =
+		table->trained_dram_clktree[C0D0U1];
+	table->current_dram_clktree[C1D0U0] =
+		table->trained_dram_clktree[C1D0U0];
+	table->current_dram_clktree[C1D0U1] =
+		table->trained_dram_clktree[C1D0U1];
+	table->current_dram_clktree[C1D1U0] =
+		table->trained_dram_clktree[C1D1U0];
+	table->current_dram_clktree[C1D1U1] =
+		table->trained_dram_clktree[C1D1U1];
+}
+
+static void update_dll_control(struct tegra_emc *emc, u32 emc_cfg_dig_dll,
+			       int channel_mode, bool updated_state)
+{
+	emc_writel(emc, emc_cfg_dig_dll, EMC_CFG_DIG_DLL);
+	emc_timing_update(emc, channel_mode);
+
+	emc_wait_for_update(emc, EMC_CFG_DIG_DLL, EMC_CFG_DIG_DLL_CFG_DLL_EN,
+			    updated_state, REG_EMC);
+	if (channel_mode == DUAL_CHANNEL)
+		emc_wait_for_update(emc, EMC_CFG_DIG_DLL,
+				    EMC_CFG_DIG_DLL_CFG_DLL_EN,
+				    updated_state, REG_EMC1);
+}
+
+void tegra210_dll_disable(struct tegra_emc *emc, int channel_mode)
+{
+	u32 emc_cfg_dig_dll;
+
+	emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL);
+	emc_cfg_dig_dll &= ~EMC_CFG_DIG_DLL_CFG_DLL_EN;
+
+	update_dll_control(emc, emc_cfg_dig_dll, channel_mode, false);
+}
+
+void tegra210_dll_enable(struct tegra_emc *emc, int channel_mode)
+{
+	u32 emc_cfg_dig_dll;
+
+	emc_cfg_dig_dll = emc_readl(emc, EMC_CFG_DIG_DLL);
+	emc_cfg_dig_dll |= EMC_CFG_DIG_DLL_CFG_DLL_EN;
+
+	update_dll_control(emc, emc_cfg_dig_dll, channel_mode, true);
+}
+
+void emc_set_over_temp_timing(struct tegra_emc *emc, struct emc_table *timing,
+			      unsigned long state)
+{
+#define REFRESH_X2      1
+#define REFRESH_X4      2
+#define REFRESH_SPEEDUP(val, speedup)					\
+		(val = ((val) & 0xFFFF0000) | (((val) & 0xFFFF) >> (speedup)))
+
+	u32 ref = timing->burst_regs[EMC_REFRESH_INDEX];
+	u32 pre_ref = timing->burst_regs[EMC_PRE_REFRESH_REQ_CNT_INDEX];
+	u32 dsr_cntrl = timing->burst_regs[EMC_DYN_SELF_REF_CONTROL_INDEX];
+
+	switch (state) {
+	case TEGRA_DRAM_OVER_TEMP_NONE:
+	case TEGRA_DRAM_OVER_TEMP_THROTTLE:
+		break;
+	case TEGRA_DRAM_OVER_TEMP_REFRESH_X2:
+		REFRESH_SPEEDUP(ref, REFRESH_X2);
+		REFRESH_SPEEDUP(pre_ref, REFRESH_X2);
+		REFRESH_SPEEDUP(dsr_cntrl, REFRESH_X2);
+		break;
+	case TEGRA_DRAM_OVER_TEMP_REFRESH_X4:
+		REFRESH_SPEEDUP(ref, REFRESH_X4);
+		REFRESH_SPEEDUP(pre_ref, REFRESH_X4);
+		REFRESH_SPEEDUP(dsr_cntrl, REFRESH_X4);
+		break;
+	default:
+		pr_warn("%s: Failed to set dram over temp state %lu\n",
+			__func__, state);
+	return;
+	}
+
+	emc_writel(emc, ref, reg_off.burst_regs_off[EMC_REFRESH_INDEX]);
+	emc_writel(emc, pre_ref,
+		   reg_off.burst_regs_off[EMC_PRE_REFRESH_REQ_CNT_INDEX]);
+	emc_writel(emc, dsr_cntrl,
+		   reg_off.burst_regs_off[EMC_DYN_SELF_REF_CONTROL_INDEX]);
+}
+
 static int emc_table_lookup(struct tegra_emc *emc, unsigned long rate)
 {
 	int i;
diff --git a/drivers/memory/tegra/tegra210-emc.h b/drivers/memory/tegra/tegra210-emc.h
index 029f8afb2d66..494f1cbdb289 100644
--- a/drivers/memory/tegra/tegra210-emc.h
+++ b/drivers/memory/tegra/tegra210-emc.h
@@ -12,10 +12,677 @@
 
 #include "mc.h"
 
+#define DVFS_FGCG_HIGH_SPEED_THRESHOLD				1000
+#define IOBRICK_DCC_THRESHOLD					2400
+#define DVFS_FGCG_MID_SPEED_THRESHOLD				600
+
+#define EMC_STATUS_UPDATE_TIMEOUT				1000
+
+#define MC_EMEM_ADR_CFG						0x54
+#define MC_EMEM_ARB_CFG						0x90
+#define MC_EMEM_ARB_OUTSTANDING_REQ				0x94
+#define MC_EMEM_ARB_TIMING_RCD					0x98
+#define MC_EMEM_ARB_TIMING_RP					0x9c
+#define MC_EMEM_ARB_TIMING_RC					0xa0
+#define MC_EMEM_ARB_TIMING_RAS					0xa4
+#define MC_EMEM_ARB_TIMING_FAW					0xa8
+#define MC_EMEM_ARB_TIMING_RRD					0xac
+#define MC_EMEM_ARB_TIMING_RAP2PRE				0xb0
+#define MC_EMEM_ARB_TIMING_WAP2PRE				0xb4
+#define MC_EMEM_ARB_TIMING_R2R					0xb8
+#define MC_EMEM_ARB_TIMING_W2W					0xbc
+#define MC_EMEM_ARB_TIMING_R2W					0xc0
+#define MC_EMEM_ARB_TIMING_W2R					0xc4
+#define MC_EMEM_ARB_MISC2					0xc8
+#define MC_EMEM_ARB_DA_TURNS					0xd0
+#define MC_EMEM_ARB_DA_COVERS					0xd4
+#define MC_EMEM_ARB_MISC0					0xd8
+#define MC_EMEM_ARB_MISC1					0xdc
+#define MC_EMEM_ARB_RING1_THROTTLE				0xe0
+#define MC_LATENCY_ALLOWANCE_AVPC_0				0x2e4
+#define MC_LATENCY_ALLOWANCE_HC_0				0x310
+#define MC_LATENCY_ALLOWANCE_HC_1				0x314
+#define MC_LATENCY_ALLOWANCE_MPCORE_0				0x320
+#define MC_LATENCY_ALLOWANCE_NVENC_0				0x328
+#define MC_LATENCY_ALLOWANCE_PPCS_0				0x344
+#define MC_LATENCY_ALLOWANCE_PPCS_1				0x348
+#define MC_LATENCY_ALLOWANCE_ISP2_0				0x370
+#define MC_LATENCY_ALLOWANCE_ISP2_1				0x374
+#define MC_LATENCY_ALLOWANCE_XUSB_0				0x37c
+#define MC_LATENCY_ALLOWANCE_XUSB_1				0x380
+#define MC_LATENCY_ALLOWANCE_TSEC_0				0x390
+#define MC_LATENCY_ALLOWANCE_VIC_0				0x394
+#define MC_LATENCY_ALLOWANCE_VI2_0				0x398
+#define MC_LATENCY_ALLOWANCE_GPU_0				0x3ac
+#define MC_LATENCY_ALLOWANCE_SDMMCA_0				0x3b8
+#define MC_LATENCY_ALLOWANCE_SDMMCAA_0				0x3bc
+#define MC_LATENCY_ALLOWANCE_SDMMC_0				0x3c0
+#define MC_LATENCY_ALLOWANCE_SDMMCAB_0				0x3c4
+#define MC_LATENCY_ALLOWANCE_GPU2_0				0x3e8
+#define MC_LATENCY_ALLOWANCE_NVDEC_0				0x3d8
+#define MC_MLL_MPCORER_PTSA_RATE				0x44c
+#define MC_FTOP_PTSA_RATE					0x50c
+#define MC_EMEM_ARB_TIMING_RFCPB				0x6c0
+#define MC_EMEM_ARB_TIMING_CCDMW				0x6c4
+#define MC_EMEM_ARB_REFPB_HP_CTRL				0x6f0
+#define MC_EMEM_ARB_REFPB_BANK_CTRL				0x6f4
+#define MC_PTSA_GRANT_DECREMENT					0x960
+#define MC_EMEM_ARB_DHYST_CTRL					0xbcc
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_0			0xbd0
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_1			0xbd4
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_2			0xbd8
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_3			0xbdc
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_4			0xbe0
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_5			0xbe4
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_6			0xbe8
+#define MC_EMEM_ARB_DHYST_TIMEOUT_UTIL_7			0xbec
+
+#define EMC_INTSTATUS						0x0
+#define EMC_INTSTATUS_CLKCHANGE_COMPLETE			BIT(4)
+#define EMC_DBG							0x8
+#define EMC_DBG_WRITE_MUX_ACTIVE				BIT(1)
+#define EMC_CFG							0xc
+#define EMC_TIMING_CONTROL					0x28
+#define EMC_RC							0x2c
+#define EMC_RFC							0x30
+#define EMC_RAS							0x34
+#define EMC_RP							0x38
+#define EMC_R2W							0x3c
+#define EMC_W2R							0x40
+#define EMC_R2P							0x44
+#define EMC_W2P							0x48
+#define EMC_RD_RCD						0x4c
+#define EMC_WR_RCD						0x50
+#define EMC_RRD							0x54
+#define EMC_REXT						0x58
+#define EMC_WDV							0x5c
+#define EMC_QUSE						0x60
+#define EMC_QRST						0x64
+#define EMC_QSAFE						0x68
+#define EMC_RDV							0x6c
+#define EMC_REFRESH						0x70
+#define EMC_BURST_REFRESH_NUM					0x74
+#define EMC_PDEX2WR						0x78
+#define EMC_PDEX2RD						0x7c
+#define EMC_PCHG2PDEN						0x80
+#define EMC_ACT2PDEN						0x84
+#define EMC_AR2PDEN						0x88
+#define EMC_RW2PDEN						0x8c
+#define EMC_TXSR						0x90
+#define EMC_TCKE						0x94
+#define EMC_TFAW						0x98
+#define EMC_TRPAB						0x9c
+#define EMC_TCLKSTABLE						0xa0
+#define EMC_TCLKSTOP						0xa4
+#define EMC_TREFBW						0xa8
+#define EMC_TPPD						0xac
+#define EMC_ODT_WRITE						0xb0
+#define EMC_PDEX2MRR						0xb4
+#define EMC_WEXT						0xb8
+#define EMC_RFC_SLR						0xc0
+#define EMC_MRS_WAIT_CNT2					0xc4
+#define EMC_MRS_WAIT_CNT					0xc8
+#define EMC_FBIO_SPARE						0x100
+#define EMC_FBIO_CFG5						0x104
+#define EMC_FBIO_CFG5_DRAM_TYPE_SHIFT				0
+#define EMC_FBIO_CFG5_DRAM_TYPE_MASK				\
+	(0x3 <<	EMC_FBIO_CFG5_DRAM_TYPE_SHIFT)
+#define EMC_FBIO_CFG5_CMD_TX_DIS				BIT(8)
+
+#define EMC_PDEX2CKE						0x118
+#define EMC_CKE2PDEN						0x11c
+#define EMC_MPC							0x128
+#define EMC_R2R							0x144
+#define EMC_EINPUT						0x14c
+#define EMC_EINPUT_DURATION					0x150
+#define EMC_PUTERM_EXTRA					0x154
+#define EMC_TCKESR						0x158
+#define EMC_TPD							0x15c
+#define EMC_EMC_STATUS						0x2b4
+#define EMC_EMC_STATUS_TIMING_UPDATE_STALLED			BIT(23)
+#define EMC_CFG_DIG_DLL						0x2bc
+#define EMC_CFG_DIG_DLL_CFG_DLL_EN				BIT(0)
+#define EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_UNTIL_LOCK		BIT(1)
+#define EMC_CFG_DIG_DLL_CFG_DLL_STALL_ALL_TRAFFIC		BIT(3)
+#define EMC_CFG_DIG_DLL_CFG_DLL_STALL_RW_UNTIL_LOCK		BIT(4)
+#define EMC_CFG_DIG_DLL_CFG_DLL_MODE_SHIFT			6
+#define EMC_CFG_DIG_DLL_CFG_DLL_MODE_MASK			\
+	(0x3 << EMC_CFG_DIG_DLL_CFG_DLL_MODE_SHIFT)
+#define EMC_CFG_DIG_DLL_CFG_DLL_LOCK_LIMIT_SHIFT		8
+#define EMC_CFG_DIG_DLL_CFG_DLL_LOCK_LIMIT_MASK			\
+	(0x7 << EMC_CFG_DIG_DLL_CFG_DLL_LOCK_LIMIT_SHIFT)
+
+#define EMC_CFG_DIG_DLL_PERIOD					0x2c0
+#define EMC_DIG_DLL_STATUS					0x2c4
+#define EMC_DIG_DLL_STATUS_DLL_LOCK				BIT(15)
+#define EMC_DIG_DLL_STATUS_DLL_PRIV_UPDATED			BIT(17)
+#define EMC_DIG_DLL_STATUS_DLL_OUT_SHIFT			0
+#define EMC_DIG_DLL_STATUS_DLL_OUT_MASK				\
+	(0x7ff << EMC_DIG_DLL_STATUS_DLL_OUT_SHIFT)
+
+#define EMC_CFG_DIG_DLL_1					0x2c8
+#define EMC_RDV_MASK						0x2cc
+#define EMC_WDV_MASK						0x2d0
+#define EMC_RDV_EARLY_MASK					0x2d4
+#define EMC_RDV_EARLY						0x2d8
+#define EMC_ZCAL_INTERVAL					0x2e0
+#define EMC_ZCAL_WAIT_CNT					0x2e4
+#define EMC_FDPD_CTRL_DQ					0x310
+#define EMC_FDPD_CTRL_CMD					0x314
+#define EMC_PMACRO_CMD_BRICK_CTRL_FDPD				0x318
+#define EMC_PMACRO_DATA_BRICK_CTRL_FDPD				0x31c
+#define EMC_PMACRO_BRICK_CTRL_RFU1				0x330
+#define EMC_PMACRO_BRICK_CTRL_RFU2				0x334
+#define EMC_TR_TIMING_0						0x3b4
+#define EMC_TR_CTRL_1						0x3bc
+#define EMC_TR_RDV						0x3c4
+#define EMC_PRE_REFRESH_REQ_CNT					0x3dc
+#define EMC_DYN_SELF_REF_CONTROL				0x3e0
+#define EMC_TXSRDLL						0x3e4
+#define EMC_CCFIFO_ADDR						0x3e8
+#define EMC_CCFIFO_DATA						0x3ec
+#define EMC_TR_QPOP						0x3f4
+#define EMC_TR_RDV_MASK						0x3f8
+#define EMC_TR_QSAFE						0x3fc
+#define EMC_TR_QRST						0x400
+#define EMC_TR_DVFS						0x460
+#define EMC_AUTO_CAL_CHANNEL					0x464
+#define EMC_IBDLY						0x468
+#define EMC_OBDLY						0x46c
+#define EMC_TXDSRVTTGEN						0x480
+#define EMC_WE_DURATION						0x48c
+#define EMC_WS_DURATION						0x490
+#define EMC_WEV							0x494
+#define EMC_WSV							0x498
+#define EMC_CFG_3						0x49c
+#define EMC_MRW6						0x4a4
+#define EMC_MRW7						0x4a8
+#define EMC_MRW8						0x4ac
+#define EMC_MRW10						0x4b4
+#define EMC_MRW11						0x4b8
+#define EMC_MRW12						0x4bc
+#define EMC_MRW13						0x4c0
+#define EMC_MRW14						0x4c4
+#define EMC_MRW15						0x4d0
+#define EMC_WDV_CHK						0x4e0
+#define EMC_CFG_PIPE_2						0x554
+#define EMC_CFG_PIPE_1						0x55c
+#define EMC_CFG_PIPE						0x560
+#define EMC_QPOP						0x564
+#define EMC_QUSE_WIDTH						0x568
+#define EMC_PUTERM_WIDTH					0x56c
+#define EMC_REFCTRL2						0x580
+#define EMC_FBIO_CFG7						0x584
+#define EMC_FBIO_CFG7_CH0_ENABLE				BIT(1)
+#define EMC_FBIO_CFG7_CH1_ENABLE				BIT(2)
+#define EMC_DATA_BRLSHFT_0					0x588
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE7_DATA_BRLSHFT_SHIFT	21
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE7_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE7_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE6_DATA_BRLSHFT_SHIFT	18
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE6_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE6_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE5_DATA_BRLSHFT_SHIFT	15
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE5_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE5_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE4_DATA_BRLSHFT_SHIFT	12
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE4_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE4_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE3_DATA_BRLSHFT_SHIFT	9
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE3_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE3_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE2_DATA_BRLSHFT_SHIFT	6
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE2_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE2_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE1_DATA_BRLSHFT_SHIFT	3
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE1_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE1_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE0_DATA_BRLSHFT_SHIFT	0
+#define EMC_DATA_BRLSHFT_0_RANK0_BYTE0_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_0_RANK0_BYTE0_DATA_BRLSHFT_SHIFT)
+
+#define EMC_DATA_BRLSHFT_1					0x58c
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE7_DATA_BRLSHFT_SHIFT	21
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE7_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE7_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE6_DATA_BRLSHFT_SHIFT	18
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE6_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE6_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE5_DATA_BRLSHFT_SHIFT	15
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE5_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE5_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE4_DATA_BRLSHFT_SHIFT	12
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE4_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE4_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE3_DATA_BRLSHFT_SHIFT	9
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE3_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE3_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE2_DATA_BRLSHFT_SHIFT	6
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE2_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE2_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE1_DATA_BRLSHFT_SHIFT	3
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE1_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE1_DATA_BRLSHFT_SHIFT)
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE0_DATA_BRLSHFT_SHIFT	0
+#define EMC_DATA_BRLSHFT_1_RANK1_BYTE0_DATA_BRLSHFT_MASK	\
+	(0x7 << EMC_DATA_BRLSHFT_1_RANK1_BYTE0_DATA_BRLSHFT_SHIFT)
+
+#define EMC_RFCPB						0x590
+#define EMC_DQS_BRLSHFT_0					0x594
+#define EMC_DQS_BRLSHFT_1					0x598
+#define EMC_CMD_BRLSHFT_0					0x59c
+#define EMC_CMD_BRLSHFT_1					0x5a0
+#define EMC_CMD_BRLSHFT_2					0x5a4
+#define EMC_CMD_BRLSHFT_3					0x5a8
+#define EMC_QUSE_BRLSHFT_0					0x5ac
+#define EMC_QUSE_BRLSHFT_1					0x5b8
+#define EMC_QUSE_BRLSHFT_2					0x5bc
+#define EMC_CCDMW						0x5c0
+#define EMC_QUSE_BRLSHFT_3					0x5c4
+#define EMC_DLL_CFG_0						0x5e4
+#define EMC_DLL_CFG_1						0x5e8
+#define EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_SHIFT		10
+#define EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_MASK		\
+	(0x7ff << EMC_DLL_CFG_1_DDLLCAL_CTRL_START_TRIM_SHIFT)
+
+#define EMC_CONFIG_SAMPLE_DELAY					0x5f0
+#define EMC_PMACRO_QUSE_DDLL_RANK0_0				0x600
+#define EMC_PMACRO_QUSE_DDLL_RANK0_1				0x604
+#define EMC_PMACRO_QUSE_DDLL_RANK0_2				0x608
+#define EMC_PMACRO_QUSE_DDLL_RANK0_3				0x60c
+#define EMC_PMACRO_QUSE_DDLL_RANK0_4				0x610
+#define EMC_PMACRO_QUSE_DDLL_RANK0_5				0x614
+#define EMC_PMACRO_QUSE_DDLL_RANK1_0				0x620
+#define EMC_PMACRO_QUSE_DDLL_RANK1_1				0x624
+#define EMC_PMACRO_QUSE_DDLL_RANK1_2				0x628
+#define EMC_PMACRO_QUSE_DDLL_RANK1_3				0x62c
+#define EMC_PMACRO_QUSE_DDLL_RANK1_4				0x630
+#define EMC_PMACRO_QUSE_DDLL_RANK1_5				0x634
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0			0x640
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE1_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE1_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE1_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE0_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE0_MASK \
+	(0x3ff <<							    \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_OB_DDLL_LONG_DQ_RANK0_BYTE0_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1			0x644
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE3_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE3_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE3_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE2_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE2_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_OB_DDLL_LONG_DQ_RANK0_BYTE2_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2			0x648
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE5_SHIFT  \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE5_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE5_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE4_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE4_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_OB_DDLL_LONG_DQ_RANK0_BYTE4_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3			0x64c
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE7_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE7_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE7_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE6_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE6_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_OB_DDLL_LONG_DQ_RANK0_BYTE6_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_4			0x650
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_5			0x654
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0			0x660
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE1_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE1_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE1_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE0_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE0_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_OB_DDLL_LONG_DQ_RANK1_BYTE0_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1			0x664
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE3_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE3_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE3_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE2_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE2_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_OB_DDLL_LONG_DQ_RANK1_BYTE2_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2			0x668
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE5_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE5_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE5_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE4_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE4_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_OB_DDLL_LONG_DQ_RANK1_BYTE4_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3			0x66c
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE7_SHIFT \
+	16
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE7_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE7_SHIFT)
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE6_SHIFT \
+	0
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE6_MASK  \
+	(0x3ff <<							     \
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_OB_DDLL_LONG_DQ_RANK1_BYTE6_SHIFT)
+
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_4			0x670
+#define EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_5			0x674
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_0			0x680
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_1			0x684
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_2			0x688
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_3			0x68c
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_4			0x690
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK0_5			0x694
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_0			0x6a0
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_1			0x6a4
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_2			0x6a8
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_3			0x6ac
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_4			0x6b0
+#define EMC_PMACRO_OB_DDLL_LONG_DQS_RANK1_5			0x6b4
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_0			0x6c0
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_1			0x6c4
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_2			0x6c8
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK0_3			0x6cc
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_0			0x6e0
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_1			0x6e4
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_2			0x6e8
+#define EMC_PMACRO_IB_DDLL_LONG_DQS_RANK1_3			0x6ec
+#define EMC_PMACRO_TX_PWRD_0					0x720
+#define EMC_PMACRO_TX_PWRD_1					0x724
+#define EMC_PMACRO_TX_PWRD_2					0x728
+#define EMC_PMACRO_TX_PWRD_3					0x72c
+#define EMC_PMACRO_TX_PWRD_4					0x730
+#define EMC_PMACRO_TX_PWRD_5					0x734
+#define EMC_PMACRO_TX_SEL_CLK_SRC_0				0x740
+#define EMC_PMACRO_TX_SEL_CLK_SRC_1				0x744
+#define EMC_PMACRO_TX_SEL_CLK_SRC_3				0x74c
+#define EMC_PMACRO_TX_SEL_CLK_SRC_2				0x748
+#define EMC_PMACRO_TX_SEL_CLK_SRC_4				0x750
+#define EMC_PMACRO_TX_SEL_CLK_SRC_5				0x754
+#define EMC_PMACRO_DDLL_BYPASS					0x760
+#define EMC_PMACRO_DDLL_PWRD_0					0x770
+#define EMC_PMACRO_DDLL_PWRD_1					0x774
+#define EMC_PMACRO_DDLL_PWRD_2					0x778
+#define EMC_PMACRO_CMD_CTRL_0					0x780
+#define EMC_PMACRO_CMD_CTRL_1					0x784
+#define EMC_PMACRO_CMD_CTRL_2					0x788
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_0		0x800
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_1		0x804
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_2		0x808
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE0_3		0x80c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_0		0x810
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_1		0x814
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_2		0x818
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE1_3		0x81c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_0		0x820
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_1		0x824
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_2		0x828
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE2_3		0x82c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_0		0x830
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_1		0x834
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_2		0x838
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE3_3		0x83c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_0		0x840
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_1		0x844
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_2		0x848
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE4_3		0x84c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_0		0x850
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_1		0x854
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_2		0x858
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE5_3		0x85c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_0		0x860
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_1		0x864
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_2		0x868
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE6_3		0x86c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_0		0x870
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_1		0x874
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_2		0x878
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_BYTE7_3		0x87c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_0		0x880
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_1		0x884
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_2		0x888
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD0_3		0x88c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_0		0x890
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_1		0x894
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_2		0x898
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD1_3		0x89c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_0		0x8a0
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_1		0x8a4
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_2		0x8a8
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD2_3		0x8ac
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_0		0x8b0
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_1		0x8b4
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_2		0x8b8
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK0_CMD3_3		0x8bc
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_0		0x900
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_1		0x904
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_2		0x908
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE0_3		0x90c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_0		0x910
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_1		0x914
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_2		0x918
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE1_3		0x91c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_0		0x920
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_1		0x924
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_2		0x928
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE2_3		0x92c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_0		0x930
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_1		0x934
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_2		0x938
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE3_3		0x93c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_0		0x940
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_1		0x944
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_2		0x948
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE4_3		0x94c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_0		0x950
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_1		0x954
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_2		0x958
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE5_3		0x95c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_0		0x960
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_1		0x964
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_2		0x968
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE6_3		0x96c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_0		0x970
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_1		0x974
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_2		0x978
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_BYTE7_3		0x97c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_0		0x980
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_1		0x984
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_2		0x988
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD0_3		0x98c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_0		0x990
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_1		0x994
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_2		0x998
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD1_3		0x99c
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_0		0x9a0
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_1		0x9a4
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_2		0x9a8
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD2_3		0x9ac
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_0		0x9b0
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_1		0x9b4
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_2		0x9b8
+#define EMC_PMACRO_OB_DDLL_SHORT_DQ_RANK1_CMD3_3		0x9bc
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_0		0xa00
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_1		0xa04
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE0_2		0xa08
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_0		0xa10
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_1		0xa14
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE1_2		0xa18
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_0		0xa20
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_1		0xa24
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE2_2		0xa28
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_0		0xa30
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_1		0xa34
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE3_2		0xa38
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_0		0xa40
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_1		0xa44
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE4_2		0xa48
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_0		0xa50
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_1		0xa54
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE5_2		0xa58
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_0		0xa60
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_1		0xa64
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE6_2		0xa68
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_0		0xa70
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_1		0xa74
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK0_BYTE7_2		0xa78
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_0		0xb00
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_1		0xb04
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE0_2		0xb08
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_0		0xb10
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_1		0xb14
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE1_2		0xb18
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_0		0xb20
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_1		0xb24
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE2_2		0xb28
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_0		0xb30
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_1		0xb34
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE3_2		0xb38
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_0		0xb40
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_1		0xb44
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE4_2		0xb48
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_0		0xb50
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_1		0xb54
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE5_2		0xb58
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_0		0xb60
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_1		0xb64
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE6_2		0xb68
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_0		0xb70
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_1		0xb74
+#define EMC_PMACRO_IB_DDLL_SHORT_DQ_RANK1_BYTE7_2		0xb78
+#define EMC_PMACRO_IB_VREF_DQ_0					0xbe0
+#define EMC_PMACRO_IB_VREF_DQ_1					0xbe4
+#define EMC_PMACRO_IB_VREF_DQS_0				0xbf0
+#define EMC_PMACRO_IB_VREF_DQS_1				0xbf4
+#define EMC_PMACRO_DDLL_LONG_CMD_0				0xc00
+#define EMC_PMACRO_DDLL_LONG_CMD_1				0xc04
+#define EMC_PMACRO_DDLL_LONG_CMD_2				0xc08
+#define EMC_PMACRO_DDLL_LONG_CMD_3				0xc0c
+#define EMC_PMACRO_DDLL_LONG_CMD_4				0xc10
+#define EMC_PMACRO_DDLL_LONG_CMD_5				0xc14
+#define EMC_PMACRO_DDLL_SHORT_CMD_0				0xc20
+#define EMC_PMACRO_DDLL_SHORT_CMD_1				0xc24
+#define EMC_PMACRO_DDLL_SHORT_CMD_2				0xc28
+#define EMC_PMACRO_VTTGEN_CTRL_0				0xc34
+#define EMC_PMACRO_VTTGEN_CTRL_1				0xc38
+#define EMC_PMACRO_BG_BIAS_CTRL_0				0xc3c
+#define EMC_PMACRO_PAD_CFG_CTRL					0xc40
+#define EMC_PMACRO_ZCTRL					0xc44
+#define EMC_PMACRO_CMD_PAD_RX_CTRL				0xc50
+#define EMC_PMACRO_DATA_PAD_RX_CTRL				0xc54
+#define EMC_PMACRO_CMD_RX_TERM_MODE				0xc58
+#define EMC_PMACRO_DATA_RX_TERM_MODE				0xc5c
+#define EMC_PMACRO_CMD_PAD_TX_CTRL				0xc60
+#define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_E_DCC		BIT(1)
+#define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSP_TX_E_DCC		BIT(9)
+#define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQSN_TX_E_DCC		BIT(16)
+#define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_CMD_TX_E_DCC		BIT(24)
+#define EMC_PMACRO_CMD_PAD_TX_CTRL_CMD_DQ_TX_DRVFORCEON		BIT(26)
+
+#define EMC_PMACRO_DATA_PAD_TX_CTRL				0xc64
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQ_TX_E_DCC		BIT(1)
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSP_TX_E_DCC		BIT(9)
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_DQSN_TX_E_DCC		BIT(16)
+#define EMC_PMACRO_DATA_PAD_TX_CTRL_DATA_CMD_TX_E_DCC		BIT(24)
+
+#define EMC_PMACRO_COMMON_PAD_TX_CTRL				0xc68
+#define EMC_PMACRO_AUTOCAL_CFG_COMMON				0xc78
+#define EMC_PMACRO_VTTGEN_CTRL_2				0xcf0
+#define EMC_PMACRO_IB_RXRT					0xcf4
+#define EMC_TRAINING_CTRL					0xe04
+#define EMC_TRAINING_QUSE_CORS_CTRL				0xe0c
+#define EMC_TRAINING_QUSE_FINE_CTRL				0xe10
+#define EMC_TRAINING_QUSE_CTRL_MISC				0xe14
+#define EMC_TRAINING_WRITE_FINE_CTRL				0xe18
+#define EMC_TRAINING_WRITE_CTRL_MISC				0xe1c
+#define EMC_TRAINING_WRITE_VREF_CTRL				0xe20
+#define EMC_TRAINING_READ_FINE_CTRL				0xe24
+#define EMC_TRAINING_READ_CTRL_MISC				0xe28
+#define EMC_TRAINING_READ_VREF_CTRL				0xe2c
+#define EMC_TRAINING_CA_FINE_CTRL				0xe30
+#define EMC_TRAINING_CA_CTRL_MISC				0xe34
+#define EMC_TRAINING_CA_CTRL_MISC1				0xe38
+#define EMC_TRAINING_CA_VREF_CTRL				0xe3c
+#define EMC_TRAINING_SETTLE					0xe44
+#define EMC_TRAINING_MPC					0xe5c
+#define EMC_TRAINING_VREF_SETTLE				0xe6c
+#define EMC_TRAINING_QUSE_VREF_CTRL				0xed0
+#define EMC_TRAINING_OPT_DQS_IB_VREF_RANK0			0xed4
+#define EMC_TRAINING_OPT_DQS_IB_VREF_RANK1			0xed8
+
+#define EMC_COPY_TABLE_PARAM_PERIODIC_FIELDS			BIT(0)
+#define EMC_COPY_TABLE_PARAM_TRIM_REGS				BIT(1)
+
+enum burst_regs_list {
+	EMC_REFRESH_INDEX = 41,
+	EMC_PRE_REFRESH_REQ_CNT_INDEX = 43,
+	EMC_FBIO_CFG5_INDEX = 65,
+	EMC_DLL_CFG_0_INDEX = 144,
+	EMC_DYN_SELF_REF_CONTROL_INDEX = 150,
+	EMC_PMACRO_CMD_PAD_TX_CTRL_INDEX = 161,
+	EMC_PMACRO_DATA_PAD_TX_CTRL_INDEX,
+	EMC_PMACRO_COMMON_PAD_TX_CTRL_INDEX,
+	EMC_PMACRO_BRICK_CTRL_RFU1_INDEX = 167,
+};
+
+enum trim_regs_list {
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_0_INDEX = 60,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_1_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_2_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_3_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_4_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK0_5_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_0_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_1_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_2_INDEX,
+	EMC_PMACRO_OB_DDLL_LONG_DQ_RANK1_3_INDEX,
+};
+
 enum burst_mc_regs_list {
 	MC_EMEM_ARB_MISC0_INDEX = 20,
 };
 
+enum {
+	SINGLE_CHANNEL = 0,
+	DUAL_CHANNEL,
+};
+
+enum {
+	DLL_OFF,
+	DLL_ON,
+};
+
 enum {
 	REG_EMC,
 	REG_EMC0,
@@ -49,6 +716,21 @@ enum {
 	BURST_REGS_SIZE = 221,
 };
 
+struct per_ch_regs {
+	u16 bank;
+	u16 offset;
+};
+
+struct emc_table_register_offset {
+	u16 burst_regs_off[BURST_REGS_SIZE];
+	u16 trim_regs_off[TRIM_REGS_SIZE];
+	u16 burst_mc_regs_off[BURST_MC_REGS_SIZE];
+	u16 la_scale_regs_off[BURST_UP_DOWN_REGS_SIZE];
+	struct per_ch_regs burst_regs_per_ch_off[BURST_REGS_PER_CH_SIZE];
+	struct per_ch_regs trim_regs_per_ch_off[TRIM_REGS_PER_CH_SIZE];
+	struct per_ch_regs vref_regs_per_ch_off[VREF_REGS_PER_CH_SIZE];
+};
+
 struct emc_table {
 	u32 rev;
 	const char dvfs_ver[60];
@@ -153,4 +835,40 @@ struct supported_sequence {
 	char *seq_rev;
 };
 
+extern const struct emc_table_register_offset reg_off;
+extern unsigned long dram_over_temp_state;
+
+void ccfifo_writel(struct tegra_emc *emc, u32 val, unsigned long addr,
+		   u32 delay);
+u32 div_o3(u32 a, u32 b);
+void emc_writel(struct tegra_emc *emc, u32 val, unsigned long offset);
+u32  emc_readl(struct tegra_emc *emc, unsigned long offset);
+void emc_writel_per_ch(struct tegra_emc *emc, u32 val, int type,
+		       unsigned long offset);
+u32  emc1_readl(struct tegra_emc *emc, unsigned long offset);
+
+void emc_do_clock_change(struct tegra_emc *emc, u32 clksrc);
+void emc_set_shadow_bypass(struct tegra_emc *emc, int set);
+void emc_timing_update(struct tegra_emc *emc, int dual_chan);
+u32 emc_get_dll_state(struct emc_table *next_timing);
+struct emc_table *emc_get_timing_from_freq(struct tegra_emc *emc,
+					   unsigned long rate);
+void emc_set_over_temp_timing(struct tegra_emc *emc, struct emc_table *timing,
+			      unsigned long state);
+int emc_wait_for_update(struct tegra_emc *emc, u32 status_reg, u32 bit_mask,
+			bool updated_state, int chan);
+u32 tegra210_actual_osc_clocks(u32 in);
+u32 tegra210_apply_periodic_compensation_trimmer(struct emc_table *next_timing,
+						 u32 offset);
+void tegra210_dll_disable(struct tegra_emc *emc, int channel_mode);
+void tegra210_dll_enable(struct tegra_emc *emc, int channel_mode);
+u32 tegra210_dll_prelock(struct tegra_emc *emc, int dvfs_with_training,
+			 u32 clksrc);
+u32 tegra210_dvfs_power_ramp_down(struct tegra_emc *emc, u32 clk,
+				  int flip_backward);
+u32 tegra210_dvfs_power_ramp_up(struct tegra_emc *emc, u32 clk,
+				int flip_backward);
+void tegra210_reset_dram_clktree_values(struct emc_table *table);
+void tegra210_start_periodic_compensation(struct tegra_emc *emc);
+
 #endif
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
