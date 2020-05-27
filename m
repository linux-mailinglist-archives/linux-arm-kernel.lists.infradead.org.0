Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407081E4977
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=394kgW1Myjgu9+sGztm+QtIvUMsH0G+fOQQuwbWj3Zw=; b=W09ZZY2M9zYUki
	KQNTZXjD0S66sylJwPaO3IhxAsf3BfxrnyYsYdHE4mEQw1mdjutF1JyehdNfbQTd9z9Lw8av44wDK
	x3uU6Y2N31XJ0a0HcATcJJ0JPUhUspt85UvEwtBwO1QyCs4V3QvLpqfhxTPU2y3tRIQE9E2V488yG
	U5jdiKpP4SQ7PnuWEszaSsAn38//A8gGY69cWXRHn8Y22flwWD+qwym6rerqpgjJ4yMqnPijkuOHe
	6c18wl+pb0E6HjpvuO1bLVCDlAjivVjcYXox7a7YdD/fAMUICMDUgEwckGRAJz1Hrft2Q9eqaziLB
	0GAiEOtC8Bct5aJowGxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdydw-0007vo-9j; Wed, 27 May 2020 16:11:00 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJl-00072V-0b; Wed, 27 May 2020 15:50:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 08300582057;
 Wed, 27 May 2020 11:50:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=paZ0RrmilrGG7
 YJ5JlbhmJJvPjMtrxilkOsZzdPjgeQ=; b=kU53pVLDVbRXSBOmIpvll7/uZ1CuX
 xOA8EfJyzJy58Bza36fy3hQbZza45vTqS0y/bwwiVUz6xVgjxRP2OxizIXr/2cES
 lpJuaFjG9605jGUCr+PkatjuxcJ9Y1hIGO/WDd0sNGed4VstGvu9vswyKjHhH/lz
 kNUqJjMON3pK9bOuxeMS37ZhZG8HxQi0nbYJ03JgxVRcmKipHPLvZQqPgumKJaxY
 hrk+RrMI4nPH65UlIIoVVEEfLhn28kiYmCmI6eOciixe/XSzT7AvzjqR2h5VNuLp
 N/Tjqv1/ocYpMtxa66IPOw3uQBqP19I4k4M0QuUYaIMO8Ca1l63dSjSjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=paZ0RrmilrGG7YJ5JlbhmJJvPjMtrxilkOsZzdPjgeQ=; b=gIeMrltU
 Bar33w0GjeLohFIGazwEQnhrF16Ll+Jdh5tkGfrtcPFOPp8712+gpDzotnFmqPEf
 cJ1VWEbk/cB72SnN+ehbBazRyYNuNAbqaJDJDE17E7Ah4JlEBzlKcLK7jXrp3LkH
 MQ2txVqjAEQP8/y6VkfdkkxWTh8v09U7Cp39zjgVCzHY+sPnyw4FS3gbGFPK1NrT
 b5tvL3F4ReHijvw79A72nOVVhJMJdAmzj3VG1v3pKMzEcty3+/LTS+F/rFJPGxMM
 fA4FU5UohOLmpsy0s0hsYcG3MYClw783z79jLNLoxGBlrA94XW9ZudEBgMMfrcZY
 XmjUtwfTdG5/kw==
X-ME-Sender: <xms:LozOXuaQmhi5rpslCkWyB0KCzn8Riwxn8rtdpJX_fy0ox74Z85Bb4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:LozOXhZy_KewNMpe1KRxmxWl0kwp2Rt9fa2_0sYCNQVsF5eqI95rLg>
 <xmx:LozOXo-vpIyh9-yN3lmyh6iohyy-i6epB_n7YTldEx5QJgrB40_kpw>
 <xmx:LozOXgqmkPYQPDWEeicWIkK8Baib3fLpcaR9sSS7V9UcCZ1B2jF7PQ>
 <xmx:L4zOXtKtXoQVojan8JBWtPmM7udX9k1eHXT2QZaUkb9J7SxO-wDfkg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9DD713061856;
 Wed, 27 May 2020 11:50:06 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 031/105] drm/vc4: crtc: Use local chan variable
Date: Wed, 27 May 2020 17:48:01 +0200
Message-Id: <e899798e17c22cad7358178f5129d4ffef7cbb41.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085009_349231_660015CE 
X-CRM114-Status: GOOD (  10.03  )
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

The vc4_crtc_handle_page_flip already has a local variable holding the
value of vc4_crtc->channel, so let's use it instead.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 14e3a962d8a7..15c72afb226f 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -813,7 +813,7 @@ static void vc4_crtc_handle_page_flip(struct vc4_crtc *vc4_crtc)
 		 * the CRTC and encoder already reconfigured, leading to
 		 * underruns. This can be seen when reconfiguring the CRTC.
 		 */
-		vc4_hvs_unmask_underrun(dev, vc4_crtc->channel);
+		vc4_hvs_unmask_underrun(dev, chan);
 	}
 	spin_unlock_irqrestore(&dev->event_lock, flags);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
