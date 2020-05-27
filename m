Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C601E4980
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2L3wxn0kVWGQ0pxJ/+g+zFIhG/qMoV9fX9sTqp+qW5k=; b=dw9VVmvVID+t3s
	v3ctoLAA8xG0PWKqNOrFOK3g7/wvIzOEtopLk1rPAFVeFIVByprv+rn4uf0rMKRNMf7Dx2djmH1sx
	P4HQeGLheE9B/clki8hqz+NqhiYMZZjHc0G+1wP+2T/3mtJfcnlr/sapbLyqfjrV8kZgV8bn0eDhB
	mwPYQtJHmhqu6WCHvkqLr4BVAc630XIzE6yhaID19j3e9ulSlG95ScpX08HWiWk9YDNaKdhZ7wQ1q
	Poz/qBKxmANZ0/GT18CFNCTI0gosqVyFelrWszRX7jeqT5HcfZYoNuySBYNcvm+98nbRjPIKf4aaO
	aZTvpcPM93v8ju3hjt8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyfC-0000Zn-9s; Wed, 27 May 2020 16:12:18 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJu-0008Ko-Qp; Wed, 27 May 2020 15:50:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7C75958206F;
 Wed, 27 May 2020 11:50:16 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=84iVjZEVQJdxU
 ub2RqdoiAca3IQhRqY+Zryl/iBO7LM=; b=aIQNde5AckuCt3Hui7I4pRqEy3l5V
 J0h1tbjbDzXbOD/nRZy5IueBPtl7ump3pxopfEKK8LYqkHsRWLnqCGAyMbq3cFzJ
 O4xY+sw9TWWnm46GcNa0iNJ/GIK492oXV/9nJNpNX49tejKq/ZtnBWVhFvgITrn2
 ggDEMO9jnJSuKG6ISJouYZrVWX8EI7MNBfsz5xZnnm82JrptV69LJaU7AvlaKnVB
 ZGjlhTvXkKD7+Hg1RmZ687d5GZ2S2TrMiteifzFmXS+U6B3rJvSbO/MW0RJgcYBC
 56NMteCKgcRm9J99kNZZgS/utQrTsu2S2zcbTAETSkjJw3RHcD00Wjksw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=84iVjZEVQJdxUub2RqdoiAca3IQhRqY+Zryl/iBO7LM=; b=2/J0b4qf
 MT7M5Zdxkn9Othpn8jgwdJuMFQshdII71CyzdxHztsnMbNWDfKy3X2FwKpzilVN7
 ueUY9CgEMJ0uNpHYrF43OvhjqzQSkDMYX7agVoIBqKcmL4Kmla4HUgi9fEo5xZNr
 TY3vIvhXZSaebFAMVzo/llco70e0UQ2yZDVoTHTIx3+GeQEhQ95B6uhkyZGfTKOk
 Eq2v5690/s5lTzqUHMiPBoEcKeuEHnz/Neqg8GD9ytyiSAUqyKjxvvs8uKts93Uz
 IGw6G5uOmBxJlf+kn6beMxDv0n0I/DBRU19IdmWl6iOW4z7h0kXGc0qyP4r+Y8vc
 vLzch9Bx3fm+BQ==
X-ME-Sender: <xms:OIzOXqyRAND6Nnp9Wv8QYqbqenPs9WcUabo57MfsEKh98xu8G7gBzg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OIzOXmSqpM3M_jL8U0mI57vamMWWmUgoyCrQ04yV_4w6VEC-EOWifw>
 <xmx:OIzOXsW8wkMH2nHkWjYyi_AQXkH6uvbJi6zWDCwhWvHSLXU_rfq0cg>
 <xmx:OIzOXgjKAvBv5k_HZHqY0tWmL_sjj9TQidoFbWoEvc47BxqkhR6UQw>
 <xmx:OIzOXqCV3Sd724CtH92CfnW84S3Q-j762vGAhDj-WphHL6rkDpEjWQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1D5A83061CCB;
 Wed, 27 May 2020 11:50:16 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 037/105] drm/vc4: crtc: Add HDMI1 encoder type
Date: Wed, 27 May 2020 17:48:07 +0200
Message-Id: <5ddada6589946b06858ed78b1f6e27abc611f19d.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085019_208688_8754AE1B 
X-CRM114-Status: UNSURE (   7.28  )
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

The BCM2711 sports a second HDMI controller, so let's add that second HDMI
encoder type.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index cc30e54d75ab..974cda3c5292 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -430,6 +430,7 @@ to_vc4_plane_state(struct drm_plane_state *state)
 enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_NONE,
 	VC4_ENCODER_TYPE_HDMI0,
+	VC4_ENCODER_TYPE_HDMI1,
 	VC4_ENCODER_TYPE_VEC,
 	VC4_ENCODER_TYPE_DSI0,
 	VC4_ENCODER_TYPE_DSI1,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
