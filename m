Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6AA5EDF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVcQtQLtxs/4YXNu4ZrsOFdP3hQzqfh8SAW7Q0kLz+Y=; b=Pdvsp0vruiUN2V
	n6Bn9o62kEDZiy9EEi98lS3ipYiQUTJsEkNSduzoBu4edAKQjV7sqzRDeK3HuVqRF12HWH1F7MDny
	X/irDnlovsBrQd4gY9Bd/o1oScREs0J7Ye8UGNfTzjn47bx9NiAEHqiuz+vymq/+ToLZM61g7cmnB
	oncest0datz+RvbuehN6JRfz1otwsoRKUAgTaE6PGVd/KzOQYjTJOX+/WBTvlC6pI8aSfydMagarV
	ATopba1ASQ4jMa1+I3TJH3TH1P+aLuOuJqJ76mYmCNb5mN6TKt9HpiEG56DqLNVIQ/m+elVwEvHKE
	7gag8W/iHi4je7Sc5CHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himJK-0005vH-VD; Wed, 03 Jul 2019 20:57:03 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himJ8-0005uW-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:56:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MCbZL-1hrszW1Wi3-009fcz; Wed, 03 Jul 2019 22:56:37 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 3/3] kasan: increase 32-bit stack frame warning limit
Date: Wed,  3 Jul 2019 22:54:38 +0200
Message-Id: <20190703205527.955320-3-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190703205527.955320-1-arnd@arndb.de>
References: <20190703205527.955320-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:8pSJiH+6Agod8nzM29uheH50kgOrBaKHZzl6ndhrvPiQDTdiHui
 W5pteQ/meterbUyb16uPXBdh/bTTq2+X7Dk5d7PAcip6R5BCBPu9tNJQGkCbISINyzxc4E3
 ufLi+uJnI/JUTqJcROzbiTnzXM5lLSFjTSMLV+q7duZFqGKVqJd+NvheDVswutkffm0UA2T
 TfDWqX7IhnITKKyiWsxrA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3Ix8Jf1u9lw=:pjqfTjTFLOmjIDonH9fhGO
 mHR6MCXiiA+Fcqph4cAytscXm6iAv/rKcr/9/TiHbHVVsjckLsemrX4ckG9DSoruNNgcyJZU6
 iOh8oppdJ0CmQLWMXd9XwgOkCOhnP9vSEcCbJv0xxPSh5jCSx9DuUzhZyzfxwQUQSPTD8ZZ2i
 t8FXl40rX/HMeA4I13WzDKH/5A2FNnIENm7M9rUTO700Bd7uTcBKAa7mlM+VdnwpaYWJ2RRtA
 WfqrTrQsGfObU4oOpKitmyB50dNiiNQMY56Dn6Dsh76mVyRlLUnc6QHQ4N0elrylTNwYj/ihI
 61Ox5FaGZmJDnXmnGoFY2sD2hny0rzusVuk5DpRThYWLJ5aatwd+B3ce7oeeO9NJRExGDIni4
 BHuWsm+m/eCraU0WPVTSM87vm1asD/ayohcM1+LdMTcoMzb9LlWx0ALq9MJu/CKgV9De8/3b9
 d3/VN94DYA9jeePRDe7XPFDTNj2Tn+7KpCruJu15FS9qth6rpir7mcXY3UcNbIiiAW0gMe7w+
 /OOpsa7lPMhg8f39gUMxhnjD6EufdR5k/B56MNvwwXPkkoRSgsJHf6gc9m7CmmxVLAsNOqOJm
 hN2h21mCFCGBXsyB5O/KCiZHxoEKeC65vGSjC034oyin5/vtkSzw+IjuYpdEELk2rIyJOnRgX
 zFxLbriBO8AJIvgkUiCOqFp7zMO5cjWvACRnImwP8b5VHSmDtbyQA6vmdcyt/fVyBlbr/1b48
 GyzK0D05aGULm/4LZ3MsFTAW2SkdaJZmX220Qg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135650_729230_F991F1F6 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Abbott Liu <liuwenliang@huawei.com>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enabling kasan on 32-bit ARM introduces some new warnings in the
allmodconfig build due to mildly increased kernel stack usage, even when
asan-stack is disabled:

fs/select.c:621:5: error: stack frame size of 1032 bytes in function 'core_sys_select'
net/mac80211/mlme.c:4047:6: error: stack frame size of 1032 bytes in function 'ieee80211_sta_rx_queued_mgmt'
drivers/infiniband/sw/rxe/rxe_req.c:583:5: error: stack frame size of 1152 bytes in function 'rxe_requester'
fs/ubifs/replay.c:1193:5: error: stack frame size of 1152 bytes in function 'ubifs_replay_journal'
drivers/mtd/chips/cfi_cmdset_0001.c:1868:12: error: stack frame size of 1104 bytes in function 'cfi_intelext_writev'
drivers/ntb/hw/idt/ntb_hw_idt.c:1041:27: error: stack frame size of 1032 bytes in function 'idt_scan_mws'
drivers/mtd/nftlcore.c:674:12: error: stack frame size of 1120 bytes in function 'nftl_writeblock'
drivers/net/wireless/cisco/airo.c:3793:12: error: stack frame size of 1040 bytes in function 'setup_card'
drivers/staging/fbtft/fbtft-core.c:989:5: error: stack frame size of 1232 bytes in function 'fbtft_init_display'
drivers/staging/fbtft/fbtft-core.c:907:12: error: stack frame size of 1072 bytes in function 'fbtft_init_display_dt'
drivers/staging/wlan-ng/cfg80211.c:272:12: error: stack frame size of 1040 bytes in function 'prism2_scan'

Some of these are intentionally high, others are from sloppy coding
practice and should perhaps be reduced a lot.

For 64-bit, the limit is currently much higher at 2048 bytes, which
does not cause many warnings and could even be reduced. Changing the
limit to 1280 bytes with KASAN also takes care of all cases I see.
If we go beyond that with KASAN, or over the normal 1024 byte limit
without it, that is however something we should definitely address
in the code.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 6d2799190fba..41b0ae9d05d9 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -251,7 +251,7 @@ config FRAME_WARN
 	int "Warn for stack frames larger than (needs gcc 4.4)"
 	range 0 8192
 	default 2048 if GCC_PLUGIN_LATENT_ENTROPY
-	default 1280 if (!64BIT && PARISC)
+	default 1280 if (!64BIT && (PARISC || KASAN))
 	default 1024 if (!64BIT && !PARISC)
 	default 2048 if 64BIT
 	help
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
