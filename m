Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC522143C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iccG1vVpNP1l6FIzV4thVhnU0qUPhnasWAusm6USKIo=; b=qE+
	b+8TpZzXR/UGcNPHAE2DB5Gg4Nq5yd3QgDu5gXNoW2Uzcu14FKhd5u7cL7TMr174qAexnWmndTc7z
	py7nA1TzcMCxZXrGCfYpYeJ4bDEAFdlv5Ag8k3NejMYKzIzDLTahFupLKLJQgsZbwa7wWyipTXZm3
	numgU7J8Ay5AaUMVX0FDmp+mYJIIJVAQs2r9kuzfOvHb+7Pg4aMqqSbeot0N4t4tk3Z+1gcWx8hvr
	Oso5kz6E2MazOKWERsn1X25pnORM0BEdKnLX2aogHVId3mp1D66BTb+yMZLwNSuODVLCMC7A3lmCR
	Onn9+OfcDgJyxmPRnvpK4bwbhIGjU+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXIx-0006Tq-Je; Fri, 17 May 2019 07:29:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXIo-0006T8-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:29:17 +0000
Received: by mail-wr1-x441.google.com with SMTP id s17so5977989wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 00:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=O4Zlmfvl8oLoCInO7f3OJk1n7zypRRYQzecF9dLVwsg=;
 b=nvs15j81JkyYBYZNlhsK+O1GidnHzfvXGPyW9VLo7/A3zeB9kzJbnMuxWorXw5M3At
 zDbUy7AvyiUjLC5XrzKqr0/AWk77pn1IGaqI1VT4dt8P1rLnFHHGXhXroXao/slqLorO
 rlIrHPkBHpDy80lo8rf7jXwdN/kxgK8N9rWc9U9z432iCS2wUbjVuaK1X0jCg9V7i87L
 XLRkDQNg5pf9jMGU64hRLKwthZRAyUZp8tdVnn058oKB+fZnGwB0x02iBNJYRZDgppwr
 Xx42JscBtmis9HTcpZjU6xZFNv/2t/zcqUKt0EbZq5OGSik+3LSKB7XStFWjzQyxhML6
 M/jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=O4Zlmfvl8oLoCInO7f3OJk1n7zypRRYQzecF9dLVwsg=;
 b=KoiCp6sNtrSCKr3klIc2q29c1EgQryHol3Kn/1uyc7PWo516cjo3Or1I/AS98FzgBS
 3NmjiJbdeq8aFyuhCAUnRJy4VsjS2BAKig+bFvCVqB9rqtkfvp5UzITu73jj2MeYwu3v
 6rFzXvmDaU3rMRDcWylWhTrlXYooAGcj3xLa9NDnvEoA/agKw8FN/ksiGEgjSQT/ec6p
 JLirm6VO4tALXBbXXO1x6Q+XmjZzt5GnHNgjzrjcUWGe6/MfvnHaAgsmtCdZJ1tFU6rN
 zfBWE8lv3sl4KeR5cOVuQbvZNxUhzDN9RUuezqCp4reIdKOL2B7ol4U/gtAvyyGygPj8
 1tBw==
X-Gm-Message-State: APjAAAUec7uL2G5ivVECq8siPlXdqygsn0UIXIs4gMMF/c3ksSaVpxDp
 x1hYLUCo8tO4bjrR7EwH1luPTCFsceU=
X-Google-Smtp-Source: APXvYqzc7pHK+FYWKj/wIEhcH/uESKyL2GjBy1RD2VO0XzeQoYHfDfttb1htSd3/qE+YjDhsC/s7cw==
X-Received: by 2002:adf:9022:: with SMTP id h31mr5125351wrh.46.1558078151742; 
 Fri, 17 May 2019 00:29:11 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id x5sm8085986wrt.72.2019.05.17.00.29.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 May 2019 00:29:11 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/5] clk: add imx8 clk defines
Date: Fri, 17 May 2019 09:18:09 +0200
Message-Id: <20190517071813.26674-1-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_002914_760889_77EC400A 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 Oliver Graute <oliver.graute@kococonnector.com>, l.stach@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oliver Graute <oliver.graute@kococonnector.com>

added header defines for imx8qm clock

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 include/dt-bindings/clock/imx8qm-clock.h | 861 +++++++++++++++++++++++
 1 file changed, 861 insertions(+)
 create mode 100644 include/dt-bindings/clock/imx8qm-clock.h

diff --git a/include/dt-bindings/clock/imx8qm-clock.h b/include/dt-bindings/clock/imx8qm-clock.h
new file mode 100644
index 000000000000..13ee62bf8c86
--- /dev/null
+++ b/include/dt-bindings/clock/imx8qm-clock.h
@@ -0,0 +1,861 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017 NXP
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * as published by the Free Software Foundation; either version 2
+ * of the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX8QM_H
+#define __DT_BINDINGS_CLOCK_IMX8QM_H
+
+#define IMX8QM_CLK_DUMMY					0
+
+#define IMX8QM_A53_DIV						1
+#define IMX8QM_A53_CLK						2
+#define IMX8QM_A72_DIV						3
+#define IMX8QM_A72_CLK						4
+
+/* SC Clocks. */
+#define IMX8QM_SC_I2C_DIV					5
+#define IMX8QM_SC_I2C_CLK					6
+#define IMX8QM_SC_PID0_DIV					7
+#define IMX8QM_SC_PID0_CLK					8
+#define IMX8QM_SC_PIT_DIV					9
+#define IMX8QM_SC_PIT_CLK					10
+#define IMX8QM_SC_TPM_DIV					11
+#define IMX8QM_SC_TPM_CLK					12
+#define IMX8QM_SC_UART_DIV					13
+#define IMX8QM_SC_UART_CLK					14
+
+/* LSIO */
+#define IMX8QM_PWM0_DIV					15
+#define IMX8QM_PWM0_CLK					16
+#define IMX8QM_PWM1_DIV					17
+#define IMX8QM_PWM1_CLK					18
+#define IMX8QM_PWM2_DIV					19
+#define IMX8QM_PWM2_CLK					20
+#define IMX8QM_PWM3_DIV					21
+#define IMX8QM_PWM3_CLK					22
+#define IMX8QM_PWM4_DIV					23
+#define IMX8QM_PWM4_CLK					24
+#define IMX8QM_PWM5_DIV					26
+#define IMX8QM_PWM5_CLK					27
+#define IMX8QM_PWM6_DIV					28
+#define IMX8QM_PWM6_CLK					29
+#define IMX8QM_PWM7_DIV					30
+#define IMX8QM_PWM7_CLK					31
+#define IMX8QM_FSPI0_DIV					32
+#define IMX8QM_FSPI0_CLK					33
+#define IMX8QM_FSPI1_DIV					34
+#define IMX8QM_FSPI1_CLK					35
+#define IMX8QM_GPT0_DIV					36
+//#define IMX8QM_GPT0_CLK					37
+#define IMX8QM_GPT1_DIV					38
+//#define IMX8QM_GPT1_CLK					39
+#define IMX8QM_GPT2_DIV					40
+#define IMX8QM_GPT2_CLK					41
+#define IMX8QM_GPT3_DIV					42
+#define IMX8QM_GPT3_CLK					43
+#define IMX8QM_GPT4_DIV					44
+#define IMX8QM_GPT4_CLK					45
+
+/* Connectivity */
+#define IMX8QM_APBHDMA_CLK					46
+#define IMX8QM_GPMI_APB_CLK					47
+#define IMX8QM_GPMI_APB_BCH_CLK				48
+#define IMX8QM_GPMI_BCH_IO_DIV					49
+#define IMX8QM_GPMI_BCH_IO_CLK					50
+#define IMX8QM_GPMI_BCH_DIV					51
+#define IMX8QM_GPMI_BCH_CLK					52
+#define IMX8QM_SDHC0_IPG_CLK					53
+#define IMX8QM_SDHC0_DIV					54
+#define IMX8QM_SDHC0_CLK					55
+#define IMX8QM_SDHC1_IPG_CLK					56
+#define IMX8QM_SDHC1_DIV					57
+#define IMX8QM_SDHC1_CLK					58
+#define IMX8QM_SDHC2_IPG_CLK					59
+#define IMX8QM_SDHC2_DIV					60
+#define IMX8QM_SDHC2_CLK					61
+#define IMX8QM_USB2_OH_AHB_CLK					62
+#define IMX8QM_USB2_OH_IPG_S_CLK				63
+#define IMX8QM_USB2_OH_IPG_S_PL301_CLK				64
+#define IMX8QM_USB2_PHY_IPG_CLK				65
+#define IMX8QM_USB3_IPG_CLK					66
+#define IMX8QM_USB3_CORE_PCLK					67
+#define IMX8QM_USB3_PHY_CLK					68
+#define IMX8QM_USB3_ACLK_DIV					69
+#define IMX8QM_USB3_ACLK					70
+#define IMX8QM_USB3_BUS_DIV					71
+#define IMX8QM_USB3_BUS_CLK					72
+#define IMX8QM_USB3_LPM_DIV					73
+#define IMX8QM_USB3_LPM_CLK					74
+#define IMX8QM_ENET0_AHB_CLK					75
+#define IMX8QM_ENET0_IPG_S_CLK					76
+#define IMX8QM_ENET0_IPG_CLK					77
+#define IMX8QM_ENET0_RGMII_DIV					78
+#define IMX8QM_ENET0_RGMII_TX_CLK				79
+#define IMX8QM_ENET0_ROOT_DIV					80
+#define IMX8QM_ENET0_TX_CLK					81
+#define IMX8QM_ENET0_ROOT_CLK					82
+#define IMX8QM_ENET0_PTP_CLK					83
+#define IMX8QM_ENET0_BYPASS_DIV				84
+#define IMX8QM_ENET1_AHB_CLK					85
+#define IMX8QM_ENET1_IPG_S_CLK					86
+#define IMX8QM_ENET1_IPG_CLK					87
+#define IMX8QM_ENET1_RGMII_DIV					88
+#define IMX8QM_ENET1_RGMII_TX_CLK				89
+#define IMX8QM_ENET1_ROOT_DIV					90
+#define IMX8QM_ENET1_TX_CLK					91
+#define IMX8QM_ENET1_ROOT_CLK					92
+#define IMX8QM_ENET1_PTP_CLK					93
+#define IMX8QM_ENET1_BYPASS_DIV				94
+//#define IMX8QM_MLB_CLK					95
+#define IMX8QM_MLB_HCLK					96
+#define IMX8QM_MLB_IPG_CLK					97
+#define IMX8QM_EDMA_CLK					98
+#define IMX8QM_EDMA_IPG_CLK					99
+
+/* DMA */
+#define IMX8QM_SPI0_IPG_CLK					100
+#define IMX8QM_SPI0_DIV					101
+#define IMX8QM_SPI0_CLK					102
+#define IMX8QM_SPI1_IPG_CLK					103
+#define IMX8QM_SPI1_DIV					104
+#define IMX8QM_SPI1_CLK					105
+#define IMX8QM_SPI2_IPG_CLK					106
+#define IMX8QM_SPI2_DIV					107
+#define IMX8QM_SPI2_CLK					108
+#define IMX8QM_SPI3_IPG_CLK					109
+#define IMX8QM_SPI3_DIV					110
+#define IMX8QM_SPI3_CLK					111
+#define IMX8QM_UART0_IPG_CLK					112
+#define IMX8QM_UART0_DIV					113
+#define IMX8QM_UART0_CLK					114
+#define IMX8QM_UART1_IPG_CLK					115
+#define IMX8QM_UART1_DIV					116
+#define IMX8QM_UART1_CLK					117
+#define IMX8QM_UART2_IPG_CLK					118
+#define IMX8QM_UART2_DIV					119
+#define IMX8QM_UART2_CLK					120
+#define IMX8QM_UART3_IPG_CLK					121
+#define IMX8QM_UART3_DIV					122
+#define IMX8QM_UART3_CLK					123
+#define IMX8QM_UART4_IPG_CLK					124
+#define IMX8QM_UART4_DIV					125
+#define IMX8QM_EMVSIM0_IPG_CLK					126
+#define IMX8QM_UART4_CLK					127
+#define IMX8QM_EMVSIM0_DIV					128
+#define IMX8QM_EMVSIM0_CLK					129
+#define IMX8QM_EMVSIM1_IPG_CLK					130
+#define IMX8QM_EMVSIM1_DIV					131
+#define IMX8QM_EMVSIM1_CLK					132
+#define IMX8QM_CAN0_IPG_CHI_CLK				133
+#define IMX8QM_CAN0_IPG_CLK					134
+#define IMX8QM_CAN0_DIV					135
+#define IMX8QM_CAN0_CLK					136
+#define IMX8QM_CAN1_IPG_CHI_CLK				137
+#define IMX8QM_CAN1_IPG_CLK					138
+#define IMX8QM_CAN1_DIV					139
+#define IMX8QM_CAN1_CLK					140
+#define IMX8QM_CAN2_IPG_CHI_CLK				141
+#define IMX8QM_CAN2_IPG_CLK					142
+#define IMX8QM_CAN2_DIV					143
+#define IMX8QM_CAN2_CLK					144
+#define IMX8QM_I2C0_IPG_CLK					145
+#define IMX8QM_I2C0_DIV					146
+#define IMX8QM_I2C0_CLK					147
+#define IMX8QM_I2C1_IPG_CLK					148
+#define IMX8QM_I2C1_DIV					149
+#define IMX8QM_I2C1_CLK					150
+#define IMX8QM_I2C2_IPG_CLK					151
+#define IMX8QM_I2C2_DIV					152
+#define IMX8QM_I2C2_CLK					153
+#define IMX8QM_I2C3_IPG_CLK					154
+#define IMX8QM_I2C3_DIV					155
+#define IMX8QM_I2C3_CLK					156
+#define IMX8QM_I2C4_IPG_CLK					157
+#define IMX8QM_I2C4_DIV					158
+#define IMX8QM_I2C4_CLK					159
+#define IMX8QM_FTM0_IPG_CLK					160
+#define IMX8QM_FTM0_DIV					161
+#define IMX8QM_FTM0_CLK					162
+#define IMX8QM_FTM1_IPG_CLK					163
+#define IMX8QM_FTM1_DIV					164
+#define IMX8QM_FTM1_CLK					165
+#define IMX8QM_ADC0_IPG_CLK					166
+#define IMX8QM_ADC0_DIV					167
+#define IMX8QM_ADC0_CLK					168
+#define IMX8QM_ADC1_IPG_CLK					169
+#define IMX8QM_ADC1_DIV					170
+#define IMX8QM_ADC1_CLK					171
+
+/* Audio */
+#define IMX8QM_AUD_PLL0_DIV					172
+#define IMX8QM_AUD_PLL0					173
+#define IMX8QM_AUD_PLL1_DIV					174
+#define IMX8QM_AUD_PLL1					175
+#define IMX8QM_AUD_AMIX_IPG					182
+#define IMX8QM_AUD_ESAI_0_IPG					183
+#define IMX8QM_AUD_ESAI_1_IPG					184
+#define IMX8QM_AUD_ESAI_0_EXTAL_IPG				185
+#define IMX8QM_AUD_ESAI_1_EXTAL_IPG				186
+#define IMX8QM_AUD_SAI_0_IPG					187
+#define IMX8QM_AUD_SAI_0_IPG_S					188
+#define IMX8QM_AUD_SAI_0_MCLK					189
+#define IMX8QM_AUD_SAI_1_IPG					190
+#define IMX8QM_AUD_SAI_1_IPG_S					191
+#define IMX8QM_AUD_SAI_1_MCLK					192
+#define IMX8QM_AUD_SAI_2_IPG					193
+#define IMX8QM_AUD_SAI_2_IPG_S					194
+#define IMX8QM_AUD_SAI_2_MCLK					195
+#define IMX8QM_AUD_SAI_3_IPG					196
+#define IMX8QM_AUD_SAI_3_IPG_S					197
+#define IMX8QM_AUD_SAI_3_MCLK					198
+#define IMX8QM_AUD_SAI_6_IPG					199
+#define IMX8QM_AUD_SAI_6_IPG_S					200
+#define IMX8QM_AUD_SAI_6_MCLK					201
+#define IMX8QM_AUD_SAI_7_IPG					202
+#define IMX8QM_AUD_SAI_7_IPG_S					203
+#define IMX8QM_AUD_SAI_7_MCLK					204
+#define IMX8QM_AUD_SAI_HDMIRX0_IPG				205
+#define IMX8QM_AUD_SAI_HDMIRX0_IPG_S				206
+#define IMX8QM_AUD_SAI_HDMIRX0_MCLK				207
+#define IMX8QM_AUD_SAI_HDMITX0_IPG				208
+#define IMX8QM_AUD_SAI_HDMITX0_IPG_S				209
+#define IMX8QM_AUD_SAI_HDMITX0_MCLK				210
+#define IMX8QM_AUD_MQS_IPG					211
+#define IMX8QM_AUD_MQS_HMCLK					212
+#define IMX8QM_AUD_GPT5_IPG_S					213
+#define IMX8QM_AUD_GPT5_CLKIN					214
+#define IMX8QM_AUD_GPT5_24M_CLK				215
+#define IMX8QM_AUD_GPT6_IPG_S					216
+#define IMX8QM_AUD_GPT6_CLKIN					217
+#define IMX8QM_AUD_GPT6_24M_CLK				218
+#define IMX8QM_AUD_GPT7_IPG_S					219
+#define IMX8QM_AUD_GPT7_CLKIN					220
+#define IMX8QM_AUD_GPT7_24M_CLK				221
+#define IMX8QM_AUD_GPT8_IPG_S					222
+#define IMX8QM_AUD_GPT8_CLKIN					223
+#define IMX8QM_AUD_GPT8_24M_CLK				224
+#define IMX8QM_AUD_GPT9_IPG_S					225
+#define IMX8QM_AUD_GPT9_CLKIN					226
+#define IMX8QM_AUD_GPT9_24M_CLK				227
+#define IMX8QM_AUD_GPT10_IPG_S					228
+#define IMX8QM_AUD_GPT10_CLKIN					229
+#define IMX8QM_AUD_GPT10_24M_CLK				230
+#define IMX8QM_AUD_ACM_AUD_PLL_CLK0_DIV			232
+#define IMX8QM_AUD_ACM_AUD_PLL_CLK0_CLK			233
+#define IMX8QM_AUD_ACM_AUD_PLL_CLK1_DIV			234
+#define IMX8QM_AUD_ACM_AUD_PLL_CLK1_CLK			235
+#define IMX8QM_AUD_ACM_AUD_REC_CLK0_DIV			236
+#define IMX8QM_AUD_ACM_AUD_REC_CLK0_CLK			237
+#define IMX8QM_AUD_ACM_AUD_REC_CLK1_DIV			238
+#define IMX8QM_AUD_ACM_AUD_REC_CLK1_CLK			239
+#define IMX8QM_AUD_MCLKOUT0					240
+#define IMX8QM_AUD_MCLKOUT1					241
+#define IMX8QM_AUD_SPDIF_0_TX_CLK				242
+#define IMX8QM_AUD_SPDIF_0_GCLKW				243
+#define IMX8QM_AUD_SPDIF_0_IPG_S				244
+#define IMX8QM_AUD_SPDIF_1_TX_CLK				245
+#define IMX8QM_AUD_SPDIF_1_GCLKW				246
+#define IMX8QM_AUD_SPDIF_1_IPG_S				247
+#define IMX8QM_AUD_ASRC_0_IPG					248
+#define IMX8QM_AUD_ASRC_0_MEM					249
+#define IMX8QM_AUD_ASRC_1_IPG					250
+#define IMX8QM_AUD_ASRC_1_MEM					251
+
+
+/* VPU */
+#define IMX8QM_VPU_CORE_DIV					252
+#define IMX8QM_VPU_CORE_CLK					253
+#define IMX8QM_VPU_UART_DIV					254
+#define IMX8QM_VPU_UART_CLK					255
+#define IMX8QM_VPU_DDR_DIV					256
+#define IMX8QM_VPU_DDR_CLK					257
+#define IMX8QM_VPU_SYS_DIV					258
+#define IMX8QM_VPU_SYS_CLK					259
+#define IMX8QM_VPU_XUVI_DIV					260
+#define IMX8QM_VPU_XUVI_CLK					261
+
+/* GPU Clocks. */
+#define IMX8QM_GPU0_CORE_DIV					262
+#define IMX8QM_GPU0_CORE_CLK					263
+#define IMX8QM_GPU0_SHADER_DIV					264
+#define IMX8QM_GPU0_SHADER_CLK					265
+#define IMX8QM_GPU1_CORE_DIV					266
+#define IMX8QM_GPU1_CORE_CLK					267
+#define IMX8QM_GPU1_SHADER_DIV					268
+#define IMX8QM_GPU1_SHADER_CLK					269
+
+
+/* MIPI CSI */
+#define IMX8QM_CSI0_IPG_CLK_S					270
+#define IMX8QM_CSI0_LIS_IPG_CLK				271
+#define IMX8QM_CSI0_APB_CLK					272
+#define IMX8QM_CSI0_I2C0_DIV					273
+#define IMX8QM_CSI0_I2C0_CLK					274
+#define IMX8QM_CSI0_PWM0_DIV					275
+#define IMX8QM_CSI0_PWM0_CLK					276
+#define IMX8QM_CSI0_CORE_DIV					277
+#define IMX8QM_CSI0_CORE_CLK					278
+#define IMX8QM_CSI0_ESC_DIV					279
+#define IMX8QM_CSI0_ESC_CLK					280
+#define IMX8QM_CSI1_IPG_CLK_S					281
+#define IMX8QM_CSI1_LIS_IPG_CLK				282
+#define IMX8QM_CSI1_APB_CLK					283
+#define IMX8QM_CSI1_I2C0_DIV					284
+#define IMX8QM_CSI1_I2C0_CLK					285
+#define IMX8QM_CSI1_PWM0_DIV					286
+#define IMX8QM_CSI1_PWM0_CLK					287
+#define IMX8QM_CSI1_CORE_DIV					288
+#define IMX8QM_CSI1_CORE_CLK					289
+#define IMX8QM_CSI1_ESC_DIV					290
+#define IMX8QM_CSI1_ESC_CLK					291
+
+
+/* Display */
+#define IMX8QM_DC0_PLL0_DIV					292
+#define IMX8QM_DC0_PLL0_CLK					293
+#define IMX8QM_DC0_PLL1_DIV					294
+#define IMX8QM_DC0_PLL1_CLK					295
+#define IMX8QM_DC0_DISP0_DIV					296
+#define IMX8QM_DC0_DISP0_CLK					297
+#define IMX8QM_DC0_DISP1_DIV					298
+#define IMX8QM_DC0_DISP1_CLK					299
+#define IMX8QM_DC0_BYPASS_0_DIV				300
+#define IMX8QM_DC0_BYPASS_1_DIV				301
+#define IMX8QM_DC0_IRIS_AXI_CLK				302
+#define IMX8AM_DC0_IRIS_MVPL_CLK				303
+#define IMX8QM_DC0_DISP0_MSI_CLK				304
+#define IMX8QM_DC0_LIS_IPG_CLK					305
+#define IMX8QM_DC0_PXL_CMB_APB_CLK				306
+#define IMX8QM_DC0_PRG0_RTRAM_CLK				307
+#define IMX8QM_DC0_PRG1_RTRAM_CLK				308
+#define IMX8QM_DC0_PRG2_RTRAM_CLK				309
+#define IMX8QM_DC0_PRG3_RTRAM_CLK				310
+#define IMX8QM_DC0_PRG4_RTRAM_CLK				311
+#define IMX8QM_DC0_PRG5_RTRAM_CLK				312
+#define IMX8QM_DC0_PRG6_RTRAM_CLK				313
+#define IMX8QM_DC0_PRG7_RTRAM_CLK				314
+#define IMX8QM_DC0_PRG8_RTRAM_CLK				315
+#define IMX8QM_DC0_PRG0_APB_CLK				316
+#define IMX8QM_DC0_PRG1_APB_CLK				317
+#define IMX8QM_DC0_PRG2_APB_CLK				318
+#define IMX8QM_DC0_PRG3_APB_CLK				319
+#define IMX8QM_DC0_PRG4_APB_CLK				320
+#define IMX8QM_DC0_PRG5_APB_CLK				321
+#define IMX8QM_DC0_PRG6_APB_CLK				322
+#define IMX8QM_DC0_PRG7_APB_CLK				323
+#define IMX8QM_DC0_PRG8_APB_CLK				324
+#define IMX8QM_DC0_DPR0_APB_CLK				325
+#define IMX8QM_DC0_DPR1_APB_CLK				326
+#define IMX8QM_DC0_RTRAM0_CLK					327
+#define IMX8QM_DC0_RTRAM1_CLK					328
+#define IMX8QM_DC1_PLL0_DIV					329
+#define IMX8QM_DC1_PLL0_CLK					330
+#define IMX8QM_DC1_PLL1_DIV					331
+#define IMX8QM_DC1_PLL1_CLK					332
+#define IMX8QM_DC1_DISP0_DIV					333
+#define IMX8QM_DC1_DISP0_CLK					334
+#define IMX8QM_DC1_BYPASS_0_DIV				335
+#define IMX8QM_DC1_BYPASS_1_DIV				336
+#define IMX8QM_DC1_DISP1_DIV					337
+#define IMX8QM_DC1_DISP1_CLK					338
+#define IMX8QM_DC1_IRIS_AXI_CLK				339
+#define IMX8AM_DC1_IRIS_MVPL_CLK				340
+#define IMX8QM_DC1_DISP0_MSI_CLK				341
+#define IMX8QM_DC1_LIS_IPG_CLK					342
+#define IMX8QM_DC1_PXL_CMB_APB_CLK				343
+#define IMX8QM_DC1_PRG0_RTRAM_CLK				344
+#define IMX8QM_DC1_PRG1_RTRAM_CLK				345
+#define IMX8QM_DC1_PRG2_RTRAM_CLK				346
+#define IMX8QM_DC1_PRG3_RTRAM_CLK				347
+#define IMX8QM_DC1_PRG4_RTRAM_CLK				348
+#define IMX8QM_DC1_PRG5_RTRAM_CLK				349
+#define IMX8QM_DC1_PRG6_RTRAM_CLK				350
+#define IMX8QM_DC1_PRG7_RTRAM_CLK				351
+#define IMX8QM_DC1_PRG8_RTRAM_CLK				352
+#define IMX8QM_DC1_PRG0_APB_CLK				353
+#define IMX8QM_DC1_PRG1_APB_CLK				354
+#define IMX8QM_DC1_PRG2_APB_CLK				355
+#define IMX8QM_DC1_PRG3_APB_CLK				356
+#define IMX8QM_DC1_PRG4_APB_CLK				357
+#define IMX8QM_DC1_PRG5_APB_CLK				358
+#define IMX8QM_DC1_PRG6_APB_CLK				359
+#define IMX8QM_DC1_PRG7_APB_CLK				360
+#define IMX8QM_DC1_PRG8_APB_CLK				361
+#define IMX8QM_DC1_DPR0_APB_CLK				362
+#define IMX8QM_DC1_DPR1_APB_CLK				363
+#define IMX8QM_DC1_RTRAM0_CLK					364
+#define IMX8QM_DC1_RTRAM1_CLK					365
+
+/* DRC */
+#define IMX8QM_DRC0_PLL0_DIV					366
+#define IMX8QM_DRC0_PLL0_CLK					367
+#define IMX8QM_DRC0_DIV					368
+#define IMX8QM_DRC0_CLK					369
+#define IMX8QM_DRC1_PLL0_DIV					370
+#define IMX8QM_DRC1_PLL0_CLK					371
+#define IMX8QM_DRC1_DIV					372
+#define IMX8QM_DRC1_CLK					373
+
+/* HDMI */
+#define IMX8QM_HDMI_AV_PLL_DIV					374
+#define IMX8QM_HDMI_AV_PLL_CLK					375
+#define IMX8QM_HDMI_I2S_BYPASS_CLK				376
+#define IMX8QM_HDMI_I2C0_DIV					377
+#define IMX8QM_HDMI_I2C0_CLK					378
+#define IMX8QM_HDMI_PXL_DIV					379
+#define IMX8QM_HDMI_PXL_CLK					380
+#define IMX8QM_HDMI_PXL_LINK_DIV				381
+#define IMX8QM_HDMI_PXL_LINK_CLK				382
+#define IMX8QM_HDMI_PXL_MUX_DIV				383
+#define IMX8QM_HDMI_PXL_MUX_CLK				384
+#define IMX8QM_HDMI_I2S_DIV					385
+#define IMX8QM_HDMI_I2S_CLK					386
+#define IMX8QM_HDMI_HDP_CORE_DIV				387
+#define IMX8QM_HDMI_HDP_CORE_CLK				388
+#define IMX8QM_HDMI_I2C_IPG_S_CLK				389
+#define IMX8QM_HDMI_I2C_IPG_CLK				390
+#define IMX8QM_HDMI_PWM_IPG_S_CLK				391
+#define IMX8QM_HDMI_PWM_IPG_CLK				392
+#define IMX8QM_HDMI_PWM_32K_CLK				393
+#define IMX8QM_HDMI_GPIO_IPG_CLK				394
+#define IMX8QM_HDMI_PXL_LINK_SLV_ODD_CLK			395
+#define IMX8QM_HDMI_PXL_LINK_SLV_EVEN_CLK			396
+#define IMX8QM_HDMI_LIS_IPG_CLK				397
+#define IMX8QM_HDMI_MSI_HCLK					398
+#define IMX8QM_HDMI_PXL_EVEN_CLK				399
+#define IMX8QM_HDMI_HDP_CLK					400
+#define IMX8QM_HDMI_PXL_DBL_CLK				401
+#define IMX8QM_HDMI_APB_CLK					402
+#define IMX8QM_HDMI_PXL_LPCG_CLK				403
+#define IMX8QM_HDMI_HDP_PHY_CLK				404
+#define IMX8QM_HDMI_IPG_DIV					405
+#define IMX8QM_HDMI_VIF_CLK					406
+#define IMX8QM_HDMI_DIG_PLL_DIV				407
+#define IMX8QM_HDMI_DIG_PLL_CLK				408
+#define IMX8QM_HDMI_APB_MUX_CSR_CLK				409
+#define IMX8QM_HDMI_APB_MUX_CTRL_CLK				410
+
+/* RX-HDMI */
+#define IMX8QM_HDMI_RX_I2S_BYPASS_CLK				411
+#define IMX8QM_HDMI_RX_BYPASS_CLK				412
+#define IMX8QM_HDMI_RX_SPDIF_BYPASS_CLK			413
+#define IMX8QM_HDMI_RX_I2C0_DIV				414
+#define IMX8QM_HDMI_RX_I2C0_CLK				415
+#define IMX8QM_HDMI_RX_SPDIF_DIV				416
+#define IMX8QM_HDMI_RX_SPDIF_CLK				417
+#define IMX8QM_HDMI_RX_HD_REF_DIV				418
+#define IMX8QM_HDMI_RX_HD_REF_CLK				419
+#define IMX8QM_HDMI_RX_HD_CORE_DIV				420
+#define IMX8QM_HDMI_RX_HD_CORE_CLK				421
+#define IMX8QM_HDMI_RX_PXL_DIV					422
+#define IMX8QM_HDMI_RX_PXL_CLK					423
+#define IMX8QM_HDMI_RX_I2S_DIV					424
+#define IMX8QM_HDMI_RX_I2S_CLK					425
+#define IMX8QM_HDMI_RX_PWM_DIV					426
+#define IMX8QM_HDMI_RX_PWM_CLK					427
+
+/* LVDS */
+#define IMX8QM_LVDS0_BYPASS_CLK				428
+#define IMX8QM_LVDS0_PIXEL_DIV					429
+#define IMX8QM_LVDS0_PIXEL_CLK					430
+#define IMX8QM_LVDS0_PHY_DIV					431
+#define IMX8QM_LVDS0_PHY_CLK					432
+#define IMX8QM_LVDS0_I2C0_IPG_CLK				433
+#define IMX8QM_LVDS0_I2C0_DIV					434
+#define IMX8QM_LVDS0_I2C0_CLK					435
+#define IMX8QM_LVDS0_I2C1_IPG_CLK				436
+#define IMX8QM_LVDS0_I2C1_DIV					437
+#define IMX8QM_LVDS0_I2C1_CLK					438
+#define IMX8QM_LVDS0_PWM0_IPG_CLK				439
+#define IMX8QM_LVDS0_PWM0_DIV					440
+#define IMX8QM_LVDS0_PWM0_CLK					441
+#define IMX8QM_LVDS0_GPIO_IPG_CLK				444
+#define IMX8QM_LVDS1_BYPASS_DIV				445
+#define IMX8QM_LVDS1_BYPASS_CLK				446
+#define IMX8QM_LVDS1_PIXEL_DIV					447
+#define IMX8QM_LVDS1_PIXEL_CLK					448
+#define IMX8QM_LVDS1_PHY_DIV					449
+#define IMX8QM_LVDS1_PHY_CLK					450
+#define IMX8QM_LVDS1_I2C0_IPG_CLK				451
+#define IMX8QM_LVDS1_I2C0_DIV					452
+#define IMX8QM_LVDS1_I2C0_CLK					453
+#define IMX8QM_LVDS1_I2C1_IPG_CLK				454
+#define IMX8QM_LVDS1_I2C1_DIV					455
+#define IMX8QM_LVDS1_I2C1_CLK					456
+#define IMX8QM_LVDS1_PWM0_IPG_CLK				457
+#define IMX8QM_LVDS1_PWM0_DIV					458
+#define IMX8QM_LVDS1_PWM0_CLK					459
+#define IMX8QM_LVDS1_GPIO_IPG_CLK				462
+
+/* MIPI */
+#define IMX8QM_MIPI0_BYPASS_CLK				465
+#define IMX8QM_MIPI0_I2C0_DIV					466
+#define IMX8QM_MIPI0_I2C0_CLK					467
+#define IMX8QM_MIPI0_I2C1_DIV					468
+#define IMX8QM_MIPI0_I2C1_CLK					469
+#define IMX8QM_MIPI0_PWM0_DIV					470
+#define IMX8QM_MIPI0_PWM0_CLK					471
+#define IMX8QM_MIPI0_DSI_TX_ESC_DIV				472
+#define IMX8QM_MIPI0_DSI_TX_ESC_CLK				473
+#define IMX8QM_MIPI0_DSI_RX_ESC_DIV				474
+#define IMX8QM_MIPI0_DSI_RX_ESC_CLK				475
+#define IMX8QM_MIPI0_PXL_DIV					476
+#define IMX8QM_MIPI0_PXL_CLK					477
+#define IMX8QM_MIPI1_BYPASS_CLK				479
+#define IMX8QM_MIPI1_I2C0_DIV					480
+#define IMX8QM_MIPI1_I2C0_CLK					481
+#define IMX8QM_MIPI1_I2C1_DIV					482
+#define IMX8QM_MIPI1_I2C1_CLK					483
+#define IMX8QM_MIPI1_PWM0_DIV					484
+#define IMX8QM_MIPI1_PWM0_CLK					485
+#define IMX8QM_MIPI1_DSI_TX_ESC_DIV				486
+#define IMX8QM_MIPI1_DSI_TX_ESC_CLK				487
+#define IMX8QM_MIPI1_DSI_RX_ESC_DIV				488
+#define IMX8QM_MIPI1_DSI_RX_ESC_CLK				489
+#define IMX8QM_MIPI1_PXL_DIV					490
+#define IMX8QM_MIPI1_PXL_CLK					491
+
+/* Imaging */
+#define IMX8QM_IMG_JPEG_ENC_IPG_CLK				492
+#define IMX8QM_IMG_JPEG_ENC_CLK				493
+#define IMX8QM_IMG_JPEG_DEC_IPG_CLK				494
+#define IMX8QM_IMG_JPEG_DEC_CLK				495
+#define IMX8QM_IMG_PXL_LINK_DC0_CLK				496
+#define IMX8QM_IMG_PXL_LINK_DC1_CLK				497
+#define IMX8QM_IMG_PXL_LINK_CSI0_CLK				498
+#define IMX8QM_IMG_PXL_LINK_CSI1_CLK				499
+#define IMX8QM_IMG_PXL_LINK_HDMI_IN_CLK			500
+#define IMX8QM_IMG_PDMA_0_CLK					501
+#define IMX8QM_IMG_PDMA_1_CLK					502
+#define IMX8QM_IMG_PDMA_2_CLK					503
+#define IMX8QM_IMG_PDMA_3_CLK					504
+#define IMX8QM_IMG_PDMA_4_CLK					505
+#define IMX8QM_IMG_PDMA_5_CLK					506
+#define IMX8QM_IMG_PDMA_6_CLK					507
+#define IMX8QM_IMG_PDMA_7_CLK					508
+
+/* HSIO */
+#define IMX8QM_HSIO_PCIE_A_MSTR_AXI_CLK			509
+#define IMX8QM_HSIO_PCIE_A_SLV_AXI_CLK				510
+#define IMX8QM_HSIO_PCIE_A_DBI_AXI_CLK				511
+#define IMX8QM_HSIO_PCIE_B_MSTR_AXI_CLK			512
+#define IMX8QM_HSIO_PCIE_B_SLV_AXI_CLK				513
+#define IMX8QM_HSIO_PCIE_B_DBI_AXI_CLK				514
+#define IMX8QM_HSIO_PCIE_X1_PER_CLK				515
+#define IMX8QM_HSIO_PCIE_X2_PER_CLK				516
+#define IMX8QM_HSIO_SATA_PER_CLK				517
+#define IMX8QM_HSIO_PHY_X1_PER_CLK				518
+#define IMX8QM_HSIO_PHY_X2_PER_CLK				519
+#define IMX8QM_HSIO_MISC_PER_CLK				520
+#define IMX8QM_HSIO_PHY_X1_APB_CLK				521
+#define IMX8QM_HSIO_PHY_X2_APB_0_CLK				522
+#define IMX8QM_HSIO_PHY_X2_APB_1_CLK				523
+#define IMX8QM_HSIO_SATA_CLK					524
+#define IMX8QM_HSIO_GPIO_CLK					525
+#define IMX8QM_HSIO_PHY_X1_PCLK				526
+#define IMX8QM_HSIO_PHY_X2_PCLK_0				527
+#define IMX8QM_HSIO_PHY_X2_PCLK_1				528
+#define IMX8QM_HSIO_SATA_EPCS_RX_CLK				529
+#define IMX8QM_HSIO_SATA_EPCS_TX_CLK				530
+
+
+/* M4 */
+#define IMX8QM_M4_0_CORE_DIV					531
+#define IMX8QM_M4_0_CORE_CLK					532
+#define IMX8QM_M4_0_I2C_DIV					533
+#define IMX8QM_M4_0_I2C_CLK					534
+#define IMX8QM_M4_0_PIT_DIV					535
+#define IMX8QM_M4_0_PIT_CLK					536
+#define IMX8QM_M4_0_TPM_DIV					537
+#define IMX8QM_M4_0_TPM_CLK					538
+#define IMX8QM_M4_0_UART_DIV					539
+#define IMX8QM_M4_0_UART_CLK					540
+#define IMX8QM_M4_0_WDOG_DIV					541
+#define IMX8QM_M4_0_WDOG_CLK					542
+#define IMX8QM_M4_1_CORE_DIV					543
+#define IMX8QM_M4_1_CORE_CLK					544
+#define IMX8QM_M4_1_I2C_DIV					545
+#define IMX8QM_M4_1_I2C_CLK					546
+#define IMX8QM_M4_1_PIT_DIV					547
+#define IMX8QM_M4_1_PIT_CLK					548
+#define IMX8QM_M4_1_TPM_DIV					549
+#define IMX8QM_M4_1_TPM_CLK					550
+#define IMX8QM_M4_1_UART_DIV					551
+#define IMX8QM_M4_1_UART_CLK					552
+#define IMX8QM_M4_1_WDOG_DIV					553
+#define IMX8QM_M4_1_WDOG_CLK					554
+
+/* IPG clocks */
+#define IMX8QM_24MHZ						555
+#define IMX8QM_GPT_3M						556
+#define IMX8QM_IPG_DMA_CLK_ROOT				557
+#define IMX8QM_IPG_AUD_CLK_ROOT				558
+#define IMX8QM_IPG_CONN_CLK_ROOT				559
+#define IMX8QM_AHB_CONN_CLK_ROOT				560
+#define IMX8QM_AXI_CONN_CLK_ROOT				561
+#define IMX8QM_IPG_MIPI_CSI_CLK_ROOT				562
+#define IMX8QM_DC_AXI_EXT_CLK					563
+#define IMX8QM_DC_AXI_INT_CLK					564
+#define IMX8QM_DC_CFG_CLK					565
+#define IMX8QM_HDMI_IPG_CLK					566
+#define IMX8QM_LVDS_IPG_CLK					567
+#define IMX8QM_IMG_AXI_CLK					568
+#define IMX8QM_IMG_IPG_CLK					569
+#define IMX8QM_IMG_PXL_CLK					570
+#define IMX8QM_CSI0_I2C0_IPG_CLK				571
+#define IMX8QM_CSI0_PWM0_IPG_CLK				572
+#define IMX8QM_CSI1_I2C0_IPG_CLK				573
+#define IMX8QM_CSI1_PWM0_IPG_CLK				574
+#define IMX8QM_DC0_DPR0_B_CLK					575
+#define IMX8QM_DC0_DPR1_B_CLK					576
+#define IMX8QM_DC1_DPR0_B_CLK					577
+#define IMX8QM_DC1_DPR1_B_CLK					578
+#define IMX8QM_32KHZ						579
+#define IMX8QM_HSIO_AXI_CLK					580
+#define IMX8QM_HSIO_PER_CLK					581
+#define IMX8QM_HDMI_RX_GPIO_IPG_S_CLK				582
+#define IMX8QM_HDMI_RX_PWM_IPG_S_CLK				583
+#define IMX8QM_HDMI_RX_PWM_IPG_CLK				584
+#define IMX8QM_HDMI_RX_I2C_DIV_CLK				585
+#define IMX8QM_HDMI_RX_I2C_IPG_S_CLK				586
+#define IMX8QM_HDMI_RX_I2C_IPG_CLK				587
+#define IMX8QM_HDMI_RX_SINK_PCLK				588
+#define IMX8QM_HDMI_RX_SINK_SCLK				589
+#define IMX8QM_HDMI_RX_PXL_ENC_CLK				590
+#define IMX8QM_HDMI_RX_IPG_CLK					591
+
+/* ACM */
+#define IMX8QM_HDMI_RX_MCLK					592
+#define IMX8QM_EXT_AUD_MCLK0					593
+#define IMX8QM_EXT_AUD_MCLK1					594
+#define IMX8QM_ESAI0_RX_CLK					595
+#define IMX8QM_ESAI0_RX_HF_CLK					596
+#define IMX8QM_ESAI0_TX_CLK					597
+#define IMX8QM_ESAI0_TX_HF_CLK					598
+#define IMX8QM_ESAI1_RX_CLK					599
+#define IMX8QM_ESAI1_RX_HF_CLK					600
+#define IMX8QM_ESAI1_TX_CLK					601
+#define IMX8QM_ESAI1_TX_HF_CLK					602
+//#define IMX8QM_SPDIF0_RX					603
+#define IMX8QM_SPDIF1_RX					604
+#define IMX8QM_SAI0_RX_BCLK					605
+#define IMX8QM_SAI0_TX_BCLK					606
+#define IMX8QM_SAI1_RX_BCLK					607
+#define IMX8QM_SAI1_TX_BCLK					608
+#define IMX8QM_SAI2_RX_BCLK					609
+#define IMX8QM_SAI3_RX_BCLK					610
+#define IMX8QM_HDMI_RX_SAI0_RX_BCLK				611
+#define IMX8QM_SAI6_RX_BCLK					612
+#define IMX8QM_HDMI_TX_SAI0_TX_BCLK				613
+
+#define IMX8QM_ACM_AUD_CLK0_SEL				614
+#define IMX8QM_ACM_AUD_CLK0_CLK				615
+#define IMX8QM_ACM_AUD_CLK1_SEL				616
+#define IMX8QM_ACM_AUD_CLK1_CLK				617
+#define IMX8QM_ACM_MCLKOUT0_SEL				618
+#define IMX8QM_ACM_MCLKOUT0_CLK				619
+#define IMX8QM_ACM_MCLKOUT1_SEL				620
+#define IMX8QM_ACM_MCLKOUT1_CLK				621
+#define IMX8QM_ACM_ASRC0_MUX_CLK_SEL				622
+#define IMX8QM_ACM_ASRC0_MUX_CLK_CLK				623
+#define IMX8QM_ACM_ASRC1_MUX_CLK_SEL				624
+#define IMX8QM_ACM_ASRC1_MUX_CLK_CLK				625
+#define IMX8QM_ACM_ESAI0_MCLK_SEL				626
+#define IMX8QM_ACM_ESAI0_MCLK_CLK				627
+#define IMX8QM_ACM_ESAI1_MCLK_SEL				628
+#define IMX8QM_ACM_ESAI1_MCLK_CLK				629
+#define IMX8QM_ACM_GPT0_MUX_CLK_SEL				630
+#define IMX8QM_ACM_GPT0_MUX_CLK_CLK				631
+#define IMX8QM_ACM_GPT1_MUX_CLK_SEL				632
+#define IMX8QM_ACM_GPT1_MUX_CLK_CLK				633
+#define IMX8QM_ACM_GPT2_MUX_CLK_SEL				634
+#define IMX8QM_ACM_GPT2_MUX_CLK_CLK				635
+#define IMX8QM_ACM_GPT3_MUX_CLK_SEL				636
+#define IMX8QM_ACM_GPT3_MUX_CLK_CLK				637
+#define IMX8QM_ACM_GPT4_MUX_CLK_SEL				638
+#define IMX8QM_ACM_GPT4_MUX_CLK_CLK				639
+#define IMX8QM_ACM_GPT5_MUX_CLK_SEL				640
+#define IMX8QM_ACM_GPT5_MUX_CLK_CLK				641
+#define IMX8QM_ACM_SAI0_MCLK_SEL				642
+#define IMX8QM_ACM_SAI0_MCLK_CLK				643
+#define IMX8QM_ACM_SAI1_MCLK_SEL				644
+#define IMX8QM_ACM_SAI1_MCLK_CLK				645
+#define IMX8QM_ACM_SAI2_MCLK_SEL				646
+#define IMX8QM_ACM_SAI2_MCLK_CLK				647
+#define IMX8QM_ACM_SAI3_MCLK_SEL				648
+#define IMX8QM_ACM_SAI3_MCLK_CLK				649
+#define IMX8QM_ACM_HDMI_RX_SAI0_MCLK_SEL			650
+#define IMX8QM_ACM_HDMI_RX_SAI0_MCLK_CLK			651
+#define IMX8QM_ACM_HDMI_TX_SAI0_MCLK_SEL			652
+#define IMX8QM_ACM_HDMI_TX_SAI0_MCLK_CLK			653
+#define IMX8QM_ACM_SAI6_MCLK_SEL				654
+#define IMX8QM_ACM_SAI6_MCLK_CLK				655
+#define IMX8QM_ACM_SAI7_MCLK_SEL				656
+#define IMX8QM_ACM_SAI7_MCLK_CLK				657
+#define IMX8QM_ACM_SPDIF0_TX_CLK_SEL				658
+#define IMX8QM_ACM_SPDIF0_TX_CLK_CLK				659
+#define IMX8QM_ACM_SPDIF1_TX_CLK_SEL				660
+#define IMX8QM_ACM_SPDIF1_TX_CLK_CLK				661
+#define IMX8QM_ACM_MQS_TX_CLK_SEL				662
+#define IMX8QM_ACM_MQS_TX_CLK_CLK				663
+
+#define IMX8QM_ENET0_REF_25MHZ_125MHZ_SEL			664
+#define IMX8QM_ENET0_REF_25MHZ_125MHZ_CLK			665
+#define IMX8QM_ENET1_REF_25MHZ_125MHZ_SEL			666
+#define IMX8QM_ENET1_REF_25MHZ_125MHZ_CLK			667
+#define IMX8QM_ENET0_REF_50MHZ_CLK				668
+#define IMX8QM_ENET1_REF_50MHZ_CLK				669
+#define IMX8QM_ENET_25MHZ_CLK					670
+#define IMX8QM_ENET_125MHZ_CLK					671
+#define IMX8QM_ENET0_REF_DIV					672
+#define IMX8QM_ENET0_REF_CLK					673
+#define IMX8QM_ENET1_REF_DIV					674
+#define IMX8QM_ENET1_REF_CLK					675
+#define IMX8QM_ENET0_RMII_TX_CLK				676
+#define IMX8QM_ENET1_RMII_TX_CLK				677
+#define IMX8QM_ENET0_RMII_TX_SEL				678
+#define IMX8QM_ENET1_RMII_TX_SEL				679
+#define IMX8QM_ENET0_RMII_RX_CLK				680
+#define IMX8QM_ENET1_RMII_RX_CLK				681
+
+#define IMX8QM_KPP_CLK						683
+#define IMX8QM_GPT0_HF_CLK					684
+#define IMX8QM_GPT0_IPG_S_CLK					685
+#define IMX8QM_GPT0_IPG_SLV_CLK				686
+#define IMX8QM_GPT0_IPG_MSTR_CLK				687
+#define IMX8QM_GPT1_HF_CLK					688
+#define IMX8QM_GPT1_IPG_S_CLK					689
+#define IMX8QM_GPT1_IPG_SLV_CLK				690
+#define IMX8QM_GPT1_IPG_MSTR_CLK				691
+#define IMX8QM_GPT2_HF_CLK					692
+#define IMX8QM_GPT2_IPG_S_CLK					693
+#define IMX8QM_GPT2_IPG_SLV_CLK				694
+#define IMX8QM_GPT2_IPG_MSTR_CLK				695
+#define IMX8QM_GPT3_HF_CLK					696
+#define IMX8QM_GPT3_IPG_S_CLK					697
+#define IMX8QM_GPT3_IPG_SLV_CLK				698
+#define IMX8QM_GPT3_IPG_MSTR_CLK				699
+#define IMX8QM_GPT4_HF_CLK					700
+#define IMX8QM_GPT4_IPG_S_CLK					701
+#define IMX8QM_GPT4_IPG_SLV_CLK				702
+#define IMX8QM_GPT4_IPG_MSTR_CLK				703
+#define IMX8QM_PWM0_HF_CLK					704
+#define IMX8QM_PWM0_IPG_S_CLK					705
+#define IMX8QM_PWM0_IPG_SLV_CLK				706
+#define IMX8QM_PWM0_IPG_MSTR_CLK				707
+#define IMX8QM_PWM1_HF_CLK					708
+#define IMX8QM_PWM1_IPG_S_CLK					709
+#define IMX8QM_PWM1_IPG_SLV_CLK				710
+#define IMX8QM_PWM1_IPG_MSTR_CLK				711
+#define IMX8QM_PWM2_HF_CLK					712
+#define IMX8QM_PWM2_IPG_S_CLK					713
+#define IMX8QM_PWM2_IPG_SLV_CLK				714
+#define IMX8QM_PWM2_IPG_MSTR_CLK				715
+#define IMX8QM_PWM3_HF_CLK					716
+#define IMX8QM_PWM3_IPG_S_CLK					717
+#define IMX8QM_PWM3_IPG_SLV_CLK				718
+#define IMX8QM_PWM3_IPG_MSTR_CLK				719
+#define IMX8QM_PWM4_HF_CLK					720
+#define IMX8QM_PWM4_IPG_S_CLK					721
+#define IMX8QM_PWM4_IPG_SLV_CLK				722
+#define IMX8QM_PWM4_IPG_MSTR_CLK				723
+#define IMX8QM_PWM5_HF_CLK					724
+#define IMX8QM_PWM5_IPG_S_CLK					725
+#define IMX8QM_PWM5_IPG_SLV_CLK				726
+#define IMX8QM_PWM5_IPG_MSTR_CLK				727
+#define IMX8QM_PWM6_HF_CLK					728
+#define IMX8QM_PWM6_IPG_S_CLK					729
+#define IMX8QM_PWM6_IPG_SLV_CLK				730
+#define IMX8QM_PWM6_IPG_MSTR_CLK				731
+#define IMX8QM_PWM7_HF_CLK					732
+#define IMX8QM_PWM7_IPG_S_CLK					733
+#define IMX8QM_PWM7_IPG_SLV_CLK				734
+#define IMX8QM_PWM7_IPG_MSTR_CLK				735
+#define IMX8QM_FSPI0_HCLK					736
+#define IMX8QM_FSPI0_IPG_CLK					737
+#define IMX8QM_FSPI0_IPG_S_CLK					738
+#define IMX8QM_FSPI1_HCLK					736
+#define IMX8QM_FSPI1_IPG_CLK					737
+#define IMX8QM_FSPI1_IPG_S_CLK					738
+#define IMX8QM_GPIO0_IPG_S_CLK					739
+#define IMX8QM_GPIO1_IPG_S_CLK					740
+#define IMX8QM_GPIO2_IPG_S_CLK					741
+#define IMX8QM_GPIO3_IPG_S_CLK					742
+#define IMX8QM_GPIO4_IPG_S_CLK					743
+#define IMX8QM_GPIO5_IPG_S_CLK					744
+#define IMX8QM_GPIO6_IPG_S_CLK					745
+#define IMX8QM_GPIO7_IPG_S_CLK					746
+#define IMX8QM_ROMCP_CLK					747
+#define IMX8QM_ROMCP_REG_CLK					748
+#define IMX8QM_96KROM_CLK					749
+#define IMX8QM_OCRAM_MEM_CLK					750
+#define IMX8QM_OCRAM_CTRL_CLK					751
+#define IMX8QM_LSIO_BUS_CLK					752
+#define IMX8QM_LSIO_MEM_CLK					753
+#define IMX8QM_LVDS0_LIS_IPG_CLK				754
+#define IMX8QM_LVDS1_LIS_IPG_CLK				755
+#define IMX8QM_MIPI0_LIS_IPG_CLK				756
+#define IMX8QM_MIPI0_I2C0_IPG_S_CLK				757
+#define IMX8QM_MIPI0_I2C0_IPG_CLK				758
+#define IMX8QM_MIPI0_I2C1_IPG_S_CLK				759
+#define IMX8QM_MIPI0_I2C1_IPG_CLK				760
+#define IMX8QM_MIPI0_CLK_ROOT					761
+#define IMX8QM_MIPI1_LIS_IPG_CLK				762
+#define IMX8QM_MIPI1_I2C0_IPG_S_CLK				763
+#define IMX8QM_MIPI1_I2C0_IPG_CLK				764
+#define IMX8QM_MIPI1_I2C1_IPG_S_CLK				765
+#define IMX8QM_MIPI1_I2C1_IPG_CLK				766
+#define IMX8QM_MIPI1_CLK_ROOT					767
+#define IMX8QM_DC0_DISP0_SEL					768
+#define IMX8QM_DC0_DISP1_SEL					769
+#define IMX8QM_DC1_DISP0_SEL					770
+#define IMX8QM_DC1_DISP1_SEL					771
+
+/* CM40 */
+#define IMX8QM_CM40_IPG_CLK					772
+#define IMX8QM_CM40_I2C_DIV					773
+#define IMX8QM_CM40_I2C_CLK					774
+#define IMX8QM_CM40_I2C_IPG_CLK				775
+
+/* CM41 */
+#define IMX8QM_CM41_IPG_CLK					776
+#define IMX8QM_CM41_I2C_DIV					777
+#define IMX8QM_CM41_I2C_CLK					778
+#define IMX8QM_CM41_I2C_IPG_CLK				779
+
+#define IMX8QM_HDMI_PXL_SEL					780
+#define IMX8QM_HDMI_PXL_LINK_SEL				781
+#define IMX8QM_HDMI_PXL_MUX_SEL				782
+#define IMX8QM_HDMI_AV_PLL_BYPASS_CLK				783
+
+#define IMX8QM_HDMI_RX_PXL_SEL					784
+#define IMX8QM_HDMI_RX_HD_REF_SEL				785
+#define IMX8QM_HDMI_RX_HD_CORE_SEL				786
+#define IMX8QM_HDMI_RX_DIG_PLL_CLK				787
+
+#define IMX8QM_LSIO_MU5A_IPG_S_CLK				788
+#define IMX8QM_LSIO_MU5A_IPG_CLK				789
+#define IMX8QM_LSIO_MU6A_IPG_S_CLK				790
+#define IMX8QM_LSIO_MU6A_IPG_CLK				791
+
+/* DSP */
+#define IMX8QM_AUD_DSP_ADB_ACLK				792
+#define IMX8QM_AUD_DSP_IPG					793
+#define IMX8QM_AUD_DSP_CORE_CLK				794
+#define IMX8QM_AUD_OCRAM_IPG					795
+
+#define IMX8QM_CLK_END						796
+
+#endif /* __DT_BINDINGS_CLOCK_IMX8QM_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
