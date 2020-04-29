Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 923931BDD85
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 15:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kuzUoBoJWQ0bK2KmvR3l27vPVD19iOZm/5hvAVDtZcI=; b=UNOwPcs6s4+h3t
	gI3scyfa1gaXJr0l7UScOWN05WZBvMbCT5Dq5no284WGGE/wlV8uHDTWlHPxWyNFsgS9iS2BqVCwL
	NFb5gkPSAnRbSRGE4xTYIQqFVkRop1v0yTISF82k/sIEZFd/r33vEunV9syqaV8u1qbQvq32LQAIA
	1OHulKIQhaNHjW6MFjeF3y9a8oA2k1/BBDRk+MIemCD5EQiPRxtySJAxqDUCsCDTyb0My94PWI0aS
	WQCr2gkpR4KQ9MP2dI4XkVsHPUTM5J5DyLBGoOQTFzhFDqmk2zzoH6Ekvc/KW3oFKDEFv5QF1dgjQ
	BI8IuMEIxtW1fjgi3dzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmiB-0003Wb-64; Wed, 29 Apr 2020 13:25:15 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmhq-0003Vz-1P
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 13:24:55 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MN5W9-1jmHai06Xl-00J200; Wed, 29 Apr 2020 15:24:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sean Wang <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Light Hsieh <light.hsieh@mediatek.com>
Subject: [PATCH] pinctrl: mediatek: fix mtk_eint link error
Date: Wed, 29 Apr 2020 15:24:22 +0200
Message-Id: <20200429132443.1295194-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:b2K8SGt0tNbKweRcNNd5na2gw56bnc7GqSkapPSRkiyRREMbXnV
 mXoroDsDHSuU5UDemW+096Q1oGLBjSb9A8Q0oGheHoi6a2eWYKpL9j2P6FuZgQX7IeczDrW
 dwxi0yxqo0aWJTzwXgrZJ/4d15zI6Rog4TWtotc5l3cB8KfW+IoAMQzurz+hLhsY3jkN6mR
 YdY+2SSUVRM3JY69A4Ilg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tIEy99GNx+8=:kozTZI20UsvqYUvArP7lrr
 CVSueE5VSluslq5ErNIWyj2CWFhgMtHmXt3v/rGC9X/UHxPaqC6LLL5noG0k4Dq5j41EXHWCb
 PMCNwTdKHUWN7fgmBpIjU4XPqpfHUH7QjTCqCZ5VnwonmySixRq/IaLaahcEMNm+XBu5NVV7h
 ROxryqcjmRKSV1UYN1qIEVJ6hSQEaHnkncCnI/ytOdhIZcz5LzUlvCE4Lir6+xxNkpB344DM7
 ljN/nt5iPRp+jhgNSvTe+zFPC8IURT295IA1JzDCSL9t4ueK+qD3QiuK57tJnHlITjKTqwN96
 F6KAPbHCFr/8pswmCN1jvldq/Z+76YbCHp+O2rSTTgaTTtzyM8IhfOKSW2PnP6iAfU0/qtvUc
 wAn+TTxJsVRKcHwW6DB/WQTbw3uRrJXs8OIUbqzVCq2BFazyT+12LVD2iEiZ0WFMTKEkRfCpX
 FTeFLNHCNkEOZ2V3gyE5XZcK0A8h+hHbjg2CvXmWyqrVDLkyf6ulkl8J3ZaBy8DD7i6iYs1SF
 NLDTEZrh5IRuSqTzXGjHdZ4BAcT+7k4CaiWVYGiLPHAOo5iy0bhN1962tmSTdUKH2f/yl6gUv
 qZxwcFLKnqH1cLBdstIpvMOo98khu7iN5Ae3ffSf12Lfzqq7W5tD72pU12fmGOa3ScgKo++eV
 rlKjKWK9To2C68fLzv0YtoPT190SQ0/2hGz4P5iSl4kVdtqg2lzNtCYAyKKj3GZfqF3QvpKVW
 7z1cbRxFdgv2pbmIdbkW4gC5TLeHnAkMZ7SbwAsr/FtwiodtzHLJdfMR2m+bkNPRRUsuQv75P
 0xarjRVA9hEnrsUt/yUbISYhgeHa+OrMmkGh8ORCnQZWR5f9Wg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_062454_376122_207E3C62 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In a configuration with CONFIG_PINCTRL_MTK_MOORE=y and CONFIG_PINCTRL_MTK_PARIS=m,
we end up with the mtk_eint driver as a loadable module that cannot be
linked from built-in code:

aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.o: in function `mtk_build_eint':
(.text+0x304): undefined reference to `mtk_eint_do_init'
aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-moore.o: in function `mtk_gpio_set_config':
pinctrl-moore.c:(.text+0xf80): undefined reference to `mtk_eint_set_debounce'
aarch64-linux-ld: drivers/pinctrl/mediatek/pinctrl-moore.o: in function `mtk_gpio_to_irq':
pinctrl-moore.c:(.text+0x1028): undefined reference to `mtk_eint_find_irq'

Simplify the Kconfig logic to always select EINT_MTK when it is needed, and
remove the 'default' statements.

Fixes: 8174a8512e3e ("pinctrl: mediatek: make MediaTek pinctrl v2 driver ready for buidling loadable module")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/pinctrl/mediatek/Kconfig    |  4 +---
 drivers/pinctrl/mediatek/mtk-eint.h | 28 ----------------------------
 2 files changed, 1 insertion(+), 31 deletions(-)

diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
index f32d3644c509..b6a8d91f4885 100644
--- a/drivers/pinctrl/mediatek/Kconfig
+++ b/drivers/pinctrl/mediatek/Kconfig
@@ -7,8 +7,6 @@ config EINT_MTK
 	depends on PINCTRL_MTK || PINCTRL_MTK_MOORE || PINCTRL_MTK_PARIS || COMPILE_TEST
 	select GPIOLIB
 	select IRQ_DOMAIN
-	default y if PINCTRL_MTK || PINCTRL_MTK_MOORE
-	default PINCTRL_MTK_PARIS
 
 config PINCTRL_MTK
 	bool
@@ -20,6 +18,7 @@ config PINCTRL_MTK
 	select OF_GPIO
 
 config PINCTRL_MTK_V2
+	select EINT_MTK
 	tristate
 
 config PINCTRL_MTK_MOORE
@@ -38,7 +37,6 @@ config PINCTRL_MTK_PARIS
 	select PINMUX
 	select GENERIC_PINCONF
 	select GPIOLIB
-	select EINT_MTK
 	select OF_GPIO
 	select PINCTRL_MTK_V2
 
diff --git a/drivers/pinctrl/mediatek/mtk-eint.h b/drivers/pinctrl/mediatek/mtk-eint.h
index 48468d0fae68..f40dab50a5f3 100644
--- a/drivers/pinctrl/mediatek/mtk-eint.h
+++ b/drivers/pinctrl/mediatek/mtk-eint.h
@@ -68,7 +68,6 @@ struct mtk_eint {
 	const struct mtk_eint_xt *gpio_xlate;
 };
 
-#if IS_ENABLED(CONFIG_EINT_MTK)
 int mtk_eint_do_init(struct mtk_eint *eint);
 int mtk_eint_do_suspend(struct mtk_eint *eint);
 int mtk_eint_do_resume(struct mtk_eint *eint);
@@ -76,31 +75,4 @@ int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_n,
 			  unsigned int debounce);
 int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n);
 
-#else
-static inline int mtk_eint_do_init(struct mtk_eint *eint)
-{
-	return -EOPNOTSUPP;
-}
-
-static inline int mtk_eint_do_suspend(struct mtk_eint *eint)
-{
-	return -EOPNOTSUPP;
-}
-
-static inline int mtk_eint_do_resume(struct mtk_eint *eint)
-{
-	return -EOPNOTSUPP;
-}
-
-static inline int mtk_eint_set_debounce(struct mtk_eint *eint, unsigned long eint_n,
-			  unsigned int debounce)
-{
-	return -EOPNOTSUPP;
-}
-
-static inline int mtk_eint_find_irq(struct mtk_eint *eint, unsigned long eint_n)
-{
-	return -EOPNOTSUPP;
-}
-#endif
 #endif /* __MTK_EINT_H */
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
