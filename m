Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 053AA1E4A48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4oI9v7ijS3KroOYCVgTWJkNjxkTLtCLLdwaP6TzGhc=; b=BMiNmzsp5jhL70
	OZrMDMjgTW4o95Of+yaU0A+iGRZSZ8qRqF5Ja6+L2ao2vNlv4t5PkIt8WHEtmXj05vB2Gl6NDpYL1
	XrpgNnWaViqG5oqHqOWUKxeHzY2wQRNw+pnZcje9wNBWAx+reFbME21rgcYjGtAD4xa4bxSaMcHoX
	6YSqUlBLlA86aKsbD/omgb/kWkG26/yqz7zCAt5hY2nys/7oWw4QSfMd+6FkE7TZWD8miZ7269T4Z
	Lh9UVy/1DNhEODP6kmq8p08PTtfmTt/kFo9k7ZA5q/xN9Ze1Ur2gGqpi44acQz39xsrKju8mUJeNs
	+jjFmjFNGyNlsJCdSwiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyzW-0001gI-WE; Wed, 27 May 2020 16:33:19 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLO-0001tL-Rj; Wed, 27 May 2020 15:51:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D0D24582114;
 Wed, 27 May 2020 11:51:49 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=WSzFLC35owJBB
 cysknwl1DH4vQ3qwxXRUrFNvyhjUX0=; b=djKq1M1UuNvBOFAb5HxGbQkU9wb8p
 w1BYLi18bPbk8VfhGN1nUeJ8yiVy8xnseaGs3cBBUIUcReNd418IaTp0nFp7cifP
 ovIxdR1901yZp1nH9YTCOpPUmHEvAjxWf6j9JJsqIIBLkWAouuBodIuN2DMyC9v2
 W8FRkH8pi5CRBOFs+Cgy6J+mVYJJZSzPiF9VfecTObmUdlU02YuHkLRDPNAerl6n
 N6P0Z++1gKSw3RVtYoBQa9XhK+veHuOuS7MMOWYEKGr/5Y+VPUGppMiuNnCVaqU4
 VyesNxRyJNIp54Orm1maQxTCFy7tyyMN9ORrlLnNJTTg5ovz64Wd70Nlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=WSzFLC35owJBBcysknwl1DH4vQ3qwxXRUrFNvyhjUX0=; b=DWFv5QxL
 nYzR8zT2invOKVdAV7oTpGRUQguIlLQ5Q2i0Ms8Bk6rfte3Q6BLWVtKpIR5mfZto
 +rzNkYtY60ScJY3JYARgno0XGi0iXgyBySjvTuVk34CAPPyNYR1isOgPam9yZvEw
 GEPrHtpZSNdG0VlD3efXxIiOS6/p0lS23O/G5MVHS75kwkqN0xnQANd2YFEQiSMf
 v4Z2+77s2Z0nl760bRnIO+xgtRjWdBE0znxt8BhfwLbJBqgeo15it+MUeSH6fZfQ
 1zUzZQbnuNtCr6N72qF8Wr+j1MKFwsj6NQfFdIqdAdnvFyleu3yl+RIdtXDzM+xI
 WLK857/HrOwb4A==
X-ME-Sender: <xms:lYzOXkBpzdbZbdhJwnqLJNAoS9ETsmdyTN8pcHRK8R_pnDzXa9PhiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:lYzOXmhs-9BFQuJ1p3ZmiZOHDCzdsfvhDD-zvp8XNUZH3ukjxBhkyw>
 <xmx:lYzOXnnwsvVrR1hr0XkvaMiQZ2NzVZ8iwY2mq-Vbju8nsiV4wTLvdQ>
 <xmx:lYzOXqyFrEOtfkzRTBPVmLRliOM7Mhvvf3qKBGUJyfw04TvgNi8yAg>
 <xmx:lYzOXqTgOBgwVVPOy1CSeIa8jgdHmj5Q9aq6Zw9ER8sve9m9I0Llqg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 740B030624CC;
 Wed, 27 May 2020 11:51:49 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 097/105] drm/vc4: hdmi: Deal with multiple ALSA cards
Date: Wed, 27 May 2020 17:49:07 +0200
Message-Id: <c2a2c4967d75f6606174c037b7bff5aa68fd8ec8.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085151_031625_C22E822A 
X-CRM114-Status: GOOD (  11.90  )
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
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI driver was registering a single ALSA card so far with the name
vc4-hdmi.

Obviously, this is not going to work anymore when will have multiple HDMI
controllers since we will end up trying to register two files with the same
name.

Let's use the variant to avoid that name conflict.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 3 ++-
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 7f98c1bbda73..5ad983ce87d1 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1043,7 +1043,7 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 
 	card->dai_link = dai_link;
 	card->num_links = 1;
-	card->name = "vc4-hdmi";
+	card->name = vc4_hdmi->variant->card_name;
 	card->dev = dev;
 
 	/*
@@ -1483,6 +1483,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 static const struct vc4_hdmi_variant bcm2835_variant = {
 	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
 	.debugfs_name		= "hdmi_regs",
+	.card_name		= "vc4-hdmi",
 	.max_pixel_clock	= 162000000,
 	.cec_available		= true,
 	.registers		= vc4_hdmi_fields,
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 30eac891dc74..6e570e89509e 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -30,6 +30,9 @@ struct vc4_hdmi_variant {
 	/* Encoder Type for that controller */
 	enum vc4_encoder_type encoder_type;
 
+	/* ALSA card name */
+	const char *card_name;
+
 	/* Filename to expose the registers in debugfs */
 	const char *debugfs_name;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
