Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FE817F50B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wVUnMEZSeSN/Xt9Bzs4f3ZJej53OPzrt1Ft7XQWbCI=; b=QOkC0FqaKyrJY+
	AbJIRqZ/xTPw2UfgLgN8R3s6+UoGi8vRoHa3q7NDx/xZfrMo3UwCQhY7DkhnaREe0AAJ4YXUzY+t2
	tJ5IRpKJG9WqjIbx1pxxRvDZoDqiRK4zWHjGsXEnOZYm3o0B7Mq1G+8TFtzCC9lU8ftMpPFL31Zlq
	lLdrpEEymxnHEsiDJcLl27vccn3ojZiTvNgtvrJaeS7tp8w9hpAbCwMRPb5AT8C1ULRiTkjHdXfTn
	f9h52mlIfumnvM6LVI8qpg448y2l8O+cbR5Cogdcy0R+e4jNOVvE5OTad1E3A+sN2Ivt/KHIEqxUP
	MhHvc2qtPox/ykadOdUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBc8B-0003c0-3v; Tue, 10 Mar 2020 10:28:59 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBc7z-0003aK-VP
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 10:28:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3IKSYKtw2n6yNxpaRbwsTLkcDXqG5XqbFrwDDbF1iTo=; b=q2+FGgY0n/8I2ypRNbhdzFXmqe
 v0RSk3+nlIPz7V1WNA4b2mV2GDPyr7Zu2w2nsC6m6IDsFTa+C/EvGl5f7bD3ICTSHBttf2qA7ew/B
 xlpjY0minYaq3RrdJDEh/ik+cnx1GxwSl2Mmh/n4X+n7gKtdx6y5qTBj3lis5R43C43SG74Aj8M/K
 Umi/D9E+BWGRi7OdWzpUKecpD+kPoF42Tc6HVsAJ9D6BmYo4irlzvlUZOiY6Cn6zqP0ZnYOfpJmPc
 z2niDfCBx86K/mz0ndvyQrDg7iXNLXSfbvMUo2PvgpBgtNGsvsXWhyk50Xq/25ZVA7amTh977Ogf7
 WFyBuphg==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:35430
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jBc7q-0017It-Mh; Tue, 10 Mar 2020 11:28:38 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] drm/panel: Add Starry KR070PE2T
Date: Tue, 10 Mar 2020 11:27:23 +0100
Message-Id: <20200310102725.14591-2-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200310102725.14591-1-dev@pascalroeleven.nl>
References: <20200310102725.14591-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_032848_195240_ECA9F3CB 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The KR070PE2T is a 7" panel with a resolution of 800x480.

KR070PE2T is the marking present on the ribbon cable. As this panel is
probably available under different brands, this marking will catch
most devices.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 .../display/panel/starry,kr070pe2t.txt        |  7 +++++
 drivers/gpu/drm/panel/panel-simple.c          | 26 +++++++++++++++++++
 2 files changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt

diff --git a/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt b/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
new file mode 100644
index 000000000..699ad5eb2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/starry,kr070pe2t.txt
@@ -0,0 +1,7 @@
+Starry 7" (800x480 pixels) LCD panel
+
+Required properties:
+- compatible: should be "starry,kr070pe2t"
+
+This binding is compatible with the simple-panel binding, which is specified
+in simple-panel.txt in this directory.
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index e14c14ac6..027a2612b 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2842,6 +2842,29 @@ static const struct panel_desc shelly_sca07010_bfn_lnn = {
 	.bus_format = MEDIA_BUS_FMT_RGB666_1X18,
 };
 
+static const struct drm_display_mode starry_kr070pe2t_mode = {
+	.clock = 33000,
+	.hdisplay = 800,
+	.hsync_start = 800 + 209,
+	.hsync_end = 800 + 209 + 1,
+	.htotal = 800 + 209 + 1 + 45,
+	.vdisplay = 480,
+	.vsync_start = 480 + 22,
+	.vsync_end = 480 + 22 + 1,
+	.vtotal = 480 + 22 + 1 + 22,
+	.vrefresh = 60,
+};
+
+static const struct panel_desc starry_kr070pe2t = {
+	.modes = &starry_kr070pe2t_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width = 152,
+		.height = 86,
+	},
+};
+
 static const struct drm_display_mode starry_kr122ea0sra_mode = {
 	.clock = 147000,
 	.hdisplay = 1920,
@@ -3474,6 +3497,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "shelly,sca07010-bfn-lnn",
 		.data = &shelly_sca07010_bfn_lnn,
+	}, {
+		.compatible = "starry,kr070pe2t",
+		.data = &starry_kr070pe2t,
 	}, {
 		.compatible = "starry,kr122ea0sra",
 		.data = &starry_kr122ea0sra,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
