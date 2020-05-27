Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7911E4986
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZtTUI4JJZfScE4zHiye/II3QOGJBpK0rrGTwWpXLfRE=; b=Ov1N++q7xj1cYD
	Z85iiBt08w7QgXZM80FuEpt7mzJmG5O/haSTAJ+ptGTCbBRb25nCdt9LVjAWN3sVZ34Xz+qHK0ncL
	D0Dk70WSRigb/2uGXBtgYI1BnwIUOyEhIHdLDVBZZyjYURfSemZ+oS5aquA9QVGCSgL5umhaR+OFL
	0SDRTypfPI8+2aADe2Vl95t1J51VwCaD/66jL7pp8yDBWq9LIGF45MD0s3rc4wM/fYUYy/KcqIXsT
	kcdeEUJUZg7h9xBG9Gsp4mY1YYWDkq4Ke1/lCHfm37Zhw3WKdr5D/gj+3OTOGRUGcy4MK/0TDmA2C
	43BgUa58yt61zP19sjpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdygi-0001yI-TO; Wed, 27 May 2020 16:13:52 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJw-00005s-1g; Wed, 27 May 2020 15:50:25 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 32812582074;
 Wed, 27 May 2020 11:50:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6Oe8Eug7eQDXt
 mN82ebKfvpSmt8HaYdF7dwjSqGj6vE=; b=qESqrgYVNbtJSTD2SVgywHLBwLNgQ
 Fao7SrluL2qTa6kHYjQ7Vb6+mdiWfGBdCxz8rHSIr38yq/ulv5taXugxfxIb22wR
 ZDIMCjO6jVf4Rir3XXvfPBPzTHZeCV+BaQ0OkWCbQ6SdBxiUf6HepzkiwZQRvWjL
 9xLgwB1kZvN6XChu0Bue9yRGTroa5iQHiNmGHKJxDOrYc8k5msoNpq5jKxhfRu7e
 g8ClLC0lyAWuY0Mn36XuwcEg790pmBOCTfz3yYEDtpAU0Lg9hZcGsV+0s74x1eJG
 j+oaAF5zakt1zKnKBiEkAvpR65k21g6LJTRksuusTonvgQ8OJ/6u13VWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6Oe8Eug7eQDXtmN82ebKfvpSmt8HaYdF7dwjSqGj6vE=; b=GdDbO9dO
 ch2NXw6qZeWNE6OcH3HmIR0HzjVnHZup3XqBCuM4HewBM+lHaj+mI8DbpqcCW4KR
 8RasJPfRtQVGSlNwbvY8xgF0lFlDX6N7tH79509qkTVle5D1e31xajwAwd+1Hv07
 ATlkdBSKNV9mdf+SXnhHJTYhWtyAs5c5FJmHgGgmyBnLNb3qAtnwLf0CtfTtO8QW
 CY1agT89hfUB8/uEDFGx8WWQP8rMGUlA/mNMXk49QldnVUTcYWUznF3pyXb1idHP
 J6RtVnhXXBUv490dsSL5h8XVAsoyNoZqogULwnrABTE00PJGMRLJCs/dgXoueMYb
 45J1ECakTzp1xg==
X-ME-Sender: <xms:OozOXhMV1-_CyoXxD8kFU0PvbozWTvfB8Y3Ia2CirdOCkMM6FHFMRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OozOXj8n_Yppv_wnReMeCexpcsDrsAU1WFvrP1zT6wCxjtH4afo9qQ>
 <xmx:OozOXgSogGZa6E5nVnJOHb5LTXqhZMRgFP5L5ZH_uuiqRjDYsHvpAQ>
 <xmx:OozOXtuNTtzdATgt4SftCOgz4FNL6HOl7C5FDeQiN_0wTqhhF7wSzg>
 <xmx:OozOXjv_ip-OlGo6bw9ng0WR7bNIeSHvyTtOPScd_JvACS95PVVI5Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BE47A3280060;
 Wed, 27 May 2020 11:50:17 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 038/105] drm/vc4: crtc: Remove redundant call to
 drm_crtc_enable_color_mgmt
Date: Wed, 27 May 2020 17:48:08 +0200
Message-Id: <e576f64eacbcd2a7e4f8f0aabeb5b7e340561a59.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085020_450048_8D838B42 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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

The driver calls the helper to add the color management properties twice,
which is redundant. Remove the first one.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 07e23f76451c..8a3fe4d39847 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1199,7 +1199,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 				  &vc4_crtc_funcs, NULL);
 	drm_crtc_helper_add(crtc, &vc4_crtc_helper_funcs);
 	drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
-	drm_crtc_enable_color_mgmt(crtc, 0, false, crtc->gamma_size);
 
 	/* We support CTM, but only for one CRTC at a time. It's therefore
 	 * implemented as private driver state in vc4_kms, not here.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
