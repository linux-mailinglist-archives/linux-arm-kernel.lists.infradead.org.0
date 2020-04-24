Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C51B7A6F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNd6/F2T7mfH5faAvZeGx+RaVKqHLi1qOOolGVaE5Mc=; b=JJXIVxmFo6IuTr
	4dCRo+ggXDgseLFzJVjneD9cSz7EUcdCmK4TeTBSP7xTckAC342y3ZjJc9rk4MpPTfYqQtNGH2ntX
	C7F3uQu2yh4yIcsMVnFnieVh4FUgJ9vGJtIkKYJSInXrmO2OiHHXrkmXfXRCPgHJscGi0rmOF08Vi
	MmbkhGuvuGj7Nkr4r98wKCZC8RD2bDeTMSAvrrTAYVKlerlYUTLQls9vM430kaVDThcvA8Nai13EA
	b0qJATo/zrNrRtx469R8a+uSuVrGZO7d0fX7Z3VzuzUTtnLqrPKCEwnq4/G0hYMana3C+2eID9Dyq
	IVX9QHdPBXo1JBpjkpxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Y4-0005BM-Cn; Fri, 24 Apr 2020 15:47:28 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N5-0007uY-0s; Fri, 24 Apr 2020 15:36:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 0A1828D8;
 Fri, 24 Apr 2020 11:36:04 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=l41voml82pNgG
 OR2Kp29KgbgqjpRY+t3Z1kDCxuBln8=; b=tYnFriWnlUexxsUuM7Br0mFchXr7R
 GnS7k2T6/xI8WqUgJcF/wzX8Z5ikyUg3Eutzd+4+yByQJYFnGQl1AaeIqyUQQ0ds
 KzgpVSyUUoiF44auzE809Fqh0OuYRieqOISEd51/9Oc6SPfWP0K/bSqP6vXgFC+N
 EgW5eaU1xXpuQjWgs3Y+2mX34l6n8TDEyES7wC+eA4s/SWtX8SToBdWfEyit159A
 wxZuOqUwru5q0bTEtxic2VWu9zMkCaH89VcdpgspPoJxrvC/cOwio9sVOwIYbOPJ
 dN+GEN4/CKIiQiTJ3TwdoTYPAHNqE3SylVVb+Q9QWNdFddm6pmSOjcoqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=l41voml82pNgGOR2Kp29KgbgqjpRY+t3Z1kDCxuBln8=; b=q+i0wkga
 V0UYJNjDmhlD86+re4lfjlazcsG0chhJuiw7gJQ1YflWmy881vrk8TeH3O5gBVuZ
 0qhRBHn4OL0k3rMqNcHUqwRWIAarVcXYiuUIAjfEZJcZKzbZIwn0+NDSeFEC1sRs
 6MoJ2GLHu4EKguACvr+qc6I/kcDc7lBbiIi0Y2EfQse60yyyCFSfGvOSHYNW/VHr
 ERWem9rhUs77DRsR5CgAR//yBHJEkrSpILAmrdabGjipVouhHBnF8J4bsruRRfSl
 7U7ArsW32CTLQ9r1SGTXhdX+U4VDBaDqvvpiYzbKoqY7f85fQjMed/i94+2POCTM
 U7u2LomJuuo8CQ==
X-ME-Sender: <xms:ZAejXi-YVo1lOGd5ouDqCWOdxACj9VUbJCepxsY6gPnYz9gy_Kq3Yw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ZAejXj96wrPupWdwfyr6dTr96KuCnB56dnooalDGX_g2VHqsL3fX_Q>
 <xmx:ZAejXlEEyTImJYqU2f7609-VfanSntFYnOz0hjITtThXJEaNfGMSZw>
 <xmx:ZAejXteeR0XEY0hzYJU0IdWAGVPwROlGeO3bRSxGIH8XbTSXyRRC3w>
 <xmx:ZAejXiFuvSx4h-C5VvjRbdpfGYBTgZ-NE-uDhbNIBS_X8Ryo9p88h78vDss>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 411603280067;
 Fri, 24 Apr 2020 11:36:04 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 30/91] dt-bindings: display: vc4: hdmi: Add missing
 clock-names property
Date: Fri, 24 Apr 2020 17:34:11 +0200
Message-Id: <18f458b573736cbf44b2d3d46fa705d3b2234f13.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083607_215080_9FB3CFBD 
X-CRM114-Status: UNSURE (   7.87  )
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
