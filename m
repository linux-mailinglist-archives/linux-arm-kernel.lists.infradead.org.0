Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5634795517
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uCvYihdHjOaQKON+c8k2eGhJIj1h58/h3WIdsUcI/M=; b=CfqbgQwR+6cmpy
	jmqNGkp1V5E21TBe/emk06GPgGgkhaNz52ZmeoQwLLpymyL3NC1oKGtfmuKIitT6Emu6AW0g8VGmC
	fruMdY3zyYRD3g6HZgPMJh9Xv5440v3adkTLYEiU8j9AIwYq9Ye+nMvx5mtqlxVVQxKQpXqozcKWL
	ETzkI18z1+uHi2ARp3ETB//hIhB9nFjCBiCR2WkVNWzey5QQEe/s+hSMcedBWnjnCIcDxnbX84JI8
	tVyanOl6+zQbB4uLbbkY/4TJwDw+6oGG0xSdLIi7zNlWXgDO20o4RTikMJpyHu54CNxwXNl1NEJBT
	Aaj+hbaUNcNA+DJQqmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzukO-0003Hw-Kp; Tue, 20 Aug 2019 03:23:48 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujs-000325-5H
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:17 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2F4FF3502;
 Mon, 19 Aug 2019 23:23:13 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:13 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=1bTgcqlsu9ruH
 8kJHnZDaejSO4xUiFvUU7vOgzOA59c=; b=jDjyJVXQnF5DMKdAcIhzmDTVBG/mJ
 cHYEVutQUlCboPOHk4AYtL3ZprsaaBx5k+OFrJ3gBXuSLu420AeB6XWpt5nqn4eD
 xSfiFljZgllymQr1Ea8nxmW6MhOv6QJbLOA+tQhBmDQMijBmqP0KD/p0pMr9BwjD
 w0mWSBRC5v6HApjPzYxjmVUXb98/h5jkQLlIMMteQgSFczmS9OghJyjlrLu4ipKo
 BWlbLokydlczb57M9L3lnGDfYOAn/2CZ8mBwdlMcBFsIAf7P/+GChjRxI72Ek2w5
 Qgjqh+yPTYQQjM7mmYEZgDhWmMOyUguVjMZyUqMY2u1wMwEIxJ1FMCg9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=1bTgcqlsu9ruH8kJHnZDaejSO4xUiFvUU7vOgzOA59c=; b=Pn/xqiUR
 gvC/o7107tBCxiY5ujMNPkdkbTkY8KAk0lqgiKLfG4rslbEaGUSWTeNokk4iHgic
 oJh6tIBz3/QvXZUrbNQwulgvn1vpzA++97mMmzGreKge0hgb4EJD1qjnelviR+zP
 m8fH8s6+FCrCfRIBrW5xaVjbKR5ysjBIxZ7V/y77AlHhnWoITH6qsJ4DdfV41xLa
 f/x78UuVbMTp1lO9s2s/Bh5blkcPG00e422rDdvCDDgPhUYZc5mJj10OnP8KeVnJ
 s4898vajZ1jj1EZC9x2dJBOn1vJ8WgvHclWfJ431rI+w8mzNWzEvk+g0hoiCl239
 bS2khjVk6rhE5g==
X-ME-Sender: <xms:oGdbXYF8qFebC4h13liLssfXdgbzTsQnHLwaWJk19YvF2_bpigVNYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:oGdbXeSmEevUMGOlsJ_hy0T41Avoqga3lH5EnnKMAUzq4N1FX0NxGQ>
 <xmx:oGdbXdwEjvkeJF5hgMzvA7fnkJnmUfWENW1wG38ksxjUDRtvUO4cKw>
 <xmx:oGdbXSdI5ETRtMUK7JOEq8gXST2wowuKnX47mU4xqBAOJpBhVm43RQ>
 <xmx:oWdbXUho7ZSRdqMUvezImy5FEsjGvKvgG7uw7OUNEKG8MBR36e3suQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id E193C80059;
 Mon, 19 Aug 2019 23:23:11 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 02/10] clk: sunxi-ng: Mark AR100 clocks as critical
Date: Mon, 19 Aug 2019 22:23:03 -0500
Message-Id: <20190820032311.6506-3-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202316_337620_9ADD3E7D 
X-CRM114-Status: GOOD (  12.90  )
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

On sun8i, sun9i, and sun50i SoCs, system suspend/resume support requires
firmware running on the AR100 coprocessor (the "SCP"). Such firmware can
provide additional features, such as thermal monitoring and poweron/off
support for boards without a PMIC.

Since the AR100 may be running critical firmware, even if Linux does not
know about it or directly interact with it (all requests may go through
an intermediary interface such as PSCI), Linux must not turn off its
clock.

At this time, such power management firmware only exists for the A64 and
H5 SoCs.  However, it makes sense to take care of all CCU drivers now
for consistency, and to ease the transition in the future once firmware
is ported to the other SoCs.

Leaving the clock running is safe even if no firmware is present, since
the AR100 stays in reset by default. In most cases, the AR100 clock is
kept enabled by Linux anyway, since it is the parent of all APB0 bus
peripherals. This change only prevents Linux from turning off the AR100
clock in the rare case that no peripherals are in use.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c | 2 +-
 drivers/clk/sunxi-ng/ccu-sun8i-r.c     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
index 45a1ed3fe674..adf907020951 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6-r.c
@@ -45,7 +45,7 @@ static struct ccu_div ar100_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS("ar100",
 						      ar100_r_apb2_parents,
 						      &ccu_div_ops,
-						      0),
+						      CLK_IS_CRITICAL),
 	},
 };
 
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r.c b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
index 4646fdc61053..feef4f750943 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
@@ -45,7 +45,7 @@ static struct ccu_div ar100_clk = {
 		.hw.init	= CLK_HW_INIT_PARENTS_DATA("ar100",
 							   ar100_parents,
 							   &ccu_div_ops,
-							   0),
+							   CLK_IS_CRITICAL),
 	},
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
