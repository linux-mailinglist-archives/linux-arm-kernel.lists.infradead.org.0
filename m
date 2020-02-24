Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BBB16A25D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:32:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/1jLFFH9HlTU9q1tByk0zoj2OvJCFT4qnzjiYkuGf4=; b=r7U41uN6gN/+yd
	g9ezhWwz80ATl/L/KFqBPEcPStGGL4EGJiD91wDgzQeexXBCnK5t4bzPfUq8PNoZwKP78VLsYtSy3
	L+SnafvaiVIsjhK0BbwRbsczG7By/Bn1fLd2w49x7sXTqgAu8Id9zDyOr9btt1TRIUWDkj+ZMxTmz
	BgKBcKvOXtGfASuaQ1seOlONY9s+FH5PZ3F/FdNS20QrR32n9J37n45JsAmvWqBaNumwg62rxMftw
	Bx4lYtIQTbsgLgsDIr9xRP5Y396JEC9DF58ChkS7dwmWj7OKdDIUd1FQ4KEF2QzD4UtEDN34/m+oX
	sfmO5sP0lMMWTwmynpmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A6P-0000qj-K6; Mon, 24 Feb 2020 09:32:37 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kq-0003Gt-Af; Mon, 24 Feb 2020 09:10:25 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id C7E1660C;
 Mon, 24 Feb 2020 04:10:17 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=wpDd0Jm21YDKA
 4n9iPz7TgucVhlIqBbQv4E3qcSahg0=; b=o58McUe9llkLv2TUocKEIYkWhx1/+
 HrX9txvlJvGKY8YDkYoxyV8871Irge/HtzU2EQ8vPsL5SK7siGIWWlxheZLaFlKA
 a4kexRzGc0/D6z5ZVPwwHpwoWczWdiIfEcfY7kDjK4W5SnCg6nNR5cDroCLmQ31V
 8WtExSSeRP4EjZlNz4zstrYBNiJz9aGwja0XPyJHOmaQRWkN3NJDtVoDWEODWHHD
 osN7owuHka73SPXhTvgQ3RruXD7397i8Hq4QoJOmw2NiDgyypyi10zQrWaExcLlb
 IK5BecICC0BqYE+Nkl1M3/PhVx/ojdKSnjFa9GUMAGEY10iGlYAHabC8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=wpDd0Jm21YDKA4n9iPz7TgucVhlIqBbQv4E3qcSahg0=; b=vR0GQgq/
 PBCxEzNQHZKNLRsqg6vDKCFi9SqgXCZlqXrKAx5O/WHKpBw6IodUEWrbihxugHk9
 BPUjW7JL/YxhXtteiGJX1MRF7GRdh8v+vs5QpD62JfPwp9bP+PJQcYt2GpzXwtkF
 4S6qfoM8jefnOJBoVZBpWPOqf5hOk1y4wXbFPIsMd6uggOM2uFGnITp1exMT1Wd8
 uViZ665HvN+Zwk7g9bLdjs1NguBujj1RyxppdFXhv+RPKP9uGilj2hxIn0jrr0WJ
 Vlwug4aCBZDuWMwiguSqZY088G52filEeLtkU8ma85CT2dO2j/S4S0Rc7k4RtXRi
 t9AY8VM4XsTUOA==
X-ME-Sender: <xms:-ZJTXknIwfPu1AhY19yKuwh7StQyKkgGuST7dauL1D9it58cXMGbUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgephedvnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:-ZJTXkRQagiyuHDGqYF4B9HazphTqTeDTLahb7kJH5_QIPWkaWDG9w>
 <xmx:-ZJTXia19HC4iY6rC2EC7ov0Ob7t7kF1c3bDCngPfcdqACpI0lSAUg>
 <xmx:-ZJTXs8UizyaDD-O1Jssh-9jm-99yshInlsbqYKQjR3y8AFImimyYg>
 <xmx:-ZJTXrm9F6l_JrQVa7-NqUnRqW8rJhVgu1fXaZsd7V9tYR0JMh4CQ5CCUs8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 156EA3060F09;
 Mon, 24 Feb 2020 04:10:16 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 61/89] drm/vc4: hdmi: Use debugfs private field
Date: Mon, 24 Feb 2020 10:07:03 +0100
Message-Id: <ff3df96124aa1560909fa795ae68d7a3e4282b69.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011020_577028_CB781ECD 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We're calling vc4_debugfs_add_file with our struct vc4_hdmi pointer set
in the private field, but we don't use that field and go through the
main struct vc4_dev to get it.

Let's use the private field directly, that will save us some trouble
later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 0c3cfa552239..7fad602217c1 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -182,9 +182,7 @@ static const struct debugfs_reg32 hd_regs[] = {
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 {
 	struct drm_info_node *node = (struct drm_info_node *)m->private;
-	struct drm_device *dev = node->minor->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_hdmi *hdmi = vc4->hdmi;
+	struct vc4_hdmi *hdmi = node->info_ent->data;
 	struct drm_printer p = drm_seq_file_printer(m);
 
 	drm_print_regset32(&p, &hdmi->hdmi_regset);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
