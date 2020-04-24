Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994721B7A6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWLHSXhPPX+vvWMy6IFuOUz9yLBkuzON3ELNbdosbkw=; b=LFoln2pIByYnDm
	QcoPsdt/3l7GN4yrMtJW5ZyTNoLapNJxI2XW2FBR+JL+1Macl3qCN6/hMC8bswdbjpevhzWqqTfLy
	hak19zedMd4H0Pb9Q0J/afHz4Kn8Jac1tCVszs0FE+SVkcwMgk9MA/0tQdOfW0zfkHAXK9oGC8Myj
	eu0Rm0qeu81S2CURjT1cM3+8kn+7YXgDGmHQzUTZYPlPDWK8YDg9sVR/aAkBsnd7g6jghb9yEHYJK
	DJdfxaIipHYNp63JxoALRqnyPa6CPwkZCDyoQnjGReRKKTpcg6csV+YhlNru7VoOCS6icKuBrNmyn
	/YXOyP13pQesQLrkIbVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0X7-0003My-CO; Fri, 24 Apr 2020 15:46:29 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N3-0007t5-Ja; Fri, 24 Apr 2020 15:36:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id A2D791431;
 Fri, 24 Apr 2020 11:36:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=FMKLC09xuIf9F
 IYI+xqoFdFwX3vaShvGRIMTND5Z/+g=; b=vFfuVaTBl9lBx6ZA41ONXjYnFmlbp
 1NRewMuL2HFtVGQVR1sFE2ehBKg5TWy0c8owqnD7Idt8Ip1OgmS/ZD7vujJIdGH1
 oXAQD0IfScXmKwzLlgz4qIavwX0xa7wtiGa52zAR80dWpo3O2kmGTY192DkCYXMX
 PrRj6B2g2G6WX+Ks7Jp+2pF9NHx8grY79nQp2CvUv+H7700vprZ5AbYBs6oVG6ZZ
 k2m00lawZe8wnZmTNQsb9bR2TUKkGNHEIAR4FjWRaMjcn3acL+9CUoyDfSRm0Pga
 nD+08qqizhA3tfQQBur0wRPpWhpDpzCKzqf94esKXax6wNLbR36v+zZug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=FMKLC09xuIf9FIYI+xqoFdFwX3vaShvGRIMTND5Z/+g=; b=l5Tkrgwu
 r558IB52HFews4Qvk9hqnM1tMnPOGyRIUlKRZ8znuQCAiUbghI6qNYMKB+fCiW0N
 mdD+Yw70W593GTMPQP7Iqsu7nfIEOWV4TgeKhXEVamQeK1+6LLMFptRmtGgEYUjh
 Is0fpwhpA2XsO3/SjT/XHFr3CAzSPl4QjbmAwTneKAwDFIoNA/junuobImWbwZAm
 gYO0eSR8p9jGTFfMFtR3oXHb6xB66S9Vewy2uCFuPB+Dh8dgRZvNcVl7wuS8jqIx
 IkuTWW5mdd4jZpe0xbf/RFCc8+jdnqXYh2rdPx5kzBbtyFpkUaBWq4sy7dctyzK9
 XodGkIk8JEEhSA==
X-ME-Sender: <xms:YwejXtMEaz-78CfRt8VHDSDF-2Mfan41F-7443840BSgzgItSSVDiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:YwejXmtvckOH_v0Zc3S75RQgkV81DoBmBappqeO5EGPqSwhC9zf7CA>
 <xmx:YwejXjzsSNu7ZSKymFDA8TDT7qmoQU8XzG_MHcd1FsmeycsRcYw9yg>
 <xmx:YwejXn4hfRyhLITSm-CjTvvgqLlrPhTMlo-aTkneWhxHuptTNfSQLw>
 <xmx:YwejXoZY41Z9pG-PSPtCJqihIIMb2yFbOef9FmSsb7I4vUGbNltVkEPHsM0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DEF6F3065CDA;
 Fri, 24 Apr 2020 11:36:02 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 29/91] dt-bindings: display: vc4: dsi: Add missing clock
 properties
Date: Fri, 24 Apr 2020 17:34:10 +0200
Message-Id: <250df886c0909445783deaf05dac777a362cd156.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083605_816963_01818261 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
