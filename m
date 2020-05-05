Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753CB1C583A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKMytDo52cSdd5sSet+KhNejJx6kAPWraR2dLEHbND4=; b=f9+uK9kBBAMHgx
	BGHxuo2ESdGbWiWeDMM+LtVYVMQcUhixfFlWtsui3L88SFui/GsrQ/0yWApZTSnGFuY+aamwcRZDh
	ldgFYQWzRvSGjCivAw4dSF2SNBrfnX1bLtNXTSI1Agh8C4ajZlkWEqTYkGy46NNu5SUvCOBo6OX3P
	SnE2ddZ25iw+eaGznXpFM8kI05Mog4mFpzNLB/PmPZi+vaVXnEEJGDPQ/lfRQGVjTwMKcgoawvcql
	n0FmjfGockhTmINw2dGaz3xS8yUxoUgprshy2mw7UnjrTi3CSkrQnuIhzWx1ZqAYSaeLpMQPftIln
	hxYFuHKY+v/cbYx/kVwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyGB-0000lu-Gn; Tue, 05 May 2020 14:09:23 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyG4-0000lH-CJ; Tue, 05 May 2020 14:09:17 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MOAJt-1jl13t3uIr-00OWri; Tue, 05 May 2020 16:08:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sean Wang <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Light Hsieh <light.hsieh@mediatek.com>
Subject: [PATCH] pinctrl: mediatek: add pinctrl-mtk-common-v2 module license
Date: Tue,  5 May 2020 16:08:40 +0200
Message-Id: <20200505140848.554957-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:8x+ElLntw4n38VdOKQUn1jKkUwp0cPhTkte/vCk9MXw5FBuRYzO
 aZCQhDaNInbB9duIFcVfR+IrIflB0RYYyOkVYS+7peR9ZqSuhIWA6dAu6Kmf7ot1i92NWvY
 g4FHlV3Nxs5+999B1PWHrMh56vUvgHX/CSR4cbVxkw/sSiBqgJtnIGYO7lq9SLmnrmL6//Z
 vY9Ixf3Ex6196kbCI/h3g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zcGuDdea3AI=:9gaJ956+e/S10zq8UOB7AR
 ZbUbesdyNXz+lmJ0cSTddlrcznHhOKalZ1lW/bayZKFtHepB5SJgtExFff1e8kaB+fmQTgOrV
 QYvRc1Wm0rfQgZBSGJZX2YOK9lXDjtny/xA8L153JTjJm/QvEStKSRCsXMUpMQGKmDbggABSJ
 6neIeahH7BGIuHJs0Fir45FWoGg6/anKlb31ekSjm4pOStevMTmVC+lDMV0bP95Pd1mul7j59
 y/YryQKIyKKfsKuOTXQ6h+zaXUsgKXDofLkn6egv6vDfz+0RQZKGx/rAYHElCIXKpZMLmYL1S
 M/bObKTqpNgi19LZokBLdy1BveelcokBT0uTNFPaTMq1Mtk2D4A2uN1EkoYb2G4EaFLQj+TBI
 w2lbaF4Ihl80niu4bAyHI5gx6a+Wo+5mpV7GyxvT1XGLGBlZGSjwSVu451HDlRO4d+jHxSxfg
 B75g+s2zKXfUSuZ/1dAJGPd/IZZr2N+AbTI8qj+eBKv7bdOG0XB50FNFH0e8aNxzk8aNZf4dr
 zElEykIHEdaZba0MaFXH9ZTXmlFFcJjNLV7dlhUUiqieOOnfMZNMH8sPSoXTf+w9wMmgOw/W7
 c7+NQZqZgb3jIwNSsebo3NQ7GqujbDEQv1wHCFxWVzASUlFy6xAuf/vpb7z7MrflX32NZv4Qg
 GkpStsiq59TeUo3TyBesfD6QAsc4leX6g9tV83XTBOd7Quuk/Fe4e6GgJv0C9cqWZPNyjBaTf
 LLoqUYqdn6JVmbYkchP6+hbypYs0N858++nrLcQHQ40j1e1BPPjvvNSHtc1MiYm6mLy/7zVR0
 VakUMnxloNVNdH0eJnsGjvF/dgyYo2igsrU85G/lFPCccAnP4Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070916_710123_906B6AA0 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Sean Wang <sean.wang@mediatek.com>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kbuild warns when this file is built as a loadable module:

WARNING: modpost: missing MODULE_LICENSE() in drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.o
see include/linux/module.h for more information

Add the missing license/author/description tags.

Fixes: 8174a8512e3e ("pinctrl: mediatek: make MediaTek pinctrl v2 driver ready for buidling loadable module")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 6ea40b501328..b77b18fe5adc 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -993,3 +993,7 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 	return 0;
 }
 EXPORT_SYMBOL_GPL(mtk_pinconf_adv_drive_get);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Sean Wang <sean.wang@mediatek.com>");
+MODULE_DESCRIPTION("Pin configuration library module for mediatek SoCs");
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
