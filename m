Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE2816A21D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:25:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JaMR7hPosoUFTg6lqN6xl+6sBr3+cmXRdSfPi/ax2U=; b=QeQMfi2m3HC8/y
	AI1rtJQnWa+q0PY4CCMA0+59zAUnc9tKonU/F3C7SiZh2cwgfj/WoFiD3XKMU37NcQFpqpBBVG2BR
	u416YOGcw3ErlQllKX4cE2Mmz7TEUubaZHYbO5mfhRPe3tui/RgT9LLiu+CTkdjTp9WYB9W3jG5nR
	DP2U1NEkdVTaO2tflTijvF6+M/TLjZ1ha3vfqDPj9y+/QQqbIu1jmaU8wpBOVMzgCzMwlKz+E6EzX
	MfBaW1W5gGz6L3QhCdBSojXD82okoDOQDZX9RSCmw0lYnR/sapRzyPqlFPjd2YDWAiAsSfrw0aGnl
	HeMvhErBjl6SxV4JPOWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69zT-0001MX-RB; Mon, 24 Feb 2020 09:25:27 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kc-0002Bw-F9; Mon, 24 Feb 2020 09:10:09 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 542BC640;
 Mon, 24 Feb 2020 04:10:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6D5T1d7y5fxMd
 S6cnWRcbbrJasqKee8D3owRLLLLrU4=; b=pTcRE/I04R4ix2OVkDLGLJIX0Id6A
 vjodw6TlPQJvnvI9F4NIwqcsN2fkOgBwSGQCSLCmvM6PLsVdRV5OY/6c8SGPpESK
 aavZ9L1AyeJ9qUHeu8SWw03/dxkCAhZ1g2eEHa5wWzBESqa9ssbqX1H7RtbL9GQL
 pQqD+nmzbxsYN2cfUCwo0q7vDvXUJvF2QurTcqaxsppiW/TRSJU/5LP2dTqNLOJS
 0o2VvDe0/vBCTLc4U/xniSPPJqzHARI+OTHW2fFdQRKQcn63AFlB8fYpRu+FeFVz
 mg6/NG/+nhM5AF1AWFeXc8shUy/Uq02fyzwbON8baxnulQXcheftikKPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6D5T1d7y5fxMdS6cnWRcbbrJasqKee8D3owRLLLLrU4=; b=gczqBYVG
 2BZMIPNzkjV3jFcTYvtUTMobSp8zYoWzhdCDnwEuv4dPNy2TnuSkrTitNAJRZkxQ
 V1TOw7wcv+yVH0m1smtNH/4NqzeiyJdLuNKzknBljyns4WuwVgy7KYwzrEsNgeJ1
 QcQugDTOngYQDVFx/spwQihBuBS6KjhdDhiilkbwfMy6pPsNv1SgZY/NDgcJtAZv
 r9HjS2Mi/RTJGYLJl1dE+62V1UR37aSzbvIJFstofsq78iSshYtmR5CQznzsgFTx
 FV2QSnnjZ/QUpryg5QQHjloRohNQ1+LJIeLbFEEUUB9NIT/K2WRvGwXVfwOLma7W
 C1iLS0fyiB36PQ==
X-ME-Sender: <xms:6pJTXk5jF7nGfGgew3GNt77jywJ3W_GmrZSRa-z8z32fUuq43jQ_sA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepgeegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6pJTXti373Xo2X-CD8VxhYgpk2HFpzSP_FZKDESCM5SV5aeDhBYotQ>
 <xmx:6pJTXhFSxu9hNs5787_FXBTAfvL8pWGrQS1pG-pQOlW_vp_vxLfU7Q>
 <xmx:6pJTXjT1ZD4yKb1xt8nJddQzPAv--bKP5ctlp4-joggHeXXNiDA83A>
 <xmx:6pJTXtIVBAJ-3LK7qX-1Ce4RzPm1GJhQHDNgq8Taqm6e-8TG7GOObAiIUSs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8FF1430610E8;
 Mon, 24 Feb 2020 04:10:02 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 51/89] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
Date: Mon, 24 Feb 2020 10:06:53 +0100
Message-Id: <d225a3959de98632dd5a649c1fb53978adb15f31.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011007_226266_B97D307E 
X-CRM114-Status: GOOD (  12.32  )
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

The VIDEN bit in the pixelvalve currently being used to enable or disable
the pixelvalve seems to not be enough in some situations, which whill end
up with the pixelvalve stalling.

In such a case, even re-enabling VIDEN doesn't bring it back and we need to
clear the FIFO. This can only be done if the pixelvalve is disabled though.

In order to overcome this, we can configure the pixelvalve during
mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
there, and in atomic_disable disable the pixelvalve again.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index d3ff32daf60a..25add62080a1 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -374,9 +374,7 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 		   PV_CONTROL_TRIGGER_UNDERFLOW |
 		   PV_CONTROL_WAIT_HSTART |
 		   VC4_SET_FIELD(vc4_encoder->clock_select,
-				 PV_CONTROL_CLK_SELECT) |
-		   PV_CONTROL_FIFO_CLR |
-		   PV_CONTROL_EN);
+				 PV_CONTROL_CLK_SELECT));
 }
 
 static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
@@ -467,6 +465,8 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
 	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
 
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) & ~PV_CONTROL_EN);
+
 	if (HVS_READ(SCALER_DISPCTRLX(chan)) &
 	    SCALER_DISPCTRLX_ENABLE) {
 		HVS_WRITE(SCALER_DISPCTRLX(chan),
@@ -554,6 +554,10 @@ static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	require_hvs_enabled(dev);
 
+	/* Reset the PV fifo. */
+	CRTC_WRITE(PV_CONTROL, CRTC_READ(PV_CONTROL) |
+		   PV_CONTROL_FIFO_CLR | PV_CONTROL_EN);
+
 	/* Enable vblank irq handling before crtc is started otherwise
 	 * drm_crtc_get_vblank() fails in vc4_crtc_update_dlist().
 	 */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
