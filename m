Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D992D1E4880
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcZghc1x5BZ4Vly0KRo6f1z6fLGD6nxUuPgF6Tw3BuQ=; b=ATMFs+PqbhzU6U
	TDaVQKXmou4GLiEeZjkUUUX0JUnB9ozi89frOeA4PiPnre0H8mX42VmCCIypPqB4TMsy6DJCOH979
	gqP4Kyi+/PCKvvKPYVicV6eY/C8M6Tp7bgs1WvqJIfb7mWZVOfxInA7BveOJCvtYYu64JEAi1nG2t
	z7Oz51kufdc46KwQtCSk3cSS8C3HhyOvcJ7nHBaOdBGURtFILJooldxaQADTehfQwgYxvx4EHCJam
	QDGi3z0mkXRXPfIIbj+C/G9Ot6+OAuAdQVlvdrcRlv+fou6CrAQI1OCMnxE05eA5FMyWESG3EXk7C
	reDszf/Sapm19lqcqQSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyMw-0002qb-On; Wed, 27 May 2020 15:53:26 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFe-0003NE-4V; Wed, 27 May 2020 15:45:56 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 798C9581DEE;
 Wed, 27 May 2020 11:45:53 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=I2vSNX7SKNjX8
 hb4Jbtw5qp7WJZKkaAgywm4UuziHsU=; b=HBLWkDzCrFuhZMppkSzdNvlEd0jSM
 hlEL9D3JkxuC/oo/zdUOxw3zDoKJ+TDYv9RWpvcjQN+0SCsE4B4HJML0JQuXeppd
 QzP8ZCSOMFaN/zOWzKcX6248nZ/kCUWv5hr/0sudReAszHzZXhp2rgOxnMlHef9C
 TXqeWK/IsQzub7P3/eYpFY6C6BnpFAWjuKUIWhuxAf4VAraCd9X6vBLDt9ldSJx6
 fcERnnTZiNg2waQPWXkQcd2gzVUbcB64fv/cQn8oT29L0eArHyLofp//lHIGv6o5
 aatsPn5sLKNFWrRywOkaBFDTQz5Oq/e0JI3TAymc/JNQrxsFtod8ciS/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=I2vSNX7SKNjX8hb4Jbtw5qp7WJZKkaAgywm4UuziHsU=; b=kXttFv3Y
 ivyuBfxRgV3FCNEDQcFBUt7IDwUp/uKMahdXd+7UlX1dqKUyz67fHt9kjWB99Yjr
 Df5yioEyAbwelLTa/dn4MBsZPJN7EWe7+NkAhE7Ut7ZERlt7JDYk1vytYdC6Z63B
 oHhqc3v3bpBXBNA37Zv5jivJCs0nUegONyhRbB9+6JUq3gj5YwaOrSq4fflAcd/D
 LuVfNGvshYMhc9pnCxzW3CToQp5vWzVVuiDRfofUZ5xoLgLg481P7lU577aSJ8EI
 ryS/Tsa69R6iqNN/GIE0jjAd2MTvH9UKq5COI4uLZKA7peZZIzBwsIdCnMfTWt1z
 Ckma3YBf7MQLIw==
X-ME-Sender: <xms:MYvOXqFwBJuY-k09OOn6DtqM-nO6bio9wEgTcIqyHjA5bPtAW8nu0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:MYvOXrW2driV87fCSuPk4wM2eIzCUt_-m91PLRjujr__wQ4idWPziw>
 <xmx:MYvOXkLB7o43OwpIB4qMf0yd6KQriWBxQBHo75E7OXgVtPy64oBWAg>
 <xmx:MYvOXkEBBQcV4IBx1F6Uv4MeWgolo_yqBqP2XnxoxdxTLlLIMHbzpQ>
 <xmx:MYvOXkp-uLHw_nRgkrkFtUR7u5NVXHD7u0Nkzol_jdAjQfFk8uHMFw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1BE0F30618B7;
 Wed, 27 May 2020 11:45:53 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 17/25] clk: bcm: rpi: Split pllb clock hooks
Date: Wed, 27 May 2020 17:45:13 +0200
Message-Id: <10e269b4c3c5cf38eba9c0684341b191b9ab7abe.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084554_382240_34D8652C 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver only supports the pllb for now and all the clock framework hooks
are a mix of the generic firmware interface and the specifics of the pllb.
Since we will support more clocks in the future let's split the generic and
specific hooks

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 58ac1b104429..19571602ba64 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -102,8 +102,8 @@ static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 }
 
 
-static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
-						 unsigned long parent_rate)
+static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -116,21 +116,27 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 	if (ret)
 		return ret;
 
-	return val * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	return val;
 }
 
-static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long parent_rate)
+static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
+						 unsigned long parent_rate)
+{
+	return raspberrypi_fw_get_rate(hw, parent_rate) *
+		RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+}
+
+static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long parent_rate)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
 	struct raspberrypi_clk *rpi = data->rpi;
-	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	u32 _rate = rate;
 	int ret;
 
 	ret = raspberrypi_clock_property(rpi->firmware, data,
-					 RPI_FIRMWARE_SET_CLOCK_RATE,
-					 &new_rate);
+					 RPI_FIRMWARE_SET_CLOCK_RATE, &_rate);
 	if (ret)
 		dev_err_ratelimited(rpi->dev, "Failed to change %s frequency: %d",
 				    clk_hw_get_name(hw), ret);
@@ -138,6 +144,14 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
+static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+
+	return raspberrypi_fw_set_rate(hw, new_rate, parent_rate);
+}
+
 /*
  * Sadly there is no firmware rate rounding interface. We borrowed it from
  * clk-bcm2835.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
