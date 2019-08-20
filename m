Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083F59550B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WT+fi+ZTJiCccCq5Ti5LdCN1HdLdA0ZKLyY6qKfLA5M=; b=uIk/U7D1dhdhfW
	/+c9Ed+0/+2m8wzWACU6oXjufsPnhTTws2k8hgpA00xhx3jr+hRkD6fXWtXD7Id7fprTIUmR9dPuh
	pDs1QK8dIDtdCoDgEQ1vqG715PufKp7fGgPO/7Vb92IprUZ9c16XDV33dev5hxFV4lnNU7GDE3qKK
	bUzi1lF1mVVtHQUEP9ksBxudsuwwJCBPM2iXV+JQxys284FTmp7oLuX0i131ZW8LT+ocQbah3uBS3
	NgnA6nTQoqbEy4struQc8acTUdMccSLhp/ItuPdi9cXD9Zpaf7bGr93DJlc4XVC/laHtcV75jykVQ
	A8JMO9rYUgFCNa1dUFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuk6-00034r-Gw; Tue, 20 Aug 2019 03:23:30 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujr-000324-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 862863504;
 Mon, 19 Aug 2019 23:23:12 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=I8Sl5/+srL6CO
 XATsmZebq4bC+18NIaBiM+bxZUEpcE=; b=it0u/kR+NtzMK1DBrZWn9oTC88iBg
 Nvu7q6CeR6j5COsX7G5sqxR9puab/9y9mdZEBTA2ZyUYAZ3uj54MovnkmZvyNKC/
 h5BH6Y141lg8is6Hv03Joe15GwS6aLxScs3RAEe8wj9qOXrGLfZmofsbX0jBCcYf
 iJ62Q6N3MsHeBMQoYu3qjdjsiHTdV/vmOAMaf85TYHFhkXyR9cvMO36+aKCR+L3r
 OD7ykyWqQdzakwsrDyd/MZrD2ndPqdQJjIzYHe6hYJQwI+2uEIeCq6PWcsnCmnhT
 3Bw71i9tvYP/a0FLjHPwFt8WJnlQA5v2dil2L7Igcr03QZoCiBh7c+DKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=I8Sl5/+srL6COXATsmZebq4bC+18NIaBiM+bxZUEpcE=; b=Vm3u1SlH
 aF0GRAZQmirdnbuTLUCRZDvg1Tdmjy3S/qhuCRJ/RKYZTRhhHKw9m1HUh6VUhU8T
 WDLAZqOBM357h5WTH0gyy3DhIU1cyeliHq+CdQl1HAB9jCRpmUwQmBcF+cz0HCeg
 zMvunYDEBpZKS5wL8fq2cNBBUGHSbLiAp9G5gO8T2Te0HiRP1lh5euSW+aoXBAU0
 ynyFEJJH3EYCOaL2NxUQvBbas2yhI9WcTyTcecLNHwvWUC3IuDc20vn/0T5voFTt
 bFihQjecvolj1NTsda8Kn/O892w++qVgAXkg6R6Gvj22AbFJRKEVvrSCOp8Mr8nl
 hb2XITkknhmAJg==
X-ME-Sender: <xms:n2dbXf5GlumE0_mZaMevatI7Yy76g3NO1UQ3VNLgH_-QaM2nj1Oj2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:oGdbXVGKQezCvm5U_qV6eOn61Hk2oODnb3jf1ufKqqAb-jvCEoVgEA>
 <xmx:oGdbXZEPvI6piITMdGZOs4_wITfaLGCy26QSEWb0BNmAez-kq8HjDg>
 <xmx:oGdbXbvdOioCeT8BtlmfxcbSSDsvlPO_vUApyWTHUADyBYb7nts-gA>
 <xmx:oGdbXX53EXC9VoMkWI4iSsXedWMrozWlqup5AklVf6blOTONSfLyzw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 17B2C80060;
 Mon, 19 Aug 2019 23:23:11 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 01/10] clk: sunxi-ng: Mark msgbox clocks as critical
Date: Mon, 19 Aug 2019 22:23:02 -0500
Message-Id: <20190820032311.6506-2-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202315_941015_07E98837 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The msgbox clock is critical because the hardware it controls is shared
between Linux and system firmware. The message box may be used by the
EL3 secure monitor's PSCI implementation. On 64-bit sunxi SoCs, this is
provided by ARM TF-A; 32-bit SoCs use a different implementation. The
secure monitor uses the message box to forward requests to power
management firmware running on a separate CPU.

It is not enough for the secure monitor to enable the clock each time
Linux performs a SMC into EL3, as both the firmware and Linux can run
concurrently on separate CPUs. So it is never safe for Linux to turn
this clock off, and it should be marked as critical.

At this time, such power management firmware only exists for the A64 and
H5 SoCs.  However, it makes sense to take care of all CCU drivers now
for consistency, and to ease the transition in the future once firmware
is ported to the other SoCs.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c  | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun8i-a23.c  | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun8i-a33.c  | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun8i-a83t.c | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun8i-h3.c   | 3 ++-
 drivers/clk/sunxi-ng/ccu-sun9i-a80.c  | 3 ++-
 7 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
index 49bd7a4c015c..045121b50da3 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
@@ -342,8 +342,9 @@ static SUNXI_CCU_GATE(bus_de_clk,	"bus-de",	"ahb1",
 		      0x064, BIT(12), 0);
 static SUNXI_CCU_GATE(bus_gpu_clk,	"bus-gpu",	"ahb1",
 		      0x064, BIT(20), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x064, BIT(21), 0);
+		      0x064, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x064, BIT(22), 0);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
index aebef4af9861..14f39bc4180f 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
@@ -340,8 +340,9 @@ static SUNXI_CCU_GATE(bus_vp9_clk, "bus-vp9", "psi-ahb1-ahb2",
 static SUNXI_CCU_GATE(bus_dma_clk, "bus-dma", "psi-ahb1-ahb2",
 		      0x70c, BIT(0), 0);
 
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk, "bus-msgbox", "psi-ahb1-ahb2",
-		      0x71c, BIT(0), 0);
+		      0x71c, BIT(0), CLK_IS_CRITICAL);
 
 static SUNXI_CCU_GATE(bus_spinlock_clk, "bus-spinlock", "psi-ahb1-ahb2",
 		      0x72c, BIT(0), 0);
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-a23.c b/drivers/clk/sunxi-ng/ccu-sun8i-a23.c
index 103aa504f6c8..5a28583f57e2 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-a23.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-a23.c
@@ -255,8 +255,9 @@ static SUNXI_CCU_GATE(bus_de_fe_clk,	"bus-de-fe",	"ahb1",
 		      0x064, BIT(14), 0);
 static SUNXI_CCU_GATE(bus_gpu_clk,	"bus-gpu",	"ahb1",
 		      0x064, BIT(20), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x064, BIT(21), 0);
+		      0x064, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x064, BIT(22), 0);
 static SUNXI_CCU_GATE(bus_drc_clk,	"bus-drc",	"ahb1",
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-a33.c b/drivers/clk/sunxi-ng/ccu-sun8i-a33.c
index 91838cd11037..50cf3726ef30 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-a33.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-a33.c
@@ -267,8 +267,9 @@ static SUNXI_CCU_GATE(bus_de_fe_clk,	"bus-de-fe",	"ahb1",
 		      0x064, BIT(14), 0);
 static SUNXI_CCU_GATE(bus_gpu_clk,	"bus-gpu",	"ahb1",
 		      0x064, BIT(20), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x064, BIT(21), 0);
+		      0x064, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x064, BIT(22), 0);
 static SUNXI_CCU_GATE(bus_drc_clk,	"bus-drc",	"ahb1",
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c b/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
index 2b434521c5cc..4ab3a76f4ffa 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-a83t.c
@@ -339,8 +339,9 @@ static SUNXI_CCU_GATE(bus_de_clk,	"bus-de",	"ahb1",
 		      0x064, BIT(12), 0);
 static SUNXI_CCU_GATE(bus_gpu_clk,	"bus-gpu",	"ahb1",
 		      0x064, BIT(20), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x064, BIT(21), 0);
+		      0x064, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x064, BIT(22), 0);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-h3.c b/drivers/clk/sunxi-ng/ccu-sun8i-h3.c
index 6b636362379e..7429d3fe8fb7 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-h3.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-h3.c
@@ -273,8 +273,9 @@ static SUNXI_CCU_GATE(bus_de_clk,	"bus-de",	"ahb1",
 		      0x064, BIT(12), 0);
 static SUNXI_CCU_GATE(bus_gpu_clk,	"bus-gpu",	"ahb1",
 		      0x064, BIT(20), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x064, BIT(21), 0);
+		      0x064, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x064, BIT(22), 0);
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun9i-a80.c b/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
index dcac1391767f..47d1d18b6f38 100644
--- a/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
+++ b/drivers/clk/sunxi-ng/ccu-sun9i-a80.c
@@ -748,8 +748,9 @@ static SUNXI_CCU_GATE(bus_usb_clk,	"bus-usb",	"ahb1",
 		      0x584, BIT(1), 0);
 static SUNXI_CCU_GATE(bus_gmac_clk,	"bus-gmac",	"ahb1",
 		      0x584, BIT(17), 0);
+/* Used for communication between firmware components at runtime */
 static SUNXI_CCU_GATE(bus_msgbox_clk,	"bus-msgbox",	"ahb1",
-		      0x584, BIT(21), 0);
+		      0x584, BIT(21), CLK_IS_CRITICAL);
 static SUNXI_CCU_GATE(bus_spinlock_clk,	"bus-spinlock",	"ahb1",
 		      0x584, BIT(22), 0);
 static SUNXI_CCU_GATE(bus_hstimer_clk,	"bus-hstimer",	"ahb1",
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
