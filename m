Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149C8CF1E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZjxIWbhim1IVOYxEFqvFqchN//UlyW4tDAEt8k5mX0=; b=TqHkQkMap0L5ZF
	srjhrxvzxxH1mi8b67DMWh9rfCeX0UxmO89KibShbi0SON6gjHPvCyyn4xbDWWc7ZbpkbwMxJMibY
	BOwZlT4sEbED8exwLYWz3CblqEGE5B0Z8eg6rH+Fvnw4HPhmWaHC1D2C5HuYNHu5Z7yGuezBc0Swc
	PbxRNppsixHK8vXdxNWZq6wSSQcK81vj1yt1djbk0kpLPMtlAQagLlTcpKayt7bwZoacoH90rBL7r
	Vq4tml4fJwnogbBd5DT+0LrqtC89WJvyOn087GWabs0NJHvXirg86D3QblRJ+ODSMQ9Ee8abB4lFM
	/l9Ra+73Y1FqKEv1CSpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhKj-0008Lg-29; Tue, 08 Oct 2019 04:42:49 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJc-0007Tj-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B47C25A48;
 Tue,  8 Oct 2019 00:41:35 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=ax8qcZm5J10I8
 ZqNRzWuYcCjYIxStOA2LR/uq7PYupM=; b=gyS4nkCr9Aj2SXWt3U7s3s70q95MR
 +GXnEFWqz3+e2Wen6veC4E+REJ/L34v+UCMMPiKgmoZEgFwtr2EqPiGBTT6vHnyk
 yy5bNiPdsm3jbHuSJy0NdjAZn5XTdD2qB+WrBNBfBbCXLoDQxppYMF0Oq4Rh9v4S
 oDpiATWs6kWpnYyYW6u+xZdbKIP19CX0cIEmfsUV9iG+j1MggQSfES5isLGnGHRf
 5rAn5/I+WQKHojWMpZeoiZFUMUyV+Xg/wWu7A0NKn6BVzbL3yIdPPh3xdcUbxLQo
 Y+N1EpPEgz63cqAA5fhn1/ldzMX83m4qwPOb5CiKM1rc0ZkR+3HrhDKdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=ax8qcZm5J10I8ZqNRzWuYcCjYIxStOA2LR/uq7PYupM=; b=byvdso2y
 UMVSaY0snt3ucRV3C0N2c12ysBCWp+rH9dDrXol5f98F1Hkof6PCCRbZuKbFGjWi
 II6pV+Lrj7yUE5nIahlEHm6MxccbHtcymUna3oUs4k3dI3xIoB+pFtbgFWSiTExk
 BGPTSh1dS8OCIzzcbDMNMFzoBnMjvvvpPpf5PrmUgtDafvgeJ6G9GGi/uOiXmQ1E
 2W468xBAaW+3L9nTpeCaflDHU+FL8uQSkxjvtRKl1vfRZCkx5grc5hq6s3XdN8wA
 yOHMJegSMz549KoWO4oQzopT+A3jC8t+CnFx5OWwkMr5q8GiL6PKGdFe3TnhD9po
 aY4GMT4TVz6+SQ==
X-ME-Sender: <xms:fxOcXeG4gQ6Uzx_FTOqqFcJDqtovhk4IgEG6HFnWcDg-7JW1l5aWIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpeef
X-ME-Proxy: <xmx:fxOcXWQtDmv2sCA9B6EmsY0r1Kvr-WlHeCLzRha2Llh_vxnUgfKReQ>
 <xmx:fxOcXdRHyKOKC8fbsQGj1skpKpVwNbhpWAaiAN7jn25ggFH1hrFV4g>
 <xmx:fxOcXcebV3HCadTVz2DNNFDv70osmmxjIAgqVDR6vH6Ml7aAligIPg>
 <xmx:fxOcXa_Crtl6ynhEsZ72H9Fw0rTvspXdudGpq_wjyzerlk8sVSqLyA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id EF0C980064;
 Tue,  8 Oct 2019 00:41:31 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 4/7] pinctrl: aspeed-g6: Fix I3C3/I3C4 pinmux configuration
Date: Tue,  8 Oct 2019 15:11:50 +1030
Message-Id: <20191008044153.12734-5-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214140_392017_157EDE61 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Johnny Huang <johnny_huang@aspeedtech.com>

The documentation to configure I3C3/FSI1 and I3C4/FSI2 was initially
unclear.

Fixes: 58dc52ad00a0 ("pinctrl: aspeed: Add AST2600 pinmux support")
Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
[AJ: Tweak commit message, resolve rebase conflicts]
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 24 ++++++++--------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 9079655cc818..68b066594461 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1513,18 +1513,14 @@ FUNC_GROUP_DECL(VB, Y1, Y2, Y3, Y4);
  * following 4 pins
  */
 #define AF25 244
-SIG_EXPR_LIST_DECL_SEMG(AF25, I3C3SCL, I3C3, I3C3, SIG_DESC_SET(SCU438, 20),
-			SIG_DESC_SET(SCU4D8, 20));
-SIG_EXPR_LIST_DECL_SESG(AF25, FSI1CLK, FSI1, SIG_DESC_CLEAR(SCU438, 20),
-			SIG_DESC_SET(SCU4D8, 20));
+SIG_EXPR_LIST_DECL_SEMG(AF25, I3C3SCL, I3C3, I3C3, SIG_DESC_SET(SCU438, 20));
+SIG_EXPR_LIST_DECL_SESG(AF25, FSI1CLK, FSI1, SIG_DESC_SET(SCU4D8, 20));
 PIN_DECL_(AF25, SIG_EXPR_LIST_PTR(AF25, I3C3SCL),
 	  SIG_EXPR_LIST_PTR(AF25, FSI1CLK));
 
 #define AE26 245
-SIG_EXPR_LIST_DECL_SEMG(AE26, I3C3SDA, I3C3, I3C3, SIG_DESC_SET(SCU438, 21),
-			SIG_DESC_SET(SCU4D8, 21));
-SIG_EXPR_LIST_DECL_SESG(AE26, FSI1DATA, FSI1, SIG_DESC_CLEAR(SCU438, 21),
-			SIG_DESC_SET(SCU4D8, 21));
+SIG_EXPR_LIST_DECL_SEMG(AE26, I3C3SDA, I3C3, I3C3, SIG_DESC_SET(SCU438, 21));
+SIG_EXPR_LIST_DECL_SESG(AE26, FSI1DATA, FSI1, SIG_DESC_SET(SCU4D8, 21));
 PIN_DECL_(AE26, SIG_EXPR_LIST_PTR(AE26, I3C3SDA),
 	  SIG_EXPR_LIST_PTR(AE26, FSI1DATA));
 
@@ -1533,18 +1529,14 @@ FUNC_DECL_2(I3C3, HVI3C3, I3C3);
 FUNC_GROUP_DECL(FSI1, AF25, AE26);
 
 #define AE25 246
-SIG_EXPR_LIST_DECL_SEMG(AE25, I3C4SCL, I3C4, I3C4, SIG_DESC_SET(SCU438, 22),
-			SIG_DESC_SET(SCU4D8, 22));
-SIG_EXPR_LIST_DECL_SESG(AE25, FSI2CLK, FSI2, SIG_DESC_CLEAR(SCU438, 22),
-			SIG_DESC_SET(SCU4D8, 22));
+SIG_EXPR_LIST_DECL_SEMG(AE25, I3C4SCL, I3C4, I3C4, SIG_DESC_SET(SCU438, 22));
+SIG_EXPR_LIST_DECL_SESG(AE25, FSI2CLK, FSI2, SIG_DESC_SET(SCU4D8, 22));
 PIN_DECL_(AE25, SIG_EXPR_LIST_PTR(AE25, I3C4SCL),
 	  SIG_EXPR_LIST_PTR(AE25, FSI2CLK));
 
 #define AF24 247
-SIG_EXPR_LIST_DECL_SEMG(AF24, I3C4SDA, I3C4, I3C4, SIG_DESC_SET(SCU438, 23),
-			SIG_DESC_SET(SCU4D8, 23));
-SIG_EXPR_LIST_DECL_SESG(AF24, FSI2DATA, FSI2, SIG_DESC_CLEAR(SCU438, 23),
-			SIG_DESC_SET(SCU4D8, 23));
+SIG_EXPR_LIST_DECL_SEMG(AF24, I3C4SDA, I3C4, I3C4, SIG_DESC_SET(SCU438, 23));
+SIG_EXPR_LIST_DECL_SESG(AF24, FSI2DATA, FSI2, SIG_DESC_SET(SCU4D8, 23));
 PIN_DECL_(AF24, SIG_EXPR_LIST_PTR(AF24, I3C4SDA),
 	  SIG_EXPR_LIST_PTR(AF24, FSI2DATA));
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
