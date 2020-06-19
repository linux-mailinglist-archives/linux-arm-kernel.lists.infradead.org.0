Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A8420031B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:59:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRju1O56s/hbFlmHgORdPicDcjg39uYR/HMgww+nUfk=; b=IREXrlWUE7jGLm
	2ohJE+lgIEljfwDDh4BIcoOzGxUh9QW8zU1suMtf1FQqFHiZ6Rk5mmfuZH5IPi5Sp4ujoNREeA1qY
	eFwwY3wfJwdIPuhlqOZQOMM/wMIkRawHu1z2pOekuenWZG00sCgtz3LK4x9fP+DRXOyZyJ0zQrXvY
	7WBLZWzo3fUBUrc04r/M5NYMhvWQAzP1c0JG1sj3yXauWqxtsWDlX8hUfK9XM9AMyw9Ctfpj3nOLf
	6PY6s5Jwb3yjqg0a8ON+gaUWIlyGySlR7WWRUFiw8noRcviuaOCIvOkfX3DwZSYEYexVaHjNiXp79
	9WJnF+CYx+7pi62MODpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBw7-0000Rv-AC; Fri, 19 Jun 2020 07:59:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvm-0000JE-3g
 for linux-arm-kernel@bombadil.infradead.org; Fri, 19 Jun 2020 07:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GJS0l6+nWVWiRl97Qow8knmchk3MN68FDtHMKQRosWs=; b=d/DMmU9uO/4xpjUpHOR74RYxTM
 i2fwQh9fK/R0+/GKlKoIAFAoc5RzNT69vq770YUTYaDsNFq3q37VpsXG6VPKXfiGesVts4vdnt72i
 Je5vDriQofQwZjclm3rMKsgm7OyBREnbD1usPtG1YjbVQcu1sRrXRUUaH6sp/wIf09oS9P18Ob3OW
 F7mUnm9RweU+0pGgLibbLdQf5lA9RrbfbtObBthzjtNlVy1JTp7RdKH/kH0LTYB8L8jnLjGQ+kCdp
 mM1/lKwCleL84pf4UkUhXMpQ+VJm0FU+/NY/8LSED/DanLMzWAYTQHA3U9icWFBoM2sFY+u/6RbXA
 1yZLLuQw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvh-0005Oy-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:59:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0007WH-UL; Fri, 19 Jun 2020 09:59:15 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0004vx-ER; Fri, 19 Jun 2020 09:59:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH v3 6/6] soc: xilinx: vcu: add missing register NUM_CORE
Date: Fri, 19 Jun 2020 09:59:13 +0200
Message-Id: <20200619075913.18900-7-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619075913.18900-1-m.tretter@pengutronix.de>
References: <20200619075913.18900-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_085917_759068_5F4ACB43 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Dhaval Shah <dshah@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H.264/H.265 Video Codec Unit v1.2 documentation describes this
register as follows:

	Number of encoders core used for the provided configuration

This is required for configuring the VCU encoder buffer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/linux/mfd/syscon/xlnx-vcu.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/mfd/syscon/xlnx-vcu.h b/include/linux/mfd/syscon/xlnx-vcu.h
index d3edec4b7b1d..ff7bc3656f6e 100644
--- a/include/linux/mfd/syscon/xlnx-vcu.h
+++ b/include/linux/mfd/syscon/xlnx-vcu.h
@@ -32,6 +32,7 @@
 #define VCU_BUFFER_B_FRAME		0x5c
 #define VCU_WPP_EN			0x60
 #define VCU_PLL_CLK_DEC			0x64
+#define VCU_NUM_CORE			0x6c
 #define VCU_GASKET_INIT			0x74
 #define VCU_GASKET_VALUE		0x03
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
