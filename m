Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC3EE1228
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 08:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dBYfDkilHdjqNCwBKDIwLcvwjNmfGwo7+3TFVoaj+ss=; b=kDezIUWZKvRMi0
	YFC1GJNvajMJKyTsEBLzrJuJ2E7mG3TnHCV7C0Wz+FfhIuJAdN3nXI9yzLlaFdwSUpeN566bieWmU
	lx7mbjSfuJ6LkpPbP4cvjCpPM6FeSpE19OHOhGZDhnsTs+QX41/4BNSjOhnk2z2frkE7f+DPvSM7G
	Hxw6tbuqkDmzmZTstYWsr6pY5WZgXS9aaGxnUd82AKlWH90y1zitRuOsnj+xxFYRKs1cUdev42YLo
	INJ+RXxSblD7eNxA46e+q67pOBGbl7ZH9yFuMBhTKgiaSRLUkuaYZGDEcMDOfZKzBpLKCmZb17AvB
	Tr0ErTdD7Q+9atq5rhhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNABB-0001DP-22; Wed, 23 Oct 2019 06:31:33 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNAB1-0001CR-LN; Wed, 23 Oct 2019 06:31:25 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C4C05786AA4159FF57FC;
 Wed, 23 Oct 2019 14:31:18 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Wed, 23 Oct 2019 14:31:08 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <matthias.bgg@gmail.com>, <tzungbi@google.com>,
 <shunli.wang@mediatek.com>, <yuehaibing@huawei.com>,
 <gregkh@linuxfoundation.org>, <tglx@linutronix.de>,
 <kaichieh.chuang@mediatek.com>
Subject: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
Date: Wed, 23 Oct 2019 14:31:03 +0800
Message-ID: <20191023063103.44941-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_233123_879331_82ECF434 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mao Wenan <maowenan@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A=y,
below errors can be seen:
sound/soc/codecs/cros_ec_codec.o: In function `send_ec_host_command':
cros_ec_codec.c:(.text+0x534): undefined reference to `cros_ec_cmd_xfer_status'
cros_ec_codec.c:(.text+0x101c): undefined reference to `cros_ec_get_host_event'

This is because it will select SND_SOC_CROS_EC_CODEC
after commit 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV"),
but SND_SOC_CROS_EC_CODEC depends on CROS_EC.

Fixes: 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV")
Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 sound/soc/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/mediatek/Kconfig b/sound/soc/mediatek/Kconfig
index 8b29f39..a656d20 100644
--- a/sound/soc/mediatek/Kconfig
+++ b/sound/soc/mediatek/Kconfig
@@ -125,7 +125,7 @@ config SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A
 	select SND_SOC_MAX98357A
 	select SND_SOC_BT_SCO
 	select SND_SOC_TS3A227E
-	select SND_SOC_CROS_EC_CODEC
+	select SND_SOC_CROS_EC_CODEC if CROS_EC
 	help
 	  This adds ASoC driver for Mediatek MT8183 boards
 	  with the MT6358 TS3A227E MAX98357A audio codec.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
