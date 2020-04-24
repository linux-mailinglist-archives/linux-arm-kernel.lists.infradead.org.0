Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13FA1B7B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:02:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TikTlvm1/MC+vDGqIsBhMh8ubAFRK4XWQqeKw+zr/+E=; b=u6zK0Ms8tJlpqn
	9nZgrEVbcpqOeZ6jxcXoDpm8yIW7ToSh0deR/5zCj9LNrSO70ysLTtHhSJH63UUEBZCeX2cvmNFq+
	lY8nEI4AbPMSGQ1mluXJw8d8Mzc+H8GhfiKvdSoTvjlg798GA1j06a81OTpJ9Tpplyih/klylj+yY
	N4A7wO7pyXhxKYeGNXEG/7TWTkv0AYHjXSJqzdI6IS5OToVlABwp4as8EcOhZZto9Ue2ttvoE3gSw
	QRnC+5jIkEC4t9XZRt+1Ttc37pChCqrjveDNl+sErzKMywNQm9STcCUB7V+VAbh6dTPX8UX3SduXt
	t8vq3+tCf2ERDS01Cxiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0mr-00018D-VC; Fri, 24 Apr 2020 16:02:45 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OA-0000NL-EI; Fri, 24 Apr 2020 15:37:17 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C3E441449;
 Fri, 24 Apr 2020 11:37:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6SaaEI3QM+61n
 2vOknfdtmtFx1seHZfhMU+DJZTniks=; b=Mop+5LrD3zHeX/QJFwX7Dreo7JRUj
 cJHhAFF8DK7FVOpDjW7K0c4IMnmN5iaiFMwmaINDsCEAS9N6ZvXdytCZcMeCyWDD
 ePYF+WLhk9BKKBpSGf92srkDWNSCpr6qp6zCsX2TxacpVK2ca8xX29BR0wUlvVOS
 i2iuqzXXtd/b6Gl6bs6S2FY3UPCWpMxwDbZIdLuCiQpQ8OkCwLYitUkXAe8umsLS
 StcM3GG059xm9iSNjGJZhz/XpxmGLAILnHkDf05mvsZ34vzqimV786/3Vhk4UZwz
 nJMKPjTs18xe9wBRVaRwug5krE+kZHicwGnolm5XD3QQHgJ8W9kplI+0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6SaaEI3QM+61n2vOknfdtmtFx1seHZfhMU+DJZTniks=; b=aBD28wAx
 Q2+4LRPoQvWJ5hmp1d8ORRDQev4du4QfsTvywEotCkiEur3BAhiynWrwLQzCojcI
 yzJ8OCsEpLC7y07V0HWcYpxrS9sq+lBpBvwqXkfvyWEH6VLSD0I7ONWrF+If6qKL
 4uHbdhtSa5c5z/D+mXTY/lVHQcxf6WyCHrkAlRos0JvVA9hC7K+UvMbbmZCaQ/qn
 SFjnYdOz8BErri/VxSPUw4hnYHZWk2IvLhl776kG7HFnYNiWRhHne50pDOCsQk7O
 wj5eoE6UHXQntsXYN4J/0hg5OZ8xdk/jEot3YK1UPtTv/Br8F5M0HsXTstg6xMHt
 CsCCANW4bKd9CA==
X-ME-Sender: <xms:pwejXjv8xfIE9kJhcjzXtmTG2pUdhbYnAgjzvLyJMFz7H536VYnx2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejtdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pwejXhLCL78ZhCP8T_YfrQzHLTzB6kfeCI5dfhpU_WJElwTCrw8Axg>
 <xmx:pwejXv0itTBRCsQk-N_siR78Tz76T0n_TxTbyBs4TLV6IiZ-9NUqmA>
 <xmx:pwejXnNhA4TxPyVKWOvUqUEwCT9Pno2QCu-wxyJEf6ERF0WRnEeBsQ>
 <xmx:pwejXs4euoG1I-dATu3pJn7oOEGhO4R2INVCNtSuGWOQerhjOrsH-yx7LMg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 100823280063;
 Fri, 24 Apr 2020 11:37:10 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 78/91] drm/vc4: hdmi: Store the encoder type in the variant
 structure
Date: Fri, 24 Apr 2020 17:34:59 +0200
Message-Id: <104c57b01e4fc67640d0236b38663417e07178ab.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083714_800831_AD455C87 
X-CRM114-Status: GOOD (  10.42  )
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
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vc4 CRTC will use the encoder type to control its output clock
muxing. However, this will be different from HDMI0 to HDMI1, so let's
store our type in the variant structure so that we can support multiple
controllers later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 4 ++--
 drivers/gpu/drm/vc4/vc4_hdmi.h | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index b3a98a17f8f8..aaf96420d0ec 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1264,11 +1264,10 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	vc4_hdmi = devm_kzalloc(dev, sizeof(*vc4_hdmi), GFP_KERNEL);
 	if (!vc4_hdmi)
 		return -ENOMEM;
-
 	vc4_hdmi->pdev = pdev;
 	variant = of_device_get_match_data(dev);
 	vc4_hdmi->variant = variant;
-	vc4_hdmi->encoder.base.type = VC4_ENCODER_TYPE_HDMI0;
+	vc4_hdmi->encoder.base.type = variant->encoder_type;
 	encoder = &vc4_hdmi->encoder.base.base;
 
 	ret = variant->init_resources(vc4_hdmi);
@@ -1439,6 +1438,7 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 }
 
 static const struct vc4_hdmi_variant bcm2835_variant = {
+	.encoder_type		= VC4_ENCODER_TYPE_HDMI0,
 	.registers		= vc4_hdmi_fields,
 	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 4a67d62aef53..4240c5ea7fde 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -27,6 +27,9 @@ struct vc4_hdmi;
 struct vc4_hdmi_register;
 
 struct vc4_hdmi_variant {
+	/* Encoder Type for that controller */
+	enum vc4_encoder_type encoder_type;
+
 	/* List of the registers available on that variant */
 	const struct vc4_hdmi_register *registers;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
