Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2301E49E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jure976IJlPtGlmC3MJOLXlgf2Oo8sbIyk4RlYxsa/0=; b=O0KYk7ntcv+bUf
	gLQl0PAlYuZi7M1uk3TsUz2h2a1I/IwizVTVsOtnFiwgt50jOsffvxJfDtUDZK13IssMO2DXgzO3+
	/K7J2QzeQ52TD8ZmMrObUPTUctA6sEwalSAvohew08DTL57CO0Q0zMj3C+XcjausUsgQsmzy/1KeD
	2//khI+KDz1+3WnFhBxs69XYcQZZDdX+e20o9b/wbutyyFwsJ5FybDnuWX47e+hjIWrtuTk26picc
	+I+76Ioe0tQ8Lf5gyFBOl4FaN2syzoPwV8Bge4Pl0+TFTCW4fpwp0YE5UIXVIpQlPr2SmSZdnSDCP
	F331sKLshpREgNJ59wjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyqp-0006Ip-5a; Wed, 27 May 2020 16:24:19 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKQ-0000zv-Nd; Wed, 27 May 2020 15:50:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id E600B5820B3;
 Wed, 27 May 2020 11:50:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=mIo2yTnIciTwR
 AfqGqPRdeUMoEIyJ/WFBxN68ut8oG8=; b=WIujI7WharlAGicvX2WyOiv3jX+w/
 sT18coLSjEtk5L6aOGZY5lEKGgnwldzH3cLD8lbkMcVhqvgRz3ICcqIxnBGeRMrw
 sCG3316RnFnMeU3i7e5daLdaLKRYg7+FjeHtF0AEpaV0IQ7C+1MFLC+CbSpOWUq8
 Vn3+NbxUHP5RNbgafLj5MOlPPLpXGsan+WRemQ9AKtNZ2fkjRbsrk4Q9CHqW1crt
 s6Fmu23OKv0wtN4mphn96mVswCajMnF677jS+WpYpaTucREJhPkTggCh8/UYY8FJ
 1UyDuHxaMWLdKntiSlyOJfz2o7MBprRWdDO6lqtxZMkVGXND67UCYIgTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=mIo2yTnIciTwRAfqGqPRdeUMoEIyJ/WFBxN68ut8oG8=; b=Wn93fV+R
 q1M2XVFtqYnkqegBnI2+hcYd65lr3f+m4BIGlxHmdf6Hgre9IShj5JSu7XGCoXz8
 yE1eZdm5wV5arOOa4w2NiU3YeUN8gw1fXX0yU9Xr9IsJBNuQpRC7Lu/HNUDfddqG
 0USSPnOFBnuYyRh5hEXkMrmMlWQUGDXpxlYp5yza7lRjsl25J+ZZ5Rqqqyiczz5A
 6Y+vrG7MRNzE+ptXg9W/IzFwduiWxOZeFqevg0I2owrehgdm2zYHq5DfTMITEczi
 4H8DDAVfixWaqZKs/4sqtQ3QLwSfPAA3lKzrTRRx7b0vRpBPbHEebDd9YmMP+y7/
 KAovOHXo2fb26w==
X-ME-Sender: <xms:WYzOXuaXTafeeH1qBIUAYGWr3X21ebDrB9dOHZ8wFMBc7C6HItNLbg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WYzOXhZtgLYNhhexBOTBA6ekPuv5j5tLZn190Cf_lBBfLsUgv6Q65A>
 <xmx:WYzOXo-OWLJuw1Pf0HRrPKQfBDUL3huWfJqU7z1Qe1pA2PzsrA7jDw>
 <xmx:WYzOXgqZgDKyETahtm56zYeJtFcIIQQ75t6Ma4356fq1LYgp97pVng>
 <xmx:WYzOXk0QdgkupH8rqEGRjj03brjLl77Z9AxUQD2EfQ-GxsT29GxhBA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8671B3280069;
 Wed, 27 May 2020 11:50:49 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 058/105] dt-bindings: display: vc4: pv: Add BCM2711 pixel
 valves
Date: Wed, 27 May 2020 17:48:28 +0200
Message-Id: <38e915fcfcbc6896344423eb651f60cc04273caa.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085050_929572_33843B1C 
X-CRM114-Status: UNSURE (   6.67  )
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

The BCM2711 comes with other pixelvalves that have different requirements
and capabilities. Let's document their compatible.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
index e60791db1fa1..4e1ba03f6477 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-pixelvalve0.yaml
@@ -15,6 +15,11 @@ properties:
       - brcm,bcm2835-pixelvalve0
       - brcm,bcm2835-pixelvalve1
       - brcm,bcm2835-pixelvalve2
+      - brcm,bcm2711-pixelvalve0
+      - brcm,bcm2711-pixelvalve1
+      - brcm,bcm2711-pixelvalve2
+      - brcm,bcm2711-pixelvalve3
+      - brcm,bcm2711-pixelvalve4
 
   reg:
     maxItems: 1
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
