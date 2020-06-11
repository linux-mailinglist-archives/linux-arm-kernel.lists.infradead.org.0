Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291D91F6925
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIIJHBWIEe7jsq/sRLMaCEP6RDYhWWeTrEA0uh3yJlo=; b=G+9h/dB4NwDrFe
	eQPHIA6OhyYrL4qSvWd7Kj3n8GuzFW6OSqxqdcTDRMJajFoPSi4/Cmjp2f9QumhBCrbp6yD7j8C12
	4UQPPXNo7qHQVtTDEnLKbpp1wHYslrE1nYSQty1ZqW7sANE9vT42MHgKhSg5C45tvT09ZE3MAQYh8
	9eOsUWY6NgfnInDKo6dQCN+zLPE4BBTqxD577EcGu5N62myAa4S3oQqrMaB7NOc3Ui6rY5fIUA1j1
	T4JQij/0hR/Z+uMA92bJ61drY40VWZGczhcStRzifUuOvmIQYLdFAZ+cZmIoTpHpYGkHxl4M2XeBL
	AuQjhQF1IwqKqYRTTwnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNQv-0003Br-1M; Thu, 11 Jun 2020 13:39:53 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNPn-0002Sn-2m; Thu, 11 Jun 2020 13:38:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7DCCC5801D5;
 Thu, 11 Jun 2020 09:38:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=fE9nFDf8bvkUK
 xQdeAn9b8Mf0rGQGKBryUWgZXvi4So=; b=WDTIL3v59nRbZ5++Sq9FwglrW3KQa
 dnrrGskjhXLcfSQwh+5OrsW6yfWCPd3Spm1Gqiqc4+OMD2Xvv+0iuPrkkLhBEXNT
 TShSNE+P2NVBXycnsfKd9uM827eylEoH5xiq/egxcF4bsBSzY942mGRJkvi0r6+S
 uvHQnlnqSHKxVfssGlqlO12yK1SUp2nr20Ldi0InymRmCoWhdGvgMLhy6+q/whuU
 wQ4kg9OFBE4D5OxAXpSHRAC31u4q25EPVFHiDIuajHBGbWk0Z6Om155FT5irejKg
 G1SuekgcrBCZNNnNM3VWx/wqF8nOgdZ0gcka2lmBxexOyJ/REcnySDyVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=fE9nFDf8bvkUKxQdeAn9b8Mf0rGQGKBryUWgZXvi4So=; b=r82AiJpe
 At1oz6KRTjKib80jETfxf5bt2rossEsOUkFA4IU+dbZ86uANxwVcFptJ8w+OO7kp
 Lq8sNT5kDK+dQ/0uxkAed3GPSiLOF08QYPbpbAavHnFr6htrTC4lIne8GdJyCnWW
 JO9JLiYRQ+inttbsSMU2hYVKv+pyql3HGrZ8lDCjXscLAWMXXzkyXud0aE1hMcQF
 WfY9vM0YNbqaJJ8huh/fu4HDLI/DJVi0A3zd3nEGlYxIKVwoYg5A9DFOoEJGtkl5
 mcJ6+mq/wNbh2RBmXFOjENtuhLIfWshrMtO0vL9WM18Yo3WIFQytqusWKB2YWkMG
 vGvMQ9ePqEwyQQ==
X-ME-Sender: <xms:4jPiXkuCOVr06TX1LMi9u4lf9rqSnQnaYvWV8hpLIYIw2BqS1ljC_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4jPiXhf4pYQyzoHkiewrnYVf4GXlVXGtv76gYpn8_-ncDidyHsH6fw>
 <xmx:4jPiXvyjIzaIzikk5BO2MusG1jMOqY331vUqMTK_9yLpg8JUbTz8MQ>
 <xmx:4jPiXnOmtAseSoLD1-nkaAN-b_JCZTw-l_26bFyByn8HV9D6MIN8Jw>
 <xmx:4jPiXhO26faw7exuJvjYPoebjnpc125MSggyuNxxx2knPgrXoBvjEA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 13E7A328022E;
 Thu, 11 Jun 2020 09:37:00 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 1/9] drm/vc4: Reorder the bind order of the devices
Date: Thu, 11 Jun 2020 15:36:46 +0200
Message-Id: <2d7fcde29dec429442eb76afc51d8cc275cb407f.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
References: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_063843_287018_749D6D86 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

We'll need the HVS to be bound before the HVS for the upcoming reworks, but
it needs to happen before the PV are bound so that the code to set the
possible_crtcs field works properly on the TXP. Move it right between the
two devices.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 7792c97d4303..38343d2fb4fb 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -343,8 +343,8 @@ static struct platform_driver *const component_drivers[] = {
 	&vc4_vec_driver,
 	&vc4_dpi_driver,
 	&vc4_dsi_driver,
-	&vc4_txp_driver,
 	&vc4_hvs_driver,
+	&vc4_txp_driver,
 	&vc4_crtc_driver,
 	&vc4_v3d_driver,
 };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
