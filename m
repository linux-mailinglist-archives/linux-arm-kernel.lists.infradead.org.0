Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B691E483A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MGi2tKxyQbyUDve+bwtAezWF6DFiyNpsI1Z0nj9Nqrc=; b=gublKZHLsrn+jU
	vzPi/gCG2+x/iK2qEbdo4LetE5c7xRjb4lYP5Ad3tSDB9eIZZgg6LE6vxu1TSWxZ0Il1rbpwsIxUN
	h5gdCLI4L7x8XCCRMIhM8oBy7iNyX63x9AWHvW0WWWBzcio8BkZq2YVFsjVJiNRqDU5bAwR6lHUYf
	HryHU6xNRqKVBnRuJnUP+8GgPuHRmaqsHADV8NcltkBq6G05Kr0NB6chPe5VQuaKiLTriKEbJe070
	2GlXb7yZQ2HoBReyDolAapfc6OWPXJYQQDMw/xRqRumWmZWVHrQTuLfKeZgOCOoUXc1vAuoXB0o3K
	CzW1EBnwl9zgqwObYmrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyJq-00066v-J4; Wed, 27 May 2020 15:50:14 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFU-0003Ed-VA; Wed, 27 May 2020 15:45:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F353F581DD8;
 Wed, 27 May 2020 11:45:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6iQKMxJg9h0BJ
 TznOS0hTu6hgQnCXnqNYbjoQGsXtMs=; b=ZDfPzcs8nzFcoFOScZ8jDFuPQdO/b
 xbS4APJSADkov/UEjNgOJMIJUTAvcfV0d4+cltZgZWM19BVlVSYGf/CZtQqJUrZ4
 LN90e2hp/YK6w+SzSI4w2zm+YM555ggm6EMVOn28ZwK/1At1Viu0LGbj3hi8hDKY
 mS8UhqA8lUZnF7HvY8C7WatDWO3qa9o/Bf7U7K5bZlbsA4RPC2ciDBlp1uNoQ9TS
 STxKARTyfqJIlFNztRbgpe8jB2c8bLu8i0doYMcxFPgep79Kqhlf8LDDiFAWHBHy
 YfSWLHzUlvbmfoE62C++nkhKyjiePW0BSsXgYHoASjOQ+sQYFPcVIebtw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6iQKMxJg9h0BJTznOS0hTu6hgQnCXnqNYbjoQGsXtMs=; b=K9Mqm1+B
 81cdZ9+2rSG9w1oyzWJFmhmc862ZAUwxEe0W0rkkiGyK4vZ1ZtJGokPSZTLLukkO
 VAQfUB4eet5CdREDeK03lBk23AZwP5CIm3VoPbdNrie4SvthTbcRi5LqY+iS1FRk
 HOff4XSo5JZbkEwxi9zZzoc7CGt4aSvh767l8iLIkSUpjKBApRq6vuhQppULmWkc
 IBBkB+9DogriXk557CBjGR8RcGbsQKbdNE3OdWmW09LvOmw8gSRadJpJUv3dUFHF
 9ZuwdJOgbhIXWfcrs0GS36rgJLVAAa7Xc6TZpN2UJsagrOGdYetUvQz56v86NU/i
 a8JXu83ipFA4qA==
X-ME-Sender: <xms:J4vOXlru3VydWhggf72F_7LdFZO8vkVByibZqwZApta0mjXC4gFG9w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:J4vOXnp0kf1M0QWj1g13azxpVBz05u4A-OfF6AI6I9x9zO8mDEBKAw>
 <xmx:J4vOXiOMbMl60KA0TkIoFOMkulZYWuJG6Yt2Gd24ZB0dT0TW7QsOTA>
 <xmx:J4vOXg6JRhi4TJjUO2HLxEBcn8VVafl2baTZmadY3OEydo233valTg>
 <xmx:J4vOXmvDMtXibxnmRTNf87CnXtJjygB8JMqNsAkRfNjSPd1VzD2g9g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 927A430618B7;
 Wed, 27 May 2020 11:45:43 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 11/25] clk: bcm: rpi: Make sure the clkdev lookup is removed
Date: Wed, 27 May 2020 17:45:07 +0200
Message-Id: <ec65846db8f8879a002c3cbe38085d37fc1fe9d3.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084545_158540_D98FA919 
X-CRM114-Status: UNSURE (   9.19  )
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
