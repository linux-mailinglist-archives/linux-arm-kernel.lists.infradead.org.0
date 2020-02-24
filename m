Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A81BE16A259
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:32:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmngyPCt5jZGwGobwdNeZoxRNpwnPOHwH37PtGjcLQ0=; b=tFeogOnBxwAAub
	gvcHtts/UQvW9ARumyp+dSojQVqsWeQx7TFz9+4M0ZskdhhQNCVHqZsLVNR3NU6DsfJTi7hLzf94J
	N9u6igYekJMfNtZlUbVq3Pgl7DZ6fuA2PxfF+k3R21uORQAjufp52THYM/fUIt2vxuvYuDqr8gs7+
	BGTcgWF1C+qSO/tgEGCIBoIYYqdyKfpUMJKxtFTXqWWEBT6js1tCe4qxec2+LBneJF9PbRvaWY47A
	xgGJfYhvgR02q7NmGImi8THur7FnsNNY3V9L+W/07r7/SUwate4E1kKtuhIQfUV/QCFz7vxM8MD23
	TpaxAjVaZRUMs2bWFJ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A69-0000NB-12; Mon, 24 Feb 2020 09:32:21 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kp-00034O-8j; Mon, 24 Feb 2020 09:10:22 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id EB85063D;
 Mon, 24 Feb 2020 04:10:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/HqohafekctYs
 ueNYIyWADwS7ESNsNdoU7kv2sDLpQo=; b=pvpq2n60UGf4X+eFGCIt/2VXcc/in
 uQzJPBTxVii1lVzHbVsyvpuP2t1h2UZYIb+MXv7dfNN8XNfstibVzypy7bj2Be0K
 0L1nbW88TdBUw2GFRqYCPozPAEVlbugMdvTDXIvshn2hEn4PR2owUgNhKyIiGN5r
 JGb3eNedCN/PdV1rfV4CS5o8lDEX6cdZOA38dGyepuX4pLCJcEMs/xX4kmauKYRN
 RvMaYSD7zbR4+mBH6ab9MCUhhyJy1j7iaMyBB/KhAxtfwoH55AX5ZUJUvQR+7b94
 bgO8m0YAVHsTS/U3tK+0tnVi+I+t5/RoQ2/xgpVUMX4k4CXQlptFtrAVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/HqohafekctYsueNYIyWADwS7ESNsNdoU7kv2sDLpQo=; b=yZxC22rL
 EMci14Nm05ggtARzA9rU83oKRSc5Zl585o7m2dZAYZhyO3RfGAtxdt4zxoojni8w
 l1b7ZwqRRDXxqHAriHm6bfodBA9nuAEeV0aBZT8VWOa8Ip6yM1Hs4h0T164MUfWp
 d540vpSEzfWJlaqHYY7VWwvBB6L0agUQ7J7c7T2B/1zUz34s2nUGLkm7p/Kbz+Gl
 65OsW9zXQ4ajLoOWAiXFW4JH68/Jq1ZF6D31wZhIfXMGmcwVreSkHrbBVVKnZ2/s
 HPeNsFYZjSZGsGbIm9BPtdswJnNGubQcaibw3d0juswOQK8YEjYPzo6c5veWblTg
 3AApcviCxLp7og==
X-ME-Sender: <xms:9pJTXrwGr7g2eqIARQfwcccnahb1kZVaEcvlUna49LLAaMaHXpHQwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgephedvnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:9pJTXmXHV1BOGwG5xrVVMWCVEoE42m_R-0N_5Q58ZKUGu0lcyzf-2w>
 <xmx:9pJTXv97vtXsaMU5pITI1ZTwpds3buEu_VQq0qth5b3iljbkry4Jsg>
 <xmx:9pJTXhtdmG-omkQfWmHZ_fnkgZ227PIky5DzV_SV4zfZwNFOyPHPBw>
 <xmx:9pJTXqggLtWmhBICgx3_WOosJU5CevJe16gHtMqf2DnOatNsjVirN2GSqys>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 34CF83060BD1;
 Mon, 24 Feb 2020 04:10:14 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 59/89] dt-bindings: display: vc4: pv: Add BCM2711 pixel valves
Date: Mon, 24 Feb 2020 10:07:01 +0100
Message-Id: <4a3c6e3cad10eeff93fafbc512c35b0c69dd1c68.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011019_635096_BD1FA118 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
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
