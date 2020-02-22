Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABF616925A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:42:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YixuNUzHiibGrktHjqkuxlSWMdGIUQDaf8kLd+XOvOA=; b=mV48iWS+07UF4b
	mCG0fpJ6UFb0i54oRVwD5cq7NVv67d8ZqWXRoNJ7r0E06RCNheNoSz1+/YxUzgLrczA/9VqVr7cqP
	VLo9OwG5/Wvg7kw5UdprFGt0Y7qKuSxh4SWkLVZ9KRo8mM81+Ml+ChUwko+NP/cBg8DHheHWo3gwc
	xdmmZSOZ5k1CnMEublu66LNw4sTAUOQFvMfjINAaqWpRuc0r2aUiR5bkrPafrb2cOAoI+hOSz4LY+
	Ch8pQQWoFZcmH7w2NyDtchHFhmL114k9VEQz7jN9tiN1ek3b+NuRfdn2fHSUlR3aX24w1gWo4qTkX
	ycQsb10iKROFqgS4AAeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ePY-0001q3-BT; Sat, 22 Feb 2020 23:42:16 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ePP-0001pk-OP
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:42:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582414925; bh=5x/5hihgQJXkHe3WSHjYc+7DcJv1HqvoY1dyl7I4obk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=E6oq+VWEN7MxhcPR5cge8u8tgafKVhJmwFh1zOOPr1g1VcUpcW3ZPdDDAvGNsPfo3
 lq0cfBuYtR4Yjpo+2u5TCuWqgTlpCGC9/YdI+K0vaUec683aX90UT+pvIQfpxn0fWS
 JZMy3HASj9pZSn4EWvntK3yNWLMYtWrJHQFK0G2E=
From: Ondrej Jirman <megous@megous.com>
To: linux-usb@vger.kernel.org,
	megous@megous.com
Subject: [PATCH v2 RESEND] phy: allwinner: Fix GENMASK misuse
Date: Sun, 23 Feb 2020 00:41:25 +0100
Message-Id: <20191110124355.1569-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20191020134229.1216351-3-megous@megous.com>
References: <20191020134229.1216351-3-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_154207_966258_3CC9023E 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>, kishon@ti.com,
 paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mripard@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Arguments are supposed to be ordered high then low.

Fixes: a228890f9458 ("phy: allwinner: add phy driver for USB3 PHY on Allwinner H6 SoC")
Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>
Tested-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Ondrej Jirman <megous@megous.com>
---
v1->v2: Add fixes tax. Add Ondrejs Tested-by. No functional change.

This was last sent in Nov last year. I'm resending, because it probably
got forgotten. The only change is adding my SoB, which I understand is
required for the sender of the patch.

 drivers/phy/allwinner/phy-sun50i-usb3.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
index 1169f3e83a6f..b1c04f71a31d 100644
--- a/drivers/phy/allwinner/phy-sun50i-usb3.c
+++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
@@ -49,7 +49,7 @@
 #define SUNXI_LOS_BIAS(n)		((n) << 3)
 #define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
 #define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
-#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
+#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(2, 0)
 
 struct sun50i_usb3_phy {
 	struct phy *phy;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
