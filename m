Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB52315221E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 22:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JpTS1xcEEoDa1r8GN9R655MKALx5MggjPs+wSvkFAOU=; b=rZntIzbpBqvhAt
	XuwWswQlpaRDUfMmH5ARNvb0n+pcv4EVYBNdFjuLaTHfyTYmHLT+G/eHDjAwxwO7b98l/rOGGvkq1
	82+TIdN5X3lom+6IKwAfFiWKhGzseEcLbce5vLHj10o0GAp3AyW2ooA+yRLxGQLFUCsOi0LQZlPyd
	pYsjy4770qhDOi4tafSH1mRNJCf4ZUQEth3paJyRSsmTXWFxLHMMjUwpUuct7qUTK4ogwud1doqsH
	D22WAZA1GuQEHw7dpQOjmXz7FKVR80hcXwzAOuzdR4Ldzj2sACrx6Aupjqq4Q06aS7P8P3FpYtxkH
	Oi8HN/cH+czSlq01rssA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz68I-0006UT-Nt; Tue, 04 Feb 2020 21:53:22 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz68D-0006T5-0s
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 21:53:18 +0000
Received: from dslb-188-097-045-114.188.097.pools.vodafone-ip.de
 ([188.97.45.114] helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1iz680-0005J0-K3; Tue, 04 Feb 2020 22:53:04 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: Shawn Guo <shawnguo@kernel.org>,
	kernel@pengutronix.de
Subject: [PATCH] ARM: dts: imx25-pinfunc: add another cspi3 config
Date: Tue,  4 Feb 2020 22:52:29 +0100
Message-Id: <20200204215229.32485-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_135317_216274_0422C490 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

This patch adds defines for another cspi3 configuration.
The defines have been tested on an out-of-tree board.

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---
 arch/arm/boot/dts/imx25-pinfunc.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/imx25-pinfunc.h b/arch/arm/boot/dts/imx25-pinfunc.h
index f4516ccf2c1a..b5a12412440e 100644
--- a/arch/arm/boot/dts/imx25-pinfunc.h
+++ b/arch/arm/boot/dts/imx25-pinfunc.h
@@ -82,6 +82,7 @@
 #define MX25_PAD_EB0__EB0			0x040 0x258 0x000 0x00 0x000
 #define MX25_PAD_EB0__AUD4_TXD			0x040 0x258 0x464 0x04 0x000
 #define MX25_PAD_EB0__GPIO_2_12			0x040 0x258 0x000 0x05 0x000
+#define MX25_PAD_EB0__CSPI3_SS0			0x040 0x258 0x4bc 0x06 0x000
 
 #define MX25_PAD_EB1__EB1			0x044 0x25c 0x000 0x00 0x000
 #define MX25_PAD_EB1__AUD4_RXD			0x044 0x25c 0x460 0x04 0x000
@@ -102,11 +103,13 @@
 #define MX25_PAD_CS4__NF_CE1			0x054 0x264 0x000 0x01 0x000
 #define MX25_PAD_CS4__UART5_CTS			0x054 0x264 0x000 0x03 0x000
 #define MX25_PAD_CS4__GPIO_3_20			0x054 0x264 0x000 0x05 0x000
+#define MX25_PAD_CS4__CSPI3_MOSI		0x054 0x264 0x4b8 0x06 0x000
 
 #define MX25_PAD_CS5__CS5			0x058 0x268 0x000 0x00 0x000
 #define MX25_PAD_CS5__NF_CE2			0x058 0x268 0x000 0x01 0x000
 #define MX25_PAD_CS5__UART5_RTS			0x058 0x268 0x574 0x03 0x000
 #define MX25_PAD_CS5__GPIO_3_21			0x058 0x268 0x000 0x05 0x000
+#define MX25_PAD_CS5__CSPI3_MISO		0x058 0x268 0x4b4 0x06 0x000
 
 #define MX25_PAD_NF_CE0__NF_CE0			0x05c 0x26c 0x000 0x00 0x000
 #define MX25_PAD_NF_CE0__GPIO_3_22		0x05c 0x26c 0x000 0x05 0x000
@@ -114,6 +117,7 @@
 #define MX25_PAD_ECB__ECB			0x060 0x270 0x000 0x00 0x000
 #define MX25_PAD_ECB__UART5_TXD			0x060 0x270 0x000 0x03 0x000
 #define MX25_PAD_ECB__GPIO_3_23			0x060 0x270 0x000 0x05 0x000
+#define MX25_PAD_ECB__CSPI3_SCLK		0x060 0x270 0x4ac 0x06 0x000
 
 #define MX25_PAD_LBA__LBA			0x064 0x274 0x000 0x00 0x000
 #define MX25_PAD_LBA__UART5_RXD			0x064 0x274 0x578 0x03 0x000
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
