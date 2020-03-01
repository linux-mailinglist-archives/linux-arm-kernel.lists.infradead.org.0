Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A82017510B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 00:37:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l7xBgBjb4CeISxl7GCvlW6FuBjBCmag4TOSfKA88Ww0=; b=n1Yq9xQj6mIVIT
	CPqYibqLZqdzFHmoSyHa11n9SWZgdNV9Q9gJjrof06s4p5cAVbwXYo7Th/WoGwaNEWBzPT+cuEeix
	dheo+FMLvplOTZNmlTZPGBuJD/XpJQjCf+0fp1MlQW0kI6RrenFt06lfzaX6N4I3XSpGIF6XPSimX
	emfT1VPOe2CRM6MI3SSriDIsISSEdriE8u/bIECRj/FxzqVntSrJosr6ywzMYadySth/lHQRqs9hw
	G0E7IXTdb99My1lm5BsuSvVLp7jlRwlZ1gvuQqsdCILrdIdfaP/r1KGHtxz64m+OMKFx1SZhFh2v9
	BDfyxQ4beS26hLST8rEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Y9M-0001c0-Dq; Sun, 01 Mar 2020 23:37:32 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Y9F-0001bR-Qn
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 23:37:27 +0000
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 17AB65C3CEF;
 Mon,  2 Mar 2020 00:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1583105838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:
 content-transfer-encoding:content-transfer-encoding:in-reply-to:
 references; bh=uEXP2A+ZFevJutYapB5Olb+X7MOi5DcNCS5e20uoEP8=;
 b=KYU+jEIvnTWc3/fWFLC+Vly+OrhuCyPaGadSfgb23VeMF7Y7XySy8A2q0Q6WIINgwNXoja
 +FdmYKg6spUdRBgV+sSk/eT5fxH+33lsOih/Wsx1M/TjdAs9AOplfU8ixGuf57A0EeyCJl
 jtuUzSDDzBg6wcTv5yR0lQtVZASr8VI=
From: Stefan Agner <stefan@agner.ch>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net
Subject: [PATCH] crypto: arm/ghash-ce - define fpu before fpu registers are
 referenced
Date: Mon,  2 Mar 2020 00:37:14 +0100
Message-Id: <c41cc67321d0b366e356440e6dbc9eceb1babfe4.1583105749.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_153726_469948_2F2E835D 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 jiancai@google.com, clang-built-linux@googlegroups.com,
 linux-crypto@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, manojgupta@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Building ARMv7 with Clang's integrated assembler leads to errors such
as:
arch/arm/crypto/ghash-ce-core.S:34:11: error: register name expected
 t3l .req d16
          ^

Since no FPU has selected yet Clang considers d16 not a valid register.
Moving the FPU directive on-top allows Clang to parse the registers and
allows to successfully build this file with Clang's integrated assembler.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 arch/arm/crypto/ghash-ce-core.S | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
index 534c9647726d..9f51e3fa4526 100644
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -8,6 +8,9 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
+	.arch		armv8-a
+	.fpu		crypto-neon-fp-armv8
+
 	SHASH		.req	q0
 	T1		.req	q1
 	XL		.req	q2
@@ -88,8 +91,6 @@
 	T3_H		.req	d17
 
 	.text
-	.arch		armv8-a
-	.fpu		crypto-neon-fp-armv8
 
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
 	vmull.p64	\rd, \rn, \rm
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
