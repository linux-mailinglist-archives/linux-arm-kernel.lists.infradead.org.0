Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DFF1F62A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGi2tKxyQbyUDve+bwtAezWF6DFiyNpsI1Z0nj9Nqrc=; b=FEzwqzVeBz00bP
	IJXIoG8kaxWTBJ7IhQpSGqUKNbm7TWzvVKc7fyY7Qv7cwlsliBIdTaadxHFoq0WPcwNPD3MXbtXBv
	1jlZhla3qrC6cDN8GOZomPtGyJL0h/ysxze0EedBdbhJh9YU7QK7yamTknC2Q6S5iKfibjSFrzaTj
	4H3ULDRr4jWHEF7U3/r/9IV8lMcv0suUSEWAuozNuSHmfPia6Yw1ZnGjfCsgbUPkG+vQG29eLPLzE
	aDQha2NfI6xGTvn/ui/olNlskWvvbSZ8o8NaArQR5A3I0A1BW2oxrikGvVrmfgEsLNSIHS6M8pT5Q
	4ubga3MYZ5s81QiN2+fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHl7-0006f0-Gr; Thu, 11 Jun 2020 07:36:21 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhX-0001Xl-Is; Thu, 11 Jun 2020 07:32:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 937E15800D2;
 Thu, 11 Jun 2020 03:32:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=6iQKMxJg9h0BJ
 TznOS0hTu6hgQnCXnqNYbjoQGsXtMs=; b=RSNUXe6Z5hXdoG7ozgDPevY4uUueH
 j9V7d2X95My7PRpXSAv148LoNCXmlVRubb/275JWi2109uPfwrU6NwzjZ/mLc1Ug
 7ve/LOsoohRIcQzD1bAH8DGOjQg+yYMRonl25HmQwO5vMJNuX+vJnXAQpW4+qZ0g
 5VM4iKL//Eec4yuXxLcc28PzJWgRBF+1guXEh0uuqKiWh00WmECOyeIz+C15Vyxd
 Sr+FY23gY0Sg79cS8XJY5cpi7tmAftftNibKRCmFg1Cpvf6ghEANGd9WriTKZOng
 yUvhalpJKH7+vlSTUbEm2h3rfUVDPO3QsY4oYdIiVB8Uo+EunTPWwMfDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=6iQKMxJg9h0BJTznOS0hTu6hgQnCXnqNYbjoQGsXtMs=; b=uZhjdtJ4
 rmXo0qfgXVaqM5YEH5qofXlyZZGCta6VJFWICi+ZkaUBrKU6+RbqTOoZunZFZyRz
 F4vEkpcbECZmzVZlejJ+JDi8lgPSWOenrc9phEV8Azon00nt/ZB3PfuxX/R0JoNG
 giilLlVyTr428OPc9tTGBReKg6rmSO/v+71fFrblCPWO3byglutRpqIVcN9Q2Stf
 z8agfX6b+MMZuvw+Obvsdlz162xR2ESs3uEWDPdBzQ0kj5uGcRTFtlW/GrwCZRMi
 tu5Wg4xHJy8hpZ4fMU6cDoshSQ8YWrvU3BCN+1+Fre6R0Bs267QJyd3tIxp23Gr5
 xsFRWLWUJQhYfQ==
X-ME-Sender: <xms:Ft7hXk84i5aLq4J0EklFQNznsrgiqHxKbBBeMndTWhaGgUKH-eyEVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeelne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Ft7hXssPqOBToQf_nZVZ2XqCTBb7muU-NSI-crUXMqqk57qZ0tAYOA>
 <xmx:Ft7hXqBzQzZP8YF-H9ZWYGYzkis1q1okzP4eUbQceOjDtbFw4BaqSQ>
 <xmx:Ft7hXkdn_VAud1tygQQNWGJhx9cajhPi5N0alqKBSZhvVpMtqFoaLw>
 <xmx:Ft7hXiiENurgw0kPfs-w1ZOGzRjue9gfrg9Q2LOz6O2v6DfGZ_LGZw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 32DDD3061856;
 Thu, 11 Jun 2020 03:32:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 11/27] clk: bcm: rpi: Make sure the clkdev lookup is removed
Date: Thu, 11 Jun 2020 09:32:00 +0200
Message-Id: <8952eb653583c4c944a753837d2a5cdffe399667.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003239_930810_69FDB376 
X-CRM114-Status: UNSURE (   9.32  )
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
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clkdev lookup created for the cpufreq device is never removed if
there's an issue later in probe or at module removal time.

Let's convert to the managed variant of the clk_hw_register_clkdev function
to make sure it happens.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 23f06618a356..a20492fade6a 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -245,8 +245,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
-				     NULL, "cpu0");
+	ret = devm_clk_hw_register_clkdev(rpi->dev,
+					  &raspberrypi_clk_pllb_arm.hw,
+					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
 		return ret;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
