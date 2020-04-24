Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD081B8101
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 22:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+R16ulpg5YP7ynOFPv6LYQz3/YSAzxplXyy/0k3UpBA=; b=o5Rg4BiBoufJMq
	lrVMr68jZLfzc62hIj9qHDohpFj1vYzadeGzvjHJhPoDcJ395cZyRjbq1ymoOoW/+iOp/N1FsTcVA
	aFjp8CGgm7sHkZqgQQ1qiOZ0sf7InnqSOd9npKQu703k/j7tQQO2U5cPikmUXGiSO9eItJe9K1zyh
	qkNddYxJGMJ32z6+fPjOjJwYJ2mjycREyHXpp9OwjAFvCq8DScf4Zok2YWtXehBrP1HOxam1Zy8Po
	4rzzo++5DX8wh8Y+bpsLU/KCinBwunFSlIqnBL7XUcFIqbiBSCo6tQHFV6wpL8mFRpZpqciXWpr35
	/GuTHZToEZE2onkduOWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS54Q-0007cy-Td; Fri, 24 Apr 2020 20:37:10 +0000
Received: from mo6-p04-ob.smtp.rzone.de ([2a01:238:20a:202:5304::8])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS522-0003PY-5R
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:34:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1587760473;
 s=strato-dkim-0002; d=goldelico.com;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=iwq6f4uxoyZcQOQDzwMpNIO6Xy6nAFRtGvlqeQKWcIs=;
 b=RLHdcShmqkHxUYBfJ4DwVkhEDqkYkLI4OrDbVYsxroTtHXOZfhz9nRGH5WjxEI5PmD
 0PDHGLkMTH4tmnsOPxkiF8ieRHh23+r8rDh2Qau8uI9ZcNEgla6Z44leOSs/3oBARVqU
 LReATGVg50ZvU0XLyy3/3jLvjnSOmUVm8+Oo7WzEHPixQGXarfhBHn15/mb1V5V44XEt
 /BDX9TOYYLqZrzM+Y4zxpWhf21zTa6V4/FdxdLI53v5leT5kyI1NLYGrXYmIeRmFnA4y
 zDBF0XiF3glMVBppoyxz103z3TyaWXgVk02mrgpGpzqlco+sFQhJ7xQT0saS/RnO7M9k
 qe2A==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMhflhwDubTJ9o1mfYzBGHXH6GK44R2FE"
X-RZG-CLASS-ID: mo00
Received: from iMac.fritz.box by smtp.strato.de (RZmta 46.6.2 DYNA|AUTH)
 with ESMTPSA id R0acebw3OKYPEVI
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Fri, 24 Apr 2020 22:34:25 +0200 (CEST)
From: "H. Nikolaus Schaller" <hns@goldelico.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Tony Lindgren <tony@atomide.com>, Paul Cercueil <paul@crapouillou.net>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paulburton@kernel.org>,
 James Hogan <jhogan@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v7 10/12] ARM: dts: sun6i: a31s: add sgx gpu child node
Date: Fri, 24 Apr 2020 22:34:13 +0200
Message-Id: <1b0bd980347024c4b598fb89a32a55321d2eebd0.1587760454.git.hns@goldelico.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1587760454.git.hns@goldelico.com>
References: <cover.1587760454.git.hns@goldelico.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_133442_364750_550CFF6D 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5304:0:0:8 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, letux-kernel@openphoenux.org,
 Philipp Rossak <embed3d@gmail.com>,
 "H . Nikolaus Schaller" <hns@goldelico.com>,
 Jonathan Bakker <xc-racer2@live.ca>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 kernel@pyra-handheld.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philipp Rossak <embed3d@gmail.com>

We are adding the devicetree binding for the PVR-SGX-544-115 gpu.

This driver is currently under development in the openpvrsgx-devgroup.
Right now the full binding is not figured out, so we provide here a
placeholder. It will be completed as soon as there is a demo available.

The currently used binding that is used during development is more
complete and was already verifyed by loading the kernelmodule successful.

Signed-off-by: Philipp Rossak <embed3d@gmail.com>
Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
---
 arch/arm/boot/dts/sun6i-a31s.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun6i-a31s.dtsi b/arch/arm/boot/dts/sun6i-a31s.dtsi
index 97e2c51d0aea..669770d2934a 100644
--- a/arch/arm/boot/dts/sun6i-a31s.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31s.dtsi
@@ -59,3 +59,13 @@ &pio {
 &tcon0 {
 	compatible = "allwinner,sun6i-a31s-tcon";
 };
+
+&gpu {
+	compatible = "allwinner,sun8i-a31s-sgx544-115",
+		     "img,sgx544-115", "img,sgx544";
+	/*
+	 * This node is currently a placeholder for the gpu.
+	 * This will be completed when a full demonstration
+	 * of the openpvrsgx driver is available for this board.
+	 */
+};
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
