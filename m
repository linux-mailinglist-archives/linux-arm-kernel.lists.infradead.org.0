Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4268C068
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OL+BuL4WdEcZ0krFK1q4lUtmczUJhvW/yiNgV3S2HC8=; b=DQ6Rhtl/Aht5DIQn8GQX5915K4
	bLMzfm/ivf+LlKx7pC+x+0lZmp3Wl/6s4wtjDMu6d8FMWACVkNKOR1Fm8c8S0vx+vp7Xhj7ufSOxa
	K/DkzXGfbtWqvLgjeEGethueIER4rCz56b6CztDBEXZ1OWl/bJZzjDD0iwtRZnK/CevCWHy0hf+Lg
	oADUMwUIDAiO9anaCldhmntgCi0PzxhtgnwUVni+5ZaX3EQeb1g4SkFZRoOSs/A1Mu6A6tXYTfMvG
	zkqRxSx+CAMhEqx1Esc4+V+jhV3obc8z2seqBZDumCGwWmSZ1H5UYCqx5aUqLiW+aDRirBTDOSVpB
	xYOU0m9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbNx-0005rP-Ev; Tue, 13 Aug 2019 18:19:05 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbNY-0005ih-I4
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:18:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565720284;
 bh=lZH/3cVeaUb9OXxddaCLC0IsqhjFEEIHEnwVfzYD8tQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SfQg2MPccFvlDMrx8pHleM90moiWyx41DCHMDNPjBpBCz9zTKnmVMPT6Y496718eX
 qQZme9gc2VY8vcI0qOey5XL1Czf638kGvaDxdYlcD8KGiWRUQ3NeWxbw7G/8AtmaWj
 N62x1BGlyoEX3sm0gTkxlJkaXrxmbGZK89oCVp4U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MNw0t-1hv6G72DOd-007T0n; Tue, 13 Aug 2019 20:18:04 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH 2/3] hwmon: raspberrypi: update MODULE_AUTHOR() email address
Date: Tue, 13 Aug 2019 20:17:28 +0200
Message-Id: <1565720249-6549-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
References: <1565720249-6549-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:7yZvEc7GmzP66uxj7l9eM+pvVpf2kE2LqR9JkhAGhQ8FAkXCe4h
 FSlkHG22eiVlYhTkceEI5pAHZAQwKNVuX9v2fVAAN9C+nV7dfx03Bvfp2gvI/tYloYz+l2v
 0grezM76Z5HbDd4bc8EIN6gmxrSmaQwcIF4gT7LNaIzAcNUwjiye3UqMIRpKLVfnCQDxuvE
 wEkfrIDgHMpl2HGpzjzig==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AFshXHr2JQ8=:CaMeoh40NvhqLtdhnhorhJ
 OH52UqZkWgZG1vqjK1yqO74lz5iEL2SFtsp/hBSNfh9aXAfa0N8Ki4tAsJJH7/bezJ4+Yudiw
 8PAOjqlRg+5wVEKPR7qjwVTarF5ehP7QZw99cob9xn1mzobM2UQyA0k5W5d0HHQ/A5BGFZqob
 RBUv5EisKGL+h+P8dywUuwos3xUtrbnOlXukU8NaPnqPVnMhdeNb9TCzsyR+RsKjS8Uw5sTBN
 2RlXtrTWZDnU8oEUjLSlYw12gIlEaRy/BdU5aBCnJzAqu3os9sjKRaDTVVthTrD6lm+5OObUd
 U2i0x/X/6WKvWNqka8Ikxh0QnZ9HQTx+5GGPJxcDnSVci/Uz1kYL+6aKo93mAE3Z3TmUxMVCV
 5VB5RLmdfdPvFU4noxsg2VX9WuRXmxsCjUpuU5SoI6O1HPUUA4B+j+qHY0xUrX/lpyKAcLosf
 nTheIb/29elFm5s1hweM00ff9TmNxKC4nt34DPJjiE/i+ff038CLYQzTC9A1+Ec3golKK2AB2
 N0Ir7BZJHOAMfdVHHM/p8WXWMsdBjyfdOkOeLVa5P5hARtXIAD585NRLrl7tRQ9iuuCaMobW7
 A9pnPbY/pqcAXNSoH4BobHSwVMlpptMsMfwTGibTf43uvico8mTy7Bg/hspM01X7HMddJIlau
 9Wr1aSDAgke6pgtMr7yh2gyL1v7GGfRvQFgJABjm7wgkzNTjZCMIIDylHNxL0XYpVHFU8zV1A
 wxqw6YnQVDbDc8w4k8hQMJb7g9uhv/578U4A8FFG/Y47PjevdJtlZNhqwSYFJ+yi+Ui7wcCLy
 cidwkVmCeaR5rfqTOvIr7oZKBQtq/dgX05ySNF2Fq0fU+Nq9mu2ydkpa9QEH8x5BqP9pFbNKB
 y3gHfWcb8bPFC6E90oFYojHuuikfF5mIK8JVR896RMwf8UBeXwIH9khREtEvj15Gj/DHhFFB5
 krKHXYfLVmEdeUNisRc8Q0jxVjtlj00TP6IjT9762iRKQZ6LTb3BsVvXZ0zfGmi7oxcALWk4i
 aSczRwtv7iG7Vlzr3uJYdBnAcSZWP7+bxQZ7Z95NcF8ot81uFsNWmumZrbgjuQTRVM7vZ408N
 6CDwzACRrwMWM8vxTs0Zo2CUQsUGbAKaXh8a2OAl2qO7WKqrb96ee4QVw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_111840_994441_1C86DA7B 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-hwmon@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The email address listed in MODULE_AUTHOR() will be disabled in the
near future. Replace it with my private one.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/hwmon/raspberrypi-hwmon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hwmon/raspberrypi-hwmon.c b/drivers/hwmon/raspberrypi-hwmon.c
index efe4bb1..d3a64a3 100644
--- a/drivers/hwmon/raspberrypi-hwmon.c
+++ b/drivers/hwmon/raspberrypi-hwmon.c
@@ -146,7 +146,7 @@ static struct platform_driver rpi_hwmon_driver = {
 };
 module_platform_driver(rpi_hwmon_driver);

-MODULE_AUTHOR("Stefan Wahren <stefan.wahren@i2se.com>");
+MODULE_AUTHOR("Stefan Wahren <wahrenst@gmx.net>");
 MODULE_DESCRIPTION("Raspberry Pi voltage sensor driver");
 MODULE_LICENSE("GPL v2");
 MODULE_ALIAS("platform:raspberrypi-hwmon");
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
