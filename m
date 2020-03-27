Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106FC1959F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 16:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=zy9IxQTXjQrHJUvx1661qoKHWlW0Av5KBWs4YF/kf50=; b=KeB
	CIk9Qw4wZ0Kb1n7rJXqAA9RVp+51lyQRMbAPCCSpNeqNN0CdU22UUcDSNJMpEN1C89pq9/CCxzLz2
	OZ5puJ+R78ipb1lAWSiOAsucJHvsK8r05/fHWz0GYt2cosTaKK0pw6g563oqha6XzXEEvVgKQ93l4
	5kXYmflKmi1tiyR/ZjRrKRb4zexxgkqXhb+4ssadUOhdFyrbM6VsBo8FUOSxZ+5AqbBmI1xSl5+v0
	tv3IpboYZEUVN9hMUs6NmfZFb9n9OSkRI727NWyzlO+xd9OR4OxmmL17khRMzP/TWyDo+efYHStsD
	zgXuXSHHn15QUNMyFvtfFjYen+juUZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHqzR-0004d1-K7; Fri, 27 Mar 2020 15:33:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHqzH-0004bz-Jd
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 15:33:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2E0031B;
 Fri, 27 Mar 2020 08:33:31 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36BCF3F71F;
 Fri, 27 Mar 2020 08:33:31 -0700 (PDT)
Date: Fri, 27 Mar 2020 15:33:29 +0000
From: Mark Brown <broonie@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: Applied "ASoC: pxa: magician: convert to use i2c_new_client_device()"
 to the asoc tree
In-Reply-To: <20200326211010.13471-2-wsa+renesas@sang-engineering.com>
Message-Id: <applied-20200326211010.13471-2-wsa+renesas@sang-engineering.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_083335_685621_7466D1B9 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-i2c@vger.kernel.org, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: pxa: magician: convert to use i2c_new_client_device()

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 17fb5433150e8b0b4000a77a21055359a2eab534 Mon Sep 17 00:00:00 2001
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
Date: Thu, 26 Mar 2020 22:10:10 +0100
Subject: [PATCH] ASoC: pxa: magician: convert to use i2c_new_client_device()

Move away from the deprecated API and return the shiny new ERRPTR where
useful.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Link: https://lore.kernel.org/r/20200326211010.13471-2-wsa+renesas@sang-engineering.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/pxa/magician.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/pxa/magician.c b/sound/soc/pxa/magician.c
index 6483cff5b73d..3bafd86bfb93 100644
--- a/sound/soc/pxa/magician.c
+++ b/sound/soc/pxa/magician.c
@@ -358,10 +358,10 @@ static int __init magician_init(void)
 	adapter = i2c_get_adapter(0);
 	if (!adapter)
 		return -ENODEV;
-	client = i2c_new_device(adapter, i2c_board_info);
+	client = i2c_new_client_device(adapter, i2c_board_info);
 	i2c_put_adapter(adapter);
-	if (!client)
-		return -ENODEV;
+	if (IS_ERR(client))
+		return PTR_ERR(client);
 
 	ret = gpio_request(EGPIO_MAGICIAN_SPK_POWER, "SPK_POWER");
 	if (ret)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
