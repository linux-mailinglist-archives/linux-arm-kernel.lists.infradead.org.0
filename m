Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC47DD2EF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7z312wXA/ZXfsSEk5yS9PZlW8OEMFqs9Laf0zIfXw04=; b=h0MwbP5zJHNXbDB9NL93H6EkSA
	YSFdqdZMIfZxTCday+12bkeQMvjSL/m819QvZJWfAm90MVWkog3XFyLrqNB2e7m0NxSnPZELLCYcV
	dsfSbZZb6BMgOG+u9rOeQtwP3HOst+Otf9unn03kv+Yy2EhFkteT2nGel/zHEcN/tN4xCcDdhrBsY
	sbylA3dqz35TaZE62WA6KIjW/cT1PSjnnMiR0LkKJ9meT005B2lLyZIxBEH/SV9sbVjRY5PAG1qSV
	KM4PmCooAFvDHZ4cEW+FGpMuRKJgJlQjYeEGopcd1ePXFHyKieb6AHv3Lv8N3DSoXRAsv09udHOAn
	0XQsQrSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbgh-000500-BM; Thu, 10 Oct 2019 16:53:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbg2-0004Rx-60
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:52:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EFFA11A008F;
 Thu, 10 Oct 2019 18:52:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E2FA01A04B0;
 Thu, 10 Oct 2019 18:52:32 +0200 (CEST)
Received: from fsr-ub1664-026.ea.freescale.net
 (fsr-ub1664-026.ea.freescale.net [10.171.81.59])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 34644205FA;
 Thu, 10 Oct 2019 18:52:32 +0200 (CEST)
From: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: corbet@lwn.net, robh+dt@kernel.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, leoyang.li@nxp.com
Subject: [PATCH v6 5/5] arm64: defconfig: Enable configs for S32V234
Date: Thu, 10 Oct 2019 19:52:28 +0300
Message-Id: <1570726348-6420-6-git-send-email-stefan-gabriel.mirea@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570726348-6420-1-git-send-email-stefan-gabriel.mirea@nxp.com>
References: <1570726348-6420-1-git-send-email-stefan-gabriel.mirea@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_095234_358503_5AE8DF44 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, jslaby@suse.com,
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mihaela Martinas <Mihaela.Martinas@freescale.com>

Enable support for the S32V234 SoC, including the previously added UART
driver.

Signed-off-by: Mihaela Martinas <Mihaela.Martinas@freescale.com>
Signed-off-by: Adrian.Nitu <adrian.nitu@freescale.com>
Signed-off-by: Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>
Signed-off-by: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8e05c39eab08..aa59450557b8 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -48,6 +48,7 @@ CONFIG_ARCH_MXC=y
 CONFIG_ARCH_QCOM=y
 CONFIG_ARCH_RENESAS=y
 CONFIG_ARCH_ROCKCHIP=y
+CONFIG_ARCH_S32=y
 CONFIG_ARCH_SEATTLE=y
 CONFIG_ARCH_STRATIX10=y
 CONFIG_ARCH_SYNQUACER=y
@@ -352,6 +353,8 @@ CONFIG_SERIAL_XILINX_PS_UART=y
 CONFIG_SERIAL_XILINX_PS_UART_CONSOLE=y
 CONFIG_SERIAL_FSL_LPUART=y
 CONFIG_SERIAL_FSL_LPUART_CONSOLE=y
+CONFIG_SERIAL_FSL_LINFLEXUART=y
+CONFIG_SERIAL_FSL_LINFLEXUART_CONSOLE=y
 CONFIG_SERIAL_MVEBU_UART=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_VIRTIO_CONSOLE=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
