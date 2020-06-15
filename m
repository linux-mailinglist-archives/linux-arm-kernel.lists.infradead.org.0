Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 378481F922B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NwuHR3bNE9XFuvWtFeX4e1408nz/k3NwuGqYfd7ZeYQ=; b=Y0wOmWyz88g1q4
	AhXO9yACRUrsYNgfn2Kpld09G1pxxu9urnCbCSVw+5/4qvSsCpJPbJgwjwtpbvTQESOsQUQ2PpWy/
	9TFZvtwxha0nmiUQd6JZ7E5lTmdHik0eWtVj6Ooup0v+PaHtQydEiOqYgbEWQBdEcVSeHgsEVBF5n
	LOlo+ryPy/Wmjz9GK5MQSoseP4ChCxNADNmh5dBUCqdLMV9brP2oQqQSsqDf4MKIrTvvDdOK95uKj
	aylI8S7G9jgJ+u9PQ2aBe2nEph4rXaeX82bqFRa6iBZyy2O5wL0KWo++CoViA88Zjg16WvPyBr1x0
	VauYp6ZUisMXWd5fEDrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkknz-0001zV-Bl; Mon, 15 Jun 2020 08:49:23 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgr-00022h-2t; Mon, 15 Jun 2020 08:42:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 69BAE580151;
 Mon, 15 Jun 2020 04:42:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:42:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=gnlr+Pk8xA6Pc
 FY6qSNBIheVgCOOISk87u1kUFkHHzk=; b=IhM8tywD/G8Ae84RkeS2W9SEeLtKc
 s2ICt03/3ZfQBpWO7kvpH/ujR+1NP3Q98haqYzijb6x3qavqoEMJueK2ACAgNrOP
 tKdH4eTHghh9fO9KNRTIXZ0vlodmTF90MB1hJ/Jdteurz77AId0yS4Jfa2boT9RI
 7Gs10GCSqoe6YBQv9/8y5xNVRrWs16snDn05P80QnVmjHs2xK9cLFL+uPnWSmWzr
 FaquJyX0fU6KwTj6V5h1NX6Sg2AHGhWbrzbD6tGTPa4dJa4IwtqSKE73/U8gt+B+
 OX1RFLQdJ8Qu1VbNam/wYk8lmJ1rTJxifQHOfxzIjQLnQSVZPyMuQ9rVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=gnlr+Pk8xA6PcFY6qSNBIheVgCOOISk87u1kUFkHHzk=; b=HlRKy6y6
 i0lkCFlWFYcHkX/w/Ho7g52rf0OdH1A4HH1vFcnT5VNWmhkAiaw4uQKjiQYWblgD
 izx1J1c+aWpsi3HZR15ZvTSrzH/7jraJhf+VHCABlYNCxKwB+ah2hka3mA5VwQsf
 +Uy7L5T6alJOP1p8yyz9ixXKXGYnHSznUldWS80r9TXDGUwmDq1erkkShzc16ZFB
 rbAkiIEziEpZGOi1RmAFlSWoQObF9LEjpu78QsprDSjGn8bpKslp0V0CDPMccrme
 6zXXmUlwA3bvQMZ1/GOT8dY/C56lZXxhk1SyfHc/vrPgBvqZQxX+qrlNov94njDl
 0D+QjEGcPrfiJw==
X-ME-Sender: <xms:WDTnXuc5BNLREWvz0qmjJpM6f6Dixh7a1JI7K8kLkW0YhSnEE7SuSg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WDTnXoNNvDJTLwWBVjhDXOjy2LXbwqmaBwe6JTmDnZN_SxDCwlVvfA>
 <xmx:WDTnXvgK9c0UF5R1yiw1GoR-a4_YYpwtrGVCENclRuj5l5Y9MPYIQw>
 <xmx:WDTnXr_ns0rBl70qwiweV2ro0Cwa9zMaRTUMGDybXJRPQstLF8QiLw>
 <xmx:WDTnXkJ2Hh_iPKRGeEG9zpk4gVgY-nh4RQaIR1Jcz9HslxyyljcnrQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 06A883061DC5;
 Mon, 15 Jun 2020 04:41:59 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 25/27] clk: bcm2835: Allow custom CCF flags for the PLLs
Date: Mon, 15 Jun 2020 10:41:05 +0200
Message-Id: <ae8bd505d8851f6646e244cd76b6b289346973c8.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014201_379273_14DC003D 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While some clock types allow for each clock to specify its own custom
flags, the PLLs can't. We will need this for the PLLB, so let's add it.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 32f5c13be9d1..b50f00f109bf 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -421,6 +421,7 @@ struct bcm2835_pll_data {
 	u32 reference_enable_mask;
 	/* Bit in CM_LOCK to indicate when the PLL has locked. */
 	u32 lock_mask;
+	u32 flags;
 
 	const struct bcm2835_pll_ana_bits *ana;
 
@@ -1310,7 +1311,7 @@ static struct clk_hw *bcm2835_register_pll(struct bcm2835_cprman *cprman,
 	init.num_parents = 1;
 	init.name = pll_data->name;
 	init.ops = &bcm2835_pll_clk_ops;
-	init.flags = CLK_IGNORE_UNUSED;
+	init.flags = pll_data->flags | CLK_IGNORE_UNUSED;
 
 	pll = kzalloc(sizeof(*pll), GFP_KERNEL);
 	if (!pll)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
