Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D18CC1B7B0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAWwowK2OQvAvPqkh0xNg5iH6B3krs0SJ6MuRbivT3E=; b=fxNW3cHqe4WbMx
	it4536TEwNzN7UP/T7s5tDWRuBAn1603xmWvxQMY8rgsQmtz79jjmDuzgXgJxnZRj5Tz47GZpxms0
	ocBwnRDkH2zvq0/J/IMO8Ko+edgcn6Rz3FJ4bEVRJRuen1UXBVk03gQvaOawFaQMtq7+R5F5d1JwU
	KqLUmsZkj5TP2dlwCOFY/XthYj0FvvDvYsTlv/xp6wicmpGwxtq2q9TClnwhW0Ymr8K/NdpZSKU3V
	4Gas3Sr1pEULncy+TzTrAfVKxoOtbTJFe0MqafCg8sgQU7JNDP64l26rOp7VkaxaQQ2xSiHyMoXdj
	JSWObyFOVtobrKwKNmNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0o0-00029f-Ul; Fri, 24 Apr 2020 16:03:56 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OG-0000TV-Ky; Fri, 24 Apr 2020 15:37:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id B4F921338;
 Fri, 24 Apr 2020 11:37:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=iApYH2wea2iSQ
 pgO/32FPZnoqFEdByM9qJgEW4rcoQk=; b=Z5dv0nolGCfr0bt6GN6QoMFndyT9c
 ETM25qrBbz3p8ErKkn8ukV2zOQW1sIZukLj+CJAZnkBIHn/4hzAeHoeA6+DpCufL
 NK0SSjEXCi5Q4s/NpnYr6RagEnhsvjYc47vXzSv27QHlILZkdtFxLwNOb7GS8DFc
 d74jsgVFj6/Msx5viQ1RAWQz7XOqhudWo79vrq9nHTZxvqag38GzHlTmVhDy4Ldl
 rYRdsiMRhLXN98Z146NE9X4/4u/LfDCxFrjoKPTuoIg8zVGETGFaXjX9JjM2+h3j
 HU/Y8+ZnatEdYm7wBX5dlw8YaIkKJ6a9MZmbKR3YokHbDxq2f4P+obYWg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=iApYH2wea2iSQpgO/32FPZnoqFEdByM9qJgEW4rcoQk=; b=geRGeffm
 x9QWmwB1iOuHNZ8Em3Sayby0fGFv5M4DOtzk/+EIejdil0tC+UPnmHPm5IXuWHST
 8ZuDJkF9QSzuRebE0X31fcUdtrgLBAm5ouACu0sMdlxDMzsnHWoF/z8/xqHnKlLv
 zVZcQ3udRubz+H13tkLOnO+NLSRknNVfsjpvgv9GaT0O00mDToTYKn0f4gbClBZs
 s3tM3NNBLKeEZwfwdLEcRohMk3N9PdXyz7eGcEILKjVQzHWb1B/qi/e5ftjDXD8U
 qNpk0e5aJtLludGWrPhwULs70ZZzXX61jf3qGuQ498EWwVFYyh8hrJmUmGmYoH84
 CcB4S6JK7ICrSQ==
X-ME-Sender: <xms:rgejXkoxmal4JWGhZqSljnQjpI9m5-yhuJ9QBbFFxxFmFE24-OhSxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rgejXt3VjZGfhtykPA1FJV2TAr_i6i7bBQCKb2CYUF2q4HcwDZ8sDg>
 <xmx:rgejXgCzca5V8YTLoK7JTQ3tokMPMChQI6ii_90jLXgqruCvLsUFXA>
 <xmx:rgejXg9UzA5WS6-q3ztt8oCfgqJ0Air9WURcygenNxVfqV8XHf1Q6w>
 <xmx:rgejXjsWyYDLdkAXsohsuOHnapmIWiZw9-vvmmUJRzU1dz7kVUBLsb4UA80>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 000973065D97;
 Fri, 24 Apr 2020 11:37:17 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 83/91] drm/vc4: hdmi: Rename drm_encoder pointer in
 mode_valid
Date: Fri, 24 Apr 2020 17:35:04 +0200
Message-Id: <2d367f2bb188025e0af7f435fdc909faaf5364ec.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083720_925303_DAA73C31 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

The mode_valid hook on the encoder uses a pointer to a drm_encoder called
crtc, which is pretty confusing. Let's rename it to encoder to make it
clear what it is.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 360743187f95..356334eeaf66 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -558,7 +558,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 }
 
 static enum drm_mode_status
-vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
+vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
 			    const struct drm_display_mode *mode)
 {
 	/*
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
