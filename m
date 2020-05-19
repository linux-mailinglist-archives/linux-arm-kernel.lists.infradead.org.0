Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F3A1DA335
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 23:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qY4CtHizbhYoaYi9RryvPhBclPSl9E+2MgnzDXJ98Ew=; b=KCL+vJXdwHLUts
	qYwCcUKfetvu7PWwG3TDFm1GKNOxX+4dZp0ELc8Z7ZbkPpMfDvVC9xP0OEFTiIqrLtIA/8oDmheij
	PHyOKc5MOHdJ8hAaZYa43F+BAP5rvHgzx0ghLP46QIsVTsaGySDAeLMs/T9oUE3zNv7Yv3b/jh926
	PTCk3Jn45l6/n9p1wcsKWrJTq/Wq/azW6G8H3WG2+3qdxFQ2aRPtvL/YHmIC043Jojobpq0AaYwju
	JRKvJnN3Wpv3x3F8aERkCkdGcq49VMgutTJ1gnn575S6+ZASgyRjd2Koepmap8UWlyXz3QW1HSCDq
	onA4pL0apGC293XoeCug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb9UJ-0000nY-Tg; Tue, 19 May 2020 21:09:23 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb9U9-0000XO-DC
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 21:09:16 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3DFAC23058;
 Tue, 19 May 2020 23:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1589922214;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=e2AvKo/uy0nGZFQzGAIkim8WVx0YkRWQq0QMlwGjDV0=;
 b=jyLgBnLeF7AbW2U7DkKUB57uyY/BtwIuUShn+R/KherCvtJ2KLyrxAviLzpp8abhDU35pf
 lzscAb2vu4lcC7Hh/sd/FVvtTBixWQqscgrXABXXCwJUSgbid7chhXjVVy+WB2zdKBquMG
 Dhlm+gXxtbOzP07pHu4w0cAfDfwN0q0=
From: Michael Walle <michael@walle.cc>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: ls1028a: sl28: keep switch port names consistent
Date: Tue, 19 May 2020 23:03:19 +0200
Message-Id: <20200519210319.21319-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_140914_365144_F2FD28E7 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Walle <michael@walle.cc>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Keep the switch port labels consistent across the different board
variants. If the user wants to rename them, it should be done in
user-space.

Fixes: ab43f0307449 ("arm64: dts: ls1028a: sl28: add support for variant 2")
Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
index 901b5b161def..dd764b720fb0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var2.dts
@@ -53,14 +53,14 @@
 };
 
 &mscc_felix_port0 {
-	label = "gbe0";
+	label = "swp0";
 	phy-handle = <&phy0>;
 	phy-mode = "sgmii";
 	status = "okay";
 };
 
 &mscc_felix_port1 {
-	label = "gbe1";
+	label = "swp1";
 	phy-handle = <&phy1>;
 	phy-mode = "sgmii";
 	status = "okay";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
