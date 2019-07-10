Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892464808
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 16:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0mJpYpD3MvWUyGzvDbMllscgn5W79iKr0OmjgQSpms=; b=UqIGP8GY1Fu06Z
	e1vMzMoo1Pg+rXTL4aj19YaHdApf56fhpZPMlZ3ShltmGkK3YImGeUglt5bZ/L3ANynqMelhv1bPm
	h11LIJClO9spAgPUjLQZjfHUIrR+PDceK8pAczjiWA+OtU0T1YCtphmzEm1JgxxpisnPQg5sCTPAs
	DaGn5p5ClRuRDFFaGSe0KqQWxMVL/pUn4RYJWJ0+g7ks1rhSRh+gj1k0mprwwqkN+cuaiD/1X588/
	fsSHB1eSRGC1Z56F2S5lRWFTpC0he8VdyfxIV46GqCG2+T5Qjnpf+P1MruQoPsWUF1djbNV+Hy7so
	AJTIApNdxxJQcOQ2+6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDOY-0001NH-Rm; Wed, 10 Jul 2019 14:16:30 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDNU-0000cM-EA
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 14:15:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A98BF2213D;
 Wed, 10 Jul 2019 10:15:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 10 Jul 2019 10:15:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=Mo4UV5dPvBvsW
 DVJmnWOkPJbV5m2bJ8R6q784AbeQ54=; b=hEfa8IVJ+15tuBHc0n2ceaDlQ9zcO
 CfUNB9QjGJmWlfc/RpHLfgPwDxLi8Yf85w1Nlbvx650ALoE6QDHBmzrkYOzF66qR
 /KSnzIEeOZWK3Vsqxn6RdGJxr/EFzaTXxbDeiHzztvAb58Qyxtpe7xFjoMAsahD6
 bQsTPJD3XsKeeeJvL9wSH4jQliATIOiT+9GNXvtr7+Wo+bvaiJ61xhZW5cJRcip/
 6nTAdZnpSRuXM71a99w+mvIKfE1utOEfuybhe0LtJiJS8gGvR29KlEr5JLXhz3o9
 iX96fk5ieclv3PW1iI2lEq4WxMJRQCJZMAKmjBI2OJvph0bh19H9rdnsQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=Mo4UV5dPvBvsWDVJmnWOkPJbV5m2bJ8R6q784AbeQ54=; b=V3UszYlB
 ZsNKJKc8MbcYlz04Aa5EolyEbND3/BFFGdKV4aUFk80+QNpj4GUI1aoYz9rY3Pqg
 txFxw4+qzJJtMap7RNE+nTE2M4OvOdc36Ov+iV5VSQVqE1STuT7KwIht5W/xzibX
 Ve5a5gQ20lhq2Xm2tR/Ul67WUXG8HDro6Tqhzq5rEDGt56kGYirv0mspcs7pwX7f
 rRo6ltTa+QIxoKPpnhTQmu4N+r3D/LIub4ebXAphjjP6axn32GU9uTSAHePVzKDG
 8iEt8o8vM5FMFZ+AImoUqee2fqm/pAQzzFhqR7nQq1po9MglXGK4we4KxQH912Gj
 qSHySg+V1v1eRA==
X-ME-Sender: <xms:-_IlXdW5Oz0xFMwoPIBOInbYEV481NzzXz5eDWrU7fLmdCas2aK8jQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedugedrvd
 drkeehrddvvdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgu
 rdgruhenucevlhhushhtvghrufhiiigvpeeh
X-ME-Proxy: <xmx:-_IlXZusYRqbHjy6HT_F_XsYUlKgtJuq90TMag3Hk7t1wTPGXlIgbQ>
 <xmx:-_IlXVMM2K08bDyYCvGcY7mKdV23t9mL1vaqj1VzetOud36qF2nklQ>
 <xmx:-_IlXZps8AmqWEFWktmZndVzpExwgEcKXOcplxYaAdFy8OHvgPX6kQ>
 <xmx:-_IlXZUh7OlZSnpRhXBXXi0sRg1e1pDmzW1nZqkuQqWEQPJiN6dz2g>
Received: from localhost.localdomain
 (ppp14-2-85-22.adl-apt-pir-bras31.tpg.internode.on.net [14.2.85.22])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8D20680059;
 Wed, 10 Jul 2019 10:15:19 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 3/3] ARM: dts: aspeed: Enable both MMC slots on Swift
Date: Wed, 10 Jul 2019 23:45:03 +0930
Message-Id: <20190710141503.21026-4-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710141503.21026-1-andrew@aj.id.au>
References: <20190710141503.21026-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_071524_975060_8B30AE53 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, ryanchen.aspeed@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joel Stanley <joel@jms.id.au>

Swift will provide at least its rootfs on eMMC.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../boot/dts/aspeed-bmc-opp-witherspoon.dts    | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index f1356ca794d8..fcaeae2dd0a8 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -640,3 +640,21 @@
 &vhub {
 	status = "okay";
 };
+
+&sdc {
+	status = "okay";
+};
+
+&sdhci0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd1_default>;
+};
+
+&sdhci1 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sd2_default>;
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
