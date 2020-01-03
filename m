Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A379812F9BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8nIsAsnxWRusMUUwheB9ICAjdaGjb4lcHuiNRqqDUk=; b=WQiFD9yE7I1L4x
	ZQrWj4fPoLnZ5V0DetWElKXwtwMfrU8AO7B4iEIO0X8SOzxiFdM3Xo8+fYCbABfP1Thu9fKULufVA
	RLBBzY7E4kzGsgKMt4Iv+8ICdvvjhO9DpsC1wGbzfpgZFPUDbeK6dw2tVQMpb3bheJEpQcDTVtqQX
	Xxcfzg+C1suhi9qtErB+UYl7nhh8v+cMbyVDHqXcC3mM/XEDp1Kc83+flnKUIAlPhxvo+TSTfxyMY
	1w1Nbj8M225RO3+hG+/8x5a8Rl6tWdJPKRHLMjBP+BGyIdUBFYYL8l7MNWgOC039oJxID3JSlkUOL
	mICVITvweTr/ZZkFfYYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOs5-0004Gx-9U; Fri, 03 Jan 2020 15:28:17 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOrw-0004FL-Gi
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:28:10 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 493F99DF9;
 Fri,  3 Jan 2020 10:28:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 03 Jan 2020 10:28:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=OGv2PjtJHB8QM
 vPH8CaJPwpmPo7SxAhtUjW/yzWRHQc=; b=Nm5sFV8I15oYFqtoratwPfV22nBjN
 ds0SzzLoApRjDm6++KZyXwNa8Q78uL0S4phwRqh/mpKY2u/MW2Gw8VDbJIDs4vsj
 pZf3PFOYtM3lH+9/MP6xxyW2nP3w+nmBNk3/RWwybKCkMIOXDLSY6o+RwtueSJXO
 ru2QCQ8xqKpqaM01qxBZ13pnc3B+FjwV4ndAgJiK+qeDD0DecgVgJE7v96Q1uLAq
 BDUZKrXKCAULTYcuc3qZ7XkI5L07jfdNlsebaHV6z6djNVNMpBGVyQuA2Haxl1Ec
 foo7ciMO6Rl3X1uomzGGqj7yADszRpHiPinejV7oVowwlsxOtSw+m1pzw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=OGv2PjtJHB8QMvPH8CaJPwpmPo7SxAhtUjW/yzWRHQc=; b=Lj46+M47
 I4Q5ngc4j+jwGLthQH6ebM6XbVRGYfbj1V9UYdSfg7nTyvZrdrn/U/hybDrbxajC
 rncLvdodK9y3v4fpcnW+l0Nznzt1m3PjQ2ZhRueenioIyZIqAIhcMpOjHNS6IIt1
 YCGnk7g8Vn1obmwQcOADxXI3t76xCIxTjYgLb7Ft3Ph2SoGY+bN/X0vf11xwjj7Y
 ukZtv+XyYjIKBNqG2lveMsaVZfXnWAOPDaLGjxP1cjLW5Zpg8/KEANBHlX0/IZf3
 b7EI/FqWT18YVr8ftKPKYkO1/AgXtHvkWP881VfhnFoqw5L3OxetZZSYl/zAUyvt
 mrtL/N4fTTlJ8Q==
X-ME-Sender: <xms:h10PXrJZIry1lcBbeP279LAXepFGOKBr0zxVjmQohBAnQwpLlc5jmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegfedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:h10PXhB1Ei6oNYH3M-PXZoV9oG3KwxCpt3HscsFF_ZP2_ysel2R-Pw>
 <xmx:h10PXo1pJu8pE-EIhCRC2NEtgCyLlD1EyePD0Z3HNeLpXLwtTysjdg>
 <xmx:h10PXkkI_TNFMCZbRf44DUDlgS4ls5ipKLSmfDQNqDShyV0g95yYpQ>
 <xmx:h10PXpGsVIB3M_4SrHkhaOEv1AaPzNVlA8uD4W1jBCpX9Ns_hXNajQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DC25930607B4;
 Fri,  3 Jan 2020 10:28:06 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 2/4] clk: sunxi: a31: Export the MIPI PLL
Date: Fri,  3 Jan 2020 16:27:59 +0100
Message-Id: <20200103152801.47254-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200103152801.47254-1-maxime@cerno.tech>
References: <20200103152801.47254-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_072808_949117_30C384A2 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
headers.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/sunxi-ng/ccu-sun6i-a31.h      | 4 +++-
 include/dt-bindings/clock/sun6i-a31-ccu.h | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun6i-a31.h b/drivers/clk/sunxi-ng/ccu-sun6i-a31.h
index a361388b4670..3ed2a59b0dc6 100644
--- a/drivers/clk/sunxi-ng/ccu-sun6i-a31.h
+++ b/drivers/clk/sunxi-ng/ccu-sun6i-a31.h
@@ -32,7 +32,9 @@
 /* The PLL_VIDEO1_2X clock is exported */
 
 #define CLK_PLL_GPU		14
-#define CLK_PLL_MIPI		15
+
+/* The PLL_VIDEO1_2X clock is exported */
+
 #define CLK_PLL9		16
 #define CLK_PLL10		17
 
diff --git a/include/dt-bindings/clock/sun6i-a31-ccu.h b/include/dt-bindings/clock/sun6i-a31-ccu.h
index c5d13340184a..39878d9dce9f 100644
--- a/include/dt-bindings/clock/sun6i-a31-ccu.h
+++ b/include/dt-bindings/clock/sun6i-a31-ccu.h
@@ -49,6 +49,8 @@
 
 #define CLK_PLL_VIDEO1_2X	13
 
+#define CLK_PLL_MIPI		15
+
 #define CLK_CPU			18
 
 #define CLK_AHB1_MIPIDSI	23
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
