Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A143716A26C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6NfpiN8MJhacTU2D+5/kBIRTHPjAVyj3EM5vj/xOZsc=; b=GAsifKxz4rMxNh
	uKX306q+RNLtRjlaNOosl2LQlvVACMX/wzEntCAENJMlJ3W07mj/SCj/GeP2xc4+8+04Z/2vK3GeV
	MysXZMH6KmYR+eGCDwQUN/qFsnr0J9hBIiifz/HP1NzdzyBvlX6cf/4QQej+yUG/KWwIuUQ/RhaH9
	03pwkO/aZw62TfsK09+NXgZ2ZPoQTa+a+XkijQ5/lY3aoRMiQ3WVet3+aUgXrpZIZyNbzFHAyjzvR
	wBt8VxT3p+wQ2+Y8f/INB/iiuYHlI632s8B6IAnwqrF6LK75LAk8pwIuZeqBSOSoTCmglpaLtc+3q
	UZJfV3/ZuPWZ4jTWs5NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AA6-0005XU-Lb; Mon, 24 Feb 2020 09:36:26 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69l7-0003jG-N5; Mon, 24 Feb 2020 09:10:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 31004640;
 Mon, 24 Feb 2020 04:10:35 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=EtfOWtqL7jAVv
 RTRBc+tdEemu4HY2pmUbrLYIe2HoCg=; b=PFGTDVn1m1Uyu+1DLE4uJAjp3OsQj
 31BOHZSdAElUdnnTsqbFM5ouomClao18IV4i6u1ML6h+6gby3f3JLESwvgEtZMgZ
 g9VeoeH5MMBjE/k+cBseE8jbP+jVHlzHmlc05kSWxigPE1UruMel9WpVx0oA9C1r
 2PFvPt5UpzIUaLB5I6fV3md24WW5F/AuXhgiUmHB95rUACEVkOnjlPpXHTxpIdAW
 04vslVARqTJTCBpyy1eacu7g1RvNnbiMLamaozBFg7pGn9glb26svV1QxHVAVS+5
 PojORwalV9/+OWJlenvz1mhVSE/tc08H3Dy/JLP2PJ50gyW6Jqy6vqtyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=EtfOWtqL7jAVvRTRBc+tdEemu4HY2pmUbrLYIe2HoCg=; b=bBoARGOM
 LpPu7Rp0KykfNn6pEXeWck4SEjDWDPJXPYtmPKMc9bAe4hVx8IIBi80UG2ZLkk50
 L2+nY1iyES8le5tByClK4CROeb5XFzLPfAhpNNu3Vf9L08Cq8DmkLezcVJUnsQ0I
 4GgtqCUfAfEder7cFgAbyV3A6hkqqEvPKHK3w3Y4eiGOQ2TK5rERcvl3ZOB0uKVV
 2zGk1ox/zZwu9g+R30wbg29uGkVMlo+OhdlDWfVqaAb48sj8c0Zp6Ff8NlDV5xGg
 FObQAweNrXpiost63nc87kdFxztN378ieK2xH4rcrXySJV5LcNRGf6wSIhI5BmXR
 FzrMA344cknvmg==
X-ME-Sender: <xms:CpNTXo_5_IH0472nfussg9tbJy3kmpghDpDJm4pJhTEyFXYmPCpr5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepuddunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CpNTXnoZpMcpA80QdlSG80lbsz3LoxMyPsAkEnbDU73l7ocs3DD_9A>
 <xmx:CpNTXjHHKWp50nmiE1yvK7pokzkupoTJsxxuBTqx4ZFFgToH3oZ9-Q>
 <xmx:CpNTXvkNogAh8f71B0NY89AGOyKO_0jJTSUkUS93OCp9hPo9I7lSzg>
 <xmx:CpNTXqn8VRLF0B7R3unrZIIQjtXZarlGNdi5yoflRYvSLB3moc17Zc8fpmk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 515D83060BD1;
 Mon, 24 Feb 2020 04:10:34 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 73/89] drm/vc4: hdmi: Implement a register layout abstraction
Date: Mon, 24 Feb 2020 10:07:15 +0100
Message-Id: <90ace4b6a237442722ea702219ddd7f07f8a987b.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011038_539763_3A7479EB 
X-CRM114-Status: GOOD (  14.76  )
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

The HDMI controllers found in the BCM2711 have most of the registers
reorganized in multiple registers areas and at different offsets than
previously found.

The logic however remains pretty much the same, so it doesn't really make
sense to create a whole new driver and we should share the code as much as
possible.

Let's implement some indirection to wrap around a register and depending on
the variant will lookup the associated register on that particular variant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c      | 354 ++++++++++++++---------------
 drivers/gpu/drm/vc4/vc4_hdmi.h      |  13 +-
 drivers/gpu/drm/vc4/vc4_hdmi_regs.h | 244 ++++++++++++++++++++-
 drivers/gpu/drm/vc4/vc4_regs.h      |  92 +--------
 4 files changed, 432 insertions(+), 271 deletions(-)
 create mode 100644 drivers/gpu/drm/vc4/vc4_hdmi_regs.h

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index a982ce8b901d..0e8cf0eb1891 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -49,62 +49,13 @@
 #include "media/cec.h"
 #include "vc4_drv.h"
 #include "vc4_hdmi.h"
+#include "vc4_hdmi_regs.h"
 #include "vc4_regs.h"
 
 #define HSM_CLOCK_FREQ 163682864
 #define CEC_CLOCK_FREQ 40000
 #define CEC_CLOCK_DIV  (HSM_CLOCK_FREQ / CEC_CLOCK_FREQ)
 
-static const struct debugfs_reg32 hdmi_regs[] = {
-	VC4_REG32(VC4_HDMI_CORE_REV),
-	VC4_REG32(VC4_HDMI_SW_RESET_CONTROL),
-	VC4_REG32(VC4_HDMI_HOTPLUG_INT),
-	VC4_REG32(VC4_HDMI_HOTPLUG),
-	VC4_REG32(VC4_HDMI_MAI_CHANNEL_MAP),
-	VC4_REG32(VC4_HDMI_MAI_CONFIG),
-	VC4_REG32(VC4_HDMI_MAI_FORMAT),
-	VC4_REG32(VC4_HDMI_AUDIO_PACKET_CONFIG),
-	VC4_REG32(VC4_HDMI_RAM_PACKET_CONFIG),
-	VC4_REG32(VC4_HDMI_HORZA),
-	VC4_REG32(VC4_HDMI_HORZB),
-	VC4_REG32(VC4_HDMI_FIFO_CTL),
-	VC4_REG32(VC4_HDMI_SCHEDULER_CONTROL),
-	VC4_REG32(VC4_HDMI_VERTA0),
-	VC4_REG32(VC4_HDMI_VERTA1),
-	VC4_REG32(VC4_HDMI_VERTB0),
-	VC4_REG32(VC4_HDMI_VERTB1),
-	VC4_REG32(VC4_HDMI_TX_PHY_RESET_CTL),
-	VC4_REG32(VC4_HDMI_TX_PHY_CTL0),
-
-	VC4_REG32(VC4_HDMI_CEC_CNTRL_1),
-	VC4_REG32(VC4_HDMI_CEC_CNTRL_2),
-	VC4_REG32(VC4_HDMI_CEC_CNTRL_3),
-	VC4_REG32(VC4_HDMI_CEC_CNTRL_4),
-	VC4_REG32(VC4_HDMI_CEC_CNTRL_5),
-	VC4_REG32(VC4_HDMI_CPU_STATUS),
-	VC4_REG32(VC4_HDMI_CPU_MASK_STATUS),
-
-	VC4_REG32(VC4_HDMI_CEC_RX_DATA_1),
-	VC4_REG32(VC4_HDMI_CEC_RX_DATA_2),
-	VC4_REG32(VC4_HDMI_CEC_RX_DATA_3),
-	VC4_REG32(VC4_HDMI_CEC_RX_DATA_4),
-	VC4_REG32(VC4_HDMI_CEC_TX_DATA_1),
-	VC4_REG32(VC4_HDMI_CEC_TX_DATA_2),
-	VC4_REG32(VC4_HDMI_CEC_TX_DATA_3),
-	VC4_REG32(VC4_HDMI_CEC_TX_DATA_4),
-};
-
-static const struct debugfs_reg32 hd_regs[] = {
-	VC4_REG32(VC4_HD_M_CTL),
-	VC4_REG32(VC4_HD_MAI_CTL),
-	VC4_REG32(VC4_HD_MAI_THR),
-	VC4_REG32(VC4_HD_MAI_FMT),
-	VC4_REG32(VC4_HD_MAI_SMP),
-	VC4_REG32(VC4_HD_VID_CTL),
-	VC4_REG32(VC4_HD_CSC_CTL),
-	VC4_REG32(VC4_HD_FRAME_COUNT),
-};
-
 static int vc4_hdmi_debugfs_regs(struct seq_file *m, void *unused)
 {
 	struct drm_info_node *node = (struct drm_info_node *)m->private;
@@ -133,7 +84,7 @@ vc4_hdmi_connector_detect(struct drm_connector *connector, bool force)
 	if (drm_probe_ddc(vc4_hdmi->ddc))
 		return connector_status_connected;
 
-	if (HDMI_READ(VC4_HDMI_HOTPLUG) & VC4_HDMI_HOTPLUG_CONNECTED)
+	if (HDMI_READ(HDMI_HOTPLUG) & VC4_HDMI_HOTPLUG_CONNECTED)
 		return connector_status_connected;
 	cec_phys_addr_invalidate(vc4_hdmi->cec_adap);
 	return connector_status_disconnected;
@@ -231,10 +182,10 @@ static int vc4_hdmi_stop_packet(struct drm_encoder *encoder,
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	u32 packet_id = type - 0x80;
 
-	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
-		   HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) & ~BIT(packet_id));
+	HDMI_WRITE(HDMI_RAM_PACKET_CONFIG,
+		   HDMI_READ(HDMI_RAM_PACKET_CONFIG) & ~BIT(packet_id));
 
-	return wait_for(!(HDMI_READ(VC4_HDMI_RAM_PACKET_STATUS) &
+	return wait_for(!(HDMI_READ(HDMI_RAM_PACKET_STATUS) &
 			  BIT(packet_id)), 100);
 }
 
@@ -243,12 +194,16 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 {
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	u32 packet_id = frame->any.type - 0x80;
-	u32 packet_reg = VC4_HDMI_RAM_PACKET(packet_id);
+	const struct vc4_hdmi_register *ram_packet_start =
+		&vc4_hdmi->variant->registers[HDMI_RAM_PACKET_START];
+	u32 packet_reg = ram_packet_start->offset + VC4_HDMI_PACKET_STRIDE * packet_id;
+	void __iomem *base = __vc4_hdmi_get_field_base(vc4_hdmi,
+						       ram_packet_start->reg);
 	uint8_t buffer[VC4_HDMI_PACKET_STRIDE];
 	ssize_t len, i;
 	int ret;
 
-	WARN_ONCE(!(HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) &
+	WARN_ONCE(!(HDMI_READ(HDMI_RAM_PACKET_CONFIG) &
 		    VC4_HDMI_RAM_PACKET_ENABLE),
 		  "Packet RAM has to be on to store the packet.");
 
@@ -263,23 +218,23 @@ static void vc4_hdmi_write_infoframe(struct drm_encoder *encoder,
 	}
 
 	for (i = 0; i < len; i += 7) {
-		HDMI_WRITE(packet_reg,
-			   buffer[i + 0] << 0 |
-			   buffer[i + 1] << 8 |
-			   buffer[i + 2] << 16);
+		writel(buffer[i + 0] << 0 |
+		       buffer[i + 1] << 8 |
+		       buffer[i + 2] << 16,
+		       base + packet_reg);
 		packet_reg += 4;
 
-		HDMI_WRITE(packet_reg,
-			   buffer[i + 3] << 0 |
-			   buffer[i + 4] << 8 |
-			   buffer[i + 5] << 16 |
-			   buffer[i + 6] << 24);
+		writel(buffer[i + 3] << 0 |
+		       buffer[i + 4] << 8 |
+		       buffer[i + 5] << 16 |
+		       buffer[i + 6] << 24,
+		       base + packet_reg);
 		packet_reg += 4;
 	}
 
-	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
-		   HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) | BIT(packet_id));
-	ret = wait_for((HDMI_READ(VC4_HDMI_RAM_PACKET_STATUS) &
+	HDMI_WRITE(HDMI_RAM_PACKET_CONFIG,
+		   HDMI_READ(HDMI_RAM_PACKET_CONFIG) | BIT(packet_id));
+	ret = wait_for((HDMI_READ(HDMI_RAM_PACKET_STATUS) &
 			BIT(packet_id)), 100);
 	if (ret)
 		DRM_ERROR("Failed to wait for infoframe to start: %d\n", ret);
@@ -357,11 +312,11 @@ static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	int ret;
 
-	HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG, 0);
+	HDMI_WRITE(HDMI_RAM_PACKET_CONFIG, 0);
 
-	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0xf << 16);
-	HD_WRITE(VC4_HD_VID_CTL,
-		 HD_READ(VC4_HD_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL, 0xf << 16);
+	HDMI_WRITE(HDMI_VID_CTL,
+		   HDMI_READ(HDMI_VID_CTL) & ~VC4_HD_VID_CTL_ENABLE);
 
 	clk_disable_unprepare(vc4_hdmi->pixel_clock);
 
@@ -416,18 +371,18 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		return;
 	}
 
-	HDMI_WRITE(VC4_HDMI_SW_RESET_CONTROL,
+	HDMI_WRITE(HDMI_SW_RESET_CONTROL,
 		   VC4_HDMI_SW_RESET_HDMI |
 		   VC4_HDMI_SW_RESET_FORMAT_DETECT);
 
-	HDMI_WRITE(VC4_HDMI_SW_RESET_CONTROL, 0);
+	HDMI_WRITE(HDMI_SW_RESET_CONTROL, 0);
 
 	/* PHY should be in reset, like
 	 * vc4_hdmi_encoder_disable() does.
 	 */
-	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0xf << 16);
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL, 0xf << 16);
 
-	HDMI_WRITE(VC4_HDMI_TX_PHY_RESET_CTL, 0);
+	HDMI_WRITE(HDMI_TX_PHY_RESET_CTL, 0);
 
 	if (debug_dump_regs) {
 		struct drm_printer p = drm_info_printer(&vc4_hdmi->pdev->dev);
@@ -437,20 +392,20 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		drm_print_regset32(&p, &vc4_hdmi->hd_regset);
 	}
 
-	HD_WRITE(VC4_HD_VID_CTL, 0);
+	HDMI_WRITE(HDMI_VID_CTL, 0);
 
-	HDMI_WRITE(VC4_HDMI_SCHEDULER_CONTROL,
-		   HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) |
+	HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
+		   HDMI_READ(HDMI_SCHEDULER_CONTROL) |
 		   VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT |
 		   VC4_HDMI_SCHEDULER_CONTROL_IGNORE_VSYNC_PREDICTS);
 
-	HDMI_WRITE(VC4_HDMI_HORZA,
+	HDMI_WRITE(HDMI_HORZA,
 		   (vsync_pos ? VC4_HDMI_HORZA_VPOS : 0) |
 		   (hsync_pos ? VC4_HDMI_HORZA_HPOS : 0) |
 		   VC4_SET_FIELD(mode->hdisplay * pixel_rep,
 				 VC4_HDMI_HORZA_HAP));
 
-	HDMI_WRITE(VC4_HDMI_HORZB,
+	HDMI_WRITE(HDMI_HORZB,
 		   VC4_SET_FIELD((mode->htotal -
 				  mode->hsync_end) * pixel_rep,
 				 VC4_HDMI_HORZB_HBP) |
@@ -461,13 +416,13 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 				  mode->hdisplay) * pixel_rep,
 				 VC4_HDMI_HORZB_HFP));
 
-	HDMI_WRITE(VC4_HDMI_VERTA0, verta);
-	HDMI_WRITE(VC4_HDMI_VERTA1, verta);
+	HDMI_WRITE(HDMI_VERTA0, verta);
+	HDMI_WRITE(HDMI_VERTA1, verta);
 
-	HDMI_WRITE(VC4_HDMI_VERTB0, vertb_even);
-	HDMI_WRITE(VC4_HDMI_VERTB1, vertb);
+	HDMI_WRITE(HDMI_VERTB0, vertb_even);
+	HDMI_WRITE(HDMI_VERTB1, vertb);
 
-	HD_WRITE(VC4_HD_VID_CTL,
+	HDMI_WRITE(HDMI_VID_CTL,
 		 (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
 		 (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 
@@ -492,21 +447,21 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		csc_ctl |= VC4_SET_FIELD(VC4_HD_CSC_CTL_MODE_CUSTOM,
 					 VC4_HD_CSC_CTL_MODE);
 
-		HD_WRITE(VC4_HD_CSC_12_11, (0x000 << 16) | 0x000);
-		HD_WRITE(VC4_HD_CSC_14_13, (0x100 << 16) | 0x6e0);
-		HD_WRITE(VC4_HD_CSC_22_21, (0x6e0 << 16) | 0x000);
-		HD_WRITE(VC4_HD_CSC_24_23, (0x100 << 16) | 0x000);
-		HD_WRITE(VC4_HD_CSC_32_31, (0x000 << 16) | 0x6e0);
-		HD_WRITE(VC4_HD_CSC_34_33, (0x100 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_12_11, (0x000 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_14_13, (0x100 << 16) | 0x6e0);
+		HDMI_WRITE(HDMI_CSC_22_21, (0x6e0 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_24_23, (0x100 << 16) | 0x000);
+		HDMI_WRITE(HDMI_CSC_32_31, (0x000 << 16) | 0x6e0);
+		HDMI_WRITE(HDMI_CSC_34_33, (0x100 << 16) | 0x000);
 		vc4_encoder->limited_rgb_range = true;
 	} else {
 		vc4_encoder->limited_rgb_range = false;
 	}
 
 	/* The RGB order applies even when CSC is disabled. */
-	HD_WRITE(VC4_HD_CSC_CTL, csc_ctl);
+	HDMI_WRITE(HDMI_CSC_CTL, csc_ctl);
 
-	HDMI_WRITE(VC4_HDMI_FIFO_CTL, VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N);
+	HDMI_WRITE(HDMI_FIFO_CTL, VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N);
 
 	if (debug_dump_regs) {
 		struct drm_printer p = drm_info_printer(&vc4_hdmi->pdev->dev);
@@ -516,30 +471,30 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 		drm_print_regset32(&p, &vc4_hdmi->hd_regset);
 	}
 
-	HD_WRITE(VC4_HD_VID_CTL,
-		 HD_READ(VC4_HD_VID_CTL) |
-		 VC4_HD_VID_CTL_ENABLE |
-		 VC4_HD_VID_CTL_UNDERFLOW_ENABLE |
-		 VC4_HD_VID_CTL_FRAME_COUNTER_RESET);
+	HDMI_WRITE(HDMI_VID_CTL,
+		   HDMI_READ(HDMI_VID_CTL) |
+		   VC4_HD_VID_CTL_ENABLE |
+		   VC4_HD_VID_CTL_UNDERFLOW_ENABLE |
+		   VC4_HD_VID_CTL_FRAME_COUNTER_RESET);
 
 	if (vc4_encoder->hdmi_monitor) {
-		HDMI_WRITE(VC4_HDMI_SCHEDULER_CONTROL,
-			   HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) |
+		HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
+			   HDMI_READ(HDMI_SCHEDULER_CONTROL) |
 			   VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI);
 
-		ret = wait_for(HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) &
+		ret = wait_for(HDMI_READ(HDMI_SCHEDULER_CONTROL) &
 			       VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE, 1000);
 		WARN_ONCE(ret, "Timeout waiting for "
 			  "VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\n");
 	} else {
-		HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
-			   HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) &
+		HDMI_WRITE(HDMI_RAM_PACKET_CONFIG,
+			   HDMI_READ(HDMI_RAM_PACKET_CONFIG) &
 			   ~(VC4_HDMI_RAM_PACKET_ENABLE));
-		HDMI_WRITE(VC4_HDMI_SCHEDULER_CONTROL,
-			   HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) &
+		HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
+			   HDMI_READ(HDMI_SCHEDULER_CONTROL) &
 			   ~VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI);
 
-		ret = wait_for(!(HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) &
+		ret = wait_for(!(HDMI_READ(HDMI_SCHEDULER_CONTROL) &
 				 VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE), 1000);
 		WARN_ONCE(ret, "Timeout waiting for "
 			  "!VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE\n");
@@ -548,31 +503,31 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	if (vc4_encoder->hdmi_monitor) {
 		u32 drift;
 
-		WARN_ON(!(HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) &
+		WARN_ON(!(HDMI_READ(HDMI_SCHEDULER_CONTROL) &
 			  VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE));
-		HDMI_WRITE(VC4_HDMI_SCHEDULER_CONTROL,
-			   HDMI_READ(VC4_HDMI_SCHEDULER_CONTROL) |
+		HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
+			   HDMI_READ(HDMI_SCHEDULER_CONTROL) |
 			   VC4_HDMI_SCHEDULER_CONTROL_VERT_ALWAYS_KEEPOUT);
 
-		HDMI_WRITE(VC4_HDMI_RAM_PACKET_CONFIG,
+		HDMI_WRITE(HDMI_RAM_PACKET_CONFIG,
 			   VC4_HDMI_RAM_PACKET_ENABLE);
 
 		vc4_hdmi_set_infoframes(encoder);
 
-		drift = HDMI_READ(VC4_HDMI_FIFO_CTL);
+		drift = HDMI_READ(HDMI_FIFO_CTL);
 		drift &= VC4_HDMI_FIFO_VALID_WRITE_MASK;
 
-		HDMI_WRITE(VC4_HDMI_FIFO_CTL,
+		HDMI_WRITE(HDMI_FIFO_CTL,
 			   drift & ~VC4_HDMI_FIFO_CTL_RECENTER);
-		HDMI_WRITE(VC4_HDMI_FIFO_CTL,
+		HDMI_WRITE(HDMI_FIFO_CTL,
 			   drift | VC4_HDMI_FIFO_CTL_RECENTER);
 		usleep_range(1000, 1100);
-		HDMI_WRITE(VC4_HDMI_FIFO_CTL,
+		HDMI_WRITE(HDMI_FIFO_CTL,
 			   drift & ~VC4_HDMI_FIFO_CTL_RECENTER);
-		HDMI_WRITE(VC4_HDMI_FIFO_CTL,
+		HDMI_WRITE(HDMI_FIFO_CTL,
 			   drift | VC4_HDMI_FIFO_CTL_RECENTER);
 
-		ret = wait_for(HDMI_READ(VC4_HDMI_FIFO_CTL) &
+		ret = wait_for(HDMI_READ(HDMI_FIFO_CTL) &
 			       VC4_HDMI_FIFO_CTL_RECENTER_DONE, 1);
 		WARN_ONCE(ret, "Timeout waiting for "
 			  "VC4_HDMI_FIFO_CTL_RECENTER_DONE");
@@ -612,7 +567,7 @@ static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 				     VC4_HD_MAI_SMP_M_SHIFT) + 1,
 				    &n, &m);
 
-	HD_WRITE(VC4_HD_MAI_SMP,
+	HDMI_WRITE(HDMI_MAI_SMP,
 		 VC4_SET_FIELD(n, VC4_HD_MAI_SMP_N) |
 		 VC4_SET_FIELD(m - 1, VC4_HD_MAI_SMP_M));
 }
@@ -631,7 +586,7 @@ static void vc4_hdmi_set_n_cts(struct vc4_hdmi *vc4_hdmi)
 	do_div(tmp, 128 * samplerate);
 	cts = tmp;
 
-	HDMI_WRITE(VC4_HDMI_CRP_CFG,
+	HDMI_WRITE(HDMI_CRP_CFG,
 		   VC4_HDMI_CRP_CFG_EXTERNAL_CTS_EN |
 		   VC4_SET_FIELD(n, VC4_HDMI_CRP_CFG_N));
 
@@ -640,8 +595,8 @@ static void vc4_hdmi_set_n_cts(struct vc4_hdmi *vc4_hdmi)
 	 * providing a CTS_1 value.  The two CTS values are alternated
 	 * between based on the period fields
 	 */
-	HDMI_WRITE(VC4_HDMI_CTS_0, cts);
-	HDMI_WRITE(VC4_HDMI_CTS_1, cts);
+	HDMI_WRITE(HDMI_CTS_0, cts);
+	HDMI_WRITE(HDMI_CTS_1, cts);
 }
 
 static inline struct vc4_hdmi *dai_to_hdmi(struct snd_soc_dai *dai)
@@ -668,7 +623,7 @@ static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
 	 * If the HDMI encoder hasn't probed, or the encoder is
 	 * currently in DVI mode, treat the codec dai as missing.
 	 */
-	if (!encoder->crtc || !(HDMI_READ(VC4_HDMI_RAM_PACKET_CONFIG) &
+	if (!encoder->crtc || !(HDMI_READ(HDMI_RAM_PACKET_CONFIG) &
 				VC4_HDMI_RAM_PACKET_ENABLE))
 		return -ENODEV;
 
@@ -694,9 +649,9 @@ static void vc4_hdmi_audio_reset(struct vc4_hdmi *vc4_hdmi)
 	if (ret)
 		dev_err(dev, "Failed to stop audio infoframe: %d\n", ret);
 
-	HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_RESET);
-	HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_ERRORF);
-	HD_WRITE(VC4_HD_MAI_CTL, VC4_HD_MAI_CTL_FLUSH);
+	HDMI_WRITE(HDMI_MAI_CTL, VC4_HD_MAI_CTL_RESET);
+	HDMI_WRITE(HDMI_MAI_CTL, VC4_HD_MAI_CTL_ERRORF);
+	HDMI_WRITE(HDMI_MAI_CTL, VC4_HD_MAI_CTL_FLUSH);
 }
 
 static void vc4_hdmi_audio_shutdown(struct snd_pcm_substream *substream,
@@ -732,7 +687,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 	vc4_hdmi->audio.channels = params_channels(params);
 	vc4_hdmi->audio.samplerate = params_rate(params);
 
-	HD_WRITE(VC4_HD_MAI_CTL,
+	HDMI_WRITE(HDMI_MAI_CTL,
 		 VC4_HD_MAI_CTL_RESET |
 		 VC4_HD_MAI_CTL_FLUSH |
 		 VC4_HD_MAI_CTL_DLATE |
@@ -752,22 +707,22 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 
 	/* Set the MAI threshold.  This logic mimics the firmware's. */
 	if (vc4_hdmi->audio.samplerate > 96000) {
-		HD_WRITE(VC4_HD_MAI_THR,
+		HDMI_WRITE(HDMI_MAI_THR,
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQHIGH) |
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQLOW));
 	} else if (vc4_hdmi->audio.samplerate > 48000) {
-		HD_WRITE(VC4_HD_MAI_THR,
+		HDMI_WRITE(HDMI_MAI_THR,
 			 VC4_SET_FIELD(0x14, VC4_HD_MAI_THR_DREQHIGH) |
 			 VC4_SET_FIELD(0x12, VC4_HD_MAI_THR_DREQLOW));
 	} else {
-		HD_WRITE(VC4_HD_MAI_THR,
+		HDMI_WRITE(HDMI_MAI_THR,
 			 VC4_SET_FIELD(0x10, VC4_HD_MAI_THR_PANICHIGH) |
 			 VC4_SET_FIELD(0x10, VC4_HD_MAI_THR_PANICLOW) |
 			 VC4_SET_FIELD(0x10, VC4_HD_MAI_THR_DREQHIGH) |
 			 VC4_SET_FIELD(0x10, VC4_HD_MAI_THR_DREQLOW));
 	}
 
-	HDMI_WRITE(VC4_HDMI_MAI_CONFIG,
+	HDMI_WRITE(HDMI_MAI_CONFIG,
 		   VC4_HDMI_MAI_CONFIG_BIT_REVERSE |
 		   VC4_SET_FIELD(channel_mask, VC4_HDMI_MAI_CHANNEL_MASK));
 
@@ -777,8 +732,8 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 			channel_map |= i << (3 * i);
 	}
 
-	HDMI_WRITE(VC4_HDMI_MAI_CHANNEL_MAP, channel_map);
-	HDMI_WRITE(VC4_HDMI_AUDIO_PACKET_CONFIG, audio_packet_config);
+	HDMI_WRITE(HDMI_MAI_CHANNEL_MAP, channel_map);
+	HDMI_WRITE(HDMI_AUDIO_PACKET_CONFIG, audio_packet_config);
 	vc4_hdmi_set_n_cts(vc4_hdmi);
 
 	return 0;
@@ -793,21 +748,22 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
 		vc4_hdmi_set_audio_infoframe(encoder);
-		HDMI_WRITE(VC4_HDMI_TX_PHY_CTL0,
-			   HDMI_READ(VC4_HDMI_TX_PHY_CTL0) &
+		HDMI_WRITE(HDMI_TX_PHY_CTL_0,
+			   HDMI_READ(HDMI_TX_PHY_CTL_0) &
 			   ~VC4_HDMI_TX_PHY_RNG_PWRDN);
-		HD_WRITE(VC4_HD_MAI_CTL,
+
+		HDMI_WRITE(HDMI_MAI_CTL,
 			 VC4_SET_FIELD(vc4_hdmi->audio.channels,
 				       VC4_HD_MAI_CTL_CHNUM) |
 			 VC4_HD_MAI_CTL_ENABLE);
 		break;
 	case SNDRV_PCM_TRIGGER_STOP:
-		HD_WRITE(VC4_HD_MAI_CTL,
+		HDMI_WRITE(HDMI_MAI_CTL,
 			 VC4_HD_MAI_CTL_DLATE |
 			 VC4_HD_MAI_CTL_ERRORE |
 			 VC4_HD_MAI_CTL_ERRORF);
-		HDMI_WRITE(VC4_HDMI_TX_PHY_CTL0,
-			   HDMI_READ(VC4_HDMI_TX_PHY_CTL0) |
+		HDMI_WRITE(HDMI_TX_PHY_CTL_0,
+			   HDMI_READ(HDMI_TX_PHY_CTL_0) |
 			   VC4_HDMI_TX_PHY_RNG_PWRDN);
 		break;
 	default:
@@ -941,6 +897,8 @@ static const struct snd_dmaengine_pcm_config pcm_conf = {
 
 static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 {
+	const struct vc4_hdmi_register *mai_data =
+		&vc4_hdmi->variant->registers[HDMI_MAI_DATA];
 	struct snd_soc_dai_link *dai_link = &vc4_hdmi->audio.link;
 	struct snd_soc_card *card = &vc4_hdmi->audio.card;
 	struct device *dev = &vc4_hdmi->pdev->dev;
@@ -953,6 +911,11 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 		return 0;
 	}
 
+	if (mai_data->reg != VC4_HD) {
+		WARN_ONCE(true, "MAI isn't in the HD block\n");
+		return -EINVAL;
+	}
+
 	/*
 	 * Get the physical address of VC4_HD_MAI_DATA. We need to retrieve
 	 * the bus address specified in the DT, because the physical address
@@ -961,7 +924,7 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 	 * This VC/MMU should probably be exposed to avoid this kind of hacks.
 	 */
 	addr = of_get_address(dev->of_node, 1, NULL, NULL);
-	vc4_hdmi->audio.dma_data.addr = be32_to_cpup(addr) + VC4_HD_MAI_DATA;
+	vc4_hdmi->audio.dma_data.addr = be32_to_cpup(addr) + mai_data->offset;
 	vc4_hdmi->audio.dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 	vc4_hdmi->audio.dma_data.maxburst = 2;
 
@@ -1053,7 +1016,7 @@ static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
 	msg->len = 1 + ((cntrl1 & VC4_HDMI_CEC_REC_WRD_CNT_MASK) >>
 					VC4_HDMI_CEC_REC_WRD_CNT_SHIFT);
 	for (i = 0; i < msg->len; i += 4) {
-		u32 val = HDMI_READ(VC4_HDMI_CEC_RX_DATA_1 + i);
+		u32 val = HDMI_READ(HDMI_CEC_RX_DATA_1 + i);
 
 		msg->msg[i] = val & 0xff;
 		msg->msg[i + 1] = (val >> 8) & 0xff;
@@ -1065,26 +1028,26 @@ static void vc4_cec_read_msg(struct vc4_dev *vc4, u32 cntrl1)
 static irqreturn_t vc4_cec_irq_handler(int irq, void *priv)
 {
 	struct vc4_hdmi *vc4_hdmi = priv;
-	u32 stat = HDMI_READ(VC4_HDMI_CPU_STATUS);
+	u32 stat = HDMI_READ(HDMI_CPU_STATUS);
 	u32 cntrl1, cntrl5;
 
 	if (!(stat & VC4_HDMI_CPU_CEC))
 		return IRQ_NONE;
 	vc4_hdmi->cec_rx_msg.len = 0;
-	cntrl1 = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
-	cntrl5 = HDMI_READ(VC4_HDMI_CEC_CNTRL_5);
+	cntrl1 = HDMI_READ(HDMI_CEC_CNTRL_1);
+	cntrl5 = HDMI_READ(HDMI_CEC_CNTRL_5);
 	vc4_hdmi->cec_irq_was_rx = cntrl5 & VC4_HDMI_CEC_RX_CEC_INT;
 	if (vc4_hdmi->cec_irq_was_rx) {
 		vc4_cec_read_msg(vc4, cntrl1);
 		cntrl1 |= VC4_HDMI_CEC_CLEAR_RECEIVE_OFF;
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, cntrl1);
+		HDMI_WRITE(HDMI_CEC_CNTRL_1, cntrl1);
 		cntrl1 &= ~VC4_HDMI_CEC_CLEAR_RECEIVE_OFF;
 	} else {
 		vc4_hdmi->cec_tx_ok = cntrl1 & VC4_HDMI_CEC_TX_STATUS_GOOD;
 		cntrl1 &= ~VC4_HDMI_CEC_START_XMIT_BEGIN;
 	}
-	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, cntrl1);
-	HDMI_WRITE(VC4_HDMI_CPU_CLEAR, VC4_HDMI_CPU_CEC);
+	HDMI_WRITE(HDMI_CEC_CNTRL_1, cntrl1);
+	HDMI_WRITE(HDMI_CPU_CLEAR, VC4_HDMI_CPU_CEC);
 
 	return IRQ_WAKE_THREAD;
 }
@@ -1094,7 +1057,7 @@ static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 	struct vc4_hdmi *vc4_hdmi = cec_get_drvdata(adap);
 	/* clock period in microseconds */
 	const u32 usecs = 1000000 / CEC_CLOCK_FREQ;
-	u32 val = HDMI_READ(VC4_HDMI_CEC_CNTRL_5);
+	u32 val = HDMI_READ(HDMI_CEC_CNTRL_5);
 
 	val &= ~(VC4_HDMI_CEC_TX_SW_RESET | VC4_HDMI_CEC_RX_SW_RESET |
 		 VC4_HDMI_CEC_CNT_TO_4700_US_MASK |
@@ -1103,30 +1066,30 @@ static int vc4_hdmi_cec_adap_enable(struct cec_adapter *adap, bool enable)
 	       ((4500 / usecs) << VC4_HDMI_CEC_CNT_TO_4500_US_SHIFT);
 
 	if (enable) {
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_5, val |
+		HDMI_WRITE(HDMI_CEC_CNTRL_5, val |
 			   VC4_HDMI_CEC_TX_SW_RESET | VC4_HDMI_CEC_RX_SW_RESET);
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_5, val);
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_2,
+		HDMI_WRITE(HDMI_CEC_CNTRL_5, val);
+		HDMI_WRITE(HDMI_CEC_CNTRL_2,
 			 ((1500 / usecs) << VC4_HDMI_CEC_CNT_TO_1500_US_SHIFT) |
 			 ((1300 / usecs) << VC4_HDMI_CEC_CNT_TO_1300_US_SHIFT) |
 			 ((800 / usecs) << VC4_HDMI_CEC_CNT_TO_800_US_SHIFT) |
 			 ((600 / usecs) << VC4_HDMI_CEC_CNT_TO_600_US_SHIFT) |
 			 ((400 / usecs) << VC4_HDMI_CEC_CNT_TO_400_US_SHIFT));
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_3,
+		HDMI_WRITE(HDMI_CEC_CNTRL_3,
 			 ((2750 / usecs) << VC4_HDMI_CEC_CNT_TO_2750_US_SHIFT) |
 			 ((2400 / usecs) << VC4_HDMI_CEC_CNT_TO_2400_US_SHIFT) |
 			 ((2050 / usecs) << VC4_HDMI_CEC_CNT_TO_2050_US_SHIFT) |
 			 ((1700 / usecs) << VC4_HDMI_CEC_CNT_TO_1700_US_SHIFT));
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_4,
+		HDMI_WRITE(HDMI_CEC_CNTRL_4,
 			 ((4300 / usecs) << VC4_HDMI_CEC_CNT_TO_4300_US_SHIFT) |
 			 ((3900 / usecs) << VC4_HDMI_CEC_CNT_TO_3900_US_SHIFT) |
 			 ((3600 / usecs) << VC4_HDMI_CEC_CNT_TO_3600_US_SHIFT) |
 			 ((3500 / usecs) << VC4_HDMI_CEC_CNT_TO_3500_US_SHIFT));
 
-		HDMI_WRITE(VC4_HDMI_CPU_MASK_CLEAR, VC4_HDMI_CPU_CEC);
+		HDMI_WRITE(HDMI_CPU_MASK_CLEAR, VC4_HDMI_CPU_CEC);
 	} else {
-		HDMI_WRITE(VC4_HDMI_CPU_MASK_SET, VC4_HDMI_CPU_CEC);
-		HDMI_WRITE(VC4_HDMI_CEC_CNTRL_5, val |
+		HDMI_WRITE(HDMI_CPU_MASK_SET, VC4_HDMI_CPU_CEC);
+		HDMI_WRITE(HDMI_CEC_CNTRL_5, val |
 			   VC4_HDMI_CEC_TX_SW_RESET | VC4_HDMI_CEC_RX_SW_RESET);
 	}
 	return 0;
@@ -1136,8 +1099,8 @@ static int vc4_hdmi_cec_adap_log_addr(struct cec_adapter *adap, u8 log_addr)
 {
 	struct vc4_hdmi *vc4_hdmi = cec_get_drvdata(adap);
 
-	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1,
-		   (HDMI_READ(VC4_HDMI_CEC_CNTRL_1) & ~VC4_HDMI_CEC_ADDR_MASK) |
+	HDMI_WRITE(HDMI_CEC_CNTRL_1,
+		   (HDMI_READ(HDMI_CEC_CNTRL_1) & ~VC4_HDMI_CEC_ADDR_MASK) |
 		   (log_addr & 0xf) << VC4_HDMI_CEC_ADDR_SHIFT);
 	return 0;
 }
@@ -1150,20 +1113,20 @@ static int vc4_hdmi_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
 	unsigned int i;
 
 	for (i = 0; i < msg->len; i += 4)
-		HDMI_WRITE(VC4_HDMI_CEC_TX_DATA_1 + i,
+		HDMI_WRITE(HDMI_CEC_TX_DATA_1 + i,
 			   (msg->msg[i]) |
 			   (msg->msg[i + 1] << 8) |
 			   (msg->msg[i + 2] << 16) |
 			   (msg->msg[i + 3] << 24));
 
-	val = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
+	val = HDMI_READ(HDMI_CEC_CNTRL_1);
 	val &= ~VC4_HDMI_CEC_START_XMIT_BEGIN;
-	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, val);
+	HDMI_WRITE(HDMI_CEC_CNTRL_1, val);
 	val &= ~VC4_HDMI_CEC_MESSAGE_LENGTH_MASK;
 	val |= (msg->len - 1) << VC4_HDMI_CEC_MESSAGE_LENGTH_SHIFT;
 	val |= VC4_HDMI_CEC_START_XMIT_BEGIN;
 
-	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, val);
+	HDMI_WRITE(HDMI_CEC_CNTRL_1, val);
 	return 0;
 }
 
@@ -1174,26 +1137,63 @@ static const struct cec_adap_ops vc4_hdmi_cec_adap_ops = {
 };
 #endif
 
+static int vc4_hdmi_build_regset(struct vc4_hdmi *vc4_hdmi,
+				 struct debugfs_regset32 *regset,
+				 enum vc4_hdmi_regs reg)
+{
+	const struct vc4_hdmi_variant *variant = vc4_hdmi->variant;
+	struct debugfs_reg32 *regs;
+	unsigned int count = 0;
+	unsigned int i;
+
+	regs = kzalloc(variant->num_registers * sizeof(*regs),
+		       GFP_KERNEL);
+	if (!regs)
+		return -ENOMEM;
+
+	for (i = 0; i < variant->num_registers; i++) {
+		const struct vc4_hdmi_register *field =	&variant->registers[i];
+
+		if (field->reg != reg)
+			continue;
+
+		regs[count].name = field->name;
+		regs[count].offset = field->offset;
+		count++;
+	}
+
+	regs = krealloc(regs, count * sizeof(*regs), GFP_KERNEL);
+	if (!regs)
+		return -ENOMEM;
+
+	regset->base = __vc4_hdmi_get_field_base(vc4_hdmi, reg);
+	regset->regs = regs;
+	regset->nregs = count;
+
+	return 0;
+}
+
 static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
 {
 	struct platform_device *pdev = vc4_hdmi->pdev;
 	struct device *dev = &pdev->dev;
+	int ret;
 
 	vc4_hdmi->hdmicore_regs = vc4_ioremap_regs(pdev, 0);
 	if (IS_ERR(vc4_hdmi->hdmicore_regs))
 		return PTR_ERR(vc4_hdmi->hdmicore_regs);
 
-	vc4_hdmi->hdmi_regset.base = vc4_hdmi->hdmicore_regs;
-	vc4_hdmi->hdmi_regset.regs = hdmi_regs;
-	vc4_hdmi->hdmi_regset.nregs = ARRAY_SIZE(hdmi_regs);
+	ret = vc4_hdmi_build_regset(vc4_hdmi, &vc4_hdmi->hd_regset, VC4_HD);
+	if (ret)
+		return ret;
 
 	vc4_hdmi->hd_regs = vc4_ioremap_regs(pdev, 1);
 	if (IS_ERR(vc4_hdmi->hd_regs))
 		return PTR_ERR(vc4_hdmi->hd_regs);
 
-	vc4_hdmi->hd_regset.base = vc4_hdmi->hd_regs;
-	vc4_hdmi->hd_regset.regs = hd_regs;
-	vc4_hdmi->hd_regset.nregs = ARRAY_SIZE(hd_regs);
+	ret = vc4_hdmi_build_regset(vc4_hdmi, &vc4_hdmi->hdmi_regset, VC4_HDMI);
+	if (ret)
+		return ret;
 
 	vc4_hdmi->pixel_clock = devm_clk_get(dev, "pixel");
 	if (IS_ERR(vc4_hdmi->pixel_clock)) {
@@ -1286,12 +1286,12 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	}
 
 	/* HDMI core must be enabled. */
-	if (!(HD_READ(VC4_HD_M_CTL) & VC4_HD_M_ENABLE)) {
-		HD_WRITE(VC4_HD_M_CTL, VC4_HD_M_SW_RST);
+	if (!(HDMI_READ(HDMI_M_CTL) & VC4_HD_M_ENABLE)) {
+		HDMI_WRITE(HDMI_M_CTL, VC4_HD_M_SW_RST);
 		udelay(1);
-		HD_WRITE(VC4_HD_M_CTL, 0);
+		HDMI_WRITE(HDMI_M_CTL, 0);
 
-		HD_WRITE(VC4_HD_M_CTL, VC4_HD_M_ENABLE);
+		HDMI_WRITE(HDMI_M_CTL, VC4_HD_M_ENABLE);
 	}
 	pm_runtime_enable(dev);
 
@@ -1315,8 +1315,8 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	cec_fill_conn_info_from_drm(&conn_info, hdmi->connector);
 	cec_s_conn_info(hdmi->cec_adap, &conn_info);
 
-	HDMI_WRITE(VC4_HDMI_CPU_MASK_SET, 0xffffffff);
-	value = HDMI_READ(VC4_HDMI_CEC_CNTRL_1);
+	HDMI_WRITE(HDMI_CPU_MASK_SET, 0xffffffff);
+	value = HDMI_READ(HDMI_CEC_CNTRL_1);
 	value &= ~VC4_HDMI_CEC_DIV_CLK_CNT_MASK;
 	/*
 	 * Set the logical address to Unregistered and set the clock
@@ -1325,7 +1325,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	 */
 	value |= VC4_HDMI_CEC_ADDR_MASK |
 		 (4091 << VC4_HDMI_CEC_DIV_CLK_CNT_SHIFT);
-	HDMI_WRITE(VC4_HDMI_CEC_CNTRL_1, value);
+	HDMI_WRITE(HDMI_CEC_CNTRL_1, value);
 	ret = devm_request_threaded_irq(dev, platform_get_irq(pdev, 0),
 					vc4_cec_irq_handler,
 					vc4_cec_irq_handler_thread, 0,
@@ -1372,6 +1372,9 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	struct snd_soc_card *card = dev_get_drvdata(dev);
 	struct vc4_hdmi *vc4_hdmi = snd_soc_card_get_drvdata(card);
 
+	kfree(vc4_hdmi->hdmi_regset.regs);
+	kfree(vc4_hdmi->hd_regset.regs);
+
 	cec_unregister_adapter(vc4_hdmi->cec_adap);
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
@@ -1399,6 +1402,9 @@ static int vc4_hdmi_dev_remove(struct platform_device *pdev)
 }
 
 struct vc4_hdmi_variant bcm2835_variant = {
+	.registers		= vc4_hdmi_fields,
+	.num_registers		= ARRAY_SIZE(vc4_hdmi_fields),
+
 	.init_resources		= vc4_hdmi_init_resources,
 };
 
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index b00d9c806428..f4c052a78802 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -21,7 +21,15 @@ to_vc4_hdmi_encoder(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_hdmi_encoder, base.base);
 }
 
+struct vc4_hdmi_register;
+
 struct vc4_hdmi_variant {
+	/* List of the registers available on that variant */
+	const struct vc4_hdmi_register *registers;
+
+	/* Number of registers on that variant */
+	unsigned int num_registers;
+
 	/* Callback to get the resources (memory region, interrupts,
 	 * clocks, etc) for that variant.
 	 */
@@ -83,9 +91,4 @@ encoder_to_vc4_hdmi(struct drm_encoder *encoder)
 	return container_of(_encoder, struct vc4_hdmi, encoder);
 }
 
-#define HDMI_READ(offset) readl(vc4_hdmi->hdmicore_regs + offset)
-#define HDMI_WRITE(offset, val) writel(val, vc4_hdmi->hdmicore_regs + offset)
-#define HD_READ(offset) readl(vc4_hdmi->hd_regs + offset)
-#define HD_WRITE(offset, val) writel(val, vc4_hdmi->hd_regs + offset)
-
 #endif /* _VC4_HDMI_H_ */
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
new file mode 100644
index 000000000000..dd5cea16f71c
--- /dev/null
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
@@ -0,0 +1,244 @@
+#ifndef _VC4_HDMI_REGS_H_
+#define _VC4_HDMI_REGS_H_
+
+#include "vc4_hdmi.h"
+
+#define VC4_MASK(high, low) ((u32)GENMASK(high, low))
+/* Using the GNU statement expression extension */
+#define VC4_SET_FIELD(value, field)					\
+	({								\
+		uint32_t fieldval = (value) << field##_SHIFT;		\
+		WARN_ON((fieldval & ~field##_MASK) != 0);		\
+		fieldval & field##_MASK;				\
+	 })
+
+#define VC4_HDMI_PACKET_STRIDE			0x24
+
+enum vc4_hdmi_regs {
+	VC4_INVALID = 0,
+	VC4_HDMI,
+	VC4_HD,
+};
+
+enum vc4_hdmi_field {
+	HDMI_AUDIO_PACKET_CONFIG,
+	HDMI_CEC_CNTRL_1,
+	HDMI_CEC_CNTRL_2,
+	HDMI_CEC_CNTRL_3,
+	HDMI_CEC_CNTRL_4,
+	HDMI_CEC_CNTRL_5,
+	HDMI_CEC_CPU_MASK_STATUS,
+	HDMI_CEC_CPU_STATUS,
+
+	/*
+	 * Transmit data, first byte is low byte of the 32-bit reg.
+	 * MSB of each byte transmitted first.
+	 */
+	HDMI_CEC_RX_DATA_1,
+	HDMI_CEC_RX_DATA_2,
+	HDMI_CEC_RX_DATA_3,
+	HDMI_CEC_RX_DATA_4,
+	HDMI_CEC_TX_DATA_1,
+	HDMI_CEC_TX_DATA_2,
+	HDMI_CEC_TX_DATA_3,
+	HDMI_CEC_TX_DATA_4,
+	HDMI_CORE_REV,
+	HDMI_CRP_CFG,
+	HDMI_CSC_12_11,
+	HDMI_CSC_14_13,
+	HDMI_CSC_22_21,
+	HDMI_CSC_24_23,
+	HDMI_CSC_32_31,
+	HDMI_CSC_34_33,
+	HDMI_CSC_CTL,
+
+	/*
+	 * 20-bit fields containing CTS values to be transmitted if
+	 * !EXTERNAL_CTS_EN
+	 */
+	HDMI_CTS_0,
+	HDMI_CTS_1,
+	HDMI_FIFO_CTL,
+	HDMI_FRAME_COUNT,
+	HDMI_HORZA,
+	HDMI_HORZB,
+	HDMI_HOTPLUG,
+	HDMI_HOTPLUG_INT,
+
+	/*
+	 * 3 bits per field, where each field maps from that
+	 * corresponding MAI bus channel to the given HDMI channel.
+	 */
+	HDMI_MAI_CHANNEL_MAP,
+	HDMI_MAI_CONFIG,
+	HDMI_MAI_CTL,
+
+	/*
+	 * Register for DMAing in audio data to be transported over
+	 * the MAI bus to the Falcon core.
+	 */
+	HDMI_MAI_DATA,
+
+	/* Format header to be placed on the MAI data. Unused. */
+	HDMI_MAI_FMT,
+
+	/* Last received format word on the MAI bus. */
+	HDMI_MAI_FORMAT,
+	HDMI_MAI_SMP,
+	HDMI_MAI_THR,
+	HDMI_M_CTL,
+	HDMI_RAM_PACKET_CONFIG,
+	HDMI_RAM_PACKET_START,
+	HDMI_RAM_PACKET_STATUS,
+	HDMI_SCHEDULER_CONTROL,
+	HDMI_SW_RESET_CONTROL,
+	HDMI_TX_PHY_CTL_0,
+	HDMI_TX_PHY_RESET_CTL,
+	HDMI_VERTA0,
+	HDMI_VERTA1,
+	HDMI_VERTB0,
+	HDMI_VERTB1,
+	HDMI_VID_CTL,
+};
+
+struct vc4_hdmi_register {
+	char *name;
+	enum vc4_hdmi_regs reg;
+	unsigned int offset;
+};
+
+#define _VC4_REG(_base, _reg, _offset)	\
+	[_reg] = {				\
+		.name = #_reg,			\
+		.reg = _base,			\
+		.offset = _offset,		\
+	}
+
+#define VC4_HD_REG(reg, offset)		_VC4_REG(VC4_HD, reg, offset)
+#define VC4_HDMI_REG(reg, offset)	_VC4_REG(VC4_HDMI, reg, offset)
+
+static const struct vc4_hdmi_register vc4_hdmi_fields[] = {
+	VC4_HD_REG(HDMI_M_CTL, 0x000c),
+	VC4_HD_REG(HDMI_MAI_CTL, 0x0014),
+	VC4_HD_REG(HDMI_MAI_THR, 0x0018),
+	VC4_HD_REG(HDMI_MAI_FMT, 0x001c),
+	VC4_HD_REG(HDMI_MAI_DATA, 0x0020),
+	VC4_HD_REG(HDMI_MAI_SMP, 0x002c),
+	VC4_HD_REG(HDMI_VID_CTL, 0x0038),
+	VC4_HD_REG(HDMI_CSC_CTL, 0x0040),
+	VC4_HD_REG(HDMI_CSC_12_11, 0x0044),
+	VC4_HD_REG(HDMI_CSC_14_13, 0x0048),
+	VC4_HD_REG(HDMI_CSC_22_21, 0x004c),
+	VC4_HD_REG(HDMI_CSC_24_23, 0x0050),
+	VC4_HD_REG(HDMI_CSC_32_31, 0x0054),
+	VC4_HD_REG(HDMI_CSC_34_33, 0x0058),
+	VC4_HD_REG(HDMI_FRAME_COUNT, 0x0068),
+
+	VC4_HDMI_REG(HDMI_CORE_REV, 0x0000),
+	VC4_HDMI_REG(HDMI_SW_RESET_CONTROL, 0x0004),
+	VC4_HDMI_REG(HDMI_HOTPLUG_INT, 0x0008),
+	VC4_HDMI_REG(HDMI_HOTPLUG, 0x000c),
+	VC4_HDMI_REG(HDMI_FIFO_CTL, 0x005c),
+	VC4_HDMI_REG(HDMI_MAI_CHANNEL_MAP, 0x0090),
+	VC4_HDMI_REG(HDMI_MAI_CONFIG, 0x0094),
+	VC4_HDMI_REG(HDMI_MAI_FORMAT, 0x0098),
+	VC4_HDMI_REG(HDMI_AUDIO_PACKET_CONFIG, 0x009c),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_CONFIG, 0x00a0),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_STATUS, 0x00a4),
+	VC4_HDMI_REG(HDMI_CRP_CFG, 0x00a8),
+	VC4_HDMI_REG(HDMI_CTS_0, 0x00ac),
+	VC4_HDMI_REG(HDMI_CTS_1, 0x00b0),
+	VC4_HDMI_REG(HDMI_SCHEDULER_CONTROL, 0x00c0),
+	VC4_HDMI_REG(HDMI_HORZA, 0x00c4),
+	VC4_HDMI_REG(HDMI_HORZB, 0x00c8),
+	VC4_HDMI_REG(HDMI_VERTA0, 0x00cc),
+	VC4_HDMI_REG(HDMI_VERTB0, 0x00d0),
+	VC4_HDMI_REG(HDMI_VERTA1, 0x00d4),
+	VC4_HDMI_REG(HDMI_VERTB1, 0x00d8),
+	VC4_HDMI_REG(HDMI_CEC_CNTRL_1, 0x00e8),
+	VC4_HDMI_REG(HDMI_CEC_CNTRL_2, 0x00ec),
+	VC4_HDMI_REG(HDMI_CEC_CNTRL_3, 0x00f0),
+	VC4_HDMI_REG(HDMI_CEC_CNTRL_4, 0x00f4),
+	VC4_HDMI_REG(HDMI_CEC_CNTRL_5, 0x00f8),
+	VC4_HDMI_REG(HDMI_CEC_TX_DATA_1, 0x00fc),
+	VC4_HDMI_REG(HDMI_CEC_TX_DATA_2, 0x0100),
+	VC4_HDMI_REG(HDMI_CEC_TX_DATA_3, 0x0104),
+	VC4_HDMI_REG(HDMI_CEC_TX_DATA_4, 0x0108),
+	VC4_HDMI_REG(HDMI_CEC_RX_DATA_1, 0x010c),
+	VC4_HDMI_REG(HDMI_CEC_RX_DATA_2, 0x0110),
+	VC4_HDMI_REG(HDMI_CEC_RX_DATA_3, 0x0114),
+	VC4_HDMI_REG(HDMI_CEC_RX_DATA_4, 0x0118),
+	VC4_HDMI_REG(HDMI_TX_PHY_RESET_CTL, 0x02c0),
+	VC4_HDMI_REG(HDMI_TX_PHY_CTL_0, 0x02c4),
+	VC4_HDMI_REG(HDMI_CEC_CPU_STATUS, 0x0340),
+	VC4_HDMI_REG(HDMI_CEC_CPU_MASK_STATUS, 0x034c),
+	VC4_HDMI_REG(HDMI_RAM_PACKET_START, 0x0400),
+};
+
+static inline
+void __iomem *__vc4_hdmi_get_field_base(struct vc4_hdmi *hdmi,
+					enum vc4_hdmi_regs reg)
+{
+	switch (reg) {
+	case VC4_HD:
+		return hdmi->hd_regs;
+
+	case VC4_HDMI:
+		return hdmi->hdmicore_regs;
+
+	default:
+		return NULL;
+	}
+
+	return NULL;
+}
+
+static inline u32 vc4_hdmi_read(struct vc4_hdmi *hdmi,
+				enum vc4_hdmi_regs reg)
+{
+	const struct vc4_hdmi_register *field;
+	const struct vc4_hdmi_variant *variant = hdmi->variant;
+	void __iomem *base;
+
+	if (reg > variant->num_registers) {
+		dev_warn(&hdmi->pdev->dev,
+			 "Invalid register ID %u\n", reg);
+		return 0;
+	}
+
+	field = &variant->registers[reg];
+	base = __vc4_hdmi_get_field_base(hdmi, field->reg);
+	if (!base) {
+		dev_warn(&hdmi->pdev->dev,
+			 "Unknown register ID %u\n", reg);
+		return 0;
+	}
+
+	return readl(base + field->offset);
+}
+#define HDMI_READ(reg)		vc4_hdmi_read(vc4_hdmi, reg)
+
+static inline void vc4_hdmi_write(struct vc4_hdmi *hdmi,
+				  enum vc4_hdmi_regs reg,
+				  u32 value)
+{
+	const struct vc4_hdmi_register *field;
+	const struct vc4_hdmi_variant *variant = hdmi->variant;
+	void __iomem *base;
+
+	if (reg > variant->num_registers) {
+		dev_warn(&hdmi->pdev->dev,
+			 "Invalid register ID %u\n", reg);
+		return;
+	}
+
+	field = &variant->registers[reg];
+	base = __vc4_hdmi_get_field_base(hdmi, field->reg);
+	if (!base)
+		return;
+
+	writel(value, base + field->offset);
+}
+#define HDMI_WRITE(reg, val)	vc4_hdmi_write(vc4_hdmi, reg, val)
+
+#endif /* _VC4_HDMI_REGS_H_ */
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index 35279b118d41..5a3ee2030cff 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -493,32 +493,16 @@
 
 #define SCALER5_DLIST_START			0x00004000
 
-#define VC4_HDMI_CORE_REV			0x000
-
-#define VC4_HDMI_SW_RESET_CONTROL		0x004
 # define VC4_HDMI_SW_RESET_FORMAT_DETECT	BIT(1)
 # define VC4_HDMI_SW_RESET_HDMI			BIT(0)
 
-#define VC4_HDMI_HOTPLUG_INT			0x008
-
-#define VC4_HDMI_HOTPLUG			0x00c
 # define VC4_HDMI_HOTPLUG_CONNECTED		BIT(0)
 
-/* 3 bits per field, where each field maps from that corresponding MAI
- * bus channel to the given HDMI channel.
- */
-#define VC4_HDMI_MAI_CHANNEL_MAP		0x090
-
-#define VC4_HDMI_MAI_CONFIG			0x094
 # define VC4_HDMI_MAI_CONFIG_FORMAT_REVERSE		BIT(27)
 # define VC4_HDMI_MAI_CONFIG_BIT_REVERSE		BIT(26)
 # define VC4_HDMI_MAI_CHANNEL_MASK_MASK			VC4_MASK(15, 0)
 # define VC4_HDMI_MAI_CHANNEL_MASK_SHIFT		0
 
-/* Last received format word on the MAI bus. */
-#define VC4_HDMI_MAI_FORMAT			0x098
-
-#define VC4_HDMI_AUDIO_PACKET_CONFIG		0x09c
 # define VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_SAMPLE_FLAT		BIT(29)
 # define VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_INACTIVE_CHANNELS	BIT(24)
 # define VC4_HDMI_AUDIO_PACKET_FORCE_SAMPLE_PRESENT		BIT(19)
@@ -532,12 +516,8 @@
 # define VC4_HDMI_AUDIO_PACKET_CEA_MASK_MASK			VC4_MASK(7, 0)
 # define VC4_HDMI_AUDIO_PACKET_CEA_MASK_SHIFT			0
 
-#define VC4_HDMI_RAM_PACKET_CONFIG		0x0a0
 # define VC4_HDMI_RAM_PACKET_ENABLE		BIT(16)
 
-#define VC4_HDMI_RAM_PACKET_STATUS		0x0a4
-
-#define VC4_HDMI_CRP_CFG			0x0a8
 /* When set, the CTS_PERIOD counts based on MAI bus sync pulse instead
  * of pixel clock.
  */
@@ -551,23 +531,12 @@
 # define VC4_HDMI_CRP_CFG_N_MASK		VC4_MASK(19, 0)
 # define VC4_HDMI_CRP_CFG_N_SHIFT		0
 
-/* 20-bit fields containing CTS values to be transmitted if !EXTERNAL_CTS_EN */
-#define VC4_HDMI_CTS_0				0x0ac
-#define VC4_HDMI_CTS_1				0x0b0
-/* 20-bit fields containing number of clocks to send CTS0/1 before
- * switching to the other one.
- */
-#define VC4_HDMI_CTS_PERIOD_0			0x0b4
-#define VC4_HDMI_CTS_PERIOD_1			0x0b8
-
-#define VC4_HDMI_HORZA				0x0c4
 # define VC4_HDMI_HORZA_VPOS			BIT(14)
 # define VC4_HDMI_HORZA_HPOS			BIT(13)
 /* Horizontal active pixels (hdisplay). */
 # define VC4_HDMI_HORZA_HAP_MASK		VC4_MASK(12, 0)
 # define VC4_HDMI_HORZA_HAP_SHIFT		0
 
-#define VC4_HDMI_HORZB				0x0c8
 /* Horizontal pack porch (htotal - hsync_end). */
 # define VC4_HDMI_HORZB_HBP_MASK		VC4_MASK(29, 20)
 # define VC4_HDMI_HORZB_HBP_SHIFT		20
@@ -578,7 +547,6 @@
 # define VC4_HDMI_HORZB_HFP_MASK		VC4_MASK(9, 0)
 # define VC4_HDMI_HORZB_HFP_SHIFT		0
 
-#define VC4_HDMI_FIFO_CTL			0x05c
 # define VC4_HDMI_FIFO_CTL_RECENTER_DONE	BIT(14)
 # define VC4_HDMI_FIFO_CTL_USE_EMPTY		BIT(13)
 # define VC4_HDMI_FIFO_CTL_ON_VB		BIT(7)
@@ -591,15 +559,12 @@
 # define VC4_HDMI_FIFO_CTL_MASTER_SLAVE_N	BIT(0)
 # define VC4_HDMI_FIFO_VALID_WRITE_MASK		0xefff
 
-#define VC4_HDMI_SCHEDULER_CONTROL		0x0c0
 # define VC4_HDMI_SCHEDULER_CONTROL_MANUAL_FORMAT BIT(15)
 # define VC4_HDMI_SCHEDULER_CONTROL_IGNORE_VSYNC_PREDICTS BIT(5)
 # define VC4_HDMI_SCHEDULER_CONTROL_VERT_ALWAYS_KEEPOUT	BIT(3)
 # define VC4_HDMI_SCHEDULER_CONTROL_HDMI_ACTIVE	BIT(1)
 # define VC4_HDMI_SCHEDULER_CONTROL_MODE_HDMI	BIT(0)
 
-#define VC4_HDMI_VERTA0				0x0cc
-#define VC4_HDMI_VERTA1				0x0d4
 /* Vertical sync pulse (vsync_end - vsync_start). */
 # define VC4_HDMI_VERTA_VSP_MASK		VC4_MASK(24, 20)
 # define VC4_HDMI_VERTA_VSP_SHIFT		20
@@ -610,8 +575,6 @@
 # define VC4_HDMI_VERTA_VAL_MASK		VC4_MASK(12, 0)
 # define VC4_HDMI_VERTA_VAL_SHIFT		0
 
-#define VC4_HDMI_VERTB0				0x0d0
-#define VC4_HDMI_VERTB1				0x0d8
 /* Vertical sync pulse offset (for interlaced) */
 # define VC4_HDMI_VERTB_VSPO_MASK		VC4_MASK(21, 9)
 # define VC4_HDMI_VERTB_VSPO_SHIFT		9
@@ -619,7 +582,6 @@
 # define VC4_HDMI_VERTB_VBP_MASK		VC4_MASK(8, 0)
 # define VC4_HDMI_VERTB_VBP_SHIFT		0
 
-#define VC4_HDMI_CEC_CNTRL_1			0x0e8
 /* Set when the transmission has ended. */
 # define VC4_HDMI_CEC_TX_EOM			BIT(31)
 /* If set, transmission was acked on the 1st or 2nd attempt (only one
@@ -660,7 +622,6 @@
 /* Set these fields to how many bit clock cycles get to that many
  * microseconds.
  */
-#define VC4_HDMI_CEC_CNTRL_2			0x0ec
 # define VC4_HDMI_CEC_CNT_TO_1500_US_MASK	VC4_MASK(30, 24)
 # define VC4_HDMI_CEC_CNT_TO_1500_US_SHIFT	24
 # define VC4_HDMI_CEC_CNT_TO_1300_US_MASK	VC4_MASK(23, 17)
@@ -672,7 +633,6 @@
 # define VC4_HDMI_CEC_CNT_TO_400_US_MASK	VC4_MASK(4, 0)
 # define VC4_HDMI_CEC_CNT_TO_400_US_SHIFT	0
 
-#define VC4_HDMI_CEC_CNTRL_3			0x0f0
 # define VC4_HDMI_CEC_CNT_TO_2750_US_MASK	VC4_MASK(31, 24)
 # define VC4_HDMI_CEC_CNT_TO_2750_US_SHIFT	24
 # define VC4_HDMI_CEC_CNT_TO_2400_US_MASK	VC4_MASK(23, 16)
@@ -682,7 +642,6 @@
 # define VC4_HDMI_CEC_CNT_TO_1700_US_MASK	VC4_MASK(7, 0)
 # define VC4_HDMI_CEC_CNT_TO_1700_US_SHIFT	0
 
-#define VC4_HDMI_CEC_CNTRL_4			0x0f4
 # define VC4_HDMI_CEC_CNT_TO_4300_US_MASK	VC4_MASK(31, 24)
 # define VC4_HDMI_CEC_CNT_TO_4300_US_SHIFT	24
 # define VC4_HDMI_CEC_CNT_TO_3900_US_MASK	VC4_MASK(23, 16)
@@ -692,7 +651,6 @@
 # define VC4_HDMI_CEC_CNT_TO_3500_US_MASK	VC4_MASK(7, 0)
 # define VC4_HDMI_CEC_CNT_TO_3500_US_SHIFT	0
 
-#define VC4_HDMI_CEC_CNTRL_5			0x0f8
 # define VC4_HDMI_CEC_TX_SW_RESET		BIT(27)
 # define VC4_HDMI_CEC_RX_SW_RESET		BIT(26)
 # define VC4_HDMI_CEC_PAD_SW_RESET		BIT(25)
@@ -705,39 +663,11 @@
 # define VC4_HDMI_CEC_CNT_TO_4500_US_MASK	VC4_MASK(7, 0)
 # define VC4_HDMI_CEC_CNT_TO_4500_US_SHIFT	0
 
-/* Transmit data, first byte is low byte of the 32-bit reg.  MSB of
- * each byte transmitted first.
- */
-#define VC4_HDMI_CEC_TX_DATA_1			0x0fc
-#define VC4_HDMI_CEC_TX_DATA_2			0x100
-#define VC4_HDMI_CEC_TX_DATA_3			0x104
-#define VC4_HDMI_CEC_TX_DATA_4			0x108
-#define VC4_HDMI_CEC_RX_DATA_1			0x10c
-#define VC4_HDMI_CEC_RX_DATA_2			0x110
-#define VC4_HDMI_CEC_RX_DATA_3			0x114
-#define VC4_HDMI_CEC_RX_DATA_4			0x118
-
-#define VC4_HDMI_TX_PHY_RESET_CTL		0x2c0
-
-#define VC4_HDMI_TX_PHY_CTL0			0x2c4
 # define VC4_HDMI_TX_PHY_RNG_PWRDN		BIT(25)
 
-/* Interrupt status bits */
-#define VC4_HDMI_CPU_STATUS			0x340
-#define VC4_HDMI_CPU_SET			0x344
-#define VC4_HDMI_CPU_CLEAR			0x348
 # define VC4_HDMI_CPU_CEC			BIT(6)
 # define VC4_HDMI_CPU_HOTPLUG			BIT(0)
 
-#define VC4_HDMI_CPU_MASK_STATUS		0x34c
-#define VC4_HDMI_CPU_MASK_SET			0x350
-#define VC4_HDMI_CPU_MASK_CLEAR			0x354
-
-#define VC4_HDMI_GCP(x)				(0x400 + ((x) * 0x4))
-#define VC4_HDMI_RAM_PACKET(x)			(0x400 + ((x) * 0x24))
-#define VC4_HDMI_PACKET_STRIDE			0x24
-
-#define VC4_HD_M_CTL				0x00c
 /* Debug: Current receive value on the CEC pad. */
 # define VC4_HD_CECRXD				BIT(9)
 /* Debug: Override CEC output to 0. */
@@ -747,7 +677,6 @@
 # define VC4_HD_M_SW_RST			BIT(2)
 # define VC4_HD_M_ENABLE			BIT(0)
 
-#define VC4_HD_MAI_CTL				0x014
 /* Set when audio stream is received at a slower rate than the
  * sampling period, so MAI fifo goes empty.  Write 1 to clear.
  */
@@ -772,7 +701,6 @@
 /* Single-shot reset bit.  Read value is undefined. */
 # define VC4_HD_MAI_CTL_RESET			BIT(0)
 
-#define VC4_HD_MAI_THR				0x018
 # define VC4_HD_MAI_THR_PANICHIGH_MASK		VC4_MASK(29, 24)
 # define VC4_HD_MAI_THR_PANICHIGH_SHIFT		24
 # define VC4_HD_MAI_THR_PANICLOW_MASK		VC4_MASK(21, 16)
@@ -782,31 +710,20 @@
 # define VC4_HD_MAI_THR_DREQLOW_MASK		VC4_MASK(5, 0)
 # define VC4_HD_MAI_THR_DREQLOW_SHIFT		0
 
-/* Format header to be placed on the MAI data. Unused. */
-#define VC4_HD_MAI_FMT				0x01c
-
-/* Register for DMAing in audio data to be transported over the MAI
- * bus to the Falcon core.
- */
-#define VC4_HD_MAI_DATA				0x020
-
 /* Divider from HDMI HSM clock to MAI serial clock.  Sampling period
  * converges to N / (M + 1) cycles.
  */
-#define VC4_HD_MAI_SMP				0x02c
 # define VC4_HD_MAI_SMP_N_MASK			VC4_MASK(31, 8)
 # define VC4_HD_MAI_SMP_N_SHIFT			8
 # define VC4_HD_MAI_SMP_M_MASK			VC4_MASK(7, 0)
 # define VC4_HD_MAI_SMP_M_SHIFT			0
 
-#define VC4_HD_VID_CTL				0x038
 # define VC4_HD_VID_CTL_ENABLE			BIT(31)
 # define VC4_HD_VID_CTL_UNDERFLOW_ENABLE	BIT(30)
 # define VC4_HD_VID_CTL_FRAME_COUNTER_RESET	BIT(29)
 # define VC4_HD_VID_CTL_VSYNC_LOW		BIT(28)
 # define VC4_HD_VID_CTL_HSYNC_LOW		BIT(27)
 
-#define VC4_HD_CSC_CTL				0x040
 # define VC4_HD_CSC_CTL_ORDER_MASK		VC4_MASK(7, 5)
 # define VC4_HD_CSC_CTL_ORDER_SHIFT		5
 # define VC4_HD_CSC_CTL_ORDER_RGB		0
@@ -824,15 +741,6 @@
 # define VC4_HD_CSC_CTL_RGB2YCC			BIT(1)
 # define VC4_HD_CSC_CTL_ENABLE			BIT(0)
 
-#define VC4_HD_CSC_12_11			0x044
-#define VC4_HD_CSC_14_13			0x048
-#define VC4_HD_CSC_22_21			0x04c
-#define VC4_HD_CSC_24_23			0x050
-#define VC4_HD_CSC_32_31			0x054
-#define VC4_HD_CSC_34_33			0x058
-
-#define VC4_HD_FRAME_COUNT			0x068
-
 /* HVS display list information. */
 #define HVS_BOOTLOADER_DLIST_END                32
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
