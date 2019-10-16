Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DCAD9184
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:50:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5xGJKfuXuovGOx+IZNdIGplOjGUh0I7QX4aUK89i3JQ=; b=XPsubU5dy340igA9iOWlbLpKvP
	w54KEbmS6Z1Z19/bzXJ0xJYGLJ3Hmk2g0e7xGm/p7oHfXkp1AduK7P/jbvTzAItLgn8SUPghwDknO
	KPvn3MBhbmZd7lDlfLuSDQmx52ty9ATVG9rejXKt5rpV/1OkTy5W1pZIWtnOqHPMYMwu2GkXjAJLR
	14d51b6p1fGiQmmXi00DsgpBZJaBO48HJZyan0UknK1MRa7KTNMOzp4/H1FM/kX9DOS7WLzsqpuob
	p7fjVIHjvn4L/dc05hgXcoPq4iVTB1tungfMOti3ppekVuLqwf3aBZu0ppwvVcR+EGKw+2f2AKoB6
	r9eghREA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKil8-00078m-GK; Wed, 16 Oct 2019 12:50:34 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKijB-0005ot-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:48:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9715D1A009E;
 Wed, 16 Oct 2019 14:48:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 89EB61A001A;
 Wed, 16 Oct 2019 14:48:32 +0200 (CEST)
Received: from fsr-ub1664-026.ea.freescale.net
 (fsr-ub1664-026.ea.freescale.net [10.171.81.59])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CB94D205D2;
 Wed, 16 Oct 2019 14:48:31 +0200 (CEST)
From: Stefan-Gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: corbet@lwn.net, robh+dt@kernel.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 shawnguo@kernel.org, leoyang.li@nxp.com
Subject: [PATCH v7 5/5] arm64: defconfig: Enable configs for S32V234
Date: Wed, 16 Oct 2019 15:48:27 +0300
Message-Id: <1571230107-8493-6-git-send-email-stefan-gabriel.mirea@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
References: <1571230107-8493-1-git-send-email-stefan-gabriel.mirea@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054834_030415_B9DA85EF 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index c9a867ac32d4..bc14d95c1665 100644
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
