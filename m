Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13AF2157270
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RVPvlt2gEVzMh34rRccYpyYTSBGbMSG9jToJkwbjbqY=; b=UqRZOn/ThohvS9
	76rafhFC4ZqD5PIkTLGjvzTfzw6NfS7f7hBNT83vw/ym5LtNsWUfbrFtsuSWE4QJ6YEic6POQftxr
	6FBvMKZbfISxbWfjma6JnhzLdLJS5HA88ZxMkY5kXeGM65dAU/OsrrdLeo0thZqzS4XMjsdNfNzHR
	x4o5rbOZD+OLpNxovrHdOEE6I1E4ziUffTchJNqScBJwkHuu8oadg6iIAx89Y/EQEK3eZ6jJB/yY3
	BT9jkPKC7Aaa4OJaYmcG6iGYzFmKTbboQUmjCpe4cKvo8CnuVVew6rNPXv2idS1D2JVXLjHqQiZiB
	71NDqRnPeF+2Crtcv9Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15ve-0005EK-3V; Mon, 10 Feb 2020 10:04:34 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15vT-0005DZ-4R
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:04:24 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id BFA4D1C28;
 Mon, 10 Feb 2020 05:04:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 05:04:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=aFqJHi2DxkxEhthklRhVe9pAV9
 MnZcHeB0F11l4pfqQ=; b=AUDYwrrMA0q0yfov4T3x/hofaL6gtCUu1viGTdTT9N
 vpzVTMt7J7ro6OchNXo69nKoTOMP+k3mS4nQzX0pX30yoFFV4n/Yr33hRU1wrNVu
 53AiSIPEdOvofULxLieFkDGrJVZPsmKYlm0OtxNy2jQAwJqbn9p5Uuk6bSd4JbGY
 4QNXNwghPJz0cZoMeC+rSxFVEw4Tsf1ydNdYNTro3I7nV4+Ok/vvctmNOE08eRdP
 a7RyO2tUS6LVgOYtNwBX4isEHWTOelMNXewg77Cgy4sXPS9OaLXjvJVaOJ3Fn/u/
 /qH+w6eTwlb6p7Noq6NcuAOw2Q+86th1n+nEFm/7e9nQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aFqJHi2DxkxEhthkl
 RhVe9pAV9MnZcHeB0F11l4pfqQ=; b=rx9mXnhFWcLsQilC1Xm0TIfT8AVKlEOB0
 6LOmDZOtPhiqaDXT6Nx0Or2HblJGEzfwnoOGhJMkZXGvhJGw5NCDmlK7GfsoWu71
 mp90kJR+sQHvZIofrEBFrIloHuWOOumCkPcpKTdqgfl0Pqgei2YYTcbanf12N/8g
 BUPJuviPHfu/y7gV4Ssd4isOfzGpkVbIDd/RZtMjffMA6vs6helP/KBipWkgA8zJ
 NCF2CmaOzNb0AU7x3wRClMKrJ+RnE1YycFLp3xKFBkx3v1dcaBVWXu/baHO8nxtD
 YYF30YyCBhCzAamqdLw9j6MB2YxfvrOoIoNbE+eSn8cMJ8nEnoogA==
X-ME-Sender: <xms:oypBXt18sxPnzpQkl9kpJnyAEReV6_plzQW6E-kH7aDdexM9FlG7Rw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oypBXvHIMtmjPaNZ9JWzqB6AvIQK-kEBbdZW1ROsi42GiUU1q3h1Xw>
 <xmx:oypBXkhnHCbTtnqt463RC0mpP0nIpNiWlmqkK2jrBz8HXL8EEy0ECQ>
 <xmx:oypBXoe7i2TJ6IsAkKYYHzlSdpDROxyoD45_jjUo_saMMRBCcnRIhQ>
 <xmx:pCpBXjA30VkQgO6b-Gi9-xH2rNizDoeKWTcySJL7fmzsoHMLhcnAhw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9596C3280066;
 Mon, 10 Feb 2020 05:04:19 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, sakari.ailus@linux.intel.com
Subject: [PATCH 1/2] dt-bindings: media: csi: Add interconnects properties
Date: Mon, 10 Feb 2020 11:04:16 +0100
Message-Id: <20200210100417.78583-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_020423_322172_1122CBC5 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mchehab+huawei@kernel.org, devicetree@vger.kernel.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner CSI controller is sitting beside the MBUS that is represented
as an interconnect.

Make sure that the interconnect properties are valid in the binding.

Fixes: 7866d6903ce8 ("media: dt-bindings: media: sun4i-csi: Add compatible for CSI0 on R40")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../bindings/media/allwinner,sun4i-a10-csi.yaml        | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 9af873b43acd..afde17d9dab1 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -51,6 +51,16 @@ properties:
   resets:
     maxItems: 1
 
+  # FIXME: This should be made required eventually once every SoC will
+  # have the MBUS declared.
+  interconnects:
+    maxItems: 1
+
+  # FIXME: This should be made required eventually once every SoC will
+  # have the MBUS declared.
+  interconnect-names:
+    const: dma-mem
+
   # See ./video-interfaces.txt for details
   port:
     type: object
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
