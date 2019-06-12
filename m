Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 247E742A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BssBz0wF+DdclxFWdEKbyrYJXpAo/W+sIe1/G+yqY2s=; b=ZBZ0HMl07lFglW
	EV2nitldY7T/JOb6d4RHa4dSkfYqvKhOOn+6eaK+d9+TCba9TxCT2aQPK7c9WsOGeGCHK3gYSW/wb
	AuT9IJ77GImn7swROzqArIKJy/jK4xxhOeIsd+FE6/Ge42npzk3wC3WZfjhCwX1/2A0/x85sQOGXs
	+lYzCmmufE7mHntuuL4jEmGlyry813A9o7X/8Y/CqPxixwUGLMvixuOQ/1ikFohJrbWSXm3qJdl2+
	q880j6OJaBeceeGvZLEBThDChwIi+Q/mqx+KXd+N2t1nttElj7IwzbOQEOu4xli3pNDFv1Eo/AuHn
	Tfwc7H09pS65UdypRdwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4nK-0002NN-Gl; Wed, 12 Jun 2019 15:04:10 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4nB-0002Md-MZ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:04:03 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 15DF8202EC;
 Wed, 12 Jun 2019 17:03:57 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id F2B0720D88;
 Wed, 12 Jun 2019 17:03:56 +0200 (CEST)
To: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: [PATCH v1] clk: xgene: Don't build COMMON_CLK_XGENE by default
Message-ID: <68c0d022-569c-c529-047a-a0bfae17994d@free.fr>
Date: Wed, 12 Jun 2019 17:03:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Wed Jun 12 17:03:57 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080401_886127_45ED5F8C 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Feng Kan <fkan@apm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building COMMON_CLK_XGENE is pointless, unless we're building for
an XGENE system.

Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
---
 drivers/clk/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index fc1e0cf44995..b97974662a1f 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -215,7 +215,7 @@ config CLK_QORIQ
 
 config COMMON_CLK_XGENE
 	bool "Clock driver for APM XGene SoC"
-	default y
+	default ARCH_XGENE
 	depends on ARM64 || COMPILE_TEST
 	---help---
 	  Sypport for the APM X-Gene SoC reference, PLL, and device clocks.
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
