Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EEA153B31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 23:42:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UDmrYLWE+GbNTrGHlSC6OCwXXRHsiN1yakOhk1/lhas=; b=eU/nyktcEkKsyd
	P6xFBYjxXMYOgTLYiQBAranCN48mg0qXB9tyE1wsmh9SX0E9qb6jwCQavLXh+lEOQM++w2QynV5EI
	BBLmoj67hudBweFH9omMwPNlMrB9gUzQMmjy+aJ31aXqkgefcOg9PsnKFF5WPe0mPEKHXiyo20Ln5
	DB/1MTj6O1SGxeW+0l1BWo4rXOrdALC0Gv9WnH/U81EL4YDRpAxHMOrt3z/0embauQE0V5+QLgjRw
	tES+CTMhTX3V+GE0eSTMJPSfrdBVe57Gw+daXbRlyLl9ENolsmdIh2trBg84hrW7IPI827nmZKL2Q
	Ctk88Cpk6+E49ADNFC5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izTNR-0002NT-TU; Wed, 05 Feb 2020 22:42:33 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izTNJ-0002M0-7E
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 22:42:26 +0000
Received: from trochilidae.toradex.int (unknown [IPv6:2a02:169:3df5::edf])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 44ED15C406B;
 Wed,  5 Feb 2020 23:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1580942538;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=IMLaqe+3/cNGrP9F0fpJ/nD3jwSko8goV2jkxITs1to=;
 b=H6Qv++Ghmk/dESi8x9UO2WFr4rza3Yso7vUCNFheHj5STpl/S0T2OYVoRfQZS+fc4fv98A
 7aG59rxGn3PZflJrTH4raYUSMHTRsi51ozcDlnXqb5htaCD3NkJ2iGEGnVX8piA1+4N7qR
 xEOIrnn56ZR/z/NfC86Nsx83QnTdtjs=
From: Stefan Agner <stefan@agner.ch>
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH v2] ARM: imx: limit errata selection to Cortex-A9 based designs
Date: Wed,  5 Feb 2020 23:42:14 +0100
Message-Id: <20200205224214.253098-1-stefan@agner.ch>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_144225_403357_B9CC8526 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anson.Huang@nxp.com, arnd@arndb.de, Stefan Agner <stefan.agner@toradex.com>,
 linux@armlinux.org.uk, stefan@agner.ch, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

The two erratas 754322 and 775420 are Cortex-A9 specific. The i.MX 6UL
SoCs include a Cortex-A7 CPU and hence do not need this erratas enabeld.
This patch moves the errata selection from the family Kconfig symbol to
the SoC specifc Kconfig symbols where a Cortex-A9 is used.

Signed-off-by: Stefan Agner <stefan@agner.ch>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/mach-imx/Kconfig | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 95584ee02b55..e7d7b90e2cf8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -471,8 +471,6 @@ config	SOC_IMX53
 config SOC_IMX6
 	bool
 	select ARM_CPU_SUSPEND if (PM || CPU_IDLE)
-	select ARM_ERRATA_754322
-	select ARM_ERRATA_775420
 	select ARM_GIC
 	select HAVE_IMX_ANATOP
 	select HAVE_IMX_GPC
@@ -484,6 +482,8 @@ config SOC_IMX6
 config SOC_IMX6Q
 	bool "i.MX6 Quad/DualLite support"
 	select ARM_ERRATA_764369 if SMP
+	select ARM_ERRATA_754322
+	select ARM_ERRATA_775420
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD
 	select PINCTRL_IMX6Q
@@ -494,6 +494,8 @@ config SOC_IMX6Q
 
 config SOC_IMX6SL
 	bool "i.MX6 SoloLite support"
+	select ARM_ERRATA_754322
+	select ARM_ERRATA_775420
 	select PINCTRL_IMX6SL
 	select SOC_IMX6
 
@@ -502,6 +504,8 @@ config SOC_IMX6SL
 
 config SOC_IMX6SLL
 	bool "i.MX6 SoloLiteLite support"
+	select ARM_ERRATA_754322
+	select ARM_ERRATA_775420
 	select PINCTRL_IMX6SLL
 	select SOC_IMX6
 
@@ -510,6 +514,8 @@ config SOC_IMX6SLL
 
 config SOC_IMX6SX
 	bool "i.MX6 SoloX support"
+	select ARM_ERRATA_754322
+	select ARM_ERRATA_775420
 	select PINCTRL_IMX6SX
 	select SOC_IMX6
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
