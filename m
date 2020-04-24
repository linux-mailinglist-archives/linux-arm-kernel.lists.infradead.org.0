Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59301B79C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ONVrmakV44Tp+KCnyaz459n3XAKmDps7+oysuDT03A=; b=tKl4ZiD4UrQz2q
	wrfs2Bva341JMPnEoxaBC51geCHu3v4Hkq7myMBS1jdrXqI32edALf1+pOMDhmEasAzVRFyw2wmyA
	wc7KPD9haD7/BmhXLzzxMU/IHE4VXOsmlUuo9eIEf8vIeFocLCai4Kg2RIMlGsd8Ut/XiHWvGpF/u
	mt57gnclP4CRVLlmVd/kLueq9NA7aXTy/b1iFtnohUNIe6o0piqvbKWRRBCAgMBuRvcQdOFKH6TZ8
	VxYMY0rgagiTlzRxKxWwPab/t8rhLRei7pb+OL7nW/bE+XOIRTplz0cze6N4tdxOyuDSTG/a0kTYX
	kmVx6ilCp6SQO3BPWFFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0QI-0001no-LG; Fri, 24 Apr 2020 15:39:26 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ma-0007RV-Qf; Fri, 24 Apr 2020 15:35:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 68B6A13AB;
 Fri, 24 Apr 2020 11:35:34 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=42vYCsvCK1Q3h
 zUnny7sAPax5q+dRn7tmgKZnQLQobw=; b=KdBFrvXQ1Hb7jhyfE0l2xtwIjYHh6
 oF66EQv7+7wyaw2ukPo9YJ0+YErfR235IP8UhNHEHMNc1vV65fvVg+ekQ4fCpTAP
 +VDWu9P986olxhoaJXZJugFaVTwH7jcoKrja+/r/6xwJkiIxH7N5ovTtUwA8ko2M
 En3WisFSaDQ/SfRwwYbVdaHGquqbOn9kK/OOoOs4NE3PsTmFI0MCspYYFtrHqLYi
 BBCWCxhT/fCFCjqHsLn7EJ3s5SuOc8YizbPA0mhSqkoyhXnboYsIpjFyOBUtLYBE
 dhE5BOuFJpUpYIDwpXcF2Kxy7H2d7OcV5qSLHHTK5LYrlX+hZlLw22cBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=42vYCsvCK1Q3hzUnny7sAPax5q+dRn7tmgKZnQLQobw=; b=ozTLDHnc
 7ddg5/Avvtbg8CmYVXHyNeS5vrGQhkKfa+YJkwuAxn8YsBWLd1hup1Z+mpCbCFJk
 xyqSF8P8q8bxqQ1rzwYgrzM4FrAVBWRXeDW2X2gV4rDHjEGI2Hxf0V9H2MHPquB/
 S8N/PVezek7ACtlA4IFYgKb79EmkZnEcRm7HyVr+tA+avAdJIwJC4V+mWZtbU56v
 ypi70pLWsduEe9qlj6X61JQJswVIHmUTP0kMVg5pcC6cssCeZazVmmMQyhE3VWqK
 ZXR6jCvRKJq17pfnnmy4hfRAbVheFknDMuuI0FkHvNb/U2a6OnJyJ4WjYMILVq2M
 cxWOdvTI3XCCGw==
X-ME-Sender: <xms:RQejXlriwLTwWwLKMHQoD-0wXxX_LidSUIp-tphAuDJg-LGX4Fkjmg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RQejXmx3AMGwnxrAd_kjwGgb4IR90BaAtTTJ6NIL-qoO02NlwB1Fsg>
 <xmx:RQejXnPzi1Ig35XK_imPXFwKsqOO8p7kmdgUIrqyNm-ACt7Z3Xo10w>
 <xmx:RQejXgcNWKT2U9ZzZOOr1_hDXjNlmcqZom5pD3_ROtYaYgzKvyXN7w>
 <xmx:RgejXkUvUPMEt6XEVAtcpf3nGqIrrjH0Fx2AmorCFuSdLsJp2nKi956VsXc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9FD3A328005A;
 Fri, 24 Apr 2020 11:35:33 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 08/91] clk: bcm: rpi: Remove global pllb_arm clock pointer
Date: Fri, 24 Apr 2020 17:33:49 +0200
Message-Id: <cf81ef7d0235e7f7fdc70e1628180bebe692e3a5.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083536_929313_099C9E34 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
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
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 3e9032b9a0a6..a99e8189311f 100644
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
