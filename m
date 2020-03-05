Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6624417B09E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 22:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MNZttZ03yhGyXW2K4WGOH8QXXJHZ7X0jpuKarirHHwg=; b=K9GbDJTDeDg+wq
	bd1hDK4w4NNt7SWBP6mehh4NddVqVhzZZ3QXPm9weVJeab5rwMK0zk7vFrtA8eE6iUUoTaHhHLhhU
	CJa4d95lrb+7LzkYzrlHY4NB3p1uY/joqxEv8mivtW+vVMyG4F9GuAk5hHwQjsiaNec5VZQwSCBq6
	dzq6pE+9tH3eViRJhIPdLmKl1POrzpXnx+hukF7aCbxjpRM4G8gJWziGkYAST6NEYiDnTMdsXFNvJ
	t2kJDY5dTvnzPWLSb8Pcpczx9YMjA7EgeMC0nDGhKywgYGQVVTP3tHEe+64FMCZnu8SxaX+MN4XWR
	yNKQGaxYwLsaCwkbOjng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9y11-0004lm-Av; Thu, 05 Mar 2020 21:26:47 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9y0u-0004lS-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 21:26:42 +0000
Received: from 250.57.4.146.static.wline.lns.sme.cust.swisscom.ch
 ([146.4.57.250] helo=martin-debian-2.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1j9y0q-0000s7-IQ; Thu, 05 Mar 2020 22:26:36 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Shawn Guo <shawnguo@kernel.org>,
	kernel@pengutronix.de
Subject: [PATCH] ARM: dts: imx25-pinfunc: add config for kpp rows 4 to 7
Date: Thu,  5 Mar 2020 22:26:24 +0100
Message-Id: <20200305212623.5601-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_132640_864652_C79D2C11 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Martin Kaiser <martin@kaiser.cx>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX25's Keypad Port (KPP) can be used with a key pad matrix of up to
8 x 8 keys. Add pin configurations for rows 4 to 7.

The new defines have been tested on an out-of-tree board.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 arch/arm/boot/dts/imx25-pinfunc.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx25-pinfunc.h b/arch/arm/boot/dts/imx25-pinfunc.h
index b5a12412440e..111bfdcbe552 100644
--- a/arch/arm/boot/dts/imx25-pinfunc.h
+++ b/arch/arm/boot/dts/imx25-pinfunc.h
@@ -255,10 +255,12 @@
 
 #define MX25_PAD_LD12__LD12			0x0f8 0x2f0 0x000 0x00 0x000
 #define MX25_PAD_LD12__CSPI2_MOSI		0x0f8 0x2f0 0x4a0 0x02 0x000
+#define MX25_PAD_LD12__KPP_ROW6			0x0f8 0x2f0 0x544 0x04 0x000
 #define MX25_PAD_LD12__FEC_RDATA3		0x0f8 0x2f0 0x510 0x05 0x001
 
 #define MX25_PAD_LD13__LD13			0x0fc 0x2f4 0x000 0x00 0x000
 #define MX25_PAD_LD13__CSPI2_MISO		0x0fc 0x2f4 0x49c 0x02 0x000
+#define MX25_PAD_LD13__KPP_ROW7			0x0fc 0x2f4 0x548 0x04 0x000
 #define MX25_PAD_LD13__FEC_TDATA2		0x0fc 0x2f4 0x000 0x05 0x000
 
 #define MX25_PAD_LD14__LD14			0x100 0x2f8 0x000 0x00 0x000
@@ -516,9 +518,11 @@
 
 #define MX25_PAD_FEC_TX_EN__FEC_TX_EN		0x1d8 0x3d0 0x000 0x00 0x000
 #define MX25_PAD_FEC_TX_EN__GPIO_3_9		0x1d8 0x3d0 0x000 0x05 0x000
+#define MX25_PAD_FEC_TX_EN__KPP_ROW4		0x1d8 0x3d0 0x53c 0x06 0x000
 
 #define MX25_PAD_FEC_RDATA0__FEC_RDATA0		0x1dc 0x3d4 0x000 0x00 0x000
 #define MX25_PAD_FEC_RDATA0__GPIO_3_10		0x1dc 0x3d4 0x000 0x05 0x000
+#define MX25_PAD_FEC_RDATA0__KPP_ROW5 		0x1dc 0x3d4 0x540 0x06 0x000
 
 #define MX25_PAD_FEC_RDATA1__FEC_RDATA1		0x1e0 0x3d8 0x000 0x00 0x000
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
