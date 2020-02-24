Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A27016A246
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KImzhIRv0B+YiMacR/VoB0EN+gUNOShEvj6ZUGLEipk=; b=QIjoHKBaZ3mIe/
	ef9FaQcRMTce9sblFhsfBwctoBYTqGcTFxYMjmmzvB5nDIQ5b6c1feYIdJUAPNgFmOqIeVz2AMBqd
	vy48h6k2jLjhp5r4ISEnL5hFAXTAMqDSKssSntT030C1efaX9Xyrqd+2pJbp1uhRz2wUdQWj9/3ub
	76EJNXLx1NGD0/NyqapyNl22HdXC6Dte4JEKjj+O4DIVY/wQHJQvGWEVCucUT2Hcwf3DUrbIeV2l7
	mgR/9Et27lnBKaZPqUOMGu/Q5h9mZFgRH13zlTi0Nw5vbD020MNklu5SJQKPG/JkKaRhMrk4+BIWg
	d4ZgkA+NuSl5CdwULf4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A3B-0004qs-PH; Mon, 24 Feb 2020 09:29:17 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jx-0001gm-BJ; Mon, 24 Feb 2020 09:09:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 3F09E60A;
 Mon, 24 Feb 2020 04:09:23 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=TS5KQbCSo9nqw
 zFlRo9+6nosro4Q4hmS5FkRXvdZ5Nw=; b=R6wAQSQ6TZ4vaX1/NSarfT9jtNVtu
 67fIqbY/wMNcxyK9ij5TFJ2AfFI+b2ElnAV9CtFpjxEWPCCZLf/zx6yGYQWvMzyE
 93/WpKd+JHOgxXlCNoV7LzYDOZs4CJ+I7DvrGRW7M1mGZFE9eoz415fIwPMxAHuS
 2dkV4EC187bnb22WM0mnqqHres8CUkqKDLmHfgv+QUAuoppfcavGwg1yM+PPa3Mc
 jfiev7dKG8XcvbqH+29ot6iO8v+nsMphp7N7xPf5vWuY0qpdagp+9vVN9lqi58Lz
 C8l8IxWJIp4WrUUKHPkeuXcWHr9ZBK/Uq62Ulgeas92DiFVSwEaC2RJpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=TS5KQbCSo9nqwzFlRo9+6nosro4Q4hmS5FkRXvdZ5Nw=; b=YWujkwc0
 LBM+r6oGNIOJRkiP01sZXQ7j8+aBq3l7HqLGp/pjhyysrjVCTiPBVWuGKt7b8ZQ4
 +0FQMWFMKdhR/52TAmNNwanGCs17Xze9A2q7LAhRL0GEPew7gbJU9aUl/JFUmNqj
 jZ4weYsXlqrIZwZIzpZ+4sHkmv/mbuTOS0+X72Q2uElLk9mc5k5mcZyvfAMmPnRz
 exaTFtuE8mtOG/2EAuzUgNH+BM6yF9VhlqCWhWc2hp+hLnXw/Fd3tu5kU80+F48b
 TsbiJoZDopdRHgbbqlMNDWGO46DZch3WBzKgb3QginScecmBzELqes6p7ankEo/i
 81QG9mp3noES/g==
X-ME-Sender: <xms:wpJTXiV6u9P-Mg91f9eHLtp7WqUB1bL2qIu34l9SoVboNPOm5C9kqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepudejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:wpJTXgnHGEbiDBHra7wUZOll1UGY9d2Z0fT_OW4x2s2fqxxhP2FmQQ>
 <xmx:wpJTXquJ5RcRq7H22rtUIhy-xJVAf4DCx0CbAfz9usp9tGgL5BId4Q>
 <xmx:wpJTXhhc87sQ-PH-YLNJzP2aKLNtbziLRlg0V45F3RsVROqKUzqEZw>
 <xmx:wpJTXlaci1rG_v0tNkUQ3Ss_bprE3-fBSvmLcXCoQDEFvBI9tIa0EofDNiQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7ED733060BD1;
 Mon, 24 Feb 2020 04:09:22 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 23/89] ARM: dts: bcm2711: Add firmware clocks node
Date: Mon, 24 Feb 2020 10:06:25 +0100
Message-Id: <8398a0655c7e544db5e8cc71e2338fe7aa222035.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010925_468912_E08048BC 
X-CRM114-Status: UNSURE (   9.50  )
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a clock driver for the clocks exposed by the firmware,
let's add the device tree nodes for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index d1e684d0acfd..4742e1a77a65 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,12 @@
 
 	interrupt-parent = <&gicv2>;
 
+	firmware_clocks: firmware-clocks {
+		compatible = "raspberrypi,firmware-clocks";
+		raspberrypi,firmware = <&firmware>;
+		#clock-cells = <1>;
+	};
+
 	soc {
 		/*
 		 * Defined ranges:
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
