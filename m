Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A150200825
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dbzPHaa3HhJ1HCE8d8d+c/osd5sdpyDaZ2Wz8NuQyJg=; b=LmZUOZuvS7cJ3ZEP0eq6x1d4HA
	q+1IZx0rd2KrLAFyTfwytkw7kPbO8/L5EnJy01Up4S0o0F8Zh83+nhgE/qml/f5i2upAvDcZX5s2c
	XeAiBaeESSraYVculAh5WPBRfPghdc7kVS1VXP4bQm7agCBxkigVJkwGTlr9WDUgj1Qh4pduszalc
	fbHDj5+W2KKBHGAliM7Rz3QX+Dpv0VKTQuPMeicjD4IlUG2NqMt/+MiVfDQY71O5ockFTTUZcriy+
	p5ePfGwp84JXbhLgAUnBWX5/KsAD3dEVUTNNEnHcTQq/aax0+DFZDk3Ujl53P2TlzMcLmxNKW6Ifr
	z2lqIuYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFcK-00015x-G8; Fri, 19 Jun 2020 11:55:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFbZ-0007aA-3s; Fri, 19 Jun 2020 11:54:50 +0000
Received: by mail-pf1-x444.google.com with SMTP id j1so4343636pfe.4;
 Fri, 19 Jun 2020 04:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=R7iOJ3VbMICFwDJGcoWnaL3IWI5iJC6yLRKljUH5RlI=;
 b=RLc/eMd1oSGu5MQHtVB9eKjFEnC0qE8/AyYf/WH993tEehH3kHC6larsiydl0cs1a/
 wfnJPsXCJIhv3cHx/RGLqoAZTng2Hh2wXiDtCillp/M31febicf89ff4lIyiT2ZJ78gg
 v75sAVBIDSRcvjUyf8ZgSw3rsWlxde2FeQiPyRaTlaabyQ95TZPJhbjwiKdjmeO20kEw
 8Qs06a7l9l/WsUafhiNRK9ZHmlqMJCyx4Ru6FDvtmqpxl59FdieRJYBagm4H7b9cTyy9
 RH6mUvlU61yIMwR/8mUu6Sw0ImtgAoOBeCi6Lp6BMMSf1xmtJUt+i7zyQPkCY6xUnmIt
 5PPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=R7iOJ3VbMICFwDJGcoWnaL3IWI5iJC6yLRKljUH5RlI=;
 b=NDl32GudyeqsZQFxL9Cs6IjswcIGvZABP+6BQDUGqi6Qgq1gSxoWZzFWIO4/hgXN8b
 CfI/wIWMNHwwkSFDoNcBztyDPM79qFRcTVvkpaSqE/r7PPflYKg7NBUyX8MP2wJ7vynb
 UrSiyEG9OBdO9ZFrTgnFLFLB9EtjFWizoQQozXPP/ofFERDMeYZt0cHDhX7dt0fceWmW
 nGvbSZYtnoUDcraUQtheNA2X12F33hvw5NO0vVXWzhsZrstjZ0wvVD466Q4KucLog5as
 Eq5/jtVF/z5dk/jC3u7ZkGVgC2r8F9901pl1594Zk6TZhBPAydLc9N8z7vR68Zh17rTL
 Tf9Q==
X-Gm-Message-State: AOAM531NFv+ErVfaTlISs/KVeT12nHrN16Mvw3YMJ4aKfh9mmi7P6fhP
 OAQWrOG6f8jAELsUcuiBuvs=
X-Google-Smtp-Source: ABdhPJwLKgFyR2PXwTyztWAp1fMfiQ49ZTXtXes86whG3F8Ys9MwFt9PHQdSU62vbcmJb+cG0SWxZw==
X-Received: by 2002:a63:f050:: with SMTP id s16mr2688986pgj.261.1592567683124; 
 Fri, 19 Jun 2020 04:54:43 -0700 (PDT)
Received: from localhost.localdomain ([2402:7500:46c:79b7:a5d3:5b37:1d99:175a])
 by smtp.gmail.com with ESMTPSA id n64sm5026712pga.38.2020.06.19.04.54.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Jun 2020 04:54:42 -0700 (PDT)
From: Gene Chen <gene.chen.richtek@gmail.com>
To: lee.jones@linaro.org, jic23@kernel.org, jacek.anaszewski@gmail.com,
 pavel@ucw.cz, matthias.bgg@gmail.com
Subject: [PATCH v2 2/4] mfd: mt6360: implement i2c R/W with CRC
Date: Fri, 19 Jun 2020 19:53:49 +0800
Message-Id: <1592567631-20363-3-git-send-email-gene.chen.richtek@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
References: <1592567631-20363-1-git-send-email-gene.chen.richtek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_045445_492981_A300DE59 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gene.chen.richtek[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, lars@metafoo.de, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, cy_huang@richtek.com, benjamin.chao@mediatek.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org, dmurphy@ti.com,
 pmeerw@pmeerw.net, knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gene Chen <gene_chen@richtek.com>

imlement i2c R/W with CRC when access sub-device PMIC and LDO part

Signed-off-by: Gene Chen <gene_chen@richtek.com>
---
 drivers/mfd/Kconfig        |   1 +
 drivers/mfd/mt6360-core.c  | 541 +++++++++++++++++++++++++++++----------------
 include/linux/mfd/mt6360.h | 240 --------------------
 3 files changed, 357 insertions(+), 425 deletions(-)
 delete mode 100644 include/linux/mfd/mt6360.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index a37d7d1..0684ddc 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -913,6 +913,7 @@ config MFD_MT6360
 	select MFD_CORE
 	select REGMAP_I2C
 	select REGMAP_IRQ
+	select CRC8
 	depends on I2C
 	help
 	  Say Y here to enable MT6360 PMU/PMIC/LDO functional support.
diff --git a/drivers/mfd/mt6360-core.c b/drivers/mfd/mt6360-core.c
index e9cacc2..00e3cb5 100644
--- a/drivers/mfd/mt6360-core.c
+++ b/drivers/mfd/mt6360-core.c
@@ -5,122 +5,160 @@
  * Author: Gene Chen <gene_chen@richtek.com>
  */
 
+#include <linux/kernel.h>
+#include <linux/module.h>
 #include <linux/i2c.h>
-#include <linux/init.h>
+#include <linux/crc8.h>
+#include <linux/slab.h>
+#include <linux/regmap.h>
 #include <linux/interrupt.h>
-#include <linux/kernel.h>
 #include <linux/mfd/core.h>
-#include <linux/module.h>
-#include <linux/of_irq.h>
-#include <linux/of_platform.h>
-#include <linux/version.h>
 
-#include <linux/mfd/mt6360.h>
+enum {
+	MT6360_SLAVE_TCPC = 0,
+	MT6360_SLAVE_PMIC,
+	MT6360_SLAVE_LDO,
+	MT6360_SLAVE_PMU,
+	MT6360_SLAVE_MAX,
+};
+
+struct mt6360_data {
+	struct i2c_client *i2c[MT6360_SLAVE_MAX];
+	struct device *dev;
+	struct regmap *regmap;
+	struct regmap_irq_chip_data *irq_data;
+	unsigned int chip_rev;
+	u8 crc8_tbl[CRC8_TABLE_SIZE];
+};
+
+#define MT6360_PMU_SLAVEID		0x34
+#define MT6360_PMIC_SLAVEID		0x1A
+#define MT6360_LDO_SLAVEID		0x64
+#define MT6360_TCPC_SLAVEID		0x4E
+
+#define MT6360_REG_TCPCSTART		0x00
+#define MT6360_REG_TCPCEND		0xFF
+#define MT6360_REG_PMICSTART		0x100
+#define MT6360_REG_PMICEND		0x13B
+#define MT6360_REG_LDOSTART		0x200
+#define MT6360_REG_LDOEND		0x21C
+#define MT6360_REG_PMUSTART		0x300
+#define MT6360_REG_PMU_DEVINFO		0x300
+#define MT6360_REG_PMU_CHGIRQ1		0x3D0
+#define MT6360_REG_PMU_CHGMASK1		0x3F0
+#define MT6360_REG_PMUEND		0x3FF
+
+/* from 0x3D0 to 0x3DF */
+#define MT6360_IRQ_REGNUM		16
+
+#define MT6360_CHIPVEN_MASK		0xF0
+#define MT6360_CHIPVEN_VAL		0x50
+#define MT6360_CHIPREV_MASK		0x0F
 
 /* reg 0 -> 0 ~ 7 */
-#define MT6360_CHG_TREG_EVT		(4)
-#define MT6360_CHG_AICR_EVT		(5)
-#define MT6360_CHG_MIVR_EVT		(6)
-#define MT6360_PWR_RDY_EVT		(7)
+#define MT6360_CHG_TREG_EVT		4
+#define MT6360_CHG_AICR_EVT		5
+#define MT6360_CHG_MIVR_EVT		6
+#define MT6360_PWR_RDY_EVT		7
 /* REG 1 -> 8 ~ 15 */
-#define MT6360_CHG_BATSYSUV_EVT		(9)
-#define MT6360_FLED_CHG_VINOVP_EVT	(11)
-#define MT6360_CHG_VSYSUV_EVT		(12)
-#define MT6360_CHG_VSYSOV_EVT		(13)
-#define MT6360_CHG_VBATOV_EVT		(14)
-#define MT6360_CHG_VBUSOV_EVT		(15)
+#define MT6360_CHG_BATSYSUV_EVT		9
+#define MT6360_FLED_CHG_VINOVP_EVT	11
+#define MT6360_CHG_VSYSUV_EVT		12
+#define MT6360_CHG_VSYSOV_EVT		13
+#define MT6360_CHG_VBATOV_EVT		14
+#define MT6360_CHG_VBUSOV_EVT		15
 /* REG 2 -> 16 ~ 23 */
 /* REG 3 -> 24 ~ 31 */
-#define MT6360_WD_PMU_DET		(25)
-#define MT6360_WD_PMU_DONE		(26)
-#define MT6360_CHG_TMRI			(27)
-#define MT6360_CHG_ADPBADI		(29)
-#define MT6360_CHG_RVPI			(30)
-#define MT6360_OTPI			(31)
+#define MT6360_WD_PMU_DET		25
+#define MT6360_WD_PMU_DONE		26
+#define MT6360_CHG_TMRI			27
+#define MT6360_CHG_ADPBADI		29
+#define MT6360_CHG_RVPI			30
+#define MT6360_OTPI			31
 /* REG 4 -> 32 ~ 39 */
-#define MT6360_CHG_AICCMEASL		(32)
-#define MT6360_CHGDET_DONEI		(34)
-#define MT6360_WDTMRI			(35)
-#define MT6360_SSFINISHI		(36)
-#define MT6360_CHG_RECHGI		(37)
-#define MT6360_CHG_TERMI		(38)
-#define MT6360_CHG_IEOCI		(39)
+#define MT6360_CHG_AICCMEASL		32
+#define MT6360_CHGDET_DONEI		34
+#define MT6360_WDTMRI			35
+#define MT6360_SSFINISHI		36
+#define MT6360_CHG_RECHGI		37
+#define MT6360_CHG_TERMI		38
+#define MT6360_CHG_IEOCI		39
 /* REG 5 -> 40 ~ 47 */
-#define MT6360_PUMPX_DONEI		(40)
-#define MT6360_BAT_OVP_ADC_EVT		(41)
-#define MT6360_TYPEC_OTP_EVT		(42)
-#define MT6360_ADC_WAKEUP_EVT		(43)
-#define MT6360_ADC_DONEI		(44)
-#define MT6360_BST_BATUVI		(45)
-#define MT6360_BST_VBUSOVI		(46)
-#define MT6360_BST_OLPI			(47)
+#define MT6360_PUMPX_DONEI		40
+#define MT6360_BAT_OVP_ADC_EVT		41
+#define MT6360_TYPEC_OTP_EVT		42
+#define MT6360_ADC_WAKEUP_EVT		43
+#define MT6360_ADC_DONEI		44
+#define MT6360_BST_BATUVI		45
+#define MT6360_BST_VBUSOVI		46
+#define MT6360_BST_OLPI			47
 /* REG 6 -> 48 ~ 55 */
-#define MT6360_ATTACH_I			(48)
-#define MT6360_DETACH_I			(49)
-#define MT6360_QC30_STPDONE		(51)
-#define MT6360_QC_VBUSDET_DONE		(52)
-#define MT6360_HVDCP_DET		(53)
-#define MT6360_CHGDETI			(54)
-#define MT6360_DCDTI			(55)
+#define MT6360_ATTACH_I			48
+#define MT6360_DETACH_I			49
+#define MT6360_QC30_STPDONE		51
+#define MT6360_QC_VBUSDET_DONE		52
+#define MT6360_HVDCP_DET		53
+#define MT6360_CHGDETI			54
+#define MT6360_DCDTI			55
 /* REG 7 -> 56 ~ 63 */
-#define MT6360_FOD_DONE_EVT		(56)
-#define MT6360_FOD_OV_EVT		(57)
-#define MT6360_CHRDET_UVP_EVT		(58)
-#define MT6360_CHRDET_OVP_EVT		(59)
-#define MT6360_CHRDET_EXT_EVT		(60)
-#define MT6360_FOD_LR_EVT		(61)
-#define MT6360_FOD_HR_EVT		(62)
-#define MT6360_FOD_DISCHG_FAIL_EVT	(63)
+#define MT6360_FOD_DONE_EVT		56
+#define MT6360_FOD_OV_EVT		57
+#define MT6360_CHRDET_UVP_EVT		58
+#define MT6360_CHRDET_OVP_EVT		59
+#define MT6360_CHRDET_EXT_EVT		60
+#define MT6360_FOD_LR_EVT		61
+#define MT6360_FOD_HR_EVT		62
+#define MT6360_FOD_DISCHG_FAIL_EVT	63
 /* REG 8 -> 64 ~ 71 */
-#define MT6360_USBID_EVT		(64)
-#define MT6360_APWDTRST_EVT		(65)
-#define MT6360_EN_EVT			(66)
-#define MT6360_QONB_RST_EVT		(67)
-#define MT6360_MRSTB_EVT		(68)
-#define MT6360_OTP_EVT			(69)
-#define MT6360_VDDAOV_EVT		(70)
-#define MT6360_SYSUV_EVT		(71)
+#define MT6360_USBID_EVT		64
+#define MT6360_APWDTRST_EVT		65
+#define MT6360_EN_EVT			66
+#define MT6360_QONB_RST_EVT		67
+#define MT6360_MRSTB_EVT		68
+#define MT6360_OTP_EVT			69
+#define MT6360_VDDAOV_EVT		70
+#define MT6360_SYSUV_EVT		71
 /* REG 9 -> 72 ~ 79 */
-#define MT6360_FLED_STRBPIN_EVT		(72)
-#define MT6360_FLED_TORPIN_EVT		(73)
-#define MT6360_FLED_TX_EVT		(74)
-#define MT6360_FLED_LVF_EVT		(75)
-#define MT6360_FLED2_SHORT_EVT		(78)
-#define MT6360_FLED1_SHORT_EVT		(79)
+#define MT6360_FLED_STRBPIN_EVT		72
+#define MT6360_FLED_TORPIN_EVT		73
+#define MT6360_FLED_TX_EVT		74
+#define MT6360_FLED_LVF_EVT		75
+#define MT6360_FLED2_SHORT_EVT		78
+#define MT6360_FLED1_SHORT_EVT		79
 /* REG 10 -> 80 ~ 87 */
-#define MT6360_FLED2_STRB_EVT		(80)
-#define MT6360_FLED1_STRB_EVT		(81)
-#define MT6360_FLED2_STRB_TO_EVT	(82)
-#define MT6360_FLED1_STRB_TO_EVT	(83)
-#define MT6360_FLED2_TOR_EVT		(84)
-#define MT6360_FLED1_TOR_EVT		(85)
+#define MT6360_FLED2_STRB_EVT		80
+#define MT6360_FLED1_STRB_EVT		81
+#define MT6360_FLED2_STRB_TO_EVT	82
+#define MT6360_FLED1_STRB_TO_EVT	83
+#define MT6360_FLED2_TOR_EVT		84
+#define MT6360_FLED1_TOR_EVT		85
 /* REG 11 -> 88 ~ 95 */
 /* REG 12 -> 96 ~ 103 */
-#define MT6360_BUCK1_PGB_EVT		(96)
-#define MT6360_BUCK1_OC_EVT		(100)
-#define MT6360_BUCK1_OV_EVT		(101)
-#define MT6360_BUCK1_UV_EVT		(102)
+#define MT6360_BUCK1_PGB_EVT		96
+#define MT6360_BUCK1_OC_EVT		100
+#define MT6360_BUCK1_OV_EVT		101
+#define MT6360_BUCK1_UV_EVT		102
 /* REG 13 -> 104 ~ 111 */
-#define MT6360_BUCK2_PGB_EVT		(104)
-#define MT6360_BUCK2_OC_EVT		(108)
-#define MT6360_BUCK2_OV_EVT		(109)
-#define MT6360_BUCK2_UV_EVT		(110)
+#define MT6360_BUCK2_PGB_EVT		104
+#define MT6360_BUCK2_OC_EVT		108
+#define MT6360_BUCK2_OV_EVT		109
+#define MT6360_BUCK2_UV_EVT		110
 /* REG 14 -> 112 ~ 119 */
-#define MT6360_LDO1_OC_EVT		(113)
-#define MT6360_LDO2_OC_EVT		(114)
-#define MT6360_LDO3_OC_EVT		(115)
-#define MT6360_LDO5_OC_EVT		(117)
-#define MT6360_LDO6_OC_EVT		(118)
-#define MT6360_LDO7_OC_EVT		(119)
+#define MT6360_LDO1_OC_EVT		113
+#define MT6360_LDO2_OC_EVT		114
+#define MT6360_LDO3_OC_EVT		115
+#define MT6360_LDO5_OC_EVT		117
+#define MT6360_LDO6_OC_EVT		118
+#define MT6360_LDO7_OC_EVT		119
 /* REG 15 -> 120 ~ 127 */
-#define MT6360_LDO1_PGB_EVT		(121)
-#define MT6360_LDO2_PGB_EVT		(122)
-#define MT6360_LDO3_PGB_EVT		(123)
-#define MT6360_LDO5_PGB_EVT		(125)
-#define MT6360_LDO6_PGB_EVT		(126)
-#define MT6360_LDO7_PGB_EVT		(127)
-
-static const struct regmap_irq mt6360_pmu_irqs[] =  {
+#define MT6360_LDO1_PGB_EVT		121
+#define MT6360_LDO2_PGB_EVT		122
+#define MT6360_LDO3_PGB_EVT		123
+#define MT6360_LDO5_PGB_EVT		125
+#define MT6360_LDO6_PGB_EVT		126
+#define MT6360_LDO7_PGB_EVT		127
+
+static const struct regmap_irq mt6360_irqs[] =  {
 	REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_CHG_AICR_EVT, 8),
 	REGMAP_IRQ_REG_LINE(MT6360_CHG_MIVR_EVT, 8),
@@ -209,30 +247,16 @@ static const struct regmap_irq mt6360_pmu_irqs[] =  {
 	REGMAP_IRQ_REG_LINE(MT6360_LDO7_PGB_EVT, 8),
 };
 
-static int mt6360_pmu_handle_post_irq(void *irq_drv_data)
-{
-	struct mt6360_pmu_data *mpd = irq_drv_data;
-
-	return regmap_update_bits(mpd->regmap,
-		MT6360_PMU_IRQ_SET, MT6360_IRQ_RETRIG, MT6360_IRQ_RETRIG);
-}
-
-static struct regmap_irq_chip mt6360_pmu_irq_chip = {
-	.irqs = mt6360_pmu_irqs,
-	.num_irqs = ARRAY_SIZE(mt6360_pmu_irqs),
-	.num_regs = MT6360_PMU_IRQ_REGNUM,
-	.mask_base = MT6360_PMU_CHG_MASK1,
-	.status_base = MT6360_PMU_CHG_IRQ1,
-	.ack_base = MT6360_PMU_CHG_IRQ1,
+static const struct regmap_irq_chip mt6360_irq_chip = {
+	.name = "mt6360_irqs",
+	.irqs = mt6360_irqs,
+	.num_irqs = ARRAY_SIZE(mt6360_irqs),
+	.num_regs = MT6360_IRQ_REGNUM,
+	.mask_base = MT6360_REG_PMU_CHGMASK1,
+	.status_base = MT6360_REG_PMU_CHGIRQ1,
+	.ack_base = MT6360_REG_PMU_CHGIRQ1,
 	.init_ack_masked = true,
 	.use_ack = true,
-	.handle_post_irq = mt6360_pmu_handle_post_irq,
-};
-
-static const struct regmap_config mt6360_pmu_regmap_config = {
-	.reg_bits = 8,
-	.val_bits = 8,
-	.max_register = MT6360_PMU_MAXREG,
 };
 
 static const struct resource mt6360_adc_resources[] = {
@@ -266,7 +290,7 @@ static const struct resource mt6360_led_resources[] = {
 	DEFINE_RES_IRQ_NAMED(MT6360_FLED1_STRB_TO_EVT, "fled1_strb_to_evt"),
 };
 
-static const struct resource mt6360_pmic_resources[] = {
+static const struct resource mt6360_regulator_resources[] = {
 	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_PGB_EVT, "buck1_pgb_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OC_EVT, "buck1_oc_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_BUCK1_OV_EVT, "buck1_ov_evt"),
@@ -279,9 +303,6 @@ static const struct resource mt6360_pmic_resources[] = {
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_OC_EVT, "ldo7_oc_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO6_PGB_EVT, "ldo6_pgb_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO7_PGB_EVT, "ldo7_pgb_evt"),
-};
-
-static const struct resource mt6360_ldo_resources[] = {
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO1_OC_EVT, "ldo1_oc_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO2_OC_EVT, "ldo2_oc_evt"),
 	DEFINE_RES_IRQ_NAMED(MT6360_LDO3_OC_EVT, "ldo3_oc_evt"),
@@ -293,94 +314,245 @@ static const struct resource mt6360_ldo_resources[] = {
 };
 
 static const struct mfd_cell mt6360_devs[] = {
-	OF_MFD_CELL("mt6360_adc", mt6360_adc_resources,
-		    NULL, 0, 0, "mediatek,mt6360_adc"),
-	OF_MFD_CELL("mt6360_chg", mt6360_chg_resources,
-		    NULL, 0, 0, "mediatek,mt6360_chg"),
-	OF_MFD_CELL("mt6360_led", mt6360_led_resources,
-		    NULL, 0, 0, "mediatek,mt6360_led"),
-	OF_MFD_CELL("mt6360_pmic", mt6360_pmic_resources,
-		    NULL, 0, 0, "mediatek,mt6360_pmic"),
-	OF_MFD_CELL("mt6360_ldo", mt6360_ldo_resources,
-		    NULL, 0, 0, "mediatek,mt6360_ldo"),
-	OF_MFD_CELL("mt6360_tcpc", NULL,
-		    NULL, 0, 0, "mediatek,mt6360_tcpc"),
+	OF_MFD_CELL("mt6360-adc", mt6360_adc_resources,
+		    NULL, 0, 0, "mediatek,mt6360-adc"),
+	OF_MFD_CELL("mt6360-chg", mt6360_chg_resources,
+		    NULL, 0, 0, "mediatek,mt6360-chg"),
+	OF_MFD_CELL("mt6360-led", mt6360_led_resources,
+		    NULL, 0, 0, "mediatek,mt6360-led"),
+	OF_MFD_CELL("mt6360-regulator", mt6360_regulator_resources,
+		    NULL, 0, 0, "mediatek,mt6360-regulator"),
+	OF_MFD_CELL("mt6360-tcpc", NULL,
+		    NULL, 0, 0, "mediatek,mt6360-tcpc"),
 };
 
-static const unsigned short mt6360_slave_addr[MT6360_SLAVE_MAX] = {
-	MT6360_PMU_SLAVEID,
+static int mt6360_check_vendor_info(struct mt6360_data *data)
+{
+	u32 info;
+	int ret;
+
+	ret = regmap_read(data->regmap, MT6360_REG_PMU_DEVINFO, &info);
+	if (ret < 0)
+		return ret;
+
+	if ((info & MT6360_CHIPVEN_MASK) != MT6360_CHIPVEN_VAL)
+		return -ENODEV;
+
+	data->chip_rev = info & MT6360_CHIPREV_MASK;
+
+	return 0;
+}
+
+static const u16 mt6360_slave_addrs[MT6360_SLAVE_MAX] = {
+	MT6360_TCPC_SLAVEID,
 	MT6360_PMIC_SLAVEID,
 	MT6360_LDO_SLAVEID,
-	MT6360_TCPC_SLAVEID,
+	MT6360_PMU_SLAVEID,
 };
 
-static int mt6360_pmu_probe(struct i2c_client *client)
+static int mt6360_xlate_pmicldo_addr(u8 *addr, int rw_size)
 {
-	struct mt6360_pmu_data *mpd;
-	unsigned int reg_data;
-	int i, ret;
+	u8 flags[4] = { 0x00, 0x40, 0x80, 0xc0 };
+
+	if (rw_size < 1 || rw_size > 4)
+		return -EINVAL;
 
-	mpd = devm_kzalloc(&client->dev, sizeof(*mpd), GFP_KERNEL);
-	if (!mpd)
+	*addr &= 0x3f;
+	*addr |= flags[rw_size - 1];
+
+	return 0;
+}
+
+static int mt6360_regmap_read(void *context, const void *reg, size_t reg_size,
+			      void *val, size_t val_size)
+{
+	struct mt6360_data *data = context;
+	u8 bank = *(u8 *)reg, reg_addr = *(u8 *)(reg + 1);
+	struct i2c_client *i2c = data->i2c[bank];
+	bool crc_needed = false;
+	u8 *buf;
+	/* first two is i2c_addr + reg_addr , last is crc8 */
+	int alloc_size = 2 + val_size + 1, read_size = val_size;
+	u8 crc;
+	int ret;
+
+	if (bank == MT6360_SLAVE_PMIC || bank == MT6360_SLAVE_LDO) {
+		crc_needed = true;
+		ret = mt6360_xlate_pmicldo_addr(&reg_addr, val_size);
+		if (ret < 0)
+			return ret;
+		read_size += 1;
+	}
+
+	buf = kzalloc(alloc_size, GFP_KERNEL);
+	if (!buf)
 		return -ENOMEM;
 
-	mpd->dev = &client->dev;
-	i2c_set_clientdata(client, mpd);
+	/* 7 bit slave addr + read bit */
+	buf[0] = ((i2c->addr & 0x7f) << 1) + 1;
+	buf[1] = reg_addr;
 
-	mpd->regmap = devm_regmap_init_i2c(client, &mt6360_pmu_regmap_config);
-	if (IS_ERR(mpd->regmap)) {
-		dev_err(&client->dev, "Failed to register regmap\n");
-		return PTR_ERR(mpd->regmap);
+	ret = i2c_smbus_read_i2c_block_data(i2c, reg_addr, read_size, buf + 2);
+
+	if (ret == read_size) {
+		memcpy(val, buf + 2, val_size);
+		if (crc_needed) {
+			crc = crc8(data->crc8_tbl, buf, val_size + 2, 0);
+			if (crc != buf[val_size + 2])
+				ret = -EIO;
+		}
 	}
 
-	ret = regmap_read(mpd->regmap, MT6360_PMU_DEV_INFO, &reg_data);
-	if (ret) {
-		dev_err(&client->dev, "Device not found\n");
+	kfree(buf);
+
+	if (ret < 0)
 		return ret;
+	else if (ret != read_size)
+		return -EIO;
+
+	return 0;
+}
+
+static int mt6360_regmap_write(void *context, const void *val, size_t val_size)
+{
+	struct mt6360_data *data = context;
+	u8 bank = *(u8 *)val, reg_addr = *(u8 *)(val + 1);
+	struct i2c_client *i2c = data->i2c[bank];
+	bool crc_needed = false;
+	u8 *buf;
+	/* first two is i2c_addr + reg_addr , last crc8 + dummy */
+	int alloc_size = 2 + val_size + 2, write_size = val_size - 2;
+	int ret;
+
+	if (bank == MT6360_SLAVE_PMIC || bank == MT6360_SLAVE_LDO) {
+		crc_needed = true;
+		ret = mt6360_xlate_pmicldo_addr(&reg_addr, val_size - 2);
+		if (ret < 0)
+			return ret;
 	}
 
-	mpd->chip_rev = reg_data & CHIP_REV_MASK;
-	if (mpd->chip_rev != CHIP_VEN_MT6360) {
-		dev_err(&client->dev, "Device not supported\n");
-		return -ENODEV;
+	buf = kzalloc(alloc_size, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	/* 7 bit slave addr + write bit */
+	buf[0] = ((i2c->addr & 0x7f) << 1);
+	buf[1] = reg_addr;
+	/* val need to minus regaddr 16bit */
+	memcpy(buf + 2, val + 2, write_size);
+
+	if (crc_needed) {
+		buf[val_size] = crc8(data->crc8_tbl, buf, val_size, 0);
+		write_size += 2;
 	}
 
-	mt6360_pmu_irq_chip.irq_drv_data = mpd;
-	ret = devm_regmap_add_irq_chip(&client->dev, mpd->regmap, client->irq,
-				       IRQF_TRIGGER_FALLING, 0,
-				       &mt6360_pmu_irq_chip, &mpd->irq_data);
-	if (ret) {
-		dev_err(&client->dev, "Failed to add Regmap IRQ Chip\n");
+	ret = i2c_smbus_write_i2c_block_data(i2c,
+					     reg_addr, write_size, buf + 2);
+
+	kfree(buf);
+
+	if (ret < 0)
 		return ret;
+
+	return 0;
+}
+
+static const struct regmap_bus mt6360_regmap_bus = {
+	.read		= mt6360_regmap_read,
+	.write		= mt6360_regmap_write,
+
+	/* due to pmic and ldo crc access size limit */
+	.max_raw_read	= 4,
+	.max_raw_write	= 4,
+};
+
+static bool mt6360_is_readwrite_reg(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case MT6360_REG_TCPCSTART ... MT6360_REG_TCPCEND:
+	case MT6360_REG_PMICSTART ... MT6360_REG_PMICEND:
+	case MT6360_REG_LDOSTART ... MT6360_REG_LDOEND:
+	fallthrough;
+	case MT6360_REG_PMUSTART ... MT6360_REG_PMUEND:
+		return true;
 	}
 
-	mpd->i2c[0] = client;
-	for (i = 1; i < MT6360_SLAVE_MAX; i++) {
-		mpd->i2c[i] = devm_i2c_new_dummy_device(&client->dev,
-							client->adapter,
-							mt6360_slave_addr[i]);
-		if (IS_ERR(mpd->i2c[i])) {
+	return false;
+}
+
+static const struct regmap_config mt6360_regmap_config = {
+	.reg_bits		= 16,
+	.val_bits		= 8,
+
+	.reg_format_endian	= REGMAP_ENDIAN_BIG,
+
+	/* bank1:tcpc, bank2:pmic, bank3:ldo, bank4:pmu */
+	.max_register		= MT6360_REG_PMUEND,
+	.writeable_reg		= mt6360_is_readwrite_reg,
+	.readable_reg		= mt6360_is_readwrite_reg,
+};
+
+static int mt6360_probe(struct i2c_client *client)
+{
+	struct mt6360_data *data;
+	int i, ret;
+
+	data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+
+	data->dev = &client->dev;
+	crc8_populate_msb(data->crc8_tbl, 0x7);
+
+	for (i = 0; i < MT6360_SLAVE_PMU; i++) {
+		data->i2c[i] = devm_i2c_new_dummy_device(&client->dev,
+							 client->adapter,
+							 mt6360_slave_addrs[i]);
+		if (IS_ERR(data->i2c[i])) {
 			dev_err(&client->dev,
 				"Failed to get new dummy I2C device for address 0x%x",
-				mt6360_slave_addr[i]);
-			return PTR_ERR(mpd->i2c[i]);
+				mt6360_slave_addrs[i]);
+			return PTR_ERR(data->i2c[i]);
 		}
-		i2c_set_clientdata(mpd->i2c[i], mpd);
+	}
+	data->i2c[MT6360_SLAVE_PMU] = client;
+
+	data->regmap = devm_regmap_init(&client->dev, &mt6360_regmap_bus,
+					data, &mt6360_regmap_config);
+	if (IS_ERR(data->regmap)) {
+		dev_err(&client->dev, "Failed to register regmap\n");
+		return PTR_ERR(data->regmap);
+	}
+
+	ret = mt6360_check_vendor_info(data);
+	if (ret) {
+		dev_err(&client->dev, "Device not supported\n");
+		return ret;
+	}
+
+	ret = devm_regmap_add_irq_chip(&client->dev, data->regmap, client->irq,
+				       IRQF_ONESHOT, 0, &mt6360_irq_chip,
+				       &data->irq_data);
+	if (ret) {
+		dev_err(&client->dev, "Failed to add Regmap IRQ Chip\n");
+		return ret;
 	}
 
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_AUTO,
 				   mt6360_devs, ARRAY_SIZE(mt6360_devs), NULL,
-				   0, regmap_irq_get_domain(mpd->irq_data));
+				   0, regmap_irq_get_domain(data->irq_data));
 	if (ret) {
 		dev_err(&client->dev,
 			"Failed to register subordinate devices\n");
 		return ret;
 	}
 
+	i2c_set_clientdata(client, data);
+
 	return 0;
 }
 
-static int __maybe_unused mt6360_pmu_suspend(struct device *dev)
+static int __maybe_unused mt6360_suspend(struct device *dev)
 {
 	struct i2c_client *i2c = to_i2c_client(dev);
 
@@ -390,7 +562,7 @@ static int __maybe_unused mt6360_pmu_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused mt6360_pmu_resume(struct device *dev)
+static int __maybe_unused mt6360_resume(struct device *dev)
 {
 
 	struct i2c_client *i2c = to_i2c_client(dev);
@@ -401,25 +573,24 @@ static int __maybe_unused mt6360_pmu_resume(struct device *dev)
 	return 0;
 }
 
-static SIMPLE_DEV_PM_OPS(mt6360_pmu_pm_ops,
-			 mt6360_pmu_suspend, mt6360_pmu_resume);
+static SIMPLE_DEV_PM_OPS(mt6360_pm_ops, mt6360_suspend, mt6360_resume);
 
-static const struct of_device_id __maybe_unused mt6360_pmu_of_id[] = {
-	{ .compatible = "mediatek,mt6360_pmu", },
+static const struct of_device_id __maybe_unused mt6360_of_id[] = {
+	{ .compatible = "mediatek,mt6360", },
 	{},
 };
-MODULE_DEVICE_TABLE(of, mt6360_pmu_of_id);
+MODULE_DEVICE_TABLE(of, mt6360_of_id);
 
-static struct i2c_driver mt6360_pmu_driver = {
+static struct i2c_driver mt6360_driver = {
 	.driver = {
-		.name = "mt6360_pmu",
-		.pm = &mt6360_pmu_pm_ops,
-		.of_match_table = of_match_ptr(mt6360_pmu_of_id),
+		.name = "mt6360",
+		.pm = &mt6360_pm_ops,
+		.of_match_table = of_match_ptr(mt6360_of_id),
 	},
-	.probe_new = mt6360_pmu_probe,
+	.probe_new = mt6360_probe,
 };
-module_i2c_driver(mt6360_pmu_driver);
+module_i2c_driver(mt6360_driver);
 
 MODULE_AUTHOR("Gene Chen <gene_chen@richtek.com>");
-MODULE_DESCRIPTION("MT6360 PMU I2C Driver");
+MODULE_DESCRIPTION("MT6360 I2C Driver");
 MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/mt6360.h b/include/linux/mfd/mt6360.h
deleted file mode 100644
index ea13040..0000000
--- a/include/linux/mfd/mt6360.h
+++ /dev/null
@@ -1,240 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * Copyright (c) 2020 MediaTek Inc.
- */
-
-#ifndef __MT6360_H__
-#define __MT6360_H__
-
-#include <linux/regmap.h>
-
-enum {
-	MT6360_SLAVE_PMU = 0,
-	MT6360_SLAVE_PMIC,
-	MT6360_SLAVE_LDO,
-	MT6360_SLAVE_TCPC,
-	MT6360_SLAVE_MAX,
-};
-
-#define MT6360_PMU_SLAVEID	(0x34)
-#define MT6360_PMIC_SLAVEID	(0x1A)
-#define MT6360_LDO_SLAVEID	(0x64)
-#define MT6360_TCPC_SLAVEID	(0x4E)
-
-struct mt6360_pmu_data {
-	struct i2c_client *i2c[MT6360_SLAVE_MAX];
-	struct device *dev;
-	struct regmap *regmap;
-	struct regmap_irq_chip_data *irq_data;
-	unsigned int chip_rev;
-};
-
-/* PMU register defininition */
-#define MT6360_PMU_DEV_INFO			(0x00)
-#define MT6360_PMU_CORE_CTRL1			(0x01)
-#define MT6360_PMU_RST1				(0x02)
-#define MT6360_PMU_CRCEN			(0x03)
-#define MT6360_PMU_RST_PAS_CODE1		(0x04)
-#define MT6360_PMU_RST_PAS_CODE2		(0x05)
-#define MT6360_PMU_CORE_CTRL2			(0x06)
-#define MT6360_PMU_TM_PAS_CODE1			(0x07)
-#define MT6360_PMU_TM_PAS_CODE2			(0x08)
-#define MT6360_PMU_TM_PAS_CODE3			(0x09)
-#define MT6360_PMU_TM_PAS_CODE4			(0x0A)
-#define MT6360_PMU_IRQ_IND			(0x0B)
-#define MT6360_PMU_IRQ_MASK			(0x0C)
-#define MT6360_PMU_IRQ_SET			(0x0D)
-#define MT6360_PMU_SHDN_CTRL			(0x0E)
-#define MT6360_PMU_TM_INF			(0x0F)
-#define MT6360_PMU_I2C_CTRL			(0x10)
-#define MT6360_PMU_CHG_CTRL1			(0x11)
-#define MT6360_PMU_CHG_CTRL2			(0x12)
-#define MT6360_PMU_CHG_CTRL3			(0x13)
-#define MT6360_PMU_CHG_CTRL4			(0x14)
-#define MT6360_PMU_CHG_CTRL5			(0x15)
-#define MT6360_PMU_CHG_CTRL6			(0x16)
-#define MT6360_PMU_CHG_CTRL7			(0x17)
-#define MT6360_PMU_CHG_CTRL8			(0x18)
-#define MT6360_PMU_CHG_CTRL9			(0x19)
-#define MT6360_PMU_CHG_CTRL10			(0x1A)
-#define MT6360_PMU_CHG_CTRL11			(0x1B)
-#define MT6360_PMU_CHG_CTRL12			(0x1C)
-#define MT6360_PMU_CHG_CTRL13			(0x1D)
-#define MT6360_PMU_CHG_CTRL14			(0x1E)
-#define MT6360_PMU_CHG_CTRL15			(0x1F)
-#define MT6360_PMU_CHG_CTRL16			(0x20)
-#define MT6360_PMU_CHG_AICC_RESULT		(0x21)
-#define MT6360_PMU_DEVICE_TYPE			(0x22)
-#define MT6360_PMU_QC_CONTROL1			(0x23)
-#define MT6360_PMU_QC_CONTROL2			(0x24)
-#define MT6360_PMU_QC30_CONTROL1		(0x25)
-#define MT6360_PMU_QC30_CONTROL2		(0x26)
-#define MT6360_PMU_USB_STATUS1			(0x27)
-#define MT6360_PMU_QC_STATUS1			(0x28)
-#define MT6360_PMU_QC_STATUS2			(0x29)
-#define MT6360_PMU_CHG_PUMP			(0x2A)
-#define MT6360_PMU_CHG_CTRL17			(0x2B)
-#define MT6360_PMU_CHG_CTRL18			(0x2C)
-#define MT6360_PMU_CHRDET_CTRL1			(0x2D)
-#define MT6360_PMU_CHRDET_CTRL2			(0x2E)
-#define MT6360_PMU_DPDN_CTRL			(0x2F)
-#define MT6360_PMU_CHG_HIDDEN_CTRL1		(0x30)
-#define MT6360_PMU_CHG_HIDDEN_CTRL2		(0x31)
-#define MT6360_PMU_CHG_HIDDEN_CTRL3		(0x32)
-#define MT6360_PMU_CHG_HIDDEN_CTRL4		(0x33)
-#define MT6360_PMU_CHG_HIDDEN_CTRL5		(0x34)
-#define MT6360_PMU_CHG_HIDDEN_CTRL6		(0x35)
-#define MT6360_PMU_CHG_HIDDEN_CTRL7		(0x36)
-#define MT6360_PMU_CHG_HIDDEN_CTRL8		(0x37)
-#define MT6360_PMU_CHG_HIDDEN_CTRL9		(0x38)
-#define MT6360_PMU_CHG_HIDDEN_CTRL10		(0x39)
-#define MT6360_PMU_CHG_HIDDEN_CTRL11		(0x3A)
-#define MT6360_PMU_CHG_HIDDEN_CTRL12		(0x3B)
-#define MT6360_PMU_CHG_HIDDEN_CTRL13		(0x3C)
-#define MT6360_PMU_CHG_HIDDEN_CTRL14		(0x3D)
-#define MT6360_PMU_CHG_HIDDEN_CTRL15		(0x3E)
-#define MT6360_PMU_CHG_HIDDEN_CTRL16		(0x3F)
-#define MT6360_PMU_CHG_HIDDEN_CTRL17		(0x40)
-#define MT6360_PMU_CHG_HIDDEN_CTRL18		(0x41)
-#define MT6360_PMU_CHG_HIDDEN_CTRL19		(0x42)
-#define MT6360_PMU_CHG_HIDDEN_CTRL20		(0x43)
-#define MT6360_PMU_CHG_HIDDEN_CTRL21		(0x44)
-#define MT6360_PMU_CHG_HIDDEN_CTRL22		(0x45)
-#define MT6360_PMU_CHG_HIDDEN_CTRL23		(0x46)
-#define MT6360_PMU_CHG_HIDDEN_CTRL24		(0x47)
-#define MT6360_PMU_CHG_HIDDEN_CTRL25		(0x48)
-#define MT6360_PMU_BC12_CTRL			(0x49)
-#define MT6360_PMU_CHG_STAT			(0x4A)
-#define MT6360_PMU_RESV1			(0x4B)
-#define MT6360_PMU_TYPEC_OTP_TH_SEL_CODEH	(0x4E)
-#define MT6360_PMU_TYPEC_OTP_TH_SEL_CODEL	(0x4F)
-#define MT6360_PMU_TYPEC_OTP_HYST_TH		(0x50)
-#define MT6360_PMU_TYPEC_OTP_CTRL		(0x51)
-#define MT6360_PMU_ADC_BAT_DATA_H		(0x52)
-#define MT6360_PMU_ADC_BAT_DATA_L		(0x53)
-#define MT6360_PMU_IMID_BACKBST_ON		(0x54)
-#define MT6360_PMU_IMID_BACKBST_OFF		(0x55)
-#define MT6360_PMU_ADC_CONFIG			(0x56)
-#define MT6360_PMU_ADC_EN2			(0x57)
-#define MT6360_PMU_ADC_IDLE_T			(0x58)
-#define MT6360_PMU_ADC_RPT_1			(0x5A)
-#define MT6360_PMU_ADC_RPT_2			(0x5B)
-#define MT6360_PMU_ADC_RPT_3			(0x5C)
-#define MT6360_PMU_ADC_RPT_ORG1			(0x5D)
-#define MT6360_PMU_ADC_RPT_ORG2			(0x5E)
-#define MT6360_PMU_BAT_OVP_TH_SEL_CODEH		(0x5F)
-#define MT6360_PMU_BAT_OVP_TH_SEL_CODEL		(0x60)
-#define MT6360_PMU_CHG_CTRL19			(0x61)
-#define MT6360_PMU_VDDASUPPLY			(0x62)
-#define MT6360_PMU_BC12_MANUAL			(0x63)
-#define MT6360_PMU_CHGDET_FUNC			(0x64)
-#define MT6360_PMU_FOD_CTRL			(0x65)
-#define MT6360_PMU_CHG_CTRL20			(0x66)
-#define MT6360_PMU_CHG_HIDDEN_CTRL26		(0x67)
-#define MT6360_PMU_CHG_HIDDEN_CTRL27		(0x68)
-#define MT6360_PMU_RESV2			(0x69)
-#define MT6360_PMU_USBID_CTRL1			(0x6D)
-#define MT6360_PMU_USBID_CTRL2			(0x6E)
-#define MT6360_PMU_USBID_CTRL3			(0x6F)
-#define MT6360_PMU_FLED_CFG			(0x70)
-#define MT6360_PMU_RESV3			(0x71)
-#define MT6360_PMU_FLED1_CTRL			(0x72)
-#define MT6360_PMU_FLED_STRB_CTRL		(0x73)
-#define MT6360_PMU_FLED1_STRB_CTRL2		(0x74)
-#define MT6360_PMU_FLED1_TOR_CTRL		(0x75)
-#define MT6360_PMU_FLED2_CTRL			(0x76)
-#define MT6360_PMU_RESV4			(0x77)
-#define MT6360_PMU_FLED2_STRB_CTRL2		(0x78)
-#define MT6360_PMU_FLED2_TOR_CTRL		(0x79)
-#define MT6360_PMU_FLED_VMIDTRK_CTRL1		(0x7A)
-#define MT6360_PMU_FLED_VMID_RTM		(0x7B)
-#define MT6360_PMU_FLED_VMIDTRK_CTRL2		(0x7C)
-#define MT6360_PMU_FLED_PWSEL			(0x7D)
-#define MT6360_PMU_FLED_EN			(0x7E)
-#define MT6360_PMU_FLED_Hidden1			(0x7F)
-#define MT6360_PMU_RGB_EN			(0x80)
-#define MT6360_PMU_RGB1_ISNK			(0x81)
-#define MT6360_PMU_RGB2_ISNK			(0x82)
-#define MT6360_PMU_RGB3_ISNK			(0x83)
-#define MT6360_PMU_RGB_ML_ISNK			(0x84)
-#define MT6360_PMU_RGB1_DIM			(0x85)
-#define MT6360_PMU_RGB2_DIM			(0x86)
-#define MT6360_PMU_RGB3_DIM			(0x87)
-#define MT6360_PMU_RESV5			(0x88)
-#define MT6360_PMU_RGB12_Freq			(0x89)
-#define MT6360_PMU_RGB34_Freq			(0x8A)
-#define MT6360_PMU_RGB1_Tr			(0x8B)
-#define MT6360_PMU_RGB1_Tf			(0x8C)
-#define MT6360_PMU_RGB1_TON_TOFF		(0x8D)
-#define MT6360_PMU_RGB2_Tr			(0x8E)
-#define MT6360_PMU_RGB2_Tf			(0x8F)
-#define MT6360_PMU_RGB2_TON_TOFF		(0x90)
-#define MT6360_PMU_RGB3_Tr			(0x91)
-#define MT6360_PMU_RGB3_Tf			(0x92)
-#define MT6360_PMU_RGB3_TON_TOFF		(0x93)
-#define MT6360_PMU_RGB_Hidden_CTRL1		(0x94)
-#define MT6360_PMU_RGB_Hidden_CTRL2		(0x95)
-#define MT6360_PMU_RESV6			(0x97)
-#define MT6360_PMU_SPARE1			(0x9A)
-#define MT6360_PMU_SPARE2			(0xA0)
-#define MT6360_PMU_SPARE3			(0xB0)
-#define MT6360_PMU_SPARE4			(0xC0)
-#define MT6360_PMU_CHG_IRQ1			(0xD0)
-#define MT6360_PMU_CHG_IRQ2			(0xD1)
-#define MT6360_PMU_CHG_IRQ3			(0xD2)
-#define MT6360_PMU_CHG_IRQ4			(0xD3)
-#define MT6360_PMU_CHG_IRQ5			(0xD4)
-#define MT6360_PMU_CHG_IRQ6			(0xD5)
-#define MT6360_PMU_QC_IRQ			(0xD6)
-#define MT6360_PMU_FOD_IRQ			(0xD7)
-#define MT6360_PMU_BASE_IRQ			(0xD8)
-#define MT6360_PMU_FLED_IRQ1			(0xD9)
-#define MT6360_PMU_FLED_IRQ2			(0xDA)
-#define MT6360_PMU_RGB_IRQ			(0xDB)
-#define MT6360_PMU_BUCK1_IRQ			(0xDC)
-#define MT6360_PMU_BUCK2_IRQ			(0xDD)
-#define MT6360_PMU_LDO_IRQ1			(0xDE)
-#define MT6360_PMU_LDO_IRQ2			(0xDF)
-#define MT6360_PMU_CHG_STAT1			(0xE0)
-#define MT6360_PMU_CHG_STAT2			(0xE1)
-#define MT6360_PMU_CHG_STAT3			(0xE2)
-#define MT6360_PMU_CHG_STAT4			(0xE3)
-#define MT6360_PMU_CHG_STAT5			(0xE4)
-#define MT6360_PMU_CHG_STAT6			(0xE5)
-#define MT6360_PMU_QC_STAT			(0xE6)
-#define MT6360_PMU_FOD_STAT			(0xE7)
-#define MT6360_PMU_BASE_STAT			(0xE8)
-#define MT6360_PMU_FLED_STAT1			(0xE9)
-#define MT6360_PMU_FLED_STAT2			(0xEA)
-#define MT6360_PMU_RGB_STAT			(0xEB)
-#define MT6360_PMU_BUCK1_STAT			(0xEC)
-#define MT6360_PMU_BUCK2_STAT			(0xED)
-#define MT6360_PMU_LDO_STAT1			(0xEE)
-#define MT6360_PMU_LDO_STAT2			(0xEF)
-#define MT6360_PMU_CHG_MASK1			(0xF0)
-#define MT6360_PMU_CHG_MASK2			(0xF1)
-#define MT6360_PMU_CHG_MASK3			(0xF2)
-#define MT6360_PMU_CHG_MASK4			(0xF3)
-#define MT6360_PMU_CHG_MASK5			(0xF4)
-#define MT6360_PMU_CHG_MASK6			(0xF5)
-#define MT6360_PMU_QC_MASK			(0xF6)
-#define MT6360_PMU_FOD_MASK			(0xF7)
-#define MT6360_PMU_BASE_MASK			(0xF8)
-#define MT6360_PMU_FLED_MASK1			(0xF9)
-#define MT6360_PMU_FLED_MASK2			(0xFA)
-#define MT6360_PMU_FAULTB_MASK			(0xFB)
-#define MT6360_PMU_BUCK1_MASK			(0xFC)
-#define MT6360_PMU_BUCK2_MASK			(0xFD)
-#define MT6360_PMU_LDO_MASK1			(0xFE)
-#define MT6360_PMU_LDO_MASK2			(0xFF)
-#define MT6360_PMU_MAXREG			(MT6360_PMU_LDO_MASK2)
-
-/* MT6360_PMU_IRQ_SET */
-#define MT6360_PMU_IRQ_REGNUM	(MT6360_PMU_LDO_IRQ2 - MT6360_PMU_CHG_IRQ1 + 1)
-#define MT6360_IRQ_RETRIG	BIT(2)
-
-#define CHIP_VEN_MASK				(0xF0)
-#define CHIP_VEN_MT6360				(0x50)
-#define CHIP_REV_MASK				(0x0F)
-
-#endif /* __MT6360_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
