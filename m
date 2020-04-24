Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED4A1B7A67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbfne8OUGA8MQsSzAYYM36nt5o4ff7qQNDls+XZ7dFo=; b=RY5TtLyAP7en2s
	GFP/QTMY9iNPNpugvTKE/rCAxJi2U993yiDxTm7eprTcoshgZBV08VAxR2ygDNiQhWw6YTxbVQybq
	DhPJaJ3yV7aPXaGml5RfLYB0v2rOhu5SbEV7FUiTvMEfhzMxPt2FvGRGCsy2yIFfMEnYMXJxydxO4
	i5gNgFliXxPEwYJCXQh9yIawp4PYiHxaRdRWUS0w7l5Xu9Zkm6Lb+mW2cS+fv1V6ysLh5DljQ7Dnf
	l430/bmUiZ79OtSbjmBBZpL+rXMIkzW1XPB4Gx5iZl+h3cWil6s37O92L7uLHyxjAEd+hY7b8x74a
	hG0Olh2KaZLqr4ponelA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0W3-0000CO-OS; Fri, 24 Apr 2020 15:45:23 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mv-0007mP-UC; Fri, 24 Apr 2020 15:36:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 4188B78A;
 Fri, 24 Apr 2020 11:35:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=RAyogzkukKZAd
 i7S8yBa6C6J+CTNVLFaPMJKvTHa5P4=; b=yhZCD7QwzRo929MJQo2eKzY6/OOJE
 Uv52BA1a/pFnCyTnOBLfX4i2h9n3D/I1tAWDksFwyr8tx00W3lCKVYb4nKQlCJ3Y
 OIKW1/VTBsb4+yr0HBVx+l5fxmn1gYzMAaSwXD81r2UTuIKwt6styluBdVyH84z9
 L4r/RdUoQJ8ecx655K7Y00LcDfzhxCW5C1Bt27I1Rk6xd8Wj/Tu0jTgbXbfkHwhC
 M5kyXIZQ/aar3CsuJtyi2TtN+eutvF38QWyXxEqDhVcd0vSQ/N5PZfAXvMZ53Msj
 ucqiRa7CRGUqubgdTB2rsJflX8IAVFvZt1R8aL6uouMW0tqr9z29NJzJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=RAyogzkukKZAdi7S8yBa6C6J+CTNVLFaPMJKvTHa5P4=; b=VLGeO82e
 vTD/HLM+NvsfFEdXq3Yg6t6GMg4l8JKRMiifEYE6B1E9KycDXkZKzChH7OH/13qb
 AapEdFS4rLMkqYOCFmkYJPt6EvTV+GWb7q5ykvnGhaMSTRrY8/gf00Zm8sENLK2d
 ds//UH30shAFEHdM9d/q5k6WDDSUpVytCOYopeA221kevx/xNPzso6ptGYfDRk2P
 SdFFpaF9K3uVTA08y5VA98YF9pjanr+x/ZnTecdK7s3m0HkDhFX9sahjarfVD0sY
 mRuw8Lvb/H6+DA02Fne563Tmdor5IrIBS0QBhO2Pd5gnj1JDhETLtA+6Hcj8o3rS
 kp5mjmWz3ui4/A==
X-ME-Sender: <xms:WgejXtplR3x-HH71IkGkCi_kHIOxI2M5vAf1ucsksxqEYn_Ppq5aQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:WgejXnEdBDQUpJkecvOw-HPobW_x0jVVkBgMapvXcXBQdDHY92P-NA>
 <xmx:WgejXjIbJ0yAR-sJuxyPaRytcCcDrqE_xRVNyoS4s3bns2Zcrvwe9w>
 <xmx:WgejXj37IGoZv5g01uuoq1tjuU514Pn9y2i1hIodx9O5mo7MZl4I5Q>
 <xmx:WgejXoNO1w7qyB-vAJzZUbARGeMJmJneDbmWVNt-E5Hj--E_hdOBKXHp4VA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7E3E73065D87;
 Fri, 24 Apr 2020 11:35:54 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 23/91] reset: simple: Add reset callback
Date: Fri, 24 Apr 2020 17:34:04 +0200
Message-Id: <31e3daec5d5b703bd87ef9d77e353589daf6fa3e.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083558_114074_EB71C5A9 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reset-simple code lacks a reset callback that is still pretty easy to
implement. The only real thing to consider is the delay needed for a device
to be reset, so let's expose that as part of the reset-simple driver data.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/reset/reset-simple.c       | 24 ++++++++++++++++++++++++
 include/linux/reset/reset-simple.h |  6 ++++++
 2 files changed, 30 insertions(+)

diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index c854aa351640..602ed972b0a9 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -11,6 +11,7 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
 #include <linux/io.h>
@@ -63,6 +64,28 @@ static int reset_simple_deassert(struct reset_controller_dev *rcdev,
 	return reset_simple_update(rcdev, id, false);
 }
 
+static int reset_simple_reset(struct reset_controller_dev *rcdev,
+			      unsigned long id)
+{
+	struct reset_simple_data *data = to_reset_simple_data(rcdev);
+	int ret;
+
+	if (!data->reset_us)
+		return -ENOTSUPP;
+
+	ret = reset_simple_assert(rcdev, id);
+	if (ret)
+		return ret;
+
+	usleep_range(data->reset_us, data->reset_us * 2);
+
+	ret = reset_simple_deassert(rcdev, id);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
 static int reset_simple_status(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
@@ -80,6 +103,7 @@ static int reset_simple_status(struct reset_controller_dev *rcdev,
 const struct reset_control_ops reset_simple_ops = {
 	.assert		= reset_simple_assert,
 	.deassert	= reset_simple_deassert,
+	.reset		= reset_simple_reset,
 	.status		= reset_simple_status,
 };
 EXPORT_SYMBOL_GPL(reset_simple_ops);
diff --git a/include/linux/reset/reset-simple.h b/include/linux/reset/reset-simple.h
index 08ccb25a55e6..5eb83625a495 100644
--- a/include/linux/reset/reset-simple.h
+++ b/include/linux/reset/reset-simple.h
@@ -27,6 +27,11 @@
  * @status_active_low: if true, bits read back as cleared while the reset is
  *                     asserted. Otherwise, bits read back as set while the
  *                     reset is asserted.
+ * @reset_us: Minimum delay in microseconds needed that needs to be
+ *            waited for between an assert and a deassert to reset the
+ *            device. If multiple consumers with different delay
+ *            requirements are connected to this controller, it must
+ *            be the largest minimum delay.
  */
 struct reset_simple_data {
 	spinlock_t			lock;
@@ -34,6 +39,7 @@ struct reset_simple_data {
 	struct reset_controller_dev	rcdev;
 	bool				active_low;
 	bool				status_active_low;
+	unsigned int			reset_us;
 };
 
 extern const struct reset_control_ops reset_simple_ops;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
