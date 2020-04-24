Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2165A1B7AE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jure976IJlPtGlmC3MJOLXlgf2Oo8sbIyk4RlYxsa/0=; b=qpyjCkiE+ipzXf
	8K2befe3oGwRt6XxHqvGneXiiDuQwOdPi2gtNcDLAlR2W9C35jckhFAAJUkNn5R4g0JtKbHjweYzB
	HwFle766X96TscsKUylm0uGfmmPtC9LcJ302VkLzb+bkQzs8stv2IKWa4DyLddZ51DkdFLrRMf3/2
	YnYbUdP66I3YMN29QQ/uSaND7gR7unlhhPnUb1YMlFvqEsRzJiJ8reCLQ6kUYBYNE2PNeUlre3Gkl
	yIerMRv9ZTZIyZY4WSdNpi23nbbI5ZL3o/TxtswjPGsCoXqMclTwAKObGYCIlYp64CbI8k7mFZTYJ
	1bdragVGZeeE6MULXdkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0hX-00021d-Uk; Fri, 24 Apr 2020 15:57:15 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Nj-0008Ss-FB; Fri, 24 Apr 2020 15:36:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 61F48334;
 Fri, 24 Apr 2020 11:36:45 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=mIo2yTnIciTwR
 AfqGqPRdeUMoEIyJ/WFBxN68ut8oG8=; b=XAY7KFmQ9PTHYwXMyTnUapTYKD24g
 Mn8jD2A7zM2FUgstdDbWgxTUbdsc0MaTfjLL28skUbmn+ghoY9CUmOCfqIdgQOMZ
 cWcuu7sdV16n6KAK3qEP2dsnkV/3La8xkZiUS4kkqXAB9joVKqtv+siHkCJrOIDe
 e2USEfaz0X0x/OYcNdI3PFhO60umohg4/nIRvQytUdoB2svwIXx1YwCe2YAPSwg7
 MbVoWIWpWC8RsjFafN9sHKp/Kjads4lImncWQ/tOehrQiQmrU09QMlRYSwl5TLAD
 rIr8IusTRtEg/ppTulPcHDVCtD2jf1SqMDWHTImU7/5FtExW+xat4NDLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=mIo2yTnIciTwRAfqGqPRdeUMoEIyJ/WFBxN68ut8oG8=; b=ZVsO7R0B
 BZvoD2w8F8WMZ1HSehOtOrclHujG/eMySrgwFi75FD/rrRE0+DVvt3nPGa/gzyST
 ZciLYHA3TuTaKOHirgTL4GDuVa/Ljt//zPqv0uQl4UripPfTm3b1LJAaX81PV8No
 1EVD+UmkYXIugR48wNuwmBwQp268S2ETvuboamscQZrVbip10DIXe0aBk5ito7w/
 i7in/zrC/FZsRg9gOJTBDtcsjR42ut2ew6NdIcoYYhnrC5LWrrxthDgLVVDHOPj/
 uzQDeESNeVl76yAfKoNecbhciQz5uDODLalYS6nDF1LMzUpVSEOsDaYG70y5yBkq
 PW+yE+63KXrOOw==
X-ME-Sender: <xms:jAejXrPXjRki40XukrQGpqYkBxwCbfRMZWtOdTF6OGEOwB7nsL21wA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jAejXqOeWAWXjKtcJ2WkYnNupPOLAY4qkuHbAlb0fetjOhhsWlp7Tg>
 <xmx:jAejXlTqMD-dvnKAFtjv5Bs3fT9Zp85QfufkPxe4y3sRVM38Hueq1w>
 <xmx:jAejXkBHysai9lOmJH8G_LW-AhHhH2rsA93tJMrkDLMjiP-1jYnduA>
 <xmx:jQejXoIDgJUvT34hWhwsWHKmIEK8IAAn4vmTCVAQd5Lor41MGUpKJtOFYHo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8AADE3065CDA;
 Fri, 24 Apr 2020 11:36:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 59/91] dt-bindings: display: vc4: pv: Add BCM2711 pixel
 valves
Date: Fri, 24 Apr 2020 17:34:40 +0200
Message-Id: <d32c991fa0441b631ca5de8a39107a0db5e13880.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083647_583306_CACB892D 
X-CRM114-Status: UNSURE (   6.15  )
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
