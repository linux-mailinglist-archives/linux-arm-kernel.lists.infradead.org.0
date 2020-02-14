Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6615D776
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lIWCL2uxFCUMxvhX3qGV6GBURXf7HiMDQyx6CkJXm1I=; b=MT1UXQl9GEXUKe
	haibSBayJRtwuuR6pp7gRaLFY3K79Ux+wc3L68NqkaWz2TqAeGWiPc/PHxCd+e7RbZK5uos3gtV4Z
	8AYelLElZ4Fdf18DGuf7PVFZ/59eEsKm1Ta+CJVf87s2jqrKv9EtZBjS0Czrnn8BDTMoAbWLh/AQg
	PBXC4+rR67m/9IQMFZpiPE7yd9FbTrV59B5LIOVUwu1NrhFNL2tpFk4pjFsWjm8JA8LsM7TRb9HLZ
	TIJSBSFxJDngSFVKISe+4pFA5GNCAV/UfzXEA0NloI6n8KvCWDHWGGOGwHXG5qM3rdHAcWRY7Oyv1
	frzNjhjv1DhguURWhbpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a9f-0007Q9-AN; Fri, 14 Feb 2020 12:33:11 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a9N-0007Hk-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:32:55 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3490460DC;
 Fri, 14 Feb 2020 07:32:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:32:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=l8eDDHNYcUg2vqAcfVnoMzWlXT
 5rDFAUpSbmbYQS3/Y=; b=q7gl3hyDPfv4sQi//Gm+Ml6FO8bhyR3GNEh7WiVISb
 SbVB6DhN3qalZYC5wcU7ph7/+PF5MiXbhfmRaoNp5iYgaphdWcSh1YyG1B8jbXmm
 JztJ0zS/9c4MKb5C/bfD/Rfv8acL4i+jMf/9yqG+9r57WiTWf054ox6ul2ErWAe7
 YZB8okJH6HFUqubaloTLrte0+vu1qwI5rMFjDNKBEzEtfvviglHjMjYOISLOW8bm
 wxHDLiXuw0uNYJyATOEMpkqX9lFnC8jmc666tbKITveR42x5rTPpElc9TS0TL1Bq
 o6IxPWx6fUUgsoZMbZegJfT64L7BeehNNrDPkfdUw4jQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=l8eDDHNYcUg2vqAcf
 VnoMzWlXT5rDFAUpSbmbYQS3/Y=; b=wiCQvRziYW5SdgAKHR2T14J2bLJpYnQ2K
 85PDUHPxX0b6vlQ0prgHagQ3+ljh+I6Dubdy7a75eXNdIDAudUrk/yynyJw/3gqA
 ODBXMrUX7yFWiBub70o6I3f/8cpTJ0iPyBnljoP7yqKLhgH0ZAwn8XX1r9+97dCn
 JrQNEJQq2ATJJxiEgYcwJLzxES7l/frCtlP+Pd79F4rTTIE9x2XrgDlv9wjZSc5Y
 9b3C7ZACWfAO7WzR1U8oexueAx9k+G4kzfIaxBOKvzgpP+L7L0tTGS6NIlk5UFsN
 RiUmNaDESfIAZjEypQ91kFtiOuRm/By6o7e9L5PXxMGkTNjkjfK/A==
X-ME-Sender: <xms:b5NGXhWX3W3AAbQV8McMdGewxQy9sYVUFgWX5IIpD8CSTg8yg7W4Lg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:b5NGXki6WnYOVVKbSUrCyeCStEIhBTixD4yTYqd2Wxt7QTwkwEFfSA>
 <xmx:b5NGXkIyfYWw1VqMCn774jPEIVrKdTEsQ9i-3vynQAZR34835F8W4g>
 <xmx:b5NGXucuKNKGrQUP4-lV08lyvklhLtrnOlBDkXhQmYT1RnIKp-mQ-g>
 <xmx:cZNGXoiTlcty2ifP9whSTomBfktvCQTMLQbDHaojQSVIfPaKu--bcg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 813DC3060C28;
 Fri, 14 Feb 2020 07:32:47 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Date: Fri, 14 Feb 2020 13:32:43 +0100
Message-Id: <20200214123244.109300-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_043253_358398_E9C90B2A 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SoCs that have multiple TCONs can use the two set of pins on the first TCON
to drive a dual-link display. Add a property to enable the dual link.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
index 86ad617d2327..aa6dd8409dbc 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
@@ -105,6 +105,13 @@ properties:
         - const: edp
         - const: lvds
 
+  allwinner,lvds-dual-link:
+    type: boolean
+    description: |
+      On a SoC with two TCON with LVDS support, the first TCON can
+      operate over both pins sets to output in a dual-link setup. This
+      will be triggered by setting this property.
+
   ports:
     type: object
     description: |
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
