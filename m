Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F7910E5DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yW8irgi3OCzd/Go2X2opOjDpiG3FfARTdFpyhm/9vOQ=; b=eOUi6y+qxBQPPE
	KDOvRKhJpJLFJqXLbW6TxWsDJn4c0wCRB7tLul7OaBirh7RXWlRTa0+jqhnoogdlcCBJe2QUP6aeA
	jkPxswU7vL6ROKQPZd3AeKTz4htE0g8BbikjFk1yJVOIWF3ximylrTwuOZjKiEKUxF0NNRabDJNrG
	7SvHPumZYt+AzmAy91aqiwHwxHOejDAMquCILZ8x+trLWt4aqwOBrn7xj4gfm2EtMz2rzLS0uTEyY
	czCUivAvb/w2+9IZhY3ntIfNA+G2CXOVCC5zA+CXonBDxaPeqopkvJGHC+UgwxEpEvGT0+laQMOzr
	k+cCuE67IYlXmZu3EAYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibeyS-0004Rn-C8; Mon, 02 Dec 2019 06:14:20 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibexG-0003Yc-3Q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 06:13:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4F61822657;
 Mon,  2 Dec 2019 01:13:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 02 Dec 2019 01:13:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=wtnMwWeyb7nP2
 m6le0SvJ5RzrmGbJRGtCQLkRpR1Aac=; b=A1+8rEeu3+qqc/E39p3oJPT/GbIT7
 uS2ckdWgLUzl5mxzm1TZvPfs5bLa1gPLtLtn+JFeb7zQyxcolWTw/lsBDEf8iZz4
 Ik9sJcWYnqbLPBvEfKbvNNDN5FJDwmaYvxt9X++sp9bK6yEi+BFBCzqReCliYgD8
 Z6qU6JjLkrqGyk2GIUCUkTQ6Yq2Xq73sIdgjA5kjAZ7nu74qYrzWzwgSa1AxkLtl
 MGrwVUMY4J+k8H5bMGEctdhFfdhmyopmukUSKTLOvZ+cOBw5YmvWL+2Pr9OyGFQW
 nhqzgxAcyOfTsQ/il0qwM3/WwGQ58l28Z6BkJNQx0tRSDlsJSQ+QJZFmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=wtnMwWeyb7nP2m6le0SvJ5RzrmGbJRGtCQLkRpR1Aac=; b=l2adr0w6
 vp6BK2r8fF+bJ0CQng5lyhKh9CS3ssr8RAK8SRoSVJbHHXgROaKoxFDOXaJgieCi
 t34vsp8lpgVgU2tJLvOWxx+zkk3/AxrzUxGr7482x582ABFMWFbODfTmHRgDaz+2
 cxBm229eiVK4efRJtLfE2vXLimvewoHh8vTG9o0l9HrWjBU6gK/FrrGUhVNKIcRO
 /Mm0kiBQ5xF2STMYOtkuSvAnjLFmrieMsydwLixaxY3A/GVMYIIT/yVHPp9+63lU
 6druh1x/You/Uha86bvEmnnFE1/MlcjGhjF3zAileEhkuLk35vcfP0yryQw7i3/L
 ALsiUt1P/zFx4A==
X-ME-Sender: <xms:cavkXcU4d0XtrhmzSzJJckcnBQGrqKSH3P--b7GV4T77mgU_7WO7pA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejgedgleegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeetnhgurhgv
 ficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfkphepudduke
 drvdduuddrledvrddufeenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:cavkXQxdiWAXkiBcPOEfI_zTNEpC4w-397fi5jjFugZEPxSTEyUWfw>
 <xmx:cavkXet0lFBPjY1PcPpiAsJnBKpjhxI3C5tboHaAwNpSL6Lump-QDg>
 <xmx:cavkXZE5v2IX-61nWHo7INca02crhDmvIt_LstUo5Bbp8NwBawIB4g>
 <xmx:cavkXTN8ozFGg332zABeHAM-y8DLiXiQz5n9SgGc9-TliEH-kLxTfw>
Received: from mistburn.lan (unknown [118.211.92.13])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5CB508005B;
 Mon,  2 Dec 2019 01:13:01 -0500 (EST)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 4/7] pinctrl: aspeed: Add ASPEED_SB_PINCONF() helper
Date: Mon,  2 Dec 2019 16:44:29 +1030
Message-Id: <20191202061432.3996-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191202061432.3996-1-andrew@aj.id.au>
References: <20191202061432.3996-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_221306_427939_F6F41E2F 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Johnny Huang <johnny_huang@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

This helper macro is for declaring single bit (SB) mask pinconf,
and is used to prepare for modifying aspeed_pin_config
structure, the aspeed_pin_config structure @bit variable will be
modified to @mask.

This case is common in the AST2400/AST2500 which the mask is a single bit.

Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c | 160 ++++++++--------
 drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c | 202 ++++++++++-----------
 drivers/pinctrl/aspeed/pinctrl-aspeed.h    |   7 +
 3 files changed, 188 insertions(+), 181 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
index 95ea593fa29d..c56ded0ac57e 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g4.c
@@ -2439,88 +2439,88 @@ static const struct aspeed_pin_function aspeed_g4_functions[] = {
 
 static const struct aspeed_pin_config aspeed_g4_configs[] = {
 	/* GPIO banks ranges [A, B], [D, J], [M, R] */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { D6,  D5  }, SCU8C, 16 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { D6,  D5  }, SCU8C, 16 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { J21, E18 }, SCU8C, 17 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { J21, E18 }, SCU8C, 17 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A18, E15 }, SCU8C, 19 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A18, E15 }, SCU8C, 19 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { D15, B14 }, SCU8C, 20 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { D15, B14 }, SCU8C, 20 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { D18, C17 }, SCU8C, 21 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { D18, C17 }, SCU8C, 21 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A14, U18 }, SCU8C, 22 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A14, U18 }, SCU8C, 22 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A8,  E7  }, SCU8C, 23 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A8,  E7  }, SCU8C, 23 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { C22, E20 }, SCU8C, 24 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { C22, E20 }, SCU8C, 24 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { J5,  T1  }, SCU8C, 25 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { J5,  T1  }, SCU8C, 25 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { U1,  U5  }, SCU8C, 26 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { U1,  U5  }, SCU8C, 26 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V3,  V5  }, SCU8C, 27 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V3,  V5  }, SCU8C, 27 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { W4,  AB2 }, SCU8C, 28 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { W4,  AB2 }, SCU8C, 28 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V6,  V7  }, SCU8C, 29 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V6,  V7  }, SCU8C, 29 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { Y6,  AB7 }, SCU8C, 30 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { Y6,  AB7 }, SCU8C, 30 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V20, A5  }, SCU8C, 31 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V20, A5  }, SCU8C, 31 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, D6,  D5,  SCU8C, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   D6,  D5,  SCU8C, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, J21, E18, SCU8C, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   J21, E18, SCU8C, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A18, E15, SCU8C, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A18, E15, SCU8C, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, D15, B14, SCU8C, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   D15, B14, SCU8C, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, D18, C17, SCU8C, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   D18, C17, SCU8C, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A14, U18, SCU8C, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A14, U18, SCU8C, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A8,  E7,  SCU8C, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A8,  E7,  SCU8C, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, C22, E20, SCU8C, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   C22, E20, SCU8C, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, J5,  T1,  SCU8C, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   J5,  T1,  SCU8C, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, U1,  U5,  SCU8C, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   U1,  U5,  SCU8C, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V3,  V5,  SCU8C, 27),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V3,  V5,  SCU8C, 27),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, W4,  AB2, SCU8C, 28),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   W4,  AB2, SCU8C, 28),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V6,  V7,  SCU8C, 29),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V6,  V7,  SCU8C, 29),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, Y6,  AB7, SCU8C, 30),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   Y6,  AB7, SCU8C, 30),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V20, A5,  SCU8C, 31),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V20, A5,  SCU8C, 31),
 
 	/* GPIOs T[0-5] (RGMII1 Tx pins) */
-	{ PIN_CONFIG_DRIVE_STRENGTH, { A12, A13 }, SCU90, 9  },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A12, A13 }, SCU90, 12 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A12, A13 }, SCU90, 12 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, A12, A13, SCU90, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A12, A13, SCU90, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A12, A13, SCU90, 12),
 
 	/* GPIOs T[6-7], U[0-3] (RGMII2 TX pins) */
-	{ PIN_CONFIG_DRIVE_STRENGTH, { D9,  D10 }, SCU90, 11 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { D9,  D10 }, SCU90, 14 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { D9,  D10 }, SCU90, 14 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, D9,  D10, SCU90, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, D9,  D10, SCU90, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   D9,  D10, SCU90, 14),
 
 	/* GPIOs U[4-7], V[0-1] (RGMII1 Rx pins) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { E11, E10 }, SCU90, 13 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { E11, E10 }, SCU90, 13 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, E11, E10, SCU90, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   E11, E10, SCU90, 13),
 
 	/* GPIOs V[2-7] (RGMII2 Rx pins) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { C9,  C8  }, SCU90, 15 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { C9,  C8  }, SCU90, 15 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, C9,  C8,  SCU90, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   C9,  C8,  SCU90, 15),
 
 	/* ADC pull-downs (SCUA8[19:4]) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L5,  L5  }, SCUA8, 4 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L5,  L5  }, SCUA8, 4 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L4,  L4  }, SCUA8, 5 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L4,  L4  }, SCUA8, 5 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L3,  L3  }, SCUA8, 6 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L3,  L3  }, SCUA8, 6 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L2,  L2  }, SCUA8, 7 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L2,  L2  }, SCUA8, 7 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L1,  L1  }, SCUA8, 8 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L1,  L1  }, SCUA8, 8 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { M5,  M5  }, SCUA8, 9 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { M5,  M5  }, SCUA8, 9 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { M4,  M4  }, SCUA8, 10 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { M4,  M4  }, SCUA8, 10 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { M3,  M3  }, SCUA8, 11 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { M3,  M3  }, SCUA8, 11 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { M2,  M2  }, SCUA8, 12 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { M2,  M2  }, SCUA8, 12 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { M1,  M1  }, SCUA8, 13 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { M1,  M1  }, SCUA8, 13 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N5,  N5  }, SCUA8, 14 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N5,  N5  }, SCUA8, 14 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N4,  N4  }, SCUA8, 15 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N4,  N4  }, SCUA8, 15 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N3,  N3  }, SCUA8, 16 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N3,  N3  }, SCUA8, 16 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N2,  N2  }, SCUA8, 17 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N2,  N2  }, SCUA8, 17 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N1,  N1  }, SCUA8, 18 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N1,  N1  }, SCUA8, 18 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { P5,  P5  }, SCUA8, 19 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { P5,  P5  }, SCUA8, 19 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L5,  L5,  SCUA8, 4),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L5,  L5,  SCUA8, 4),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L4,  L4,  SCUA8, 5),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L4,  L4,  SCUA8, 5),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L3,  L3,  SCUA8, 6),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L3,  L3,  SCUA8, 6),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L2,  L2,  SCUA8, 7),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L2,  L2,  SCUA8, 7),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L1,  L1,  SCUA8, 8),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L1,  L1,  SCUA8, 8),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, M5,  M5,  SCUA8, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   M5,  M5,  SCUA8, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, M4,  M4,  SCUA8, 10),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   M4,  M4,  SCUA8, 10),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, M3,  M3,  SCUA8, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   M3,  M3,  SCUA8, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, M2,  M2,  SCUA8, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   M2,  M2,  SCUA8, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, M1,  M1,  SCUA8, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   M1,  M1,  SCUA8, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N5,  N5,  SCUA8, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N5,  N5,  SCUA8, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N4,  N4,  SCUA8, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N4,  N4,  SCUA8, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N3,  N3,  SCUA8, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N3,  N3,  SCUA8, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N2,  N2,  SCUA8, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N2,  N2,  SCUA8, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N1,  N1,  SCUA8, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N1,  N1,  SCUA8, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, P5,  P5,  SCUA8, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   P5,  P5,  SCUA8, 19),
 
 	/*
 	 * Debounce settings for GPIOs D and E passthrough mode are in
@@ -2531,14 +2531,14 @@ static const struct aspeed_pin_config aspeed_g4_configs[] = {
 	 * controller. Due to this tangle between GPIO and pinctrl we don't yet
 	 * fully support pass-through debounce.
 	 */
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { A18, D16 }, SCUA8, 20 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { B17, A17 }, SCUA8, 21 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { C16, B16 }, SCUA8, 22 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { A16, E15 }, SCUA8, 23 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { D15, C15 }, SCUA8, 24 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { B15, A15 }, SCUA8, 25 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { E14, D14 }, SCUA8, 26 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { C14, B14 }, SCUA8, 27 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, A18, D16, SCUA8, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, B17, A17, SCUA8, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, C16, B16, SCUA8, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, A16, E15, SCUA8, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, D15, C15, SCUA8, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, B15, A15, SCUA8, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, E14, D14, SCUA8, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, C14, B14, SCUA8, 27),
 };
 
 static int aspeed_g4_sig_expr_set(struct aspeed_pinmux_data *ctx,
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
index d8a804b9f958..b2fe47b98fa0 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g5.c
@@ -2476,124 +2476,124 @@ static const struct aspeed_pin_function aspeed_g5_functions[] = {
 
 static struct aspeed_pin_config aspeed_g5_configs[] = {
 	/* GPIOA, GPIOQ */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { B14, B13 }, SCU8C, 16 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { B14, B13 }, SCU8C, 16 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A11, N20 }, SCU8C, 16 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A11, N20 }, SCU8C, 16 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, B14, B13, SCU8C, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   B14, B13, SCU8C, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A11, N20, SCU8C, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A11, N20, SCU8C, 16),
 
 	/* GPIOB, GPIOR */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { K19, H20 }, SCU8C, 17 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { K19, H20 }, SCU8C, 17 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { AA19, E10 }, SCU8C, 17 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { AA19, E10 }, SCU8C, 17 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, K19, H20, SCU8C, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   K19, H20, SCU8C, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, AA19, E10, SCU8C, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   AA19, E10, SCU8C, 17),
 
 	/* GPIOC, GPIOS*/
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { C12, B11 }, SCU8C, 18 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { C12, B11 }, SCU8C, 18 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V20, AA20 }, SCU8C, 18 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V20, AA20 }, SCU8C, 18 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, C12, B11, SCU8C, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   C12, B11, SCU8C, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V20, AA20, SCU8C, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V20, AA20, SCU8C, 18),
 
 	/* GPIOD, GPIOY */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F19, C21 }, SCU8C, 19 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F19, C21 }, SCU8C, 19 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { R22, P20 }, SCU8C, 19 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { R22, P20 }, SCU8C, 19 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F19, C21, SCU8C, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F19, C21, SCU8C, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, R22, P20, SCU8C, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   R22, P20, SCU8C, 19),
 
 	/* GPIOE, GPIOZ */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { B20, B19 }, SCU8C, 20 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { B20, B19 }, SCU8C, 20 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { Y20, W21 }, SCU8C, 20 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { Y20, W21 }, SCU8C, 20 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, B20, B19, SCU8C, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   B20, B19, SCU8C, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, Y20, W21, SCU8C, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   Y20, W21, SCU8C, 20),
 
 	/* GPIOF, GPIOAA */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { J19, H18 }, SCU8C, 21 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { J19, H18 }, SCU8C, 21 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { Y21, P19 }, SCU8C, 21 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { Y21, P19 }, SCU8C, 21 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, J19, H18, SCU8C, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   J19, H18, SCU8C, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, Y21, P19, SCU8C, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   Y21, P19, SCU8C, 21),
 
-	/* GPIOG, GPIOAB */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A19, E14 }, SCU8C, 22 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A19, E14 }, SCU8C, 22 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { N19, R20 }, SCU8C, 22 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { N19, R20 }, SCU8C, 22 },
+		/* GPIOG, GPIOAB */
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A19, E14, SCU8C, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A19, E14, SCU8C, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, N19, R20, SCU8C, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   N19, R20, SCU8C, 22),
 
 	/* GPIOH, GPIOAC */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { A18,  D18  }, SCU8C, 23 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { A18,  D18  }, SCU8C, 23 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G21,  G22  }, SCU8C, 23 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G21,  G22  }, SCU8C, 23 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, A18,  D18, SCU8C, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   A18,  D18, SCU8C, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G21,  G22, SCU8C, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G21,  G22, SCU8C, 23),
 
 	/* GPIOs [I, P] */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { C18, A15 }, SCU8C, 24 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { C18, A15 }, SCU8C, 24 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { R2,  T3  }, SCU8C, 25 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { R2,  T3  }, SCU8C, 25 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { L3,  R1  }, SCU8C, 26 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { L3,  R1  }, SCU8C, 26 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { T2,  W1  }, SCU8C, 27 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { T2,  W1  }, SCU8C, 27 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { Y1,  T5  }, SCU8C, 28 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { Y1,  T5  }, SCU8C, 28 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V2,  T4  }, SCU8C, 29 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V2,  T4  }, SCU8C, 29 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { U5,  W4  }, SCU8C, 30 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { U5,  W4  }, SCU8C, 30 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { V4,  V6  }, SCU8C, 31 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { V4,  V6  }, SCU8C, 31 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, C18, A15, SCU8C, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   C18, A15, SCU8C, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, R2,  T3,  SCU8C, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   R2,  T3,  SCU8C, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, L3,  R1,  SCU8C, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   L3,  R1,  SCU8C, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, T2,  W1,  SCU8C, 27),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   T2,  W1,  SCU8C, 27),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, Y1,  T5,  SCU8C, 28),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   Y1,  T5,  SCU8C, 28),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V2,  T4,  SCU8C, 29),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V2,  T4,  SCU8C, 29),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, U5,  W4,  SCU8C, 30),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   U5,  W4,  SCU8C, 30),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, V4,  V6,  SCU8C, 31),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   V4,  V6,  SCU8C, 31),
 
 	/* GPIOs T[0-5] (RGMII1 Tx pins) */
-	{ PIN_CONFIG_DRIVE_STRENGTH, { B5, B5 }, SCU90, 8 },
-	{ PIN_CONFIG_DRIVE_STRENGTH, { E9, A5 }, SCU90, 9 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { B5, D7 }, SCU90, 12 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { B5, D7 }, SCU90, 12 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, B5, B5, SCU90, 8),
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, E9, A5, SCU90, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, B5, D7, SCU90, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   B5, D7, SCU90, 12),
 
 	/* GPIOs T[6-7], U[0-3] (RGMII2 TX pins) */
-	{ PIN_CONFIG_DRIVE_STRENGTH, { B2, B2 }, SCU90, 10 },
-	{ PIN_CONFIG_DRIVE_STRENGTH, { B1, B3 }, SCU90, 11 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { B2, D4 }, SCU90, 14 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { B2, D4 }, SCU90, 14 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, B2, B2, SCU90, 10),
+	ASPEED_SB_PINCONF(PIN_CONFIG_DRIVE_STRENGTH, B1, B3, SCU90, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, B2, D4, SCU90, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   B2, D4, SCU90, 14),
 
 	/* GPIOs U[4-7], V[0-1] (RGMII1 Rx pins) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { B4, C4 }, SCU90, 13 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { B4, C4 }, SCU90, 13 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, B4, C4, SCU90, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   B4, C4, SCU90, 13),
 
 	/* GPIOs V[2-7] (RGMII2 Rx pins) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { C2, E6 }, SCU90, 15 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { C2, E6 }, SCU90, 15 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, C2, E6, SCU90, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   C2, E6, SCU90, 15),
 
 	/* ADC pull-downs (SCUA8[19:4]) */
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F4, F4 }, SCUA8, 4 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F4, F4 }, SCUA8, 4 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F5, F5 }, SCUA8, 5 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F5, F5 }, SCUA8, 5 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { E2, E2 }, SCUA8, 6 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { E2, E2 }, SCUA8, 6 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { E1, E1 }, SCUA8, 7 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { E1, E1 }, SCUA8, 7 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F3, F3 }, SCUA8, 8 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F3, F3 }, SCUA8, 8 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { E3, E3 }, SCUA8, 9 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { E3, E3 }, SCUA8, 9 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G5, G5 }, SCUA8, 10 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G5, G5 }, SCUA8, 10 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G4, G4 }, SCUA8, 11 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G4, G4 }, SCUA8, 11 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F2, F2 }, SCUA8, 12 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F2, F2 }, SCUA8, 12 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G3, G3 }, SCUA8, 13 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G3, G3 }, SCUA8, 13 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G2, G2 }, SCUA8, 14 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G2, G2 }, SCUA8, 14 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { F1, F1 }, SCUA8, 15 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { F1, F1 }, SCUA8, 15 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { H5, H5 }, SCUA8, 16 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { H5, H5 }, SCUA8, 16 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { G1, G1 }, SCUA8, 17 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { G1, G1 }, SCUA8, 17 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { H3, H3 }, SCUA8, 18 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { H3, H3 }, SCUA8, 18 },
-	{ PIN_CONFIG_BIAS_PULL_DOWN, { H4, H4 }, SCUA8, 19 },
-	{ PIN_CONFIG_BIAS_DISABLE,   { H4, H4 }, SCUA8, 19 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F4, F4, SCUA8, 4),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F4, F4, SCUA8, 4),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F5, F5, SCUA8, 5),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F5, F5, SCUA8, 5),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, E2, E2, SCUA8, 6),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   E2, E2, SCUA8, 6),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, E1, E1, SCUA8, 7),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   E1, E1, SCUA8, 7),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F3, F3, SCUA8, 8),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F3, F3, SCUA8, 8),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, E3, E3, SCUA8, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   E3, E3, SCUA8, 9),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G5, G5, SCUA8, 10),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G5, G5, SCUA8, 10),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G4, G4, SCUA8, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G4, G4, SCUA8, 11),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F2, F2, SCUA8, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F2, F2, SCUA8, 12),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G3, G3, SCUA8, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G3, G3, SCUA8, 13),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G2, G2, SCUA8, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G2, G2, SCUA8, 14),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, F1, F1, SCUA8, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   F1, F1, SCUA8, 15),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, H5, H5, SCUA8, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   H5, H5, SCUA8, 16),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, G1, G1, SCUA8, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   G1, G1, SCUA8, 17),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, H3, H3, SCUA8, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   H3, H3, SCUA8, 18),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_PULL_DOWN, H4, H4, SCUA8, 19),
+	ASPEED_SB_PINCONF(PIN_CONFIG_BIAS_DISABLE,   H4, H4, SCUA8, 19),
 
 	/*
 	 * Debounce settings for GPIOs D and E passthrough mode are in
@@ -2604,14 +2604,14 @@ static struct aspeed_pin_config aspeed_g5_configs[] = {
 	 * controller. Due to this tangle between GPIO and pinctrl we don't yet
 	 * fully support pass-through debounce.
 	 */
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { F19, E21 }, SCUA8, 20 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { F20, D20 }, SCUA8, 21 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { D21, E20 }, SCUA8, 22 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { G18, C21 }, SCUA8, 23 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { B20, C20 }, SCUA8, 24 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { F18, F17 }, SCUA8, 25 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { E18, D19 }, SCUA8, 26 },
-	{ PIN_CONFIG_INPUT_DEBOUNCE, { A20, B19 }, SCUA8, 27 },
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, F19, E21, SCUA8, 20),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, F20, D20, SCUA8, 21),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, D21, E20, SCUA8, 22),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, G18, C21, SCUA8, 23),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, B20, C20, SCUA8, 24),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, F18, F17, SCUA8, 25),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, E18, D19, SCUA8, 26),
+	ASPEED_SB_PINCONF(PIN_CONFIG_INPUT_DEBOUNCE, A20, B19, SCUA8, 27),
 };
 
 static struct regmap *aspeed_g5_acquire_regmap(struct aspeed_pinmux_data *ctx,
diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
index a5d83986f32e..a7db31202033 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
@@ -35,6 +35,13 @@ struct aspeed_pin_config {
 		.drv_data = (void *) &(PIN_SYM(name_)) \
 	}
 
+#define ASPEED_SB_PINCONF(param_, pin0_, pin1_, reg_, bit_) { \
+	.param = param_, \
+	.pins = {pin0_, pin1_}, \
+	.reg = reg_, \
+	.bit = bit_ \
+}
+
 struct aspeed_pinctrl_data {
 	struct regmap *scu;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
