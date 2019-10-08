Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C76DBCF1DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubyr1YkWOvdXKtwVSTt9Uv3MzOsuqCC/PFFILT7OPzY=; b=uGa1NZoZx9Dgkl
	WWF2MA7qJitQEMSESPXiQX1WY2GGQoSHDcqh+VOVeb6rdG0WfbcSuTzk7BJgcxwImgxjtO2UU7kma
	5nnRGf8KOz0plG1dY1m1/KAKn0GMgCn5WYgW60jxsGIBlZecKSkBbESkXVX2ugLsk2V0SQPTE6qfK
	Fl5s4VVGb1zIkNM16hllCC7kcdB1DJnMyUZ6zMNQFMVCs19+mHGo8A8Pq4JE6RDG2KeLQTmPsvAul
	kd8AQRmI+0N1PmVigoJmMEPaUiUEAeQQ7ktS4sSCzwu2UMSvZ3XO5+yNBQnDi13QULqkva0J0iu25
	7ko1odwhpdXKJy0A3jbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhKA-0007nW-3b; Tue, 08 Oct 2019 04:42:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhJS-0007Lp-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:41:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B90DCEDE;
 Tue,  8 Oct 2019 00:41:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 08 Oct 2019 00:41:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=M6CdlY9WjEBXg
 l7K1ZF2GhMiCG6h+wPB9CjXBLMviWo=; b=bLl54rP1u4xHD/H3AHONF++eW/FSr
 HJS6jSOAZ+cdoKdPwiEeVRH8Qhuf4gghBpXcj2TEKpp3janpJmjn4nNXe0dDYFlX
 f5Xymlt1rmvf58lkUbSL/e113iNzJs4b/QQN1SQSC7WqFhqESvsmMXLwvlMPlFFO
 B0s2rSfwXj/pZMQj4WDaMt6Rv78TUz4oxIRphUsY6UpcRSXhpbdnjzI+qCzRJ0tf
 vNMiGdQYja0OZz70UcylnuythvIb1L43+AjT2Jmvhr2oP9K0qTwQQK92k/AlEikR
 7SBqyGSrtw5wO0iPVQCoFbqRUa7iWoMynZWSnkJvK8qtB8Ic1oUdT6i/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=M6CdlY9WjEBXgl7K1ZF2GhMiCG6h+wPB9CjXBLMviWo=; b=NKMT+W9+
 Os55z9FwiSq0QonnwU6VQvCPgKndMFZMhNr0kjwJB6K30yv1eHADzGSdJQh3e8fV
 e409Wz4AUpHSro4HRSNd7pBWpaXmJfVfPLueuw/EU5X3pVQJZIpRC9b3SaCJhHn3
 QLHsxTfsjDVQ4wiyE48Mnadr2bS4QmOHcSqBqQKkgKwUp0uo+uw8UifmUDbzKynC
 pEfJE0zDCtcvJBkDtcGtkgJtr2ZEMXVYeNroIEYuNcE1aUu7vRp7Ciwd9uQQrpMt
 GKGxPhB2LC7C0AqfVRVpy9Za/gcgopzHcUnuj0OnChxe2p6D1jhpFE6jRQ3PSC9n
 23eLGJynzNPfZA==
X-ME-Sender: <xms:dxOcXYmstCkt2rtLMtnqE9puVxu0Xb5-b0nFiOItEibpAPRz2NaN6g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrheekgdekgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 td
X-ME-Proxy: <xmx:dxOcXSuWD19ivJcEz6PBr-UmMVLXja6Q9ispfp3kpGvq6DDevZusDw>
 <xmx:dxOcXedSYJc1rnU6OlpflsnJI7IK1D9WD5pK4RlWqC24LdYiAHgEcg>
 <xmx:dxOcXSzkXCss4r-AiE7-_X5lXzW8xr5WMB7Ew3W1wN8ItQOChR0Z-A>
 <xmx:dxOcXRIWUAWTXBvGtYAUlNXxZFqNPinxlluIYaBdSOxLRwm5Yw-ktw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 16FD780062;
 Tue,  8 Oct 2019 00:41:23 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH 2/7] pinctrl: aspeed-g6: Sort pins for sanity
Date: Tue,  8 Oct 2019 15:11:48 +1030
Message-Id: <20191008044153.12734-3-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
References: <20191008044153.12734-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_214130_236027_786BB2FD 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
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
 johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
 linus.walleij@linaro.org, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some pins crept in that weren't ordered in the list.

Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
index 648ddb7f038a..ff208b7c75a8 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c
@@ -1574,6 +1574,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(A3),
 	ASPEED_PINCTRL_PIN(AA11),
 	ASPEED_PINCTRL_PIN(AA12),
+	ASPEED_PINCTRL_PIN(AA16),
+	ASPEED_PINCTRL_PIN(AA17),
 	ASPEED_PINCTRL_PIN(AA23),
 	ASPEED_PINCTRL_PIN(AA24),
 	ASPEED_PINCTRL_PIN(AA25),
@@ -1585,6 +1587,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AB11),
 	ASPEED_PINCTRL_PIN(AB12),
 	ASPEED_PINCTRL_PIN(AB15),
+	ASPEED_PINCTRL_PIN(AB16),
+	ASPEED_PINCTRL_PIN(AB17),
 	ASPEED_PINCTRL_PIN(AB18),
 	ASPEED_PINCTRL_PIN(AB19),
 	ASPEED_PINCTRL_PIN(AB22),
@@ -1602,6 +1606,7 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AC11),
 	ASPEED_PINCTRL_PIN(AC12),
 	ASPEED_PINCTRL_PIN(AC15),
+	ASPEED_PINCTRL_PIN(AC16),
 	ASPEED_PINCTRL_PIN(AC17),
 	ASPEED_PINCTRL_PIN(AC18),
 	ASPEED_PINCTRL_PIN(AC19),
@@ -1619,6 +1624,7 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AD12),
 	ASPEED_PINCTRL_PIN(AD14),
 	ASPEED_PINCTRL_PIN(AD15),
+	ASPEED_PINCTRL_PIN(AD16),
 	ASPEED_PINCTRL_PIN(AD19),
 	ASPEED_PINCTRL_PIN(AD20),
 	ASPEED_PINCTRL_PIN(AD22),
@@ -1634,8 +1640,11 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AE12),
 	ASPEED_PINCTRL_PIN(AE14),
 	ASPEED_PINCTRL_PIN(AE15),
+	ASPEED_PINCTRL_PIN(AE16),
 	ASPEED_PINCTRL_PIN(AE18),
 	ASPEED_PINCTRL_PIN(AE19),
+	ASPEED_PINCTRL_PIN(AE25),
+	ASPEED_PINCTRL_PIN(AE26),
 	ASPEED_PINCTRL_PIN(AE7),
 	ASPEED_PINCTRL_PIN(AE8),
 	ASPEED_PINCTRL_PIN(AF10),
@@ -1643,6 +1652,8 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(AF12),
 	ASPEED_PINCTRL_PIN(AF14),
 	ASPEED_PINCTRL_PIN(AF15),
+	ASPEED_PINCTRL_PIN(AF24),
+	ASPEED_PINCTRL_PIN(AF25),
 	ASPEED_PINCTRL_PIN(AF7),
 	ASPEED_PINCTRL_PIN(AF8),
 	ASPEED_PINCTRL_PIN(AF9),
@@ -1792,17 +1803,6 @@ static struct pinctrl_pin_desc aspeed_g6_pins[ASPEED_G6_NR_PINS] = {
 	ASPEED_PINCTRL_PIN(Y3),
 	ASPEED_PINCTRL_PIN(Y4),
 	ASPEED_PINCTRL_PIN(Y5),
-	ASPEED_PINCTRL_PIN(AB16),
-	ASPEED_PINCTRL_PIN(AA17),
-	ASPEED_PINCTRL_PIN(AB17),
-	ASPEED_PINCTRL_PIN(AE16),
-	ASPEED_PINCTRL_PIN(AC16),
-	ASPEED_PINCTRL_PIN(AA16),
-	ASPEED_PINCTRL_PIN(AD16),
-	ASPEED_PINCTRL_PIN(AF25),
-	ASPEED_PINCTRL_PIN(AE26),
-	ASPEED_PINCTRL_PIN(AE25),
-	ASPEED_PINCTRL_PIN(AF24),
 };
 
 static const struct aspeed_pin_group aspeed_g6_groups[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
