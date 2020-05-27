Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD6D1E48FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtUnfdcQMr3NB3IyEYx8WGpE0wQvgdtI0o4bVAol2e8=; b=u3jvQRngqvlAYn
	87eBOtas1YZAne59acBI/ILFX3XMAEHY6g4G7AO0S9dYDyIWL9BQfEy5QjD9z0y3PZVlDG/NufMyV
	mIXFLRXG1OefSQ8o7rxoo+lByNGpfPmqF5WDOsQ2IBl4zt20Ao6uUpd9yo32EgVY5ckPTG8GZallG
	Mon3e+qcJuH5nH4A4Zrg8HK//ZT808c33peqRkMjbZapi8BZyHCOLSdyUF0KowVwTyRTv8ucKkoCA
	wpJVJdfZAyO6fJPLWjBO3BdxwSbk0clav/nYSvJG5nqiizAGKs+bt1h/PIIar+eAjfr+54zQh1tvD
	u4AUfImsvRPBw+/pS6wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyST-00019t-Bz; Wed, 27 May 2020 15:59:09 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ0-0005v8-2A; Wed, 27 May 2020 15:49:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6F4BB581FEA;
 Wed, 27 May 2020 11:49:20 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=r517+YT5Oy8Rd
 MCEZLSTodi2E3DjytFc7pLa4aHgYec=; b=B3+uwRjUFw0LhBTnAodZo/G3rbFCX
 NT43/84B+++BXF5lFHaNiqP6XKhtQsr/CJb5YLg5KYLn/SKM9bAvP1pYJghT/VHH
 5zdedQfLbYFvm+kBE6pkwE2lNjsa28xB6IMcaAU25QvE2FB2fnBevnGbN2alHtKa
 mSwtT/sac6F/DsUjT2c6W556NwL40OxQq+xIEN3TCdJ8WbfZOe2rQYaeH5I4wbz/
 xkynXPFuLZHPoSXvmJ5AFBsKvjkuelj7wptiwNwxXonEn4E9xFJjVuWySP0WM7r0
 zmI2mS2hOUIpsZ6/uqisxnX4YIfrq3zlsvbykAdiyc9IfAcqWEQd655tg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=r517+YT5Oy8RdMCEZLSTodi2E3DjytFc7pLa4aHgYec=; b=kNycR28Z
 7D6BcoRgZMZ3U6qEsGmpfubqSUHn5YHXyMh2sUpixqBgNEVvYBfWi1mmdg33lbAY
 03mu06/Xe1zFxjqooVTtcWdQruU5FYQZxRNIX5oOS+2IniDrmNZjizeIWK/auoRE
 idWSI+3NVr8kT8JKlppy8bqFDnRN1P50s/8cqGnQUpCTWFuELBeHk6N/l/U2xrqf
 eytKVrJsQTaTbKfDld62O7Vyy7qaayosOcMkigzbTpnmyxm5HckNqKCVn8K7Uq3Q
 WBW7AAPEJZ03cW8m663tT1Ig5SfuQv/g6nOs+J7OGbxwg+LLTIVrR9oimqB5QI4j
 u8ClrtBcBmbjYg==
X-ME-Sender: <xms:AIzOXhmMi4GXrWugG91LG0_ks3rpNTTvIGkILZtxpMYat2PwekwfTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:AIzOXs04S6Wf0hk6MrJypYq6nP7l71tlKPs6vAQLajlehsbgXPVdcg>
 <xmx:AIzOXnq1axDSKndxbkNEUetAf5Ppsq28pjp1_DOw7kvB6osByyhz-Q>
 <xmx:AIzOXhlNQyDnHW2sdaDfjlNNj-sOoWRnm_aTo1z5sXaslcb3DvH7Mw>
 <xmx:AIzOXoLwujUJ5FR0CjLM-h-EIvnxfPzk6zgN0weuWxeGZrof0OpMyw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0B61F328005E;
 Wed, 27 May 2020 11:49:19 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 002/105] reset: simple: Add reset callback
Date: Wed, 27 May 2020 17:47:32 +0200
Message-Id: <be2cecb2654e68385561a15df7967c7723d5531d.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084922_466807_9D012418 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/reset/reset-simple.c       | 20 ++++++++++++++++++++
 include/linux/reset/reset-simple.h |  7 +++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/reset/reset-simple.c b/drivers/reset/reset-simple.c
index c854aa351640..e066614818a3 100644
--- a/drivers/reset/reset-simple.c
+++ b/drivers/reset/reset-simple.c
@@ -11,6 +11,7 @@
  * Maxime Ripard <maxime.ripard@free-electrons.com>
  */
 
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/err.h>
 #include <linux/io.h>
@@ -63,6 +64,24 @@ static int reset_simple_deassert(struct reset_controller_dev *rcdev,
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
+	return reset_simple_deassert(rcdev, id);
+}
+
 static int reset_simple_status(struct reset_controller_dev *rcdev,
 			       unsigned long id)
 {
@@ -80,6 +99,7 @@ static int reset_simple_status(struct reset_controller_dev *rcdev,
 const struct reset_control_ops reset_simple_ops = {
 	.assert		= reset_simple_assert,
 	.deassert	= reset_simple_deassert,
+	.reset		= reset_simple_reset,
 	.status		= reset_simple_status,
 };
 EXPORT_SYMBOL_GPL(reset_simple_ops);
diff --git a/include/linux/reset/reset-simple.h b/include/linux/reset/reset-simple.h
index 08ccb25a55e6..c3e44f45b0f7 100644
--- a/include/linux/reset/reset-simple.h
+++ b/include/linux/reset/reset-simple.h
@@ -27,6 +27,12 @@
  * @status_active_low: if true, bits read back as cleared while the reset is
  *                     asserted. Otherwise, bits read back as set while the
  *                     reset is asserted.
+ * @reset_us: Minimum delay in microseconds needed that needs to be
+ *            waited for between an assert and a deassert to reset the
+ *            device. If multiple consumers with different delay
+ *            requirements are connected to this controller, it must
+ *            be the largest minimum delay. 0 means that such a delay is
+ *            unknown and the reset operation is unsupported.
  */
 struct reset_simple_data {
 	spinlock_t			lock;
@@ -34,6 +40,7 @@ struct reset_simple_data {
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
