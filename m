Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0008E1E482F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lamy0c1ZT71nPTM3G67yJO8/OyANshvI1wh/u6zBHI=; b=U7ZliR1EeBqIJ3
	o/JsIuWSsxwR68VMcLrPVf7fyX4x61pCtT5AA6x5fjtSxCpGp0EvZjcflxA8ZsiNZ4IEOe0sABQtN
	U5CIed8uH7G3V+bPk3UiL79dM2O2uT9jmhoTf+yBo81vwinyUdmTHLiATWC6qJ7XrZv9yihrDffjo
	5a1ht1fw2VmlhdHjO5mGmufkkf9jD7Nzp2mUGRk43r36GWC+k0esebQ6l7h4H6EnW0oyYVNZXIYcg
	I78KsrmM+nJZGh8T2uKBXD3bxhUQzjfkQJrycuxkUCzzqp4r3h46CsqgAgpf88YNd96qJJ72H5ia5
	k1nQiVsZhxn1p4BZ93hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyIq-0005Zm-NC; Wed, 27 May 2020 15:49:12 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFQ-0003Ay-MR; Wed, 27 May 2020 15:45:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C1E55581DCB;
 Wed, 27 May 2020 11:45:37 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=2TSSMWRmw4rUS
 X5F6y3mivXYay4IQn7sWRRQkKrhFfQ=; b=eNkGV25cySlfOHk1w3ri2TXPvFOFZ
 j7PBoisoudVwxia21WaepMTDA/3lVhmJdLvgxm0JVK+1OnaZiFbLpJsA0p45SxlC
 71tywHdiS7lBvPOKwyv0vnRFleknyN4QH1QkCMJ00FmUizzKBvSYElkGanOH2Qi1
 VAuqso4qYWmoGtFxoKFo/n6WlmPZRVxKUCiELd2bJawtkb10j4EDHsP2BFEWZoxS
 7dAblZx9siKkT/jCAn+i96xW6hiJgBzNt0PvNPN8k30r4IQ6fQQukXgAJDUo0IfD
 BBnie5YEQSXuAR2M4LYdGY7od/+GW94J7p3dkfMLqZIkze1oLsPXwBAPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=2TSSMWRmw4rUSX5F6y3mivXYay4IQn7sWRRQkKrhFfQ=; b=oSaAX2hi
 DI1t149R+FnavpOfCIpO/qBpz1Uqxu1+1lN8x+X1i/xqe0wQPoz+pbqKj25Zsr9P
 GhBW0qCvBaCgLDzFlE0hGGWlxI3n82KEYhHjSEie2IONPsshEIkRy67ZbiVbnewe
 n053LE1TXrtvqNEebED1f+dXVF/TUleoqABVSnWHiYsgSRrrPSYPX37BxfDesVXX
 Z/e9W1rTaWWAruVFLrY0TudRxd3WzOmibaWPY8YzTLbLTjRd4iHJS3dGr+7Yoqi5
 na7R0KpLBs9qvPUVkihgvXL8woM6obfOcPBfr7Afwj5LYUGdn8PUuIq4UVLAekEG
 Y5d81jSq0KZ0tw==
X-ME-Sender: <xms:IYvOXr8ujK-OxybRRbuSju5QnHip0FOZHaegxFRfbxjcHAFjSBMASg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IYvOXnudubJ_o7BK9H8unlI8RazyGu5NnDreW0B86XVyOTk0lsmvXg>
 <xmx:IYvOXpDnSKtG54QY6TpwNfWruhxcesV_jPSpYcyAk-AaWYDq_65DQA>
 <xmx:IYvOXndkuQurDccQPZN5k0MhJZqZRfFQUhXn6QpdoNwDHLeFMC5n_A>
 <xmx:IYvOXhjUQDSXrVB_Fia-4pgn4BRc0gzoNZ7c5CeQSg8zDKWyuIuZhQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 62A9F3062499;
 Wed, 27 May 2020 11:45:37 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 07/25] clk: bcm: rpi: Remove global pllb_arm clock pointer
Date: Wed, 27 May 2020 17:45:03 +0200
Message-Id: <60c15bf9db6c54d36a60970cfefec8fa4a11d35d.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084540_910678_83B18ECA 
X-CRM114-Status: UNSURE (   9.13  )
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

The pllb_arm clk_hw pointer in the raspberry_clk structure isn't used
anywhere but in the raspberrypi_register_pllb_arm.

Let's remove it, this will make our lives easier in future patches.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 5f0d4875e145..b21dd6ddc4fe 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -40,7 +40,6 @@ struct raspberrypi_clk {
 	unsigned long max_rate;
 
 	struct clk_hw pllb;
-	struct clk_hw *pllb_arm;
 	struct clk_lookup *pllb_arm_lookup;
 };
 
@@ -246,12 +245,12 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
 		return ret;
 	}
-	rpi->pllb_arm = &raspberrypi_clk_pllb_arm.hw;
 
-	rpi->pllb_arm_lookup = clkdev_hw_create(rpi->pllb_arm, NULL, "cpu0");
+	rpi->pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
+						NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		clk_hw_unregister_fixed_factor(rpi->pllb_arm);
+		clk_hw_unregister_fixed_factor(&raspberrypi_clk_pllb_arm.hw);
 		return -ENOMEM;
 	}
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
