Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E253D6B901
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=waGIUVZB3X/nyUdAne3DwMR1FMYYTbqTTRQpnWMC2IY=; b=TVo1j0IEmAJRufWSBSC3Fifb/G
	zgK0Gld5vhsONyUl+3vpuXrCtarvoXBV5q/cfVzF27kzYIk6dwvjgKfnDvLGcz+BXVujHnBlWKVkt
	v2x4KWQcIveJGFk77dagRkLRK8552k6fPrKcwJx/LKHiiRQgInYNBKsXibLqIyAdD2W4cYcYoOjYW
	SFmdPNsQ61Q9bvhirJHme3J3MwoeBCj5HPX/D7Iom+PewjM1gzqxnz2ud42jqAinzILY7do0aRb2n
	T1XKsF432o70Fe3Hl5PS9KYqKKAfOqRvWk1SBEnByTb38a0L7Ud84IAqSv4vMtMmFq4WBD7nu9oNP
	Li/SGS7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hng1E-0000kX-5y; Wed, 17 Jul 2019 09:14:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hng0k-0000ZT-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:14:08 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B9973200360;
 Wed, 17 Jul 2019 11:14:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8360D2000A5;
 Wed, 17 Jul 2019 11:13:57 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6008C402A4;
 Wed, 17 Jul 2019 17:13:47 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mpm@selenic.com, herbert@gondor.apana.org.au, arnd@arndb.de,
 gregkh@linuxfoundation.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, rfontana@redhat.com,
 allison@lohutok.net, kstewart@linuxfoundation.org, tglx@linutronix.de,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] char: hw_random: mxc-rnga: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 17 Jul 2019 17:04:38 +0800
Message-Id: <20190717090438.31522-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190717090438.31522-1-Anson.Huang@nxp.com>
References: <20190717090438.31522-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_021407_114786_E9919598 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Use the new helper devm_platform_ioremap_resource() which wraps the
platform_get_resource() and devm_ioremap_resource() together, to
simplify the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/char/hw_random/mxc-rnga.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/char/hw_random/mxc-rnga.c b/drivers/char/hw_random/mxc-rnga.c
index ea2bf18..025083c 100644
--- a/drivers/char/hw_random/mxc-rnga.c
+++ b/drivers/char/hw_random/mxc-rnga.c
@@ -134,7 +134,6 @@ static void mxc_rnga_cleanup(struct hwrng *rng)
 static int __init mxc_rnga_probe(struct platform_device *pdev)
 {
 	int err;
-	struct resource *res;
 	struct mxc_rng *mxc_rng;
 
 	mxc_rng = devm_kzalloc(&pdev->dev, sizeof(*mxc_rng), GFP_KERNEL);
@@ -158,8 +157,7 @@ static int __init mxc_rnga_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	mxc_rng->mem = devm_ioremap_resource(&pdev->dev, res);
+	mxc_rng->mem = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(mxc_rng->mem)) {
 		err = PTR_ERR(mxc_rng->mem);
 		goto err_ioremap;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
