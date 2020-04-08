Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D5B1A1EE1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 12:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RRFf/kYWE8tpASr7iw6WHaCm0QK0YblTJXVH3u5rOOE=; b=IQYVGjzzeN2/LNwcVfSJxha+BX
	HoFnlPq0GjJInSAmP+I0pJKVg7z+AtBSwy84FXFE7KoHrVc9y9Hzr/iRRyb1S+Vo4xHAkq/DK73ju
	cqcNLY7T1421bpG9HsLFCRrbRQUf4ObcWpwAQUCnmKWSrkkex2aB0XCM31MM/OqeAsvE9OXvHXYoo
	t7Ezv5moxphCOIiU0Kktg3YEr94w1m3KV9aOgBIgbVOYwry1vnjfyk4Xkfb3AHHhPTgJKbr6D2xJ0
	UVJBRUx8zm4iPVwir2u1GSyXURbIY6XAtaYt7D7X7nbtCZupmlSY4N51ulm+w8NzAd2O4zFWEYUeO
	dz2n6CUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM83z-0008Vw-1n; Wed, 08 Apr 2020 10:36:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM83j-0008RG-24
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 10:35:52 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 248741A16DB;
 Wed,  8 Apr 2020 12:35:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BD031A0153;
 Wed,  8 Apr 2020 12:35:43 +0200 (CEST)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3334C40285;
 Wed,  8 Apr 2020 18:35:36 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH] gpio: mpc8xxx: Add shutdown function.
Date: Wed,  8 Apr 2020 18:21:18 +0800
Message-Id: <20200408102118.17572-2-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20200408102118.17572-1-hui.song_1@nxp.com>
References: <20200408102118.17572-1-hui.song_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_033551_241407_495CE1B8 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Song Hui <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Song Hui <hui.song_1@nxp.com>

The shutdown function needed to make interrupt handler to be NULL
when kexec execute.

Signed-off-by: Song Hui <hui.song_1@nxp.com>
---
 drivers/gpio/gpio-mpc8xxx.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index 604dfec..a24e6c5 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -446,9 +446,21 @@ static int mpc8xxx_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int mpc8xxx_shutdown(struct platform_device *pdev)
+{
+	struct mpc8xxx_gpio_chip *mpc8xxx_gc = platform_get_drvdata(pdev);
+
+	if (mpc8xxx_gc->irq) {
+		irq_set_chained_handler_and_data(mpc8xxx_gc->irqn, NULL, NULL);
+		irq_domain_remove(mpc8xxx_gc->irq);
+	}
+
+	return 0;
+}
 static struct platform_driver mpc8xxx_plat_driver = {
 	.probe		= mpc8xxx_probe,
 	.remove		= mpc8xxx_remove,
+	.shutdown	= mpc8xxx_shutdown,
 	.driver		= {
 		.name = "gpio-mpc8xxx",
 		.of_match_table	= mpc8xxx_gpio_ids,
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
