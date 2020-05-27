Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB2B1E49A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sSSnPyw0BtFbUcKdfGIPGwlkumX7DchOmuCJ8BhPJc=; b=pqP/tyFu2hWbUT
	ZaHnIyr+9A18vGefKuivgyjrSTydILT3tRWhI62XFWMfWDq0MQFMXNmslP70Us4AAyxOd6nD+Qbce
	5F41YSre4c3UT9SaqP8rRvkb/aiUxfeq7GEOpHm1F5sWV6ZaaiDl6ZDfz+lMhCyl5dB/ZD2EnReoz
	YQXupKGPN5vvrMd8yIVoiJ+ak5AA92g7k0s1wSh0AtE/Zh8vGHha891DS+CZMdkvLPB9/p8aSqryR
	Yp4QkP+4FmYLrjCHegGmgFEDiiuB9DyVOQNX38JB/1PwXOjCYm0CMK2M3e7YihrNxk2s22YHGzqIk
	RySC/MwCRl+5/xOXK1dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdykY-0007aE-FW; Wed, 27 May 2020 16:17:50 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKI-0000ro-97; Wed, 27 May 2020 15:50:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B22DF5820A9;
 Wed, 27 May 2020 11:50:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=wpVt7MhIxZsbZ
 JMkpP4mIlyTyjudls9LyuYdKN3Ljp4=; b=pnj2XnLV96vUGilZPa4JnZ59m5qvs
 vfEmbfg53mUOazvOm7q8TT8HKUeOIACR7CUp86wOuSUWvmS5hWn9xPdmKSk2f5Lz
 zheK/SZpKXrDNThMXn4v0MPYxpnrKQtPFJbmSFMWzEj5juNz8YCqMHmuYD4KhUEq
 1tIGAeGo2Sn3uNIv8tULGuRs93MPiMry34jrrhCfQAJRJzJc0VHg7eADkAGS3dHr
 vadOW6LmH8Z5uK7Q92ZzEgMt+l44uHNrb4MzCFRwJpWmjQ3dwUVPOPyyPqiSxpEN
 mfNiN3MFQTsLFXixOrFqEe3h8j8Z6yl+rZtTXRJJuMGgkY7tlmUWT8BTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=wpVt7MhIxZsbZJMkpP4mIlyTyjudls9LyuYdKN3Ljp4=; b=WyG1EDus
 g6P+LEd/6ZqvkOfmoS1+tf42JZdYw4c/9iYCaCfcbqMMGxZYHFHp8bker3VN+uqy
 kgA2bR25bUPwGisCcnbvkZG0EucZ2i75TjS25SJ2o+3ppbdb63796omM3Cn8HL8u
 Ms4nsZ+oybj5o9g+8VeHRISHyLWRceUHLbh8pi52vxRdg+84CRqWpMBVrA6j+PsQ
 GLQR0LdXb5fUuR7AxEgXqhn38zdo1jgCweXBmgLEA9rU3oxbodtXBV81cCRf2gKM
 PaXma7LvVrC+IKv7GsX+aHofu/BYC0py2YnVh+lI/FPp+eNnl6eq1JqxZjnnHmrV
 8PYZufwO9PVqlw==
X-ME-Sender: <xms:T4zOXjv6_gfKCs-FHi_8abZfC8vEhx5VPPxT2s4q7X8cEbCGM66fhw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:T4zOXkepu5zGh28UOokfTghtI9Ii2sHm3Riyb1S4rJVNxZQeo54sVg>
 <xmx:T4zOXmw10ewjiPpBds_kNOxDvJsQz3IKyYS9wcoguGMkeDo-7-_M5A>
 <xmx:T4zOXiMzhvfSmIaQjgDuPmXv1aFApUwLaQJZEdm6zG9_jm9OzqnSCg>
 <xmx:T4zOXkMTjolr2Wl7PXWFBOJfGlS_JqTjQVZVf0zFMPjcPy5lPwkglg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 54DC93280059;
 Wed, 27 May 2020 11:50:39 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 052/105] drm/vc4: crtc: Clear the PixelValve FIFO on disable
Date: Wed, 27 May 2020 17:48:22 +0200
Message-Id: <9153ce3f0281d57de817a3c8ea0f12530212808b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085042_890956_CD3399F8 
X-CRM114-Status: UNSURE (   9.84  )
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

In order to avoid a stale pixel getting stuck on mode change or a disable
/ enable cycle, we need to make sure to flush the PV FIFO on disable.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index dee8dc7b9409..61e0945a8697 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -406,8 +406,7 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	if (vc4_encoder->post_crtc_disable)
 		vc4_encoder->post_crtc_disable(encoder);
 
-	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) & ~PV_CONTROL_EN);
-
+	vc4_crtc_pixelvalve_reset(crtc);
 	vc4_hvs_atomic_disable(crtc, old_state);
 
 	if (vc4_encoder->post_crtc_powerdown)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
