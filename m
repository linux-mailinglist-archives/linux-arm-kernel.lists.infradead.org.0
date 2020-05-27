Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87FC01E4916
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNd6/F2T7mfH5faAvZeGx+RaVKqHLi1qOOolGVaE5Mc=; b=dUrORh5rXqIYen
	6QcIbfhKYxEBmUFZ8Zioj0RtCNQl1rj701vUJiiY+FT+LyDm2E7JnfCu+Y92rFifR77ErevVS4b+g
	zezP/dP8PyFxbVrX5SMUclF4OMm/+J0OVpc32khOursIaKBAP/BXGYgDQOPmNASMD301Am3tXemTk
	fK2A4NfP9MYyDluoeyjrfFFIunKi4FwbnoXuFjpjBoKODRVKvFhZwB2gwL9PLEqeUvmT2HhkLWToF
	QnBuho4Zu6HhBXJkkt8hwyD47D4oR8zJeN7zf9FK4XlX1Wc9pd7DdwTKAyuRhQttv0Eshr16Y09U0
	wkyTL2/PCq9mQ2yjL0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyVn-0005gY-Bk; Wed, 27 May 2020 16:02:35 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJA-00064u-9C; Wed, 27 May 2020 15:49:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 519AE582003;
 Wed, 27 May 2020 11:49:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=l41voml82pNgG
 OR2Kp29KgbgqjpRY+t3Z1kDCxuBln8=; b=LwyVj0+V+DEaHSykM/vtJwaul2K23
 QDNU8Ty1iOhjlOwxdohJuJbJpJiRiRal4JDGuOHCy+pFzgx77yLj2ixp21ufLsGP
 B3uOtt2puIEP0u8NYd5DAdV8yrcUCiNysE7pkbftLgi5jSSgvA2LYztDgMaDPGPD
 x4jkhmPbV97DYnvZypq8cSAMYzsHsm0uyA+l7Y+nXuO7fzsyTccxPr+CIxugluzf
 Y7jaRyvLS7blQGyRqAZgju97h2dEn4BGLnZB1ncCUi4ad1wziJIRsBpPQFRKjaGU
 Y5zWHNiLV9HlcUVDwfNvWtNTjMdFLS6yA9u1pLWa91qXv9uCdRB2u/PvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=l41voml82pNgGOR2Kp29KgbgqjpRY+t3Z1kDCxuBln8=; b=l+sQWYkP
 QN/PjzUHwCSyMNiqasejVTcljvtl09YxV+msYyoEc72qm/JuTSj71dtQTs5TE/h0
 o+VFasE0INxrM39eUGxcELp3BWrC+0UJi8z7yXa0zxjXZEK4e2zCbQGdcdcUmHWe
 DOtT4wQGCG5FzWELp+It3z2iTsLbfQAtkCfGCDOVStSFKtobvmL8z2M9FRT21jYc
 l8DEYeOXbkCU2fsZ5fP5/57GLESKufFEU+ussoqrBZ3v/SsxKVfJ+ziAcXWZQlru
 gDPUNWZwr81f7d/i0ddHpb3PuPU/LG3XeqTdyeBqaJhsOEWlS6GqkHEqiubXDKLM
 MkaMi5/UT4Oa2A==
X-ME-Sender: <xms:C4zOXmVdW4IhUCfS7EfZ1WYyfxrl-Z8g26TGHVebdW-FJZdP7d75uA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:C4zOXime4Y2KPW2Ahpz-wCnnlt7HKomlUMiw517uPXZvmlIXpw6UWg>
 <xmx:C4zOXqaFVXAc_3WD1Q4_Gi5kHA-D_MgokN-UnSin9yiGttzD1w40Ew>
 <xmx:C4zOXtV3aBhJjmFHhdaApBUCn_DZ22u8GbT2mDOpJo2D-8kgUoFH0g>
 <xmx:C4zOXtg3D02naQZX4ovv9wDz5f-W1nLksx6jk9Dktak5kYpjcHTHng>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E87AD30618B7;
 Wed, 27 May 2020 11:49:30 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 009/105] dt-bindings: display: vc4: hdmi: Add missing
 clock-names property
Date: Wed, 27 May 2020 17:47:39 +0200
Message-Id: <10ef2821e10886b66af5f8ba3e212aa87e9fd360.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084932_468698_74C0E9B1 
X-CRM114-Status: UNSURE (   8.39  )
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

While the device tree and the driver expected a clock-names property, it
wasn't explicitly documented in the previous binding. The documented order
was wrong too, so make sure clock-names is there and in the proper order.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
index 834cc5f1c254..52b3cdac0bdf 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
@@ -23,8 +23,13 @@ properties:
 
   clocks:
     items:
-      - description: The HDMI state machine clock
       - description: The pixel clock
+      - description: The HDMI state machine clock
+
+  clock-names:
+    items:
+      - const: pixel
+      - const: hdmi
 
   ddc:
     allOf:
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
