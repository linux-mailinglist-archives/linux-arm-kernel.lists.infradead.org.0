Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A07451E490E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fw89B13mBwlbvD6emYT/tuszqQPkQSpGAX63D61G+M=; b=A0aRqxHelf+qpj
	TiA8hcBhdR4JNh/DFOsQUCtm2E+dgyKqoIos64yUdabt+IxU7RV4YwDcb+XQMC6Jc0spvnGgWVOor
	a16Z0LDwix8LFAKgliTqXtcmUbKuXCQjGJCvU+kqM0YxlyoXJxgV1+GFJNisOwE14Na+9+3lRxe/8
	0hw1wzBCvjcVndzfEo4/uymyJagHcZ6N909wSwQ9x9ogBahd4VAcX4FsL3hsbwFcN8tDfVZTzRta9
	dcYP12Z9PiRQJ6d2NonmY3mTTQcknJlPl4+FriL9+VGK5P6CxhoKy97QbAT9dDUiKr6vh6USi+xGc
	oT6TRJvjR2Cd/nKPGjxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyVS-0005S9-Us; Wed, 27 May 2020 16:02:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ7-00062w-EH; Wed, 27 May 2020 15:49:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 40720581FFB;
 Wed, 27 May 2020 11:49:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=5EfepUmgVDPUO
 z3GVL3TqSbU3jIl6CJ4wxOzynhsQS0=; b=wGdtcsoPQSEMk57Pp2QJJwhiH3JXO
 ZgB0OTpO841RseW2zC8TuxTPXz6YYA2Fo7aPBgu2Ja/jYBMb+0IRLGkx1Cpt9Bin
 rR1CCvBP9zOld/O0tpiOtdJOXyi+JZpazGIMO1YEHdtrrSM9ltU/wQjn3y3lHXS9
 5TKFLA4mGSYYRFEfAhz6qI3wSGY4yWoR1cBrVSeMlTarf5r1G20F72QTBX03Epmo
 oZWzmrCrLfGMxtNWaw5OBLtDuNTUpK/Wm4lSDZy7fT8Hienz8s0Kl9urspGXC/z8
 fv7Xh4oP6aQ62hDEJH888eEkVfGn0N/TFaBQxXFApBLQTn38CIvRNImqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=5EfepUmgVDPUOz3GVL3TqSbU3jIl6CJ4wxOzynhsQS0=; b=P/yJoS4r
 wZPI1T9jo+AULljM4ICpiwFadvxLo0HFPahyrtmqjj8YcqPWmTyzy4ysNIKhIFbI
 YMNpb69xzt4BYvW/UxwhCgJLpepf2WDqNsxUOGdtHyyV/e55CL5JRMQSKq+58Mip
 0R09Hl7DgFTV4B7VL0JcCkKPWDTAWL9NSRzW/m1kp3lMQq/f+jhTnZjlxsKnYlft
 gnY+DoXHj7XBu6JXX73S9yF0EDmayRBx+erqFA29HC4xeoUlYwR/IxffWpFBNVGC
 YDIbpby/u8LV/evsQChQPOsa/q3GPCGyLMXRyHN9xNdyJALzPf7M8g/xFJCZSA6c
 mX0Q13+eeiLjgQ==
X-ME-Sender: <xms:CIzOXin-Rec4SJPItuM6TITo1R5r0uQoGhJkg-Ca31OSnU-RLsHTeA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CIzOXp0p6H6uuw2gatHvPkQAt3tIxXViKfHgz3TK884fSn5pxeIfsQ>
 <xmx:CIzOXgoeWRj97NThbIzJFm-pAmwTW9DGvOEg7J3aW2CI7Kg4unVPxA>
 <xmx:CIzOXmkyChH3bDKlcDjSeRR2Ju0kCPETdokBB0jN0UaBSPdk6-pHIA>
 <xmx:CIzOXmy_pLwVXdPD6CYWKaS96Ok6eANExebgMILMWquhzvRPH4Z3Ig>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D478430614FA;
 Wed, 27 May 2020 11:49:27 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 007/105] dt-bindings: display: vc4: dpi: Add missing
 clock-names property
Date: Wed, 27 May 2020 17:47:37 +0200
Message-Id: <8c7a4a9d85f7d1b23346367acf8d321ddad7cffe.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084929_661304_80EB3F87 
X-CRM114-Status: UNSURE (   8.43  )
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
wasn't explicitly documented in the previous binding. Make sure it is now.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
index 288494b70e82..58213c564e03 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
@@ -21,6 +21,11 @@ properties:
       - description: The core clock the unit runs on
       - description: The pixel clock that feeds the pixelvalve
 
+  clock-names:
+    items:
+      - const: core
+      - const: pixel
+
   port:
     type: object
     description: >
@@ -31,6 +36,7 @@ required:
   - compatible
   - reg
   - clocks
+  - clock-names
   - port
 
 additionalProperties: false
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
