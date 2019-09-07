Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC57AC84D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V509g8T/v66MUvsNIz+WByNsibaILcWdYpuOEOmxtTA=; b=ozGxeFMQrZYthq
	Dp4VexdyNRVV8gggXjP7k/UtsQJR6us/1+g2gzz7uOK9gxoX61ofO2Owg5rWJStZ2Rd2Q9S/jp6Ma
	lVjj9I1tbg+c0EhSLR6SmH+vF0REYnF0Te6qY9isaQTiOzbZ2qJvQ7/S49VVZ9PuaeE0f0XnoO+dh
	lB9k7pyH9P7STPWKjrCsRwdQXXxORQmf6ZuS7naIwOalBPNrZIt3CjARzi5Tneu020D0h7PjG4scP
	D/L/xxfDyU0pMd7YEddjZeBexQcUH8F1uafgjAzK/U0dMaB8kkSXRzgCV8ZKkplXHUD45D1XqcakZ
	FgQQklovKIMRUQnvMzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ekl-0006bx-5R; Sat, 07 Sep 2019 17:44:03 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ekY-0006bT-Hm
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:43:52 +0000
Received: from fsav402.sakura.ne.jp (fsav402.sakura.ne.jp [133.242.250.101])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x87Hhbm7008546;
 Sun, 8 Sep 2019 02:43:37 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav402.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav402.sakura.ne.jp);
 Sun, 08 Sep 2019 02:43:37 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav402.sakura.ne.jp)
Received: from localhost.localdomain (118.153.231.153.ap.dti.ne.jp
 [153.231.153.118]) (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x87HhYmW008539
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Sun, 8 Sep 2019 02:43:37 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] ASoC: rockchip: ignore 0Hz sysclk
Date: Sun,  8 Sep 2019 02:43:32 +0900
Message-Id: <20190907174332.19586-1-katsuhiro@katsuster.net>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_104350_806274_FC6161EE 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Katsuhiro Suzuki <katsuhiro@katsuster.net>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch ignores sysclk setting if it is 0Hz.

Some codecs treat 0Hz sysclk as signal of applying no constraints.
This driver does not have such feature but current implementation
outputs 'Failed to set mclk' error message if machine driver sets
0Hz sysclk to this driver.

Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
---
 sound/soc/rockchip/rockchip_i2s.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 88ebaf6e1880..af2d5a6124c8 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -419,6 +419,9 @@ static int rockchip_i2s_set_sysclk(struct snd_soc_dai *cpu_dai, int clk_id,
 	struct rk_i2s_dev *i2s = to_info(cpu_dai);
 	int ret;
 
+	if (freq == 0)
+		return 0;
+
 	ret = clk_set_rate(i2s->mclk, freq);
 	if (ret)
 		dev_err(i2s->dev, "Fail to set mclk %d\n", ret);
-- 
2.23.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
