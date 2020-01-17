Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8B9141331
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2gdSPOTeZ285wwkl18Im6o0LkxLFEsVvAgLn5RinxA=; b=tWX6VdDPbjZucW
	hLrCbqoTPqawuepZCWeg0aFTzpo8CLPI9RSPWKXDG1Sh2QVC82BCClZjh8PpdkrcZegsFK2O9tDMy
	WS0FCRTxdcS4W1i7zp/JUGzp61wlqZVHsm4J2zAVGzQCuUA0xVRuFKCtSv2+QGq4VderM73vimPU+
	jjbsLjuzUU9kLR041ow6VcWCrZ2Wr/3Hsw4IPe4XzG8uIhyoDKdZoUD+IDDZwtpCjDF+tsWGNmR82
	2wphMpmD8qznWeX0X3DbgPeVWlpHZZ7IZouktcWB7GM7oCzKT09jqTxv66UhbDAzEHcWCoCXkRlbT
	VGIkegt23tdu9L3cpGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZFo-0004JO-4C; Fri, 17 Jan 2020 21:34:08 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZFf-0004GK-8X
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:34:01 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 777C8600;
 Fri, 17 Jan 2020 16:33:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Fri, 17 Jan 2020 16:33:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=W569kOUG9Jg4u
 fvUVlvaDUcPU/rpbROxxV7I6tE2DMU=; b=JvIdapIhf1PQ0pRxH7UCvK7t44Lbf
 LABB5VlyC1GktUBq5umdIIizzmBTkHHfPhfDHBISW4PAh2iJUJ+7zO98NnXJsU00
 Ey83KG/Q5zSzXlA5PK0TaF3wrTdjDS81YsQkzO+59pKGtmJVcyyGSo06xSoevIzS
 h1JnjKgbMv0vuLhVqEKyB0XNMYlNBc68iUcsImoU6GIyoitc60zpOaavBgdcti/9
 7NKFZklCnzhlUzRq0737f8d1u9hn0glwmq5BqUUt83NVqCR6uizIrPAi4GwTar4E
 CPwSZzPGjQSUnERY7zNMF7A/DXCTPw5rLcIaIBCtObwsWCcQb+ESbEECw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=W569kOUG9Jg4ufvUVlvaDUcPU/rpbROxxV7I6tE2DMU=; b=jYXvSdN6
 WrGmVN4Fdy1s0cGSqWusNtkGsjmcV8ZR286tt/NGrKG7YqiE1LEUrh+QgiwQ5CNE
 Ogb97ruw/5rlRTFumaz73Fa+Zw6jp0haAKsx0TfvMF44aMV9f1JlT26udrvH7YXi
 t7idtc2mnhkKuJHZbRcNB9QFBBNkimSHCXzf7QVXf+wJAA74PHljzkQKu7aQ1MdD
 r6lhj/O2QHMrleUGe6qLPIlxrHT6gEkpuan2N4m1nH3sxyGBlgTqlCJmnqB27i6N
 H9dTE47lkJUEUwqLQ2Lfajki9rfUbliKmQsmQPilvOa3SMB9eLmRAJrcfuO/x4CV
 l6fc5X2MR6QonA==
X-ME-Sender: <xms:NSgiXpfkIybxSwl0zX0HkxfywgfJ375v4nRWUJZ1Ssu8tPSQG6XO4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrtdekgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhu
 vghlsehshhholhhlrghnugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:NSgiXlhAyq22NPKdoZ7Pjm4roHvCkcfrKmHg2KUq6oRsTRhJxgzg6w>
 <xmx:NSgiXjJur8gvwdlC-9x0Dt1nUqRI47gZ5eQmW8il6aruv7aXEwtq2w>
 <xmx:NSgiXi5f2UJUbn4ONVNqF0DBaLwvGaOoOJN8RmlXsPbDwm_v1M1P6w>
 <xmx:NigiXomkNZ81FQQGPIhMxR7kgWs2iRrlv4F5ADujXVlZQ0xdbxrt1Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6376980059;
 Fri, 17 Jan 2020 16:33:41 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/2] pinctrl: sunxi: Mask non-wakeup IRQs on suspend
Date: Fri, 17 Jan 2020 15:33:40 -0600
Message-Id: <20200117213340.47714-2-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200117213340.47714-1-samuel@sholland.org>
References: <20200117213340.47714-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_133359_348714_030EB2BA 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pin controller hardware does not distinguish IRQs intended for
wakeup from other IRQs, so we must mask non-wakeup IRQs in software to
prevent inadvertent wakeups. This is accomplished at the irqchip level
via the IRQCHIP_MASK_ON_SUSPEND flag.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/pinctrl/sunxi/pinctrl-sunxi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/sunxi/pinctrl-sunxi.c b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
index df79da76321e..24ff591efded 100644
--- a/drivers/pinctrl/sunxi/pinctrl-sunxi.c
+++ b/drivers/pinctrl/sunxi/pinctrl-sunxi.c
@@ -1076,6 +1076,7 @@ static struct irq_chip sunxi_pinctrl_edge_irq_chip = {
 	.irq_release_resources = sunxi_pinctrl_irq_release_resources,
 	.irq_set_type	= sunxi_pinctrl_irq_set_type,
 	.irq_set_wake	= sunxi_pinctrl_irq_set_wake,
+	.flags		= IRQCHIP_MASK_ON_SUSPEND,
 };
 
 static struct irq_chip sunxi_pinctrl_level_irq_chip = {
@@ -1092,6 +1093,7 @@ static struct irq_chip sunxi_pinctrl_level_irq_chip = {
 	.irq_set_type	= sunxi_pinctrl_irq_set_type,
 	.irq_set_wake	= sunxi_pinctrl_irq_set_wake,
 	.flags		= IRQCHIP_EOI_THREADED |
+			  IRQCHIP_MASK_ON_SUSPEND |
 			  IRQCHIP_EOI_IF_HANDLED,
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
