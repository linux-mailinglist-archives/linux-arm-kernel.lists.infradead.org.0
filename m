Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A9945C9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8TSHUMrM3ba1XeoyRO3/vaFkan7DEDN0vk73Vw72Lo=; b=gTnfVrVzV7Ug8T
	G2DH9cqsOoTO+FOJYcJffHaohAmZczYVcL+rbwOTcnfr3XulaPTKHQInMBDd18bhq/ZTC5R9auH5Z
	+SNMkqh5agL62kcaNEP412FAbQujmp2zkZhiWHg5j49pXPgUkO8bJ/Ph3K01oYhVmDtFHpQgmQyPh
	vhwVurfzWRvDR/Oen3dGHu5eEaNQzBFWba/YOPaO5rIDL2EJaeH38eVkZPKxJuzEeoGHXuMOIbHo6
	Ze2vQwxl465D0RgFuzThA5TSVOKLgCgCQnxN9F6X+rEWEEOfnIh8YpUq04dDCI20clzmzyf9vYlGL
	3J5/roT/+r111e0Cu7ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hblBp-0002iD-Kr; Fri, 14 Jun 2019 12:20:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl5p-0004cx-HP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:14:09 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A9B7E40007;
 Fri, 14 Jun 2019 12:14:01 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: [PATCH v4 08/12] drm/connector: Introduce a TV margins structure
Date: Fri, 14 Jun 2019 14:13:15 +0200
Message-Id: <06f9c2fdbca44d9c04a0420cc78265c83ccd0d41.1560514379.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051405_771402_BFB450DE 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TV margins has been defined as a structure inside the
drm_connector_state structure so far. However, we will need it in other
structures as well, so let's move that structure definition so that it can
be reused.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 include/drm/drm_connector.h | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 68a04169ea36..c58a35b34c1a 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -464,13 +464,37 @@ int drm_display_info_set_bus_formats(struct drm_display_info *info,
 				     unsigned int num_formats);
 
 /**
+ * struct drm_connector_tv_margins - TV connector related margins
+ *
+ * Describes the margins in pixels to put around the image on TV
+ * connectors to deal with overscan.
+ */
+struct drm_connector_tv_margins {
+	/**
+	 * @bottom: Bottom margin in pixels.
+	 */
+	unsigned int bottom;
+
+	/**
+	 * @left: Left margin in pixels.
+	 */
+	unsigned int left;
+
+	/**
+	 * @right: Right margin in pixels.
+	 */
+	unsigned int right;
+
+	/**
+	 * @top: Top margin in pixels.
+	 */
+	unsigned int top;
+};
+
+/**
  * struct drm_tv_connector_state - TV connector related states
  * @subconnector: selected subconnector
- * @margins: margins (all margins are expressed in pixels)
- * @margins.left: left margin
- * @margins.right: right margin
- * @margins.top: top margin
- * @margins.bottom: bottom margin
+ * @margins: TV margins
  * @mode: TV mode
  * @brightness: brightness in percent
  * @contrast: contrast in percent
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
