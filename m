Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F0F12DF87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 17:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W8ZsDhjvNWt1hXPtHJqZdd8p2vrR7ckXI/rt1k67xXU=; b=PPd
	5yWvA6QJVP3WKopEmDSNZmd4ChXgDbwdOJMuTJ/O4OPDNtqA3U6UTGgip6pcmnSx+fQsxydQjFANZ
	wO4LSPAhGblFDq3vcJMyr1UQTNGUQN2LTwAkWOjOdVpgjabaPL2Cf7ZvecPJhV/crkkRgM9UJ9lJM
	d+1YO3tzvVAa3U8mR9Y0HNL889/B23S4VskpUYp12wajs4OCSQyfX8TOkXJAj1TmpviR34DU5fX/o
	LY6i+HLm+y2MM1UT+JbVj6Tn6XsaAXcheMz4lPFNxOr0saaz9apkvlVDRyuCYAa44//yiPPK3HPjg
	pCy/VuXSgjkem3AcucRyj5Sc/s8sDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imgxM-000346-7L; Wed, 01 Jan 2020 16:34:48 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imgxG-00033a-33
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 16:34:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so37260522wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 08:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=lUAl0FgZsaETOlCEozFvmaPi6AmPFiieeFXfsFg0uGk=;
 b=RqOw81rLysk4OW3COYbAqrvrnGgzKgxEY9CUIMmlwZNwieZLrrjS/NPi4jjdeB9NOh
 UFUaUg1MRpH4liZ6TMxlvSD/8745RFX4nkFamdrGgRPWlcr9fHDsPYPYTN/tTpM+/FN8
 xbs18aPQpGhl4acZSL9sEpBz86zyJZIWkZF90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=lUAl0FgZsaETOlCEozFvmaPi6AmPFiieeFXfsFg0uGk=;
 b=bZXMO3V8baiB4GbR7+u1Q8EebLlqjEXqLpBJEJyHDQ1t+k5SoT/Ujei/+NzZOGM32K
 hxOcPvEy1Ca+JQ3/dYMmsvqkN+Xw/NoV1lgGw6D4Nwoqi46TVDR2gjTnzu0dWuI0APDx
 3jTwsgIIlw5BQBQDAvH2trjrMLYwcDYvOZDicEqzEwZ5Owwl8oNp2MFXSz6d56zCIefT
 FN5MsD2Fli7CT5qZIMYj1nPpHpaehUuiH4KufwiWdADsQixbwkQHRbAXlNjvXndEUdGD
 KtEpnE1DejpmsSaWknMrQu7c4hUFn/5W2wz3b0/F2USEf0vFv1AjmF5a78P6fmfkHKJf
 VQCw==
X-Gm-Message-State: APjAAAXDazDnBXKQPB1I0pQPv3QkOFr5l8rtoGI6BBkLFEeWw9eN14bS
 FFHWnsLkr2sUfIlMUKMUxWT7Eg==
X-Google-Smtp-Source: APXvYqx708FWI3xR9nxIfZiFDsBPwFOMrvKz5t8J3iQHkmYvyyAUf9DqFwYllk73fPvnfllt6Zjx8g==
X-Received: by 2002:adf:e6c5:: with SMTP id y5mr76044712wrm.210.1577896480509; 
 Wed, 01 Jan 2020 08:34:40 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id t12sm53063807wrs.96.2020.01.01.08.34.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 08:34:40 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: imx8mm: Add UART1 UART1_DCE_RTS/CTS pin's mux
 option #4
Date: Wed,  1 Jan 2020 17:34:38 +0100
Message-Id: <20200101163438.1761-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_083442_130874_FA90302C 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to i.MX8MM reference manual Rev.2, 08/2019. According
to the manual the two pins has associated daisy chain so input
register and input value should be set too

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
index cffa8991880d..62d16b1d7c5b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
+++ b/arch/arm64/boot/dts/freescale/imx8mm-pinfunc.h
@@ -438,10 +438,12 @@
 #define MX8MM_IOMUXC_SAI2_RXC_SIM_M_HSIZE1                                  0x1B4 0x41C 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SAI2_RX_DATA0                                0x1B8 0x420 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SAI5_TX_DATA0                                0x1B8 0x420 0x000 0x1 0x0
+#define MX8MM_IOMUXC_SAI2_RXD0_UART1_DCE_RTS_B                              0x1B8 0x420 0x4F0 0x4 0x2
 #define MX8MM_IOMUXC_SAI2_RXD0_GPIO4_IO23                                   0x1B8 0x420 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_RXD0_SIM_M_HSIZE2                                 0x1B8 0x420 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SAI2_TX_SYNC                                 0x1BC 0x424 0x000 0x0 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SAI5_TX_DATA1                                0x1BC 0x424 0x000 0x1 0x0
+#define MX8MM_IOMUXC_SAI2_TXFS_UART1_DCE_CTS_B                              0x1BC 0x424 0x4F0 0x4 0x2
 #define MX8MM_IOMUXC_SAI2_TXFS_GPIO4_IO24                                   0x1BC 0x424 0x000 0x5 0x0
 #define MX8MM_IOMUXC_SAI2_TXFS_SIM_M_HWRITE                                 0x1BC 0x424 0x000 0x7 0x0
 #define MX8MM_IOMUXC_SAI2_TXC_SAI2_TX_BCLK                                  0x1C0 0x428 0x000 0x0 0x0
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
