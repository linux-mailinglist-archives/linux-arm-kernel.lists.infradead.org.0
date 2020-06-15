Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57A01F922D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36mQ7KsDXcjBzQ1MBv4fZJJtWUF7Mr47Q4qfCd/6m9c=; b=q0PbrCDtVXTw11
	sG1P4mPblv2xiXuSmBUgflxeWfVoSqveCSZES8ui7lDIZc6zBxfINO8m0vevtA0aOLYJNOMxBPT91
	wo5TnhwOy6rEEHZ/fHTZoHxboCRDO8bhT/uufyJeQrm/gEUEzNOpAL00WnRNu7xdjjMqSn0a421IF
	+fHVSF2A8oF3Fgyat9doFg5uVaegjUODmlp6fGn7KBXamomsWMsFWBPKpU0fJyU/FEKVJdx8DyDZU
	t35eaL3ni+D9ubMfZ9wHC6rDkM2kTRzI+FDjxXDjPuOl8s+AgTr1Or6m7Um1ALmZpCsVHyog/pjkD
	q1uedPTL1huIXMdncLtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkoK-0002Dm-Fl; Mon, 15 Jun 2020 08:49:44 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgt-00024I-Je; Mon, 15 Jun 2020 08:42:05 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0487858014B;
 Mon, 15 Jun 2020 04:42:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:42:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=09HauIrGgpLtm
 7Rxrd5mOCdFdIG3U7aJzbJ8aXuu6DQ=; b=c0ptGUmcmO3q6fzt8fI4bCrPhjRnj
 hVFeYBmiGw5yxsQCNNPdbQXNPQAjK9fP0171+Jk9e/WN7ZUCJDEH3CIKjC8Y0Cxv
 KIMzYfoO/+AXkoSk9avzcZkaOq+9YnAdfL/8ftFV8COPpLofaTfAhCjZUFYenVeH
 Bya8zj0G8GtKA6Zf39LxRDSQX7Dftm0EotQB4lywkiRLkQq0aHtO7iVhxS2zYuXq
 /wf+84l8fOqZvtgFAGacGIgDgn6sCOv9qY7iwsOphmfOwMCMEjTFroeWLKD2f7RV
 RFiGVhiUQFbQpPLL7T9/itbr9xTwzJa57nQeQQgw2P8h3nz/BFaRrTFhA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=09HauIrGgpLtm7Rxrd5mOCdFdIG3U7aJzbJ8aXuu6DQ=; b=P0C0rwe3
 exR25Cz7Ap4rOUlcKvv4xG0djccgEtPQ5KEYA18kK69d+gQafgkbj2zWiiVVntu4
 bpq9y1ukfWjgqVf+EjS8KRHy5/2sa2ZgNMMpIJ7Jtsj2sO8wHjdFn9fG3MjfVadC
 j3gqRGWCMxfQicz8kanTUVnDbI87UkU/cdhAw31YHy6JgsRatflM+qJxVkm+cnwQ
 liPOAoWMZ9n6LqO2PF7W8NXoK5AMHE8U/tR0o1dJpVUmQeYoliwhJwKgW4dC35dv
 My0J8mffsk/giyHUVtS2q8nCSosqqNzZ942g/8vU2BFjkFdGDuSyljmRjz8cBcfI
 pAUVFo9Qe/8bqg==
X-ME-Sender: <xms:WTTnXuJ9SzWvryHF9vBU4y6WcpRJ-8xO5HIlLG5sPenWOUoK-8hBwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:WTTnXmLBi9QWXoOUmW4QOIYFmfDP6Td5Ly4hb5t3w4flXJ83gDEz-A>
 <xmx:WTTnXuu690h5mZFoZxSO20C8r11ajzXjIhEtsED5Lz0PY6HqdC3m6Q>
 <xmx:WTTnXjYk8QIK2yaq2yKABwc3bY7_KsCE7KpoBBD7xERDwdzZgLPfNw>
 <xmx:WjTnXnm-D2ctHhTvvsl-vs32jEwXcEj_r6Ywlg2WDBSslVj9ssdwSA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 933033280064;
 Mon, 15 Jun 2020 04:42:01 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 26/27] clk: bcm2835: Don't cache the PLLB rate
Date: Mon, 15 Jun 2020 10:41:06 +0200
Message-Id: <9864daba2f584ed49aee5ed1d2f4d48507c58197.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014203_802554_C3158FCD 
X-CRM114-Status: GOOD (  10.33  )
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

The PLLB rate will be changed through the firmware clocks drivers and will
change behind this drivers' back, so we don't want to cache the rate.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index b50f00f109bf..027eba31f793 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1700,7 +1700,8 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 
 		.min_rate = 600000000u,
 		.max_rate = 3000000000u,
-		.max_fb_rate = BCM2835_MAX_FB_RATE),
+		.max_fb_rate = BCM2835_MAX_FB_RATE,
+		.flags = CLK_GET_RATE_NOCACHE),
 	[BCM2835_PLLB_ARM]	= REGISTER_PLL_DIV(
 		SOC_ALL,
 		.name = "pllb_arm",
@@ -1710,7 +1711,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.load_mask = CM_PLLB_LOADARM,
 		.hold_mask = CM_PLLB_HOLDARM,
 		.fixed_divider = 1,
-		.flags = CLK_SET_RATE_PARENT),
+		.flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
