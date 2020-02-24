Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2475B16A214
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lv4XYcc8mOJd6MgKKH5qRr3OZFpg3pXLtHZB77FzzOM=; b=uzC4zH6bTPzSDZ
	wgMjARP8shkjbYTkuHJ0WsM59YpVZ+pLhDoYhNcIq8flbHrE670Juj+kHpihmHLmIwxSaAc6c1OJ+
	YDx0qh2rOQx/QZdXtRHdtSTgwebUfVgy2U6WjDZ1wsqatgq83ULuQcgFc61nRNwoO/8vhMyaYQZCJ
	s1bVmcBUfwWpk4oeOwSIE/tQFBGZdy1FLbFKB7Q0rtJarPa1vRXtwf4JiGY9tffPaMX5f5YkZ+Cez
	LG6f8S0l0DlCnxu1sqOhgMSH6i2h0uSbF7XRtm9JEgU20xfXJI1K09q9CdNA98AcNzWvK7b+QvdDP
	Y75htiKksjd9PKXjxaNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69xV-0006e8-7s; Mon, 24 Feb 2020 09:23:25 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kN-0001xT-S5; Mon, 24 Feb 2020 09:09:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 6935F646;
 Mon, 24 Feb 2020 04:09:50 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=9mEUX3JTKIXai
 djsl4GaUltJZBx/cUEhlnrgcGdx8Vg=; b=t01965Aw9Ztbh5zRB6jrJ3xQ193Bi
 wDM5jiBYoaquIhcMj0nNtqBpV9Sbw79qc2xcbiQqAzzGEsyu/SUaEgnBdA+kGi/M
 xNjSw8v+40hZQntUNF1hPydKeeZeqzDWJGeUMPn0L18y/A0qElBu08nXvfW9n/q4
 HY6kmXdHWa7RDLoKA+JaZJ0sHOgJB2/F0Ne96lKBN+Hgkgt3vLR8L1gQKOu9LF81
 nP4FLeszt+CJkC0mEuMxcMJmh2zJmLChEjJUZEW0xbB7c0bVOKWWTI8nfjL29Psc
 o2QjsNGcYxr5MIhVHDwfM26ifbF/bDyvvXRiCjaOGE2Pv5q6CtKCog7xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=9mEUX3JTKIXaidjsl4GaUltJZBx/cUEhlnrgcGdx8Vg=; b=mtD5L2cS
 0M765OqpAW/w7F6gfzcukcSPyEQpgoWYSLp1Pt0r23SUwufU8fwPPQB1ivrdStv2
 ik+eoWym5a0Fqoh8ryf1qdpLJVCey9fa7Q+LZzZ0Wt0Q6lSR/HmH60EX1yf3YwqU
 YZVUax9weXebRPfA5XNwpDgnLGhn+cstsMICuyvNVumRr58T8+LzZkwsFV0ltmIt
 sVuHbfUK+Tku3CgKLwvXoOdW7zZ1H9jXxvYVriF3zGL38YGxE0tfy/vcktScYscW
 AcMhq1WuVQnYI8Cl8zZj12LoKYXULsMxvmzax6CZfEJSn7deO/7zHaWpGAm0DmLc
 LkSisW7rcnkLaA==
X-ME-Sender: <xms:3ZJTXipeQpt4qy3_XTEfozr-1vxbYqFrpqZC7SJcNftM0Mx759gyoA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfeehnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:3ZJTXs_APricRYQGOL6zxIBrb2sf1tZgeFhmsyhTSrncYDxOwP5bIg>
 <xmx:3ZJTXp8bxSOnVgGIqw4AMVjs-HSAnN_xereN5UQCrBGlNOveyysTQQ>
 <xmx:3ZJTXjs85YLXvbIQMSUEH8ae5Y9Byx7VfPKttkO6WZGZ3iRNb-XM4Q>
 <xmx:3pJTXioSmuwETcrB_JlKLecmZ1sGFGP8BFMRazi3N2u66bcvbOqI5YaF0W8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A87B4328005D;
 Mon, 24 Feb 2020 04:09:49 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 42/89] drm/vc4: plane: Create more planes
Date: Mon, 24 Feb 2020 10:06:44 +0100
Message-Id: <551ec34a673f930262bf5fefe7a5e3616cbb1e7a.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010952_325457_4AF62EC2 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Let's now create more planes that can be affected to all the CRTCs.

vc4 has 3 CRTCs, 1 primary and 1 cursor each, and was having 24 (8
planes per CRTC) overlays.

However, vc5 has 5 CRTCs, so keeping the same logic would put us at 50
planes which is well above the 32 planes limit imposed by DRM.

Using 16 seems like a good tradeoff between staying under 32 and yet
providing enough planes.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index ea1d848aad14..49278bccdae0 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1387,7 +1387,7 @@ int vc4_plane_create_additional_planes(struct drm_device *drm)
 	 * modest number of planes to expose, that should hopefully
 	 * still cover any sane usecase.
 	 */
-	for (i = 0; i < 8; i++) {
+	for (i = 0; i < 16; i++) {
 		struct drm_plane *plane =
 			vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
