Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77823FC598
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:43:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=p5UO/7w/UV9OsXSzy4cGOeR+xkq00e3TwNJgFNmab8Y=; b=t+bLxBl3rCpI+wHFaInP38Mx54
	LNues1V6kclVyijB98d82mzqbk94gHc0WzVJCkPbioXC+vcFYaxRELNOCXFJOXTjI3+dMtVIAOkOX
	OtUnt3Ygl6HR75cyb6gRs1QNkuV3G4wTKTp0YGH1D8+gqzdNLxk8M+/yHcai/D27WdCvtewOrU019
	FTSvDNOumKZ35vBqTPGRyc4DNuG3ic/Po/nT2iMcsQboN/7IFohqt9dqZIwg9dv5XfDqWkUS2RqyC
	ieND6C1k0IK74VoSAs5eU1bnY83X3TZ4wS/ZEiuX2Gz7VPmCUDosPMqdq2RxJmHVPcOmOz3GVnC70
	12nNun1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDXO-0005Gz-9i; Thu, 14 Nov 2019 11:43:46 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDWa-0004j3-IY
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:42:59 +0000
Received: from mailhost.synopsys.com (mdc-mailhost2.synopsys.com
 [10.225.0.210])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id C3D4FC04C9;
 Thu, 14 Nov 2019 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573731775; bh=BDukAyowAZk0E3mYeClr0pY7CNQPO/82dQMmXYYRMf4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:In-Reply-To:
 References:From;
 b=bnEw+8WS6FLPpjX+VHeICk1Ix9vz+43+cHEYi4UxdkgoxfoJopL1w236aKDtXr7Ub
 C7Z92QuQHPRD0M5AnvInEt8B4wPFIMXA9/jDqY9ucN2SWQrbJ2EbBEPJK5y7khYNZC
 C4115qlxccZloD+/HXRF3nXKZ8Xhb99cs2s3BawnTNQcuku7YUkMX9XWQLEa6vm+/+
 h/Eo7nycMFJeGnSqpYj935DOZLRTY9CZUYU9mSkOcm906K3g6m78EVnBWM2aRRJ7xd
 Xgl4+Gpk9DoZaS9VJCTrQU9t1JMaX1cLuHFE/7Ej5uWT4gfVVLw2htz+FBgqaghflh
 QiZHqfrtQ+0og==
Received: from de02dwia024.internal.synopsys.com
 (de02dwia024.internal.synopsys.com [10.225.19.81])
 by mailhost.synopsys.com (Postfix) with ESMTP id 7ACC0A0092;
 Thu, 14 Nov 2019 11:42:53 +0000 (UTC)
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 net-next 5/7] net: stmmac: Tune-up default coalesce settings
Date: Thu, 14 Nov 2019 12:42:49 +0100
Message-Id: <c2131c06d9081a89308a8b9f2c4b4950f35b581f.1573731453.git.Jose.Abreu@synopsys.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
In-Reply-To: <cover.1573731453.git.Jose.Abreu@synopsys.com>
References: <cover.1573731453.git.Jose.Abreu@synopsys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_034256_668705_B34C9C86 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tune-up the defalt coalesce settings for optimal values. This gives the
best performance in most of the use-cases.

Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>

---
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jose Abreu <joabreu@synopsys.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: netdev@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/net/ethernet/stmicro/stmmac/common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
index 309ea12ea61f..b210e987a1db 100644
--- a/drivers/net/ethernet/stmicro/stmmac/common.h
+++ b/drivers/net/ethernet/stmicro/stmmac/common.h
@@ -253,8 +253,8 @@ struct stmmac_safety_stats {
 #define STMMAC_COAL_TX_TIMER	1000
 #define STMMAC_MAX_COAL_TX_TICK	100000
 #define STMMAC_TX_MAX_FRAMES	256
-#define STMMAC_TX_FRAMES	1
-#define STMMAC_RX_FRAMES	25
+#define STMMAC_TX_FRAMES	25
+#define STMMAC_RX_FRAMES	0
 
 /* Packets types */
 enum packets_types {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
