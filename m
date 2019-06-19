Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DDC4B979
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4dKBdD3ybvBdJ0ZYX8bq04o0HAvRPKOwYpkS7LUaDk=; b=pyL6lrOrK8QotA
	9HC/baXc+J8XfOM0oI5AEphVjW8FLBtObObOV8Xtr5BOrPgaw2Aywr9eqE/5uNOp2eDLk0vwj7qBV
	QC4oZv37SVbgx/IPwTmPa3obvadQ4g5LXH4v5UcgCd7Cd71RX7nx1SqtYI8vqxVBBbFAeKq/HFysv
	xE0pMDMAhHgrAVqydH/7YO1HvGuxfwgkXWgpxNA1EYzQh/0kcYwqY7kWXZ4ZgF2Q5uQYpuWlLbe28
	F8RU1uTPv8lucvlSRqYjTNyR8mMVmoB+WXBfFpmc4Kgi/GA/njXf1w8hX9jS4zKI0nYMQrwtpadNn
	uYoQZRnnZ6xqo3mmdzqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaNl-0005Fy-Of; Wed, 19 Jun 2019 13:12:09 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaNb-0005FK-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:12:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MC2sH-1hlX0U47Th-00CQ0o; Wed, 19 Jun 2019 15:11:52 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sekhar Nori <nsekhar@ti.com>
Subject: [PATCH] [RESEND] ARM: davinci: fix sleep.S build error on ARMv4
Date: Wed, 19 Jun 2019 15:11:33 +0200
Message-Id: <20190619131148.1743339-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:RCxxsPc1iW+wdf2qvwFXRCQCQwA9a8RhwBI7PbIOQcAXl1qMmye
 BxN3ySI1yqznfwmMSWbTufdMcHAb10VTw4Dl9OyAjxE3Zcn7Oy6gKbVYJWDCFpSXYGg82gp
 TymMH0ohfLvPUAE/tjuzg4oBaJsLS1Ui0hPPhGJcZJHkdNrb3sClUV+HzrDadVa7xzdWB5x
 wEQ9Anwjqu1SfsPxnoLHw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:WdiiRt6A5HY=:aN8ts0D3DpexapG3IApAie
 L57JWv+IozpGyPgU0RYrZEB9uoTO90JGUfs8rXhHZ5nRWDzEfR6yDsEnOKVzj29w5+7YFSDTS
 z5zu/I7mMCmjtJ9oRZh+3BEzcUb2zn+xd+gQT9QXjGnTJx3Ov2w/YiIjcIyJ7guaNwyQ0RGxX
 4HKkmeWJx6A9cYYlsRjSb4eFnfuXdfUTd48IIygZdFUv2ptUEt75SHqWZfvtlsFw7BRFpwNUz
 Cbr6SJ87uD4ywWfGUMg83MhLtTX+xIl/3xLDZFfTSU8KgfulD1AW5Q2lKZW0x8TCtS81EH0cJ
 PrYBcgB03+ZXexrJW180HBj0oOILO/6+eInRVgdoCNQFG6V8UB0w8P2y0DeQGEwV7kPixgE8o
 3CLtgybi6BjnDD/87mH4qo/ZNSt12swFj9ir9R+kM/AYxHo5aNecnZG+8l4opvrxh6dKs50Jh
 J/mm2032TO8Hn/axAAsElbeUz9kkoUVynvPE9wGwGpA5I11vHFcuJ5JmqH4xtSSlScgn7um1F
 kr+xMZB0O3gTmTmv5+JaFk3BnhkisfG6nSsxOd9nub6OrY4SHcFUXuv+ZaSX1Bxnq70G2kGNS
 X5PN1MYcyI4SqXKHFJcq62oqvXwzU6YM+LzTLRFHUX7QMZNq3BKpIed2wyeG8tixAfwMD6KvN
 AR5O5Etn+4Dh4YbYQ8CwboNa4cIDu5FqnghCw8R3GvXNNUTwcFTbAAfGh1VQVfy6MyaqAlQky
 pphwP/Sgd3BgB+vwesZMfYkG+0XP3IoRIhrv4A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_061200_215853_2FF7C1C7 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building a multiplatform kernel that includes armv4 support,
the default target CPU does not support the blx instruction,
which leads to a build failure:

arch/arm/mach-davinci/sleep.S: Assembler messages:
arch/arm/mach-davinci/sleep.S:56: Error: selected processor does not support `blx ip' in ARM mode

Add a .arch statement in the sources to make this file build.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-davinci/sleep.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-davinci/sleep.S b/arch/arm/mach-davinci/sleep.S
index 05d03f09ff54..71262dcdbca3 100644
--- a/arch/arm/mach-davinci/sleep.S
+++ b/arch/arm/mach-davinci/sleep.S
@@ -24,6 +24,7 @@
 #define DEEPSLEEP_SLEEPENABLE_BIT	BIT(31)
 
 	.text
+	.arch	armv5te
 /*
  * Move DaVinci into deep sleep state
  *
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
