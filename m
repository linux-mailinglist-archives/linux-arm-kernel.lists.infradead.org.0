Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79698166D0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwSLG89n/jE6lv/dae2VT6De2zDXw8g1SgWc+4UjF94=; b=MtGK9hnsp+Skiu
	5Q011te/AXDc9AZBlACrPfLj1iNclwFeJXukCR7sFZK1LmmRkPGWrDeETsxjM4sAY83oCkQQPczQp
	wzZlX0XttNn8yI+2laJ/GgugNmDhVaOH59x5blJAbCXi9YakEwvysLeaeUGUO636zhUf3s+p/kBYz
	KtsMqZUY4GYQPgh1JXoLHA5oS9EPa9vV0/od5E0X51UtkUHwobFmNXp6I22B0HyPLEgDu1PTIWJsz
	9SMEEK1xDUng+rAvdRV42xo8zbGXUk8jqeLNZy+/Sjzj1NshrwthvE/mQfqE0c+H24ZsTZGdJ/dol
	EnQ1ikBGhZlJThRbisnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yFi-0003b1-EC; Fri, 21 Feb 2020 02:41:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yEn-0002FD-G6; Fri, 21 Feb 2020 02:40:26 +0000
X-UUID: 8394fc5b259e40a3a9966b7f76b71efc-20200220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZzObVQX5DwI6q/c3qTHQrHsDv7Ua4MJrycFvf/eTd/k=; 
 b=qo7qxy3QQte9K5h4y6SUn3hQa+ASDVrM9FS5HlTDVri7ntQUCYhqmJRkpo9j4f6p5XhgKozwuCa7N20rOfMH4vQLmVZn8ka9NIMcU7cCYD7Lc7K02yJqCLzeu3z4DSa/TvyAtOuCiE0aXmg1yQUEwFlavOJP/rGDHZ6XQKu4d/w=;
X-UUID: 8394fc5b259e40a3a9966b7f76b71efc-20200220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1043236618; Thu, 20 Feb 2020 18:40:16 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 18:40:07 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 10:38:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 10:38:51 +0800
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND v2 2/4] mfd: Add for PMIC MT6359 registers definition
Date: Fri, 21 Feb 2020 10:39:04 +0800
Message-ID: <1582252746-8149-3-git-send-email-Wen.Su@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
References: <1582252746-8149-1-git-send-email-Wen.Su@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_184021_923868_A90FFFE3 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, wen.su@mediatek.com,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Wen Su" <wen.su@mediatek.com>

This adds MediaTek PMIC MT6359 registers definition for the
following sub modules:

- Regulator
- RTC
- Interrupt

Signed-off-by: Wen Su <wen.su@mediatek.com>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
 include/linux/mfd/mt6359/registers.h | 531 +++++++++++++++++++++++++++++++++++
 1 file changed, 531 insertions(+)
 create mode 100644 include/linux/mfd/mt6359/registers.h

diff --git a/include/linux/mfd/mt6359/registers.h b/include/linux/mfd/mt6359/registers.h
new file mode 100644
index 0000000..32f627e
--- /dev/null
+++ b/include/linux/mfd/mt6359/registers.h
@@ -0,0 +1,531 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ */
+
+#ifndef __MFD_MT6359_REGISTERS_H__
+#define __MFD_MT6359_REGISTERS_H__
+
+/* PMIC Registers */
+#define MT6359_SWCID                         0xa
+#define MT6359_MISC_TOP_INT_CON0             0x188
+#define MT6359_MISC_TOP_INT_STATUS0          0x194
+#define MT6359_TOP_INT_STATUS0               0x19e
+#define MT6359_SCK_TOP_INT_CON0              0x528
+#define MT6359_SCK_TOP_INT_STATUS0           0x534
+#define MT6359_EOSC_CALI_CON0                0x53a
+#define MT6359_EOSC_CALI_CON1                0x53c
+#define MT6359_RTC_MIX_CON0                  0x53e
+#define MT6359_RTC_MIX_CON1                  0x540
+#define MT6359_RTC_MIX_CON2                  0x542
+#define MT6359_RTC_DSN_ID                    0x580
+#define MT6359_RTC_DSN_REV0                  0x582
+#define MT6359_RTC_DBI                       0x584
+#define MT6359_RTC_DXI                       0x586
+#define MT6359_RTC_BBPU                      0x588
+#define MT6359_RTC_IRQ_STA                   0x58a
+#define MT6359_RTC_IRQ_EN                    0x58c
+#define MT6359_RTC_CII_EN                    0x58e
+#define MT6359_RTC_AL_MASK                   0x590
+#define MT6359_RTC_TC_SEC                    0x592
+#define MT6359_RTC_TC_MIN                    0x594
+#define MT6359_RTC_TC_HOU                    0x596
+#define MT6359_RTC_TC_DOM                    0x598
+#define MT6359_RTC_TC_DOW                    0x59a
+#define MT6359_RTC_TC_MTH                    0x59c
+#define MT6359_RTC_TC_YEA                    0x59e
+#define MT6359_RTC_AL_SEC                    0x5a0
+#define MT6359_RTC_AL_MIN                    0x5a2
+#define MT6359_RTC_AL_HOU                    0x5a4
+#define MT6359_RTC_AL_DOM                    0x5a6
+#define MT6359_RTC_AL_DOW                    0x5a8
+#define MT6359_RTC_AL_MTH                    0x5aa
+#define MT6359_RTC_AL_YEA                    0x5ac
+#define MT6359_RTC_OSC32CON                  0x5ae
+#define MT6359_RTC_POWERKEY1                 0x5b0
+#define MT6359_RTC_POWERKEY2                 0x5b2
+#define MT6359_RTC_PDN1                      0x5b4
+#define MT6359_RTC_PDN2                      0x5b6
+#define MT6359_RTC_SPAR0                     0x5b8
+#define MT6359_RTC_SPAR1                     0x5ba
+#define MT6359_RTC_PROT                      0x5bc
+#define MT6359_RTC_DIFF                      0x5be
+#define MT6359_RTC_CALI                      0x5c0
+#define MT6359_RTC_WRTGR                     0x5c2
+#define MT6359_RTC_CON                       0x5c4
+#define MT6359_RTC_SEC_CTRL                  0x5c6
+#define MT6359_RTC_INT_CNT                   0x5c8
+#define MT6359_RTC_SEC_DAT0                  0x5ca
+#define MT6359_RTC_SEC_DAT1                  0x5cc
+#define MT6359_RTC_SEC_DAT2                  0x5ce
+#define MT6359_RTC_SEC_DSN_ID                0x600
+#define MT6359_RTC_SEC_DSN_REV0              0x602
+#define MT6359_RTC_SEC_DBI                   0x604
+#define MT6359_RTC_SEC_DXI                   0x606
+#define MT6359_RTC_TC_SEC_SEC                0x608
+#define MT6359_RTC_TC_MIN_SEC                0x60a
+#define MT6359_RTC_TC_HOU_SEC                0x60c
+#define MT6359_RTC_TC_DOM_SEC                0x60e
+#define MT6359_RTC_TC_DOW_SEC                0x610
+#define MT6359_RTC_TC_MTH_SEC                0x612
+#define MT6359_RTC_TC_YEA_SEC                0x614
+#define MT6359_RTC_SEC_CK_PDN                0x616
+#define MT6359_RTC_SEC_WRTGR                 0x618
+#define MT6359_PSC_TOP_INT_CON0              0x910
+#define MT6359_PSC_TOP_INT_STATUS0           0x91c
+#define MT6359_BM_TOP_INT_CON0               0xc32
+#define MT6359_BM_TOP_INT_CON1               0xc38
+#define MT6359_BM_TOP_INT_STATUS0            0xc4a
+#define MT6359_BM_TOP_INT_STATUS1            0xc4c
+#define MT6359_HK_TOP_INT_CON0               0xf92
+#define MT6359_HK_TOP_INT_STATUS0            0xf9e
+#define MT6359_BUCK_TOP_INT_CON0             0x1418
+#define MT6359_BUCK_TOP_INT_STATUS0          0x1424
+#define MT6359_BUCK_VPU_CON0                 0x1488
+#define MT6359_BUCK_VPU_DBG0                 0x14a6
+#define MT6359_BUCK_VPU_DBG1                 0x14a8
+#define MT6359_BUCK_VPU_ELR0                 0x14ac
+#define MT6359_BUCK_VCORE_CON0               0x1508
+#define MT6359_BUCK_VCORE_DBG0               0x1526
+#define MT6359_BUCK_VCORE_DBG1               0x1528
+#define MT6359_BUCK_VCORE_SSHUB_CON0         0x152a
+#define MT6359_BUCK_VCORE_ELR0               0x1534
+#define MT6359_BUCK_VGPU11_CON0              0x1588
+#define MT6359_BUCK_VGPU11_DBG0              0x15a6
+#define MT6359_BUCK_VGPU11_DBG1              0x15a8
+#define MT6359_BUCK_VGPU11_ELR0              0x15ac
+#define MT6359_BUCK_VMODEM_CON0              0x1688
+#define MT6359_BUCK_VMODEM_DBG0              0x16a6
+#define MT6359_BUCK_VMODEM_DBG1              0x16a8
+#define MT6359_BUCK_VMODEM_ELR0              0x16ae
+#define MT6359_BUCK_VPROC1_CON0              0x1708
+#define MT6359_BUCK_VPROC1_DBG0              0x1726
+#define MT6359_BUCK_VPROC1_DBG1              0x1728
+#define MT6359_BUCK_VPROC1_ELR0              0x172e
+#define MT6359_BUCK_VPROC2_CON0              0x1788
+#define MT6359_BUCK_VPROC2_DBG0              0x17a6
+#define MT6359_BUCK_VPROC2_DBG1              0x17a8
+#define MT6359_BUCK_VPROC2_ELR0              0x17b2
+#define MT6359_BUCK_VS1_CON0                 0x1808
+#define MT6359_BUCK_VS1_DBG0                 0x1826
+#define MT6359_BUCK_VS1_DBG1                 0x1828
+#define MT6359_BUCK_VS1_ELR0                 0x1834
+#define MT6359_BUCK_VS2_CON0                 0x1888
+#define MT6359_BUCK_VS2_DBG0                 0x18a6
+#define MT6359_BUCK_VS2_DBG1                 0x18a8
+#define MT6359_BUCK_VS2_ELR0                 0x18b4
+#define MT6359_BUCK_VPA_CON0                 0x1908
+#define MT6359_BUCK_VPA_CON1                 0x190e
+#define MT6359_BUCK_VPA_CFG0                 0x1910
+#define MT6359_BUCK_VPA_CFG1                 0x1912
+#define MT6359_BUCK_VPA_DBG0                 0x1914
+#define MT6359_BUCK_VPA_DBG1                 0x1916
+#define MT6359_VGPUVCORE_ANA_CON2            0x198e
+#define MT6359_VGPUVCORE_ANA_CON13           0x19a4
+#define MT6359_VPROC1_ANA_CON3               0x19b2
+#define MT6359_VPROC2_ANA_CON3               0x1a0e
+#define MT6359_VMODEM_ANA_CON3               0x1a1a
+#define MT6359_VPU_ANA_CON3                  0x1a26
+#define MT6359_VS1_ANA_CON0                  0x1a2c
+#define MT6359_VS2_ANA_CON0                  0x1a34
+#define MT6359_VPA_ANA_CON0                  0x1a3c
+#define MT6359_LDO_TOP_INT_CON0              0x1b14
+#define MT6359_LDO_TOP_INT_CON1              0x1b1a
+#define MT6359_LDO_TOP_INT_STATUS0           0x1b28
+#define MT6359_LDO_TOP_INT_STATUS1           0x1b2a
+#define MT6359_LDO_VSRAM_PROC1_ELR           0x1b40
+#define MT6359_LDO_VSRAM_PROC2_ELR           0x1b42
+#define MT6359_LDO_VSRAM_OTHERS_ELR          0x1b44
+#define MT6359_LDO_VSRAM_MD_ELR              0x1b46
+#define MT6359_LDO_VFE28_CON0                0x1b88
+#define MT6359_LDO_VFE28_MON                 0x1b8a
+#define MT6359_LDO_VXO22_CON0                0x1b98
+#define MT6359_LDO_VXO22_MON                 0x1b9a
+#define MT6359_LDO_VRF18_CON0                0x1ba8
+#define MT6359_LDO_VRF18_MON                 0x1baa
+#define MT6359_LDO_VRF12_CON0                0x1bb8
+#define MT6359_LDO_VRF12_MON                 0x1bba
+#define MT6359_LDO_VEFUSE_CON0               0x1bc8
+#define MT6359_LDO_VEFUSE_MON                0x1bca
+#define MT6359_LDO_VCN33_1_CON0              0x1bd8
+#define MT6359_LDO_VCN33_1_MON               0x1bda
+#define MT6359_LDO_VCN33_1_MULTI_SW          0x1be8
+#define MT6359_LDO_VCN33_2_CON0              0x1c08
+#define MT6359_LDO_VCN33_2_MON               0x1c0a
+#define MT6359_LDO_VCN33_2_MULTI_SW          0x1c18
+#define MT6359_LDO_VCN13_CON0                0x1c1a
+#define MT6359_LDO_VCN13_MON                 0x1c1c
+#define MT6359_LDO_VCN18_CON0                0x1c2a
+#define MT6359_LDO_VCN18_MON                 0x1c2c
+#define MT6359_LDO_VA09_CON0                 0x1c3a
+#define MT6359_LDO_VA09_MON                  0x1c3c
+#define MT6359_LDO_VCAMIO_CON0               0x1c4a
+#define MT6359_LDO_VCAMIO_MON                0x1c4c
+#define MT6359_LDO_VA12_CON0                 0x1c5a
+#define MT6359_LDO_VA12_MON                  0x1c5c
+#define MT6359_LDO_VAUX18_CON0               0x1c88
+#define MT6359_LDO_VAUX18_MON                0x1c8a
+#define MT6359_LDO_VAUD18_CON0               0x1c98
+#define MT6359_LDO_VAUD18_MON                0x1c9a
+#define MT6359_LDO_VIO18_CON0                0x1ca8
+#define MT6359_LDO_VIO18_MON                 0x1caa
+#define MT6359_LDO_VEMC_CON0                 0x1cb8
+#define MT6359_LDO_VEMC_MON                  0x1cba
+#define MT6359_LDO_VSIM1_CON0                0x1cc8
+#define MT6359_LDO_VSIM1_MON                 0x1cca
+#define MT6359_LDO_VSIM2_CON0                0x1cd8
+#define MT6359_LDO_VSIM2_MON                 0x1cda
+#define MT6359_LDO_VUSB_CON0                 0x1d08
+#define MT6359_LDO_VUSB_MON                  0x1d0a
+#define MT6359_LDO_VUSB_MULTI_SW             0x1d18
+#define MT6359_LDO_VRFCK_CON0                0x1d1a
+#define MT6359_LDO_VRFCK_MON                 0x1d1c
+#define MT6359_LDO_VBBCK_CON0                0x1d2a
+#define MT6359_LDO_VBBCK_MON                 0x1d2c
+#define MT6359_LDO_VBIF28_CON0               0x1d3a
+#define MT6359_LDO_VBIF28_MON                0x1d3c
+#define MT6359_LDO_VIBR_CON0                 0x1d4a
+#define MT6359_LDO_VIBR_MON                  0x1d4c
+#define MT6359_LDO_VIO28_CON0                0x1d5a
+#define MT6359_LDO_VIO28_MON                 0x1d5c
+#define MT6359_LDO_VM18_CON0                 0x1d88
+#define MT6359_LDO_VM18_MON                  0x1d8a
+#define MT6359_LDO_VUFS_CON0                 0x1d98
+#define MT6359_LDO_VUFS_MON                  0x1d9a
+#define MT6359_LDO_VSRAM_PROC1_CON0          0x1e88
+#define MT6359_LDO_VSRAM_PROC1_MON           0x1e8a
+#define MT6359_LDO_VSRAM_PROC1_VOSEL1        0x1e8e
+#define MT6359_LDO_VSRAM_PROC2_CON0          0x1ea6
+#define MT6359_LDO_VSRAM_PROC2_MON           0x1ea8
+#define MT6359_LDO_VSRAM_PROC2_VOSEL1        0x1eac
+#define MT6359_LDO_VSRAM_OTHERS_CON0         0x1f08
+#define MT6359_LDO_VSRAM_OTHERS_MON          0x1f0a
+#define MT6359_LDO_VSRAM_OTHERS_VOSEL1       0x1f0e
+#define MT6359_LDO_VSRAM_OTHERS_SSHUB        0x1f26
+#define MT6359_LDO_VSRAM_MD_CON0             0x1f2c
+#define MT6359_LDO_VSRAM_MD_MON              0x1f2e
+#define MT6359_LDO_VSRAM_MD_VOSEL1           0x1f32
+#define MT6359_VFE28_ANA_CON0                0x1f88
+#define MT6359_VAUX18_ANA_CON0               0x1f8c
+#define MT6359_VUSB_ANA_CON0                 0x1f90
+#define MT6359_VBIF28_ANA_CON0               0x1f94
+#define MT6359_VCN33_1_ANA_CON0              0x1f98
+#define MT6359_VCN33_2_ANA_CON0              0x1f9c
+#define MT6359_VEMC_ANA_CON0                 0x1fa0
+#define MT6359_VSIM1_ANA_CON0                0x1fa4
+#define MT6359_VSIM2_ANA_CON0                0x1fa8
+#define MT6359_VIO28_ANA_CON0                0x1fac
+#define MT6359_VIBR_ANA_CON0                 0x1fb0
+#define MT6359_VRF18_ANA_CON0                0x2008
+#define MT6359_VEFUSE_ANA_CON0               0x200c
+#define MT6359_VCN18_ANA_CON0                0x2010
+#define MT6359_VCAMIO_ANA_CON0               0x2014
+#define MT6359_VAUD18_ANA_CON0               0x2018
+#define MT6359_VIO18_ANA_CON0                0x201c
+#define MT6359_VM18_ANA_CON0                 0x2020
+#define MT6359_VUFS_ANA_CON0                 0x2024
+#define MT6359_VRF12_ANA_CON0                0x202a
+#define MT6359_VCN13_ANA_CON0                0x202e
+#define MT6359_VA09_ANA_CON0                 0x2032
+#define MT6359_VA12_ANA_CON0                 0x2036
+#define MT6359_VXO22_ANA_CON0                0x2088
+#define MT6359_VRFCK_ANA_CON0                0x208c
+#define MT6359_VBBCK_ANA_CON0                0x2094
+#define MT6359_AUD_TOP_INT_CON0              0x2328
+#define MT6359_AUD_TOP_INT_STATUS0           0x2334
+
+#define MT6359_RG_BUCK_VPU_EN_ADDR		MT6359_BUCK_VPU_CON0
+#define MT6359_RG_BUCK_VPU_LP_ADDR		MT6359_BUCK_VPU_CON0
+#define MT6359_RG_BUCK_VPU_LP_SHIFT             1
+#define MT6359_DA_VPU_VOSEL_ADDR		MT6359_BUCK_VPU_DBG0
+#define MT6359_DA_VPU_VOSEL_MASK                0x7F
+#define MT6359_DA_VPU_VOSEL_SHIFT               0
+#define MT6359_DA_VPU_EN_ADDR			MT6359_BUCK_VPU_DBG1
+#define MT6359_RG_BUCK_VPU_VOSEL_ADDR		MT6359_BUCK_VPU_ELR0
+#define MT6359_RG_BUCK_VPU_VOSEL_MASK           0x7F
+#define MT6359_RG_BUCK_VPU_VOSEL_SHIFT          0
+#define MT6359_RG_BUCK_VCORE_EN_ADDR		MT6359_BUCK_VCORE_CON0
+#define MT6359_RG_BUCK_VCORE_LP_ADDR		MT6359_BUCK_VCORE_CON0
+#define MT6359_RG_BUCK_VCORE_LP_SHIFT           1
+#define MT6359_DA_VCORE_VOSEL_ADDR		MT6359_BUCK_VCORE_DBG0
+#define MT6359_DA_VCORE_VOSEL_MASK              0x7F
+#define MT6359_DA_VCORE_VOSEL_SHIFT             0
+#define MT6359_DA_VCORE_EN_ADDR			MT6359_BUCK_VCORE_DBG1
+#define MT6359_RG_BUCK_VCORE_SSHUB_EN_ADDR      MT6359_BUCK_VCORE_SSHUB_CON0
+#define MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_ADDR   MT6359_BUCK_VCORE_SSHUB_CON0
+#define MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_MASK   0x7F
+#define MT6359_RG_BUCK_VCORE_SSHUB_VOSEL_SHIFT  4
+#define MT6359_RG_BUCK_VCORE_VOSEL_ADDR         MT6359_BUCK_VCORE_ELR0
+#define MT6359_RG_BUCK_VCORE_VOSEL_MASK         0x7F
+#define MT6359_RG_BUCK_VCORE_VOSEL_SHIFT        0
+#define MT6359_RG_BUCK_VGPU11_EN_ADDR           MT6359_BUCK_VGPU11_CON0
+#define MT6359_RG_BUCK_VGPU11_LP_ADDR           MT6359_BUCK_VGPU11_CON0
+#define MT6359_RG_BUCK_VGPU11_LP_SHIFT          1
+#define MT6359_DA_VGPU11_VOSEL_ADDR             MT6359_BUCK_VGPU11_DBG0
+#define MT6359_DA_VGPU11_VOSEL_MASK             0x7F
+#define MT6359_DA_VGPU11_VOSEL_SHIFT            0
+#define MT6359_DA_VGPU11_EN_ADDR                MT6359_BUCK_VGPU11_DBG1
+#define MT6359_RG_BUCK_VGPU11_VOSEL_ADDR        MT6359_BUCK_VGPU11_ELR0
+#define MT6359_RG_BUCK_VGPU11_VOSEL_MASK        0x7F
+#define MT6359_RG_BUCK_VGPU11_VOSEL_SHIFT       0
+#define MT6359_RG_BUCK_VMODEM_EN_ADDR           MT6359_BUCK_VMODEM_CON0
+#define MT6359_RG_BUCK_VMODEM_LP_ADDR           MT6359_BUCK_VMODEM_CON0
+#define MT6359_RG_BUCK_VMODEM_LP_SHIFT          1
+#define MT6359_DA_VMODEM_VOSEL_ADDR             MT6359_BUCK_VMODEM_DBG0
+#define MT6359_DA_VMODEM_VOSEL_MASK             0x7F
+#define MT6359_DA_VMODEM_VOSEL_SHIFT            0
+#define MT6359_DA_VMODEM_EN_ADDR                MT6359_BUCK_VMODEM_DBG1
+#define MT6359_RG_BUCK_VMODEM_VOSEL_ADDR        MT6359_BUCK_VMODEM_ELR0
+#define MT6359_RG_BUCK_VMODEM_VOSEL_MASK        0x7F
+#define MT6359_RG_BUCK_VMODEM_VOSEL_SHIFT       0
+#define MT6359_RG_BUCK_VPROC1_EN_ADDR           MT6359_BUCK_VPROC1_CON0
+#define MT6359_RG_BUCK_VPROC1_LP_ADDR           MT6359_BUCK_VPROC1_CON0
+#define MT6359_RG_BUCK_VPROC1_LP_SHIFT          1
+#define MT6359_DA_VPROC1_VOSEL_ADDR             MT6359_BUCK_VPROC1_DBG0
+#define MT6359_DA_VPROC1_VOSEL_MASK             0x7F
+#define MT6359_DA_VPROC1_VOSEL_SHIFT            0
+#define MT6359_DA_VPROC1_EN_ADDR                MT6359_BUCK_VPROC1_DBG1
+#define MT6359_RG_BUCK_VPROC1_VOSEL_ADDR        MT6359_BUCK_VPROC1_ELR0
+#define MT6359_RG_BUCK_VPROC1_VOSEL_MASK        0x7F
+#define MT6359_RG_BUCK_VPROC1_VOSEL_SHIFT       0
+#define MT6359_RG_BUCK_VPROC2_EN_ADDR           MT6359_BUCK_VPROC2_CON0
+#define MT6359_RG_BUCK_VPROC2_LP_ADDR           MT6359_BUCK_VPROC2_CON0
+#define MT6359_RG_BUCK_VPROC2_LP_SHIFT          1
+#define MT6359_DA_VPROC2_VOSEL_ADDR             MT6359_BUCK_VPROC2_DBG0
+#define MT6359_DA_VPROC2_VOSEL_MASK             0x7F
+#define MT6359_DA_VPROC2_VOSEL_SHIFT            0
+#define MT6359_DA_VPROC2_EN_ADDR                MT6359_BUCK_VPROC2_DBG1
+#define MT6359_RG_BUCK_VPROC2_VOSEL_ADDR        MT6359_BUCK_VPROC2_ELR0
+#define MT6359_RG_BUCK_VPROC2_VOSEL_MASK        0x7F
+#define MT6359_RG_BUCK_VPROC2_VOSEL_SHIFT       0
+#define MT6359_RG_BUCK_VS1_EN_ADDR              MT6359_BUCK_VS1_CON0
+#define MT6359_RG_BUCK_VS1_LP_ADDR              MT6359_BUCK_VS1_CON0
+#define MT6359_RG_BUCK_VS1_LP_SHIFT             1
+#define MT6359_DA_VS1_VOSEL_ADDR                MT6359_BUCK_VS1_DBG0
+#define MT6359_DA_VS1_VOSEL_MASK                0x7F
+#define MT6359_DA_VS1_VOSEL_SHIFT               0
+#define MT6359_DA_VS1_EN_ADDR			MT6359_BUCK_VS1_DBG1
+#define MT6359_RG_BUCK_VS1_VOSEL_ADDR           MT6359_BUCK_VS1_ELR0
+#define MT6359_RG_BUCK_VS1_VOSEL_MASK           0x7F
+#define MT6359_RG_BUCK_VS1_VOSEL_SHIFT          0
+#define MT6359_RG_BUCK_VS2_EN_ADDR              MT6359_BUCK_VS2_CON0
+#define MT6359_RG_BUCK_VS2_LP_ADDR              MT6359_BUCK_VS2_CON0
+#define MT6359_RG_BUCK_VS2_LP_SHIFT             1
+#define MT6359_DA_VS2_VOSEL_ADDR		MT6359_BUCK_VS2_DBG0
+#define MT6359_DA_VS2_VOSEL_MASK                0x7F
+#define MT6359_DA_VS2_VOSEL_SHIFT               0
+#define MT6359_DA_VS2_EN_ADDR			MT6359_BUCK_VS2_DBG1
+#define MT6359_RG_BUCK_VS2_VOSEL_ADDR           MT6359_BUCK_VS2_ELR0
+#define MT6359_RG_BUCK_VS2_VOSEL_MASK           0x7F
+#define MT6359_RG_BUCK_VS2_VOSEL_SHIFT          0
+#define MT6359_RG_BUCK_VPA_EN_ADDR              MT6359_BUCK_VPA_CON0
+#define MT6359_RG_BUCK_VPA_LP_ADDR              MT6359_BUCK_VPA_CON0
+#define MT6359_RG_BUCK_VPA_LP_SHIFT             1
+#define MT6359_RG_BUCK_VPA_VOSEL_ADDR           MT6359_BUCK_VPA_CON1
+#define MT6359_RG_BUCK_VPA_VOSEL_MASK           0x3F
+#define MT6359_RG_BUCK_VPA_VOSEL_SHIFT          0
+#define MT6359_DA_VPA_VOSEL_ADDR                MT6359_BUCK_VPA_DBG0
+#define MT6359_DA_VPA_VOSEL_MASK                0x3F
+#define MT6359_DA_VPA_VOSEL_SHIFT               0
+#define MT6359_DA_VPA_EN_ADDR                   MT6359_BUCK_VPA_DBG1
+#define MT6359_RG_VGPU11_FCCM_ADDR              MT6359_VGPUVCORE_ANA_CON2
+#define MT6359_RG_VGPU11_FCCM_SHIFT             9
+#define MT6359_RG_VCORE_FCCM_ADDR		MT6359_VGPUVCORE_ANA_CON13
+#define MT6359_RG_VCORE_FCCM_SHIFT              5
+#define MT6359_RG_VPROC1_FCCM_ADDR		MT6359_VPROC1_ANA_CON3
+#define MT6359_RG_VPROC1_FCCM_SHIFT             1
+#define MT6359_RG_VPROC2_FCCM_ADDR              MT6359_VPROC2_ANA_CON3
+#define MT6359_RG_VPROC2_FCCM_SHIFT             1
+#define MT6359_RG_VMODEM_FCCM_ADDR              MT6359_VMODEM_ANA_CON3
+#define MT6359_RG_VMODEM_FCCM_SHIFT             1
+#define MT6359_RG_VPU_FCCM_ADDR                 MT6359_VPU_ANA_CON3
+#define MT6359_RG_VPU_FCCM_SHIFT                1
+#define MT6359_RG_VS1_FPWM_ADDR                 MT6359_VS1_ANA_CON0
+#define MT6359_RG_VS1_FPWM_SHIFT                3
+#define MT6359_RG_VS2_FPWM_ADDR			MT6359_VS2_ANA_CON0
+#define MT6359_RG_VS2_FPWM_SHIFT                3
+#define MT6359_RG_VPA_MODESET_ADDR              MT6359_VPA_ANA_CON0
+#define MT6359_RG_VPA_MODESET_SHIFT             1
+#define MT6359_RG_LDO_VSRAM_PROC1_VOSEL_ADDR	MT6359_LDO_VSRAM_PROC1_ELR
+#define MT6359_RG_LDO_VSRAM_PROC1_VOSEL_MASK    0x7F
+#define MT6359_RG_LDO_VSRAM_PROC1_VOSEL_SHIFT   0
+#define MT6359_RG_LDO_VSRAM_PROC2_VOSEL_ADDR    MT6359_LDO_VSRAM_PROC2_ELR
+#define MT6359_RG_LDO_VSRAM_PROC2_VOSEL_MASK    0x7F
+#define MT6359_RG_LDO_VSRAM_PROC2_VOSEL_SHIFT   0
+#define MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_ADDR   MT6359_LDO_VSRAM_OTHERS_ELR
+#define MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_MASK   0x7F
+#define MT6359_RG_LDO_VSRAM_OTHERS_VOSEL_SHIFT  0
+#define MT6359_RG_LDO_VSRAM_MD_VOSEL_ADDR       MT6359_LDO_VSRAM_MD_ELR
+#define MT6359_RG_LDO_VSRAM_MD_VOSEL_MASK       0x7F
+#define MT6359_RG_LDO_VSRAM_MD_VOSEL_SHIFT      0
+#define MT6359_RG_LDO_VFE28_EN_ADDR             MT6359_LDO_VFE28_CON0
+#define MT6359_DA_VFE28_B_EN_ADDR               MT6359_LDO_VFE28_MON
+#define MT6359_RG_LDO_VXO22_EN_ADDR		MT6359_LDO_VXO22_CON0
+#define MT6359_RG_LDO_VXO22_EN_SHIFT            0
+#define MT6359_DA_VXO22_B_EN_ADDR               MT6359_LDO_VXO22_MON
+#define MT6359_RG_LDO_VRF18_EN_ADDR             MT6359_LDO_VRF18_CON0
+#define MT6359_RG_LDO_VRF18_EN_SHIFT            0
+#define MT6359_DA_VRF18_B_EN_ADDR               MT6359_LDO_VRF18_MON
+#define MT6359_RG_LDO_VRF12_EN_ADDR             MT6359_LDO_VRF12_CON0
+#define MT6359_RG_LDO_VRF12_EN_SHIFT            0
+#define MT6359_DA_VRF12_B_EN_ADDR               MT6359_LDO_VRF12_MON
+#define MT6359_RG_LDO_VEFUSE_EN_ADDR            MT6359_LDO_VEFUSE_CON0
+#define MT6359_RG_LDO_VEFUSE_EN_SHIFT           0
+#define MT6359_DA_VEFUSE_B_EN_ADDR              MT6359_LDO_VEFUSE_MON
+#define MT6359_RG_LDO_VCN33_1_EN_0_ADDR         MT6359_LDO_VCN33_1_CON0
+#define MT6359_RG_LDO_VCN33_1_EN_0_MASK         0x1
+#define MT6359_RG_LDO_VCN33_1_EN_0_SHIFT        0
+#define MT6359_DA_VCN33_1_B_EN_ADDR             MT6359_LDO_VCN33_1_MON
+#define MT6359_RG_LDO_VCN33_1_EN_1_ADDR         MT6359_LDO_VCN33_1_MULTI_SW
+#define MT6359_RG_LDO_VCN33_1_EN_1_SHIFT        15
+#define MT6359_RG_LDO_VCN33_2_EN_0_ADDR		MT6359_LDO_VCN33_2_CON0
+#define MT6359_RG_LDO_VCN33_2_EN_0_SHIFT        0
+#define MT6359_DA_VCN33_2_B_EN_ADDR             MT6359_LDO_VCN33_2_MON
+#define MT6359_RG_LDO_VCN33_2_EN_1_ADDR         MT6359_LDO_VCN33_2_MULTI_SW
+#define MT6359_RG_LDO_VCN33_2_EN_1_MASK         0x1
+#define MT6359_RG_LDO_VCN33_2_EN_1_SHIFT        15
+#define MT6359_RG_LDO_VCN13_EN_ADDR             MT6359_LDO_VCN13_CON0
+#define MT6359_RG_LDO_VCN13_EN_SHIFT            0
+#define MT6359_DA_VCN13_B_EN_ADDR               MT6359_LDO_VCN13_MON
+#define MT6359_RG_LDO_VCN18_EN_ADDR             MT6359_LDO_VCN18_CON0
+#define MT6359_DA_VCN18_B_EN_ADDR               MT6359_LDO_VCN18_MON
+#define MT6359_RG_LDO_VA09_EN_ADDR		MT6359_LDO_VA09_CON0
+#define MT6359_RG_LDO_VA09_EN_SHIFT             0
+#define MT6359_DA_VA09_B_EN_ADDR                MT6359_LDO_VA09_MON
+#define MT6359_RG_LDO_VCAMIO_EN_ADDR		MT6359_LDO_VCAMIO_CON0
+#define MT6359_RG_LDO_VCAMIO_EN_SHIFT           0
+#define MT6359_DA_VCAMIO_B_EN_ADDR              MT6359_LDO_VCAMIO_MON
+#define MT6359_RG_LDO_VA12_EN_ADDR              MT6359_LDO_VA12_CON0
+#define MT6359_RG_LDO_VA12_EN_SHIFT             0
+#define MT6359_DA_VA12_B_EN_ADDR		MT6359_LDO_VA12_MON
+#define MT6359_RG_LDO_VAUX18_EN_ADDR            MT6359_LDO_VAUX18_CON0
+#define MT6359_DA_VAUX18_B_EN_ADDR              MT6359_LDO_VAUX18_MON
+#define MT6359_RG_LDO_VAUD18_EN_ADDR            MT6359_LDO_VAUD18_CON0
+#define MT6359_DA_VAUD18_B_EN_ADDR              MT6359_LDO_VAUD18_MON
+#define MT6359_RG_LDO_VIO18_EN_ADDR             MT6359_LDO_VIO18_CON0
+#define MT6359_RG_LDO_VIO18_EN_SHIFT            0
+#define MT6359_DA_VIO18_B_EN_ADDR               MT6359_LDO_VIO18_MON
+#define MT6359_RG_LDO_VEMC_EN_ADDR              MT6359_LDO_VEMC_CON0
+#define MT6359_RG_LDO_VEMC_EN_SHIFT             0
+#define MT6359_DA_VEMC_B_EN_ADDR                MT6359_LDO_VEMC_MON
+#define MT6359_RG_LDO_VSIM1_EN_ADDR             MT6359_LDO_VSIM1_CON0
+#define MT6359_RG_LDO_VSIM1_EN_SHIFT            0
+#define MT6359_DA_VSIM1_B_EN_ADDR               MT6359_LDO_VSIM1_MON
+#define MT6359_RG_LDO_VSIM2_EN_ADDR		MT6359_LDO_VSIM2_CON0
+#define MT6359_RG_LDO_VSIM2_EN_SHIFT            0
+#define MT6359_DA_VSIM2_B_EN_ADDR               MT6359_LDO_VSIM2_MON
+#define MT6359_RG_LDO_VUSB_EN_0_ADDR            MT6359_LDO_VUSB_CON0
+#define MT6359_RG_LDO_VUSB_EN_0_MASK            0x1
+#define MT6359_RG_LDO_VUSB_EN_0_SHIFT           0
+#define MT6359_DA_VUSB_B_EN_ADDR                MT6359_LDO_VUSB_MON
+#define MT6359_RG_LDO_VUSB_EN_1_ADDR            MT6359_LDO_VUSB_MULTI_SW
+#define MT6359_RG_LDO_VUSB_EN_1_MASK            0x1
+#define MT6359_RG_LDO_VUSB_EN_1_SHIFT           15
+#define MT6359_RG_LDO_VRFCK_EN_ADDR             MT6359_LDO_VRFCK_CON0
+#define MT6359_RG_LDO_VRFCK_EN_SHIFT            0
+#define MT6359_DA_VRFCK_B_EN_ADDR               MT6359_LDO_VRFCK_MON
+#define MT6359_RG_LDO_VBBCK_EN_ADDR             MT6359_LDO_VBBCK_CON0
+#define MT6359_RG_LDO_VBBCK_EN_SHIFT            0
+#define MT6359_DA_VBBCK_B_EN_ADDR               MT6359_LDO_VBBCK_MON
+#define MT6359_RG_LDO_VBIF28_EN_ADDR            MT6359_LDO_VBIF28_CON0
+#define MT6359_DA_VBIF28_B_EN_ADDR              MT6359_LDO_VBIF28_MON
+#define MT6359_RG_LDO_VIBR_EN_ADDR              MT6359_LDO_VIBR_CON0
+#define MT6359_RG_LDO_VIBR_EN_SHIFT             0
+#define MT6359_DA_VIBR_B_EN_ADDR                MT6359_LDO_VIBR_MON
+#define MT6359_RG_LDO_VIO28_EN_ADDR             MT6359_LDO_VIO28_CON0
+#define MT6359_RG_LDO_VIO28_EN_SHIFT            0
+#define MT6359_DA_VIO28_B_EN_ADDR               MT6359_LDO_VIO28_MON
+#define MT6359_RG_LDO_VM18_EN_ADDR		MT6359_LDO_VM18_CON0
+#define MT6359_RG_LDO_VM18_EN_SHIFT             0
+#define MT6359_DA_VM18_B_EN_ADDR                MT6359_LDO_VM18_MON
+#define MT6359_RG_LDO_VUFS_EN_ADDR              MT6359_LDO_VUFS_CON0
+#define MT6359_RG_LDO_VUFS_EN_SHIFT		0
+#define MT6359_DA_VUFS_B_EN_ADDR                MT6359_LDO_VUFS_MON
+#define MT6359_RG_LDO_VSRAM_PROC1_EN_ADDR       MT6359_LDO_VSRAM_PROC1_CON0
+#define MT6359_DA_VSRAM_PROC1_B_EN_ADDR         MT6359_LDO_VSRAM_PROC1_MON
+#define MT6359_DA_VSRAM_PROC1_VOSEL_ADDR        MT6359_LDO_VSRAM_PROC1_VOSEL1
+#define MT6359_DA_VSRAM_PROC1_VOSEL_MASK        0x7F
+#define MT6359_DA_VSRAM_PROC1_VOSEL_SHIFT       8
+#define MT6359_RG_LDO_VSRAM_PROC2_EN_ADDR       MT6359_LDO_VSRAM_PROC2_CON0
+#define MT6359_DA_VSRAM_PROC2_B_EN_ADDR         MT6359_LDO_VSRAM_PROC2_MON
+#define MT6359_DA_VSRAM_PROC2_VOSEL_ADDR        MT6359_LDO_VSRAM_PROC2_VOSEL1
+#define MT6359_DA_VSRAM_PROC2_VOSEL_MASK        0x7F
+#define MT6359_DA_VSRAM_PROC2_VOSEL_SHIFT       8
+#define MT6359_RG_LDO_VSRAM_OTHERS_EN_ADDR      MT6359_LDO_VSRAM_OTHERS_CON0
+#define MT6359_DA_VSRAM_OTHERS_B_EN_ADDR        MT6359_LDO_VSRAM_OTHERS_MON
+#define MT6359_DA_VSRAM_OTHERS_VOSEL_ADDR       MT6359_LDO_VSRAM_OTHERS_VOSEL1
+#define MT6359_DA_VSRAM_OTHERS_VOSEL_MASK       0x7F
+#define MT6359_DA_VSRAM_OTHERS_VOSEL_SHIFT      8
+#define MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_EN_ADDR \
+						MT6359_LDO_VSRAM_OTHERS_SSHUB
+#define MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_ADDR \
+						MT6359_LDO_VSRAM_OTHERS_SSHUB
+#define MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_MASK	0x7F
+#define MT6359_RG_LDO_VSRAM_OTHERS_SSHUB_VOSEL_SHIFT	1
+#define MT6359_RG_LDO_VSRAM_MD_EN_ADDR          MT6359_LDO_VSRAM_MD_CON0
+#define MT6359_DA_VSRAM_MD_B_EN_ADDR            MT6359_LDO_VSRAM_MD_MON
+#define MT6359_DA_VSRAM_MD_VOSEL_ADDR           MT6359_LDO_VSRAM_MD_VOSEL1
+#define MT6359_DA_VSRAM_MD_VOSEL_MASK		0x7F
+#define MT6359_DA_VSRAM_MD_VOSEL_SHIFT          8
+#define MT6359_RG_VCN33_1_VOSEL_ADDR		MT6359_VCN33_1_ANA_CON0
+#define MT6359_RG_VCN33_1_VOSEL_MASK            0xF
+#define MT6359_RG_VCN33_1_VOSEL_SHIFT           8
+#define MT6359_RG_VCN33_2_VOSEL_ADDR            MT6359_VCN33_2_ANA_CON0
+#define MT6359_RG_VCN33_2_VOSEL_MASK            0xF
+#define MT6359_RG_VCN33_2_VOSEL_SHIFT           8
+#define MT6359_RG_VEMC_VOSEL_ADDR               MT6359_VEMC_ANA_CON0
+#define MT6359_RG_VEMC_VOSEL_MASK               0xF
+#define MT6359_RG_VEMC_VOSEL_SHIFT              8
+#define MT6359_RG_VSIM1_VOSEL_ADDR              MT6359_VSIM1_ANA_CON0
+#define MT6359_RG_VSIM1_VOSEL_MASK              0xF
+#define MT6359_RG_VSIM1_VOSEL_SHIFT             8
+#define MT6359_RG_VSIM2_VOSEL_ADDR              MT6359_VSIM2_ANA_CON0
+#define MT6359_RG_VSIM2_VOSEL_MASK              0xF
+#define MT6359_RG_VSIM2_VOSEL_SHIFT             8
+#define MT6359_RG_VIO28_VOSEL_ADDR		MT6359_VIO28_ANA_CON0
+#define MT6359_RG_VIO28_VOSEL_MASK              0xF
+#define MT6359_RG_VIO28_VOSEL_SHIFT             8
+#define MT6359_RG_VIBR_VOSEL_ADDR               MT6359_VIBR_ANA_CON0
+#define MT6359_RG_VIBR_VOSEL_MASK               0xF
+#define MT6359_RG_VIBR_VOSEL_SHIFT              8
+#define MT6359_RG_VRF18_VOSEL_ADDR              MT6359_VRF18_ANA_CON0
+#define MT6359_RG_VRF18_VOSEL_MASK              0xF
+#define MT6359_RG_VRF18_VOSEL_SHIFT             8
+#define MT6359_RG_VEFUSE_VOSEL_ADDR		MT6359_VEFUSE_ANA_CON0
+#define MT6359_RG_VEFUSE_VOSEL_MASK             0xF
+#define MT6359_RG_VEFUSE_VOSEL_SHIFT            8
+#define MT6359_RG_VCAMIO_VOSEL_ADDR             MT6359_VCAMIO_ANA_CON0
+#define MT6359_RG_VCAMIO_VOSEL_MASK             0xF
+#define MT6359_RG_VCAMIO_VOSEL_SHIFT            8
+#define MT6359_RG_VIO18_VOSEL_ADDR              MT6359_VIO18_ANA_CON0
+#define MT6359_RG_VIO18_VOSEL_MASK              0xF
+#define MT6359_RG_VIO18_VOSEL_SHIFT             8
+#define MT6359_RG_VM18_VOSEL_ADDR               MT6359_VM18_ANA_CON0
+#define MT6359_RG_VM18_VOSEL_MASK               0xF
+#define MT6359_RG_VM18_VOSEL_SHIFT              8
+#define MT6359_RG_VUFS_VOSEL_ADDR               MT6359_VUFS_ANA_CON0
+#define MT6359_RG_VUFS_VOSEL_MASK               0xF
+#define MT6359_RG_VUFS_VOSEL_SHIFT              8
+#define MT6359_RG_VRF12_VOSEL_ADDR              MT6359_VRF12_ANA_CON0
+#define MT6359_RG_VRF12_VOSEL_MASK              0xF
+#define MT6359_RG_VRF12_VOSEL_SHIFT             8
+#define MT6359_RG_VCN13_VOSEL_ADDR		MT6359_VCN13_ANA_CON0
+#define MT6359_RG_VCN13_VOSEL_MASK              0xF
+#define MT6359_RG_VCN13_VOSEL_SHIFT             8
+#define MT6359_RG_VA09_VOSEL_ADDR		MT6359_VA09_ANA_CON0
+#define MT6359_RG_VA09_VOSEL_MASK               0xF
+#define MT6359_RG_VA09_VOSEL_SHIFT              8
+#define MT6359_RG_VA12_VOSEL_ADDR               MT6359_VA12_ANA_CON0
+#define MT6359_RG_VA12_VOSEL_MASK               0xF
+#define MT6359_RG_VA12_VOSEL_SHIFT              8
+#define MT6359_RG_VXO22_VOSEL_ADDR              MT6359_VXO22_ANA_CON0
+#define MT6359_RG_VXO22_VOSEL_MASK              0xF
+#define MT6359_RG_VXO22_VOSEL_SHIFT             8
+#define MT6359_RG_VRFCK_VOSEL_ADDR              MT6359_VRFCK_ANA_CON0
+#define MT6359_RG_VRFCK_VOSEL_MASK              0xF
+#define MT6359_RG_VRFCK_VOSEL_SHIFT             8
+#define MT6359_RG_VBBCK_VOSEL_ADDR              MT6359_VBBCK_ANA_CON0
+#define MT6359_RG_VBBCK_VOSEL_MASK              0xF
+#define MT6359_RG_VBBCK_VOSEL_SHIFT             8
+
+#endif /* __MFD_MT6359_REGISTERS_H__ */
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
