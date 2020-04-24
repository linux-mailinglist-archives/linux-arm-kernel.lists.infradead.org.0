Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30751B7AC0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:55:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JvOzYRSYR7Ng4Bufx66yepcNVXhHPQEWJai1Pc0sJ48=; b=ZOZa5thf/1AeF3
	gWqC9HD19OD5qu9Cmh0hzePBzJyzfBQdjgizgQJFAwAGkqu5Up775X/XHOqw/5KxDCA2GDNISt1xo
	vS2b903LQHX6/SV9x4w46PKAz//LrXBqYrNY8sSKlbu4l6J8wVuMgpaD/e8//M2BQq0CoACy+UWm9
	4zIN3Qq0eLzeW2osT7rhTHmNj2rBEaNYvAyavyWpOik8D4c7Io81UM723eX8iKcQ232gYsAeFZE0m
	2X66tb3His22cyGSh1Lpp40UymjNeMBImeNl6guegHviAan5WHNZvyTAXzpk28DSIYB7bumvpgDl8
	RdjIbcALCQTcKEzIMsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0g0-0000mc-VD; Fri, 24 Apr 2020 15:55:40 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nd-0008Mm-2J; Fri, 24 Apr 2020 15:36:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 4EADC143F;
 Fri, 24 Apr 2020 11:36:38 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=101K38Nr8slMu
 6ytfVyPzyKeDL9fqloz3Tt6MezFYHA=; b=Zm9uotCHh7cuLsTCG1tSJl/Gk1iDE
 IhbYbeDtENabV94oBEH9mv4WlOZ1o/vRTJliOTVobZMB2k3ggpX+RH7FaoElu+U6
 Wl/RtS261KQ0piWWD+DDIBBvXemA2kZofXCjbwbmxUqZZZ2g5WiT1Q9mCyfHcB0q
 3KCDVXY73ourwPEkudXVJs2UMPLlg4BJjDhDn7+gZq4yh2gNvZnzIOTmXHmhWL/N
 fK8jpoR3gqL4TzkqbrZDwD8PoPSCMXxPkkuWu5uPaY0rTCpfwvQyVMnKbYf1CL4D
 UaNOeMTXV5m4MAP1ntDx7CUQx1EDTvuf73SyKoaaXpVeG9/qQrNe1QAnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=101K38Nr8slMu6ytfVyPzyKeDL9fqloz3Tt6MezFYHA=; b=EZ98LD5u
 0+I36rM5CXXlQyKC6rXPa5H5xDmHSIZdT4OxHMFvc9i9xPHljiHJwulqlKeQsoxs
 MmuUI4F9eYosSWn7qcaB8QCE6xt/V64q5/vFFxh7+cP754Bp6yGJyMSK9Zpbk5Tn
 7qx3UlONuRwoUdSyfPzjhEP2lCMYgNwYF5RKs0Anp5ljPgEAm3+1bTR22AcTMfho
 2f2HEGF5imXrMoavmZeqm4K45YUOgAsBYmXFCYEB2Z509OaV4mB9EiM37nPLH7F1
 p5bGbnuM9vCsmEnrSHpDNW3XfbJbN3kSI3oryH8CzjbHibxO4Ap1vBjuCKgtXEWX
 ZveCvvzZrGfR0g==
X-ME-Sender: <xms:hQejXnz_6uZ1Kcbzg9_y4vC0_CWZvgflwA_zDdBbTBZlm_7m7LfzSw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegjeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hQejXrGuCpEIbSJqItTZAIR1SR0NBSSbrRgr0Z94NEM5TU4fJhihyg>
 <xmx:hQejXoqViB5BX6Sr3lRqYS_uRGnK2h1BSTheBNDHLMCNFGI1yxJkgA>
 <xmx:hQejXkyLRDv_hdgUbCZ2r2dWzJ7yK_MaE0MAQfGy7VaVlRq9Obc98g>
 <xmx:hQejXkyn05wpA_bf4yPsRkark6tzynrhQ9iqb5Ha0LaaKVbqhEqnER4SAXY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 85230328005A;
 Fri, 24 Apr 2020 11:36:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 54/91] drm/vc4: crtc: Add function to compute FIFO level
 bits
Date: Fri, 24 Apr 2020 17:34:35 +0200
Message-Id: <c90c36a181a96aab9056a571f2802320791663f0.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083641_240232_ABC4B1D1 
X-CRM114-Status: UNSURE (   8.63  )
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

The longer FIFOs in vc5 pixelvalves means that the FIFO full level
doesn't fit in the original register field and that we also have a
secondary field. In order to prepare for this, let's move the registers
fill part to a helper function.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index e9d71153c6c6..d4b490e3f2b8 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -278,6 +278,15 @@ static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
 	}
 }
 
+static u32 vc4_crtc_get_fifo_full_level_bits(struct vc4_crtc *vc4_crtc,
+					     u32 format)
+{
+	u32 level = vc4_get_fifo_full_level(vc4_crtc, format);
+
+	return VC4_SET_FIELD(level & 0x3f,
+			     PV_CONTROL_FIFO_LEVEL);
+}
+
 /*
  * Returns the encoder attached to the CRTC.
  *
@@ -378,9 +387,8 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 	CRTC_WRITE(PV_HACT_ACT, mode->hdisplay * pixel_rep);
 
 	CRTC_WRITE(PV_CONTROL,
+		   vc4_crtc_get_fifo_full_level_bits(vc4_crtc, format) |
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
-		   VC4_SET_FIELD(vc4_get_fifo_full_level(vc4_crtc, format),
-				 PV_CONTROL_FIFO_LEVEL) |
 		   VC4_SET_FIELD(pixel_rep - 1, PV_CONTROL_PIXEL_REP) |
 		   PV_CONTROL_CLR_AT_START |
 		   PV_CONTROL_TRIGGER_UNDERFLOW |
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
