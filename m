Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160A11E49D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:23:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQ3h5pMxTyPDU0nPzJhhMupEZ6HzvHqapWIH/TzwzWc=; b=o1Um6SgTE8DO2b
	FH5bGUHmeMvBlTunh8bvl2Fn862zoYkkqjmYHVmG2t1McMtJJ8MZwyk8+00mdO3dRPbJZ/6a50Qzl
	XIkSyQShAhBRYuheFvU/M2Xf7mo9f+pGajD19Bo8gXJ/ti/ypyrt1th9NQ9crQeBJSfEPA2tIPQJJ
	OkH+PM+H+LfTERtarkpIz0Y7GCRQrpCVOSGfKlM4TtWyW+4dgBqKgilhoa6HhE0IEeke5FGBUmLx2
	N5ly6rgKi3oEMlPLh9I5Pr4RKbK//XHVrydvill9ZMc1TNW9i4lY03JUWu9mDw6Q3af330vcULklc
	CshvJzMr567preKD1EmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdypl-0005Zf-3O; Wed, 27 May 2020 16:23:13 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKJ-0000tX-QF; Wed, 27 May 2020 15:50:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 432135820AC;
 Wed, 27 May 2020 11:50:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=JKPJcF5P9O84B
 kfkFMzL0EEY5mowhYm7H9n+PdHiw6A=; b=Z4QknsdJy5pMWMN1FFG/YOqpjb7Cs
 qbT/ZYZxmKPExwIwzcvDt3w1Y7RiKx0PF1P94wcetSbtMCinys0cZmACWhCG2oNp
 4U/fEfYHmo163xIwEwvVjheEYEdFpsfmIb/MrC6IGDlmNxCcH+Jqt07KHr2gjUOR
 VG/w60HilcgvV9joLaw3Ef+/cs5oZsLjUC5OjDh3cM5qskyBK1JopBZUxy/8pTC0
 Qh4uFmC3lxzDF2KWG4CcKZMgKBhHKop4ESAMmhb7TmbbolQz29lumeMJYOHPJQ2h
 QtPeawn8tHtpjfxQ0D9uZ5o+9dsPxsC/bMa4hRe3z6F4QwpniX4hJ/yag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=JKPJcF5P9O84BkfkFMzL0EEY5mowhYm7H9n+PdHiw6A=; b=jb4CVfTw
 ThorRSJWcCLpBAwKeh4Q4AmJHbPTLvWtLzODo1vqeTZF5oAASgnM5arIY32Lu1VT
 680cIaFRokcBVL688xhVoj5w1niQkBdFosbR7c1CVbZrTLqa3qr7zjQA54lg3QW4
 4NrdTDkh2ggcPHfIVkxyi/jjs/tnnLW13r1gIkXr0k9fMwhmvX/JQ4YkehcFTdIa
 EzoLQhKsy77swiTxwzlujF+cQCAiMuwbqbu+A5bXopu2jo4xLuhCVoO82gGX4hNp
 LnHgOqg4KDs7Yh7pUhwmFPzybKyabyCmZH4vm/53Z1MG3xef0kRAGv0RjB2JYuem
 rgMy6z1VQja4xg==
X-ME-Sender: <xms:UozOXriWN4QIm-ASBHRux8Ahm8gb6b5YEp4a3NkJtn-nwUxRAEGAkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UozOXoCYqgYJ9Gc3v3eQ1PCekFRP4MSw0XXTWQZsqbx1ExugxeBbAQ>
 <xmx:UozOXrFGBqlvWLmOVj9_dkARfX0jDpNsAUzVd7VGjjkKwwWBaZrZSg>
 <xmx:UozOXoSLPolXcX8kNPoWti18IZ_dtgAoaXWfffd25GSOqwjRpcqwAA>
 <xmx:UozOXrxC6xIuddkyCHyI7k07PKHPaUhkqVqkQeX7o3CUlvbqxQgRcw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D8E3930618B7;
 Wed, 27 May 2020 11:50:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 053/105] drm/vc4: crtc: Clear the PixelValve FIFO during
 configuration
Date: Wed, 27 May 2020 17:48:23 +0200
Message-Id: <edcf101ddbf3f710d7e7295ffcedca831ca56a12.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085044_044300_4B0D17E2 
X-CRM114-Status: UNSURE (   9.52  )
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

Even though it's not really clear why we need to flush the PV FIFO during
the configuration even though we started by flushing it, experience shows
that without it we get a stale pixel stuck in the FIFO between the HVS and
the PV.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 61e0945a8697..ecb3431470dd 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -356,7 +356,7 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	if (is_dsi)
 		CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
 
-	CRTC_WRITE(PV_CONTROL,
+	CRTC_WRITE(PV_CONTROL, PV_CONTROL_FIFO_CLR |
 		   vc4_crtc_get_fifo_full_level_bits(vc4_crtc, format) |
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
 		   VC4_SET_FIELD(pixel_rep - 1, PV_CONTROL_PIXEL_REP) |
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
