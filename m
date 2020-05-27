Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 601761E4906
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWLHSXhPPX+vvWMy6IFuOUz9yLBkuzON3ELNbdosbkw=; b=DNM/FdI4zNPWqK
	O8tZ0yD206mSd9GbQDkZDHFetqFfZHCPDWm+5rm0pUTAqUjmGTER3+NRzBy6lbDIZqr9pveMCliRV
	lRzWlXNsoHhx+E8sDZ9K66ajNNqgdHjoEhddfuPU1G4zjdTpc/m4YHv7VuZFh/oEABzicH2m+HPim
	yJQBctQ/3PKi0UUPqsz96pLnDT9QtcNDVfS8t7knsfCDRDGQW/h/tGEZyvzrsdeb1iJfGiUomeKCr
	q5EKn3TVab2nwQ4VKY+/iA3soFG+BtoX+BrdbMjSTPAmQYDNbAcGogLIyMEFcxK8dMZW32AufXQyj
	ce360g0GJeqnAi2WQPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyUd-0004vq-SC; Wed, 27 May 2020 16:01:23 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ9-000640-36; Wed, 27 May 2020 15:49:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C6153581FE2;
 Wed, 27 May 2020 11:49:29 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=FMKLC09xuIf9F
 IYI+xqoFdFwX3vaShvGRIMTND5Z/+g=; b=k8lQDKuvjJyZSQm0zYsOKK/831vfI
 dwF1eR+LmaE1HsHlUvJQCpTYqRs5bv4zuqQF+QqsikMNrK44lkJeU5tAK2EuZ1iV
 ZJ2C/KC3olPmDpmkVU/4fL+8NhNjwbVHXEvo13urDJby5JD7+wQTg2t0rN4cXJuU
 UjIkOGnLMfWlsxEtrcvm65gbIKG642h1prlAs6MJwlNJlxFI0dsz6Lv2IkE5O7Kd
 k0UDuXS/GLC2sWdgvxfM9LZ3+uWq+7HXS//U3VIDRAosErI8uRAxG6i2Huat4O16
 XeS5x0emvICPiGZhnBitoksaGQi0y1nyZWubzPqMRW6Qe3RoIS3drhTeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=FMKLC09xuIf9FIYI+xqoFdFwX3vaShvGRIMTND5Z/+g=; b=YOSOEb9R
 WsTOlJuCWYivbI7VpnVMB2Se0EQjIOllck6yN9f0J3mGCR9AAVuJLTyWBTZllI5I
 L4yWYz9nCaXFcd2Sv0k1i3eU4y03j5lSiEvdQBTX2q61SUqihhPNUev11mdmsDpp
 jZtFfkSkCcz8cyVIV4om9dQLZuOyDNyQ8aQ8z7ROYMFdoAT6WjWLyptBXx0i380u
 cpo6JT3FCj/iuoho4aMPPlRR2KcGgZMh194VEQLhhbpd2jUxCFSW+Z2povLbeLhg
 NpnikkBbsW1ZvInF6S/yPdCGWqMc+mY2uF7QwcYXfP79let6sEezM557vxWdDdk/
 C6gt9ar6YTZ4Mg==
X-ME-Sender: <xms:CYzOXo3k5ggk4CMwUXr4-QjPEHgDZ5wxvRkmItNAHgZM4Ddb2W7JHg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CYzOXjEamHtenIDCn-_P7UuJat8hSAjGK8tXSvIIdLW87gJ844uE_g>
 <xmx:CYzOXg6F1-Elxg63MvQ6RAhOYNMMMAkV8NMV37ryabHpJ6Xiw4zosQ>
 <xmx:CYzOXh2nGdwYQm7Bqs5tVe3YdnhlwB01W2KDu6mcTCggWRHBFLv4ug>
 <xmx:CYzOXiDJCszV65p7WjgGUYa6NwaOP-FbahYUafV-Ig9MORX3d-JMww>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 648093280060;
 Wed, 27 May 2020 11:49:29 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 008/105] dt-bindings: display: vc4: dsi: Add missing clock
 properties
Date: Wed, 27 May 2020 17:47:38 +0200
Message-Id: <867813ae6b3e9cff0e9627e6ed09569dee5573bc.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084931_476296_F9235790 
X-CRM114-Status: UNSURE (   7.83  )
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the device tree and the driver expected a clock-names and a
clock-cells properties, it wasn't explicitly documented in the previous
binding. Make sure it is now.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml | 11 +++++++-
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
index 3887675f844e..3c643b227a70 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dsi0.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Eric Anholt <eric@anholt.net>
 
 properties:
+  "#clock-cells":
+    const: 1
+
   compatible:
     enum:
       - brcm,bcm2835-dsi0
@@ -24,6 +27,12 @@ properties:
       - description: The DSI ESC clock
       - description: The DSI pixel clock
 
+  clock-names:
+    items:
+      - const: phy
+      - const: escape
+      - const: pixel
+
   clock-output-names: true
     # FIXME: The meta-schemas don't seem to allow it for now
     # items:
@@ -35,9 +44,11 @@ properties:
     maxItems: 1
 
 required:
+  - "#clock-cells"
   - compatible
   - reg
   - clocks
+  - clock-names
   - clock-output-names
   - interrupts
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
