Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A06016A145
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2gzPKMibyrptZC21ttZrVnMRN0O1YOx4o4udetbXsY=; b=AnzMNSRcUxmteL
	gib91NJnilUo68uBYOb3EJNKcyPNlaTEU8bVIelTKo9LN/wknQ0HSNHBw6LRNEoUHaFUQg9G9rUbc
	bT9Odeq10ZDBaf+e8aNJoSYQCICwB7SewT7qAwF735hnw0GkfCAhm5sZOlmgA+NPhxPNiKJUAw2cq
	7s5bfbC3ig0N7vXWeAamTVjfyCDlJXulLT6zsSOeK0hUwYVYtTxnwrXd91iwvzz38yFYrmxgRlt5l
	/ALZbzU6RepEjrLHkFZ+HG1gFaG661u/IkTHfwjq7GZcxYeRIfo728B8tVBBqrtghm748VB5/kH/e
	WsgyjKaOiWLEPd7yzSLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69mK-0004Fx-Lz; Mon, 24 Feb 2020 09:11:52 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ja-0001Qp-Ts; Mon, 24 Feb 2020 09:09:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 5BB97546;
 Mon, 24 Feb 2020 04:08:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=aifkvOv9zRXxq
 ekpFLQ5g38F+d5Q84waAiGnY1d0dKA=; b=zHSiWKUe7BUqGibMMMhnFdpnYy8Dx
 oByM038YZepKvUtdWuQOGr4vYJJH9F0OXpnbuIR8Oi9jApxP8tU/KhBqsTvvV0vv
 DBzJbXqetR8TFArPMUR4aAdst0uwvyqrEswOvxYjWBCMBlfJFLU/YXW9z7rKsAak
 3Hcdqbf/X3I1z4Wl15Pqc6U0YYJK/aSMuyGT5qcVlW1YA2uX7uSNW6ekTn7fi5CV
 8kWH1lNMF529NADRn/OZ3fK5b9Q1SVmPUoOFbAJyNTr5rKYJG3mJz27Ma/z9D634
 ipagutWNS5u8BY/ky45mBV9MkeqoTONvZuVFcT7YhP+UfpRoVorbj39TQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=aifkvOv9zRXxqekpFLQ5g38F+d5Q84waAiGnY1d0dKA=; b=1xcIzN5f
 gOFRqaiMEamDf/QyBFmL3lGKaSkXDVmJ06S7KxJyJwWUB+e02yoWwp2dH07UIs7j
 wNYuDq5URg95zfqdoX0Y9ASNBL0yRpDFu/aDAHrclGclYCaEneolDmbF3UDwkjSb
 VE5q1lvq1lC89HOT15zID9Fp+Ius0vuU8uV9kL6aQN9fmO18FPR8qyb3LPwGZbgy
 T6Xcd51F8lY05CZk1Tx9q0nJ+TF6rex6ZJYjl5m0hrhk3qfTQ3CEnVzW144+wIlT
 sDZvj+cRAL6/GlOsGtJVbQirT7dggba8UdUEh4Cp4fKffVghdjHHT/lKkCXzMMHu
 5W2oIRe8JwfVUA==
X-ME-Sender: <xms:p5JTXs19rhtFYaY82D5yzQIgVw_brvbEr9V3ZjcvahqdWYbtQazwRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:p5JTXrWzcu65fd7BNERv_UFmOuaodSuZEZXYkz_g9Gq58rIyBqpvRA>
 <xmx:p5JTXv4O0vZWktqygUmnO0ZcINf3962OKgvpqa68gqn4WiB58E-dEQ>
 <xmx:p5JTXqKfD_YNibKbolYbPLwtJTxnXmem66a4ya7ztWp2upEv2HM_3w>
 <xmx:qJJTXnWek_2MGiM6ogkQRZ99oSOfnPswzMty1JkG9z9WdVLowfdLRlYP4hw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 502763280064;
 Mon, 24 Feb 2020 04:08:55 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 04/89] i2c: brcmstb: Allow to compile it on BCM2835
Date: Mon, 24 Feb 2020 10:06:06 +0100
Message-Id: <0ec2a26c7492b1ef6554d3bdada7a6fb8b41ab1c.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010903_026853_8E15B27B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711, supported by ARCH_BCM2835, also has a controller by the
brcmstb driver so let's allow it to be compiled on that platform.

Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-i2c@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/i2c/busses/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index 2ddca08f8a76..9b8494de4a59 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -476,7 +476,7 @@ config I2C_BCM_KONA
 config I2C_BRCMSTB
 	tristate "BRCM Settop/DSL I2C controller"
 	depends on ARCH_BRCMSTB || BMIPS_GENERIC || ARCH_BCM_63XX || \
-		   COMPILE_TEST
+		   COMPILE_TEST || ARCH_BCM2835
 	default y
 	help
 	  If you say yes to this option, support will be included for the
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
