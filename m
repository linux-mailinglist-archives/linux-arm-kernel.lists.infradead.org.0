Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D291B7A69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fw89B13mBwlbvD6emYT/tuszqQPkQSpGAX63D61G+M=; b=WFyNmo8T2ZxgfI
	xck/+pZ7Xb+6K8KcX/2kiRwvE4teigALSdQgrLJNh8obYGdE44Bi2cqsw6tyF5Bc9KHStskhNkN4f
	15fl2GA1btnw4a0Ds9d2XIX2Xwz5TuCtOUxRMdD8rxCSMjp/OEw9LX6/4uSV4kJlPfoG64ExaGZbc
	JRuqB0iL6c9ALKQi5RQHCu8HoxXDIQNS/7Sk4kSecpYeA+4wTYq6E5Ngg339VWFqUtjvm2CeUoBD6
	HIe9i06mYOBu93nnf0cdkC9/SaxVrMDlsWfGDxi9NqT46rWfC3pDTg6RNOZyjsdXGtM6bqqiKTfnj
	CQgUxcobBMLqTigWo4Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Wk-00039a-KW; Fri, 24 Apr 2020 15:46:06 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0N2-0007rs-Hx; Fri, 24 Apr 2020 15:36:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 3DFFE1338;
 Fri, 24 Apr 2020 11:36:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=5EfepUmgVDPUO
 z3GVL3TqSbU3jIl6CJ4wxOzynhsQS0=; b=txhJsuoBnl+bVOQuzi8GERvG9jny1
 icHSH5yYHUNe0aHhZrfUwh3HDEusyYk9UTVXAWe/Fo69Fea3dQczMne1t+uJQpyl
 e5i+AoI/xSeBWLUHmpFoiOZx3yovfreQBPOX6o1Ns1JekaVZuHfE6QyCqGkDL/3d
 D7DluPyBU/6Nvwj65GJUiVa/17BfU+HN7yPmEbKgK3qvwLyArpMz6E7L5r6rYJeI
 YzR3eFpqxIdJq1pT283Zcn0rft/rNeUhPFKQ3c300gGIec65sb68WlDQ9XDoUvJZ
 nZ6PLhpP8CcReBntLfa1MlaDwhMrLioGhjrS9vlgAX91wn1JeQvYlLrrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=5EfepUmgVDPUOz3GVL3TqSbU3jIl6CJ4wxOzynhsQS0=; b=FU2uHWGj
 2QyRJgVUbZCQqCft0ETFQdxL9P0+lWbTdRtvpHrw9LchDiuz+clw/bP1sWBxnzW0
 AQW7aWK2TQIPzFYfRhV4qUrMR8IQ3cfFqImgQDBlkYoI/83Bk+GnXA0U1ZZCknSZ
 6Sf5TYqnOfzj/tnaWZaAFQNR5eIx+DIOgMZsPrhGhFqI0fb52Ak5OFWC14HaIBXw
 t8aL+FH8FW6C36/Fe0rPFnVqNtAmQBWzY4ZUFVWx5FiqDVgo70diLQeU4du7mZZs
 EtEDd5Zc9i/65s4kGPV04wjBxcvXpxPFpRda42lQZLWFUkgcD5kgoq7COyscnzw+
 9AtpSbxbFv4mQA==
X-ME-Sender: <xms:YQejXqC8WTmxeQnL_VF53PL1f2WLTS1YpfkqvBc2BGuyEJbgxxSjSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:YQejXpKxWyPhAs-mJK7T8ku-OMZ11X2Dm47mz1NEKKmI3Vg5JycFgg>
 <xmx:YQejXltevHlWVaFZaGI8dbodUyQjhuWJkxUs_-nRgQmMlc_i2Gem-w>
 <xmx:YQejXi79ukv8eJ-MdwR3KQGX_L7bhDddhR6mP35GfPeL0txUUarqrQ>
 <xmx:YQejXv74mxP4GPht6FuGqhBJ4qKT4anSkNIiwg9SlnL8ub99D3ElfgtCADQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 75CFA328005A;
 Fri, 24 Apr 2020 11:36:01 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 28/91] dt-bindings: display: vc4: dpi: Add missing
 clock-names property
Date: Fri, 24 Apr 2020 17:34:09 +0200
Message-Id: <068b7528b56d53a5c8a527d66e2306c947477940.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083604_764187_5A222DF4 
X-CRM114-Status: UNSURE (   7.80  )
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
