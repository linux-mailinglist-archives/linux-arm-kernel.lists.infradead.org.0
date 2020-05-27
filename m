Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227521E4954
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnvw5R1h1e9xvRGnkIjTmAGxqqMeDNzdmABESXlx8Oc=; b=mDoYck/4+QFzpA
	0dAOrvZr3AxalBgSBVOt4B9PyjvwFwbMdMO8ouiounPKR1/VzmGam7KWR1ybG70/TzTAaKfDeCuY4
	B0MmNHPBlUYga4i6uEtGB24+yMQ0rRMEnl9pK95p9uUPfgjMhQVTPMnU+iWi60lwQ1VjGK6KbRQan
	nlsPlBF7s3oQ020dvPtafiwaFLB1MuJRnLNsO1Ex/irlpyzJ5/eZ2rkzCu3c3v6V7vHHQP+wxfa+V
	wOi8ZGkm8I9YtgO4S2LCfEWrun7U7ZLRtbb5jcykgWhk7pncyGnER9k84bRS3HzRYrEuda5kijpP1
	TDgEw/UKPnfOKY8jDNdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyb5-0003JB-Jt; Wed, 27 May 2020 16:08:03 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJX-0006NH-G5; Wed, 27 May 2020 15:49:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5E5CC58203B;
 Wed, 27 May 2020 11:49:54 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=TRM6X4G5yvAqt
 +dJj7RIy+HHWn9k6iwxRb21u0ULa7A=; b=vLOvYNlqIOnZzt3gzwvw+h/q7oSO7
 N3b6FCRPQNWBBWfzFjaqSlmZmA8f2rS3WNN0jNpDyCkxT960aAv//iQbZc6Y1nfn
 4IFgHMrdj2Ji1XU3PKqOWm4JtkUQPXlVTAYE1sFbV3/f543anCjaJxD89EG9jmDD
 GLsAMKSo5WPtGBxLnOTSIxeRRysNUBMUSYtpkTjAaqZZkMNclnmrLQdgIxx4KRBK
 Av7MFsACa4/gNwyS1GbZvCsi7cMxfDD1/3b75vHzpZ9isEFSQH+HqaoAkB/OOT8X
 UW2hxaJFzl1WHBMsWdhRCh7Eis7F/2WEBd8uJzUADT782SJHCt+qccHYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=TRM6X4G5yvAqt+dJj7RIy+HHWn9k6iwxRb21u0ULa7A=; b=yQipRvmp
 FTGI469+E50yNwt8QK0Oq7C4vx/y+b669MY0NfBurwZLQfqSTVKc/P9oyBmc+cO0
 w1SOs2Q0z0ZFYfmz/86TZISsYT28aJu/j52vikxcQJs+SIwSiJQKxYFims8pEOO2
 t2LvVlanUineDOL8pDru4sq+rkDUTH2kZBd677YpebWHhDF/AVBQ09kI6rnWtQ/G
 jKzX1WUmqEJTowy/d2ILpmOF8qxN5drGMVXvseOmVvkcuiOCBhX4651C5AsvHzQd
 JwXJal8s+ltidOTkp9//HuSvYbzevvEtQyctgYqKUIMqARGsWiMsGZuOgUteZWlM
 4UtdF9QCIOHbbw==
X-ME-Sender: <xms:IozOXhk5sn-x8hHuZwpHJhsyhEevtbyEhdh7IdHQ0nJY4Qefg1k0Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IozOXs3hMBfbD7sPUcOAUHE61jJ1KlirWg2TPm9Y3K1ElYkc1PI1vg>
 <xmx:IozOXnqqCrH8b870EhDINuxQ421bFNkE9-K-Ch3U67q1Z7zujMpk2g>
 <xmx:IozOXhmeDzBkwG7Rw7mArJgk9xNhh7UGdm_ikUioDyLJMPhQ5mfH2Q>
 <xmx:IozOXkl5emjGhIWdFC54yor6rVcKPa22k5Soc0Q7svSrCdjyAUpaaQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F287F328005A;
 Wed, 27 May 2020 11:49:53 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 024/105] drm/vc4: crtc: Move crtc state to common header
Date: Wed, 27 May 2020 17:47:54 +0200
Message-Id: <1e6e563f9c75961e2885c9d648a3130d3b46b6d1.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084955_715275_B183C4FB 
X-CRM114-Status: UNSURE (   8.69  )
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

We'll need to access the crtc_state from outside of vc4_crtc.c, so let's
move it to vc4_drv.h

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 21 ---------------------
 drivers/gpu/drm/vc4/vc4_drv.h  | 21 +++++++++++++++++++++
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index b668bb8d060c..db056dfe14df 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -44,27 +44,6 @@
 #include "vc4_drv.h"
 #include "vc4_regs.h"
 
-struct vc4_crtc_state {
-	struct drm_crtc_state base;
-	/* Dlist area for this CRTC configuration. */
-	struct drm_mm_node mm;
-	bool feed_txp;
-	bool txp_armed;
-
-	struct {
-		unsigned int left;
-		unsigned int right;
-		unsigned int top;
-		unsigned int bottom;
-	} margins;
-};
-
-static inline struct vc4_crtc_state *
-to_vc4_crtc_state(struct drm_crtc_state *crtc_state)
-{
-	return (struct vc4_crtc_state *)crtc_state;
-}
-
 #define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
 #define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 80633c488b04..329185a53a79 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -486,6 +486,27 @@ to_vc4_crtc(struct drm_crtc *crtc)
 	return (struct vc4_crtc *)crtc;
 }
 
+struct vc4_crtc_state {
+	struct drm_crtc_state base;
+	/* Dlist area for this CRTC configuration. */
+	struct drm_mm_node mm;
+	bool feed_txp;
+	bool txp_armed;
+
+	struct {
+		unsigned int left;
+		unsigned int right;
+		unsigned int top;
+		unsigned int bottom;
+	} margins;
+};
+
+static inline struct vc4_crtc_state *
+to_vc4_crtc_state(struct drm_crtc_state *crtc_state)
+{
+	return (struct vc4_crtc_state *)crtc_state;
+}
+
 #define V3D_READ(offset) readl(vc4->v3d->regs + offset)
 #define V3D_WRITE(offset, val) writel(val, vc4->v3d->regs + offset)
 #define HVS_READ(offset) readl(vc4->hvs->regs + offset)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
