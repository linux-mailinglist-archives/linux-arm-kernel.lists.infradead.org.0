Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D80F23BAD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:07:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUpgaIu5AK+CgGvicd2GRJskpLDXb641DdqQsFtgHPM=; b=fX5tFxIAag4nIo
	QheaPV5unWo9JL3d94q7Nm0RpCt67FPk3YXdpepeDQfDQKeCpVQd/0e/QZbo7y/PDCZwwwDt8nrMx
	/nTTHbbvffyyYhLti2Hu9HDdasUaYgvI41MxYmI/uGgRplMpCKxkN6J3KdFqpg0laxdnjtreOFp8o
	Sxu0gNVY6KOWUERgyYpX1tPJB6Yz1PYlxPP6bQAMD6RI03orj2wy+FKKTBXJF/Fj7ygc1R/5NSanj
	IvLIv/Air5v3RcB2+bxQ0ECA1wOwwaBSmUpU4dWOWtJr0hkZ9wa8Bl9BfbjjH6SJNMV/fwrgpfmyh
	zBnjrrRPV4rox2izqyWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjt1-0004SO-VU; Mon, 20 May 2019 15:07:35 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjsD-0003iM-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558364800; bh=Jp2qNvMK98ELurd2YTl1GqZcvgQt1Q6332x0ej9quDM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tw+3dUk9jK2N+LApBCGA0v+mYAaO6l36DQipEs80mGHXJYG6yk5TKKn1KYenZSiGd
 4iwulI3AZCWQM2uT/ddHSNYPp5WS/bSpNy/coo4vNhqfuqvFYtsDoXcZMwTj7qdS0g
 LlywseekDgX8++HiDHWoJIpWoE7XY/ZOlwPxXVtA=
From: megous@megous.com
To: Chen-Yu Tsai <wens@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v2 2/3] media: sun6i: Support A83T variant
Date: Mon, 20 May 2019 17:06:36 +0200
Message-Id: <20190520150637.23557-3-megous@megous.com>
In-Reply-To: <20190520150637.23557-1-megous@megous.com>
References: <20190520150637.23557-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_080646_030409_D6BC3645 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The A83T SoC has a camera sensor interface (known as CSI in Allwinner
lingo), which is similar to the one found on the A64 and H3. The only
difference seems to be that support of MIPI CSI through a connected
MIPI CSI-2 bridge.

Add support for this variant.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
index 4c79eb64a7a7..6e0e894154f4 100644
--- a/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
+++ b/drivers/media/platform/sunxi/sun6i-csi/sun6i_csi.c
@@ -924,6 +924,7 @@ static int sun6i_csi_remove(struct platform_device *pdev)
 
 static const struct of_device_id sun6i_csi_of_match[] = {
 	{ .compatible = "allwinner,sun6i-a31-csi", },
+	{ .compatible = "allwinner,sun8i-a83t-csi", },
 	{ .compatible = "allwinner,sun8i-h3-csi", },
 	{ .compatible = "allwinner,sun8i-v3s-csi", },
 	{ .compatible = "allwinner,sun50i-a64-csi", },
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
