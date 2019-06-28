Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B8659163
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSO7g1gsG+tAdhXJUylS3Qfm/FoQPWoi/OewahUF758=; b=fKI8BWAqxDnEN4
	E2KuCW3YmHYDgUfiCJDIuzMihSgX6Y23zB2vCe28bl1gREzMo9m/4gF7Aepnt16r4hc/cwRMBClaF
	tgPwjmCAQ4e17D7j+L7lYmExTzMiCaPgD7uvLJu9ezYsjUWJJ7RhucD32gJCrUR5y839DUwG/sd5A
	0xyKaGwmoUhsyLQOaujZv9P4t4CH+kYqKVPQuE3lIuLaZaqdYUZZbw/dvrksrIIt82olnYn3PqUW6
	LiQ9rPp+pUd9RhYfhQIls66kJky8n8UeJCyFemKPyBKMUGuZVWQg1scABieeFremHDRgWlOkV/FmV
	CtcW2hY2703brbgTKsFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggpa-00056Z-9u; Fri, 28 Jun 2019 02:41:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggnZ-0002gY-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:39:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 074DF2DE9;
 Thu, 27 Jun 2019 22:39:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 27 Jun 2019 22:39:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=dkailpDyj7vUI
 txB8Vs9sL40BUOIyxRITgSOEfzO07k=; b=JSrUAZ8lW608Xlb0i4jxGz5M0lCm6
 hL3hy88SEw8o3eHtB42JUfTUOOJfQQurqCeN/B2wV2hOUofHMRrdGXkND6UBUDSs
 NUUGtpMwYtuBiQa9jRT1VvdAabNU2unU2bMxObJUOpYOnHM3KXL3xi4sz5+V4Klb
 XYsKHf9ZAvH42k1S3KcoLSI44HaDFUsxMo3oXsfw/DiV7NtYA0+7REe6LVL7P2Ya
 rYpYYARf6joLvi71TdUyNUN1IRVfTHG7JLKSUFWgt3po65+17zVCCh7haS/4Qc2G
 4C2dYcV1EyY6Z/k0e+7ziX4hhftFPdMQWxSZlt5SXtGaWpWa5iwjT+0Mw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=dkailpDyj7vUItxB8Vs9sL40BUOIyxRITgSOEfzO07k=; b=nhPowcNo
 yBqX1mv2xtH4kEyeJXoNbiL4OwHRGKlKefjuMTSd+JUy1jGKtah6ramJOjBDKaQB
 s8qxgJOSnyE7DIPO5EMKutnUfa3SaQlCqZkZHdLMh7+fDMzU7Wbt4leT0pApxPJO
 Ucgl0C/lF5+lpuMx9q1d7qJnSMaC0FE3d1yJXljAfnmdLJ5Ib8bVAsUuaEPnkPYm
 cSy+3TkHkwLQ6K11PH5hwhVAENULTPzKgGt/d7PmjhfoNGpyUCj9HSFeHwpWRGeO
 Q9dDRAgvshC/akiT6AxitkgyChhy30dOUW2Gc5OfQ661gkAjVaYv6J233KVd2KnU
 zmCD4II2U9sd2A==
X-ME-Sender: <xms:6H0VXQqJ6glKWOVBBKDwGN1xIFb-aPx1esmLo-Pcwb01sd5pf7fz4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudelgdeiudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomheptehnughrvgif
 ucflvghffhgvrhihuceorghnughrvgifsegrjhdrihgurdgruheqnecukfhppedvtddvrd
 ekuddrudekrdeftdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegrjhdr
 ihgurdgruhenucevlhhushhtvghrufhiiigvpedv
X-ME-Proxy: <xmx:6H0VXY5ZAfAOBaWzGw6NJ8MEYE9-tZTB3lkJFLX1gS1x0R1HwGWAOw>
 <xmx:6H0VXXeRNAVbiXnpwDwYBmKf7IkoDHFdQuizoywqeETG8gFJMDq_uA>
 <xmx:6H0VXd5Hdkx54YTCoiecEXw3xlxVSael4fdUF20lQg-tW3fqABb9IA>
 <xmx:6H0VXX7j7mtJMBAOZA6IE_9AhNUN5wxC1L4JOiKvHxFJEoBkQxoScw>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id C946D380074;
 Thu, 27 Jun 2019 22:39:32 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-gpio@vger.kernel.org
Subject: [PATCH v2 5/8] pinctrl: aspeed: Correct comment that is no longer true
Date: Fri, 28 Jun 2019 12:08:35 +0930
Message-Id: <20190628023838.15426-6-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
References: <20190628023838.15426-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_193938_189198_D0788E96 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Johnny Huang <johnny_huang@aspeedtech.com>, ryan_chen@aspeedtech.com,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 joel@jms.id.au, openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We have handled the GFX register case for quite some time now.

Cc: Johnny Huang <johnny_huang@aspeedtech.com>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
Acked-by: Joel Stanley <joel@jms.id.au>
---
 drivers/pinctrl/aspeed/pinctrl-aspeed.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pinctrl/aspeed/pinctrl-aspeed.h b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
index 4b06ddbc6aec..c5918c4a087c 100644
--- a/drivers/pinctrl/aspeed/pinctrl-aspeed.h
+++ b/drivers/pinctrl/aspeed/pinctrl-aspeed.h
@@ -240,8 +240,7 @@
  * opposed to naming them e.g. PINMUX_CTRL_[0-9]). Further, signal expressions
  * reference registers beyond those dedicated to pinmux, such as the system
  * reset control and MAC clock configuration registers. The AST2500 goes a step
- * further and references registers in the graphics IP block, but that isn't
- * handled yet.
+ * further and references registers in the graphics IP block.
  */
 #define SCU2C           0x2C /* Misc. Control Register */
 #define SCU3C           0x3C /* System Reset Control/Status Register */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
