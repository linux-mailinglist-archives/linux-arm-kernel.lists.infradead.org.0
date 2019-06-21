Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A904E344
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fXde9YRpEkvYIrZajnwj3PzeuUxtWa5LZwg1YdJXxW0=; b=SKQGReQup9Hpolzph2JDK9rzqp
	D1I5W0TAI2H0ERMQtktcdAwapdsEz66aNt01IKTJQx/CzmK+qGJx0x94xg+TWgMrD1iKjCJl9Mpdc
	53pZwK9YUbC3gUQW1tnvcgT+n+Xog7L1+1ueezecvySFaUmPgTrag3AUj+TJOy5OSbfw92kN7uII4
	b4ceO5AMKKMBIP4KxCC+4pU99iUvl0WIX90bwsV/nA0CK7xutX2PRtj8Zfrz8KkUAHIL/6Wjws+qb
	w5GolsmWIUvqJUBFdU4lLwAETkLc1qmzRwLgHORcf+bZdiOHfv/3rwg3BNVI697Dx9BC7GRsA+Ya6
	z0KNNjTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFgu-0003oj-2s; Fri, 21 Jun 2019 09:18:40 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFai-0007TL-NV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:12:18 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1365725AEEC;
 Fri, 21 Jun 2019 19:12:13 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 1EA5F940396; Fri, 21 Jun 2019 11:12:11 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 2/2] soc: renesas: Enable RZ/A1 IRQC on RZ/A1H and RZ/A2M
Date: Fri, 21 Jun 2019 11:12:09 +0200
Message-Id: <02af9f90941b6cce5fb672ee058c142adcc11a2f.1561105093.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561105093.git.horms+renesas@verge.net.au>
References: <cover.1561105093.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021217_112498_DED8DBFD 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

Auto-enable support for the RZ/A1 Interrupt Controller when configuring
a kernel which supports RZ/A1H or RZ/A2M SoCs.
Keep selects sorted while at it.

This is similar to how interrupt controllers for other Renesas SoCs are
enabled.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 drivers/soc/renesas/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 68bfca6f20dd..2bbf49e5d441 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -57,14 +57,16 @@ config ARCH_R7S72100
 	bool "RZ/A1H (R7S72100)"
 	select PM
 	select PM_GENERIC_DOMAINS
-	select SYS_SUPPORTS_SH_MTU2
 	select RENESAS_OSTM
+	select RENESAS_RZA1_IRQC
+	select SYS_SUPPORTS_SH_MTU2
 
 config ARCH_R7S9210
 	bool "RZ/A2 (R7S9210)"
 	select PM
 	select PM_GENERIC_DOMAINS
 	select RENESAS_OSTM
+	select RENESAS_RZA1_IRQC
 
 config ARCH_R8A73A4
 	bool "R-Mobile APE6 (R8A73A40)"
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
