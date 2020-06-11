Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A4D1F64A9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TEiIA4z5UCi0SwiX+AuLKm/8al7xQrbq2bjGzuYwXI8=; b=Ww0HsV04/wuC4J
	Pf5XAJjGUHZbHofzr3Njg2shB/bZ640H0V3f2mGcnMZMdGr57h70Bur1/IovTIMzRbH5wDYQc5Qk0
	mZb+QkTK70JNOs876+IPzCCmYEnXhU15vOBrp6LmukT8yRuFaR7uhotI7aQBXeciW7XlATqHGerM6
	+nDiGzv9zPZUFfkw3yEndobxSQ9hFWOs9FSxoMsNLuenlYDRG0MgWoo/naodxh56jeiG/vzrHQtsn
	WA3By5R9gKsOex3WX5m71leBehpCqK98X5i1LbiOlpIm3fPvbVF9KrvMjlc/qMXUpXBJtPNqm51j2
	qvvA/AvmJMBEzDJhRkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJRY-0006We-9I; Thu, 11 Jun 2020 09:24:16 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJQq-00061J-7E; Thu, 11 Jun 2020 09:23:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 08248580189;
 Thu, 11 Jun 2020 05:23:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 05:23:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=KT8aImVSVqlrbrlR88jQFQocoP
 NuLOplGRWjjaiH9wg=; b=kfDiEnlEf+G08a7sPegVXiHu9QVSPpUp/oqWZSYkB3
 XgCDvBS9Ah03kQ3SOirbB0YIfvrJFEuszUidvSGwWnOS6Graez0Kc7V3tmhYKqRg
 NpbupVKRZNsLvivgRqqYA39I41qME9baTSNN1tb/cJKDDinRs1cJawZGqjjs1Bjg
 oEP+oK4pt4dkJK2do0oqKjCx/vhH3OD0OzgiFL9xSvAh5qwDlwCaGVdjQcYTVCQx
 eDEqmXRoFeiVnUHG83Hw0rTPednG0wSF2nTjOI4s0K7oGWLPXsHrYEDygbQY+hDE
 PJGNf7NHReSBCOH6sDD+I02HNINnmnBsGG7nNrfT5zYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=KT8aImVSVqlrbrlR8
 8jQFQocoPNuLOplGRWjjaiH9wg=; b=GuviQ1dt2l1NP/edva45O9ZAXRMqVqSTF
 DdeiAYMkfB4axltL9nLaNRFsWfW7g47bDvtri4Prg0qLCYGxdgzwkD+DcgrCgs7E
 XilueAE7JIFXd+0CvhIfbhnFjSWOfF/+Qx7SJR7HnaFezuVrP8jVO9YvlsS8ZWDz
 HlCK4kT9tHKIfHkW1iYvSwP79Ugu39U6AVHsZl5F8TQtNGfqahTq6YJ/6spVnKbk
 EUC9yUGt/vwr6UVYB6fWq00NsJlOnVYcRiSNsLLianG6FkbF1e3xCH7MghlkkUBl
 Zaoj/ZlOgGW3tyKS+A+6APw2UfbWrbD0gxs2vvJbw5iyE80EaPdRg==
X-ME-Sender: <xms:CPjhXnj1n0_WFUb2hKy_YfCounKQEIlI0bty8P2uQ1MKfEFRm-2kUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehkedgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
 hrnhepjeffheduvddvvdelhfegleelfffgieejvdehgfeijedtieeuteejteefueekjeeg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:CPjhXkBwO0DKloQYmKnZFW0_ov58slXXLPWgqXtH9Yx8_g7vL-idTA>
 <xmx:CPjhXnGjiLKiAOjXyKq4Zy39d4OeGvKrKuz_uzTL6lAsiOnI0YFzhw>
 <xmx:CPjhXkSJFLboPzj8AkUxZ1OBRVW9MLg4qR7-MoG894JUNj0WXnn1qg>
 <xmx:CvjhXgeDLjT4ZlC-J4u3CP6HGd7hgu8MYJ1u-RsQq8u_A0S4yQj77w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 910E63280059;
 Thu, 11 Jun 2020 05:23:20 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 0/3] clk: bcm: Add BCM2711 DVP driver
Date: Thu, 11 Jun 2020 11:23:14 +0200
Message-Id: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_022332_406471_2831E10D 
X-CRM114-Status: UNSURE (   8.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Here is yet another smaller patches series that got stripped out of the
huge HDMI one.

Since it depends at build time on patches already queued by Philipp in
reset/next, maybe we should merge the clock driver in the reset tree with
the Acks of Stephen and Mike?

Maxime

Changes from v3:
  - Switch to devm_platform_get_and_ioremap_resource and devm_reset_controller_register
  - Actually use the Kconfig symbol in the Makefile

Maxime Ripard (3):
  dt-bindings: clock: Add BCM2711 DVP binding
  clk: bcm: Add BCM2711 DVP driver
  ARM: dts: bcm2711: Add HDMI DVP

 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml |  47 +++-
 arch/arm/boot/dts/bcm2711.dtsi                                |  15 +-
 drivers/clk/bcm/Kconfig                                       |  11 +-
 drivers/clk/bcm/Makefile                                      |   1 +-
 drivers/clk/bcm/clk-bcm2711-dvp.c                             | 120 +++++++-
 5 files changed, 194 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
 create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c

base-commit: 192e08e14e37b78e83cc2f5b9eb5a15a7d71c4e2
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
