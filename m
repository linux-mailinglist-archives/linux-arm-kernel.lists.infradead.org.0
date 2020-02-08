Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B064156475
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 14:08:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vI+2qhhQ/ad2gqCbe5hUTYTYVj8IfAamleiL75V5TSM=; b=Mkmcs25XPU2/g+MYM2+Z5LGdJe
	sPHgcJ9XempqMN6GWa3THRmKDaNxrRnI4ivvtJU7gqw9vUYMHzLb/vRBxUmHkmHiK1WGcHqmhwvu2
	a/6KNcqivMgF1ImX2GXOf8HWR3vTJYVIJAIKQ975GJpgPge6Z4mecOOKLbP7x2eI/RJg2ttVIed65
	wzrzM2N/lxfLwYJ2KspETjSCXkm1A+Rp6IQhaBlYKSWStC6Cbv7AfVkcEN83Oaf7kXP79I4aFHg+h
	voggVdS1vznUaWQ76qIluVYRJZuVG5s6GY/yQCoUL55gP4K7aDgzH1ATkjqWW0nKVlFxdjFzAjzoH
	PUm6ciNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Pqk-0008OS-FR; Sat, 08 Feb 2020 13:08:42 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Pqb-0008NV-0d
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 13:08:34 +0000
Received: from localhost.localdomain ([37.4.249.150]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1M58SY-1izJpq1Aiy-0017de; Sat, 08 Feb 2020 14:03:18 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/4] pinctrl: bcm2835: Drop unused define
Date: Sat,  8 Feb 2020 14:02:52 +0100
Message-Id: <1581166975-22949-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:7poxDZDsc+nCytjwN8LtSgR7ED0PiXCKK7Lt2YkCm/iND1UtSOp
 QV2LAcQ3kUyNZYVk5rrzHMFzzeUo7t4Q5zJgdk5e7uYCjm90vDnbMBs2nj8cd83exIgCWfe
 WFLAPllWyFaqlnv7HJzM/XPiJHMqUwBZobMlekxNQzV+XhN4B2+/HC01ZXqV+dGxPilb0A8
 Lp4Woi1OYSDZ0tCH4gz9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M+C0GAn3G8Y=:YfDIZj14EoC4g6x02lZT4h
 nqLo7jh41D+mIurwAKwwtBNHF9va2fL8O2F8izXbpBwYlFGpBjeoBN4fqo4sOkQsCfGnnVTtr
 yuCTsQ1t4+7/OOb95gEPuxLILyXk30JgTg38vbr48UTtZebXURzaK+NK9iwSSdB2lHUaV0N3Z
 8UCcFZUmAKEd6L0LM5hwi4W1PF03AIfE2mBeTlBOyMhV8LSfUfOIQr1IGwCx3sRbSsgHUOpje
 bSl8ZV2YTrO8qYg4M2PeSs3ytZ0Shq5fP1UvQa3pKJT0uSvG11ClDhj/RIeYMHgUcLBBbA49g
 sTN8ifKY70JUmxyE5qr7A9O3+BAQuG6eRrKM5PFrz0TBicrcY1mrqvTQ1HQuiIIpfuhDL4tHt
 GOatHkAfxcB6/dcHL6GcDmtuqqO3vdBB5OSh2tdytRxQRAIYuXFTIyKjMRWrRLm/qPskLCacv
 ZfcqecXbCJiwJVYnYPBiIW9sZf1a2CARk2updCotRrz+nE0MOVRnjzDiQegEpYwEipCyQ0qNa
 ED0RXVvR51T6OwnMR5Lkug42rnxOZ9kdRfAba6XqrSda8oKNv3hCRtp1NQfrK09k+5ryOapkI
 m3w1qu9lP0h7K+kRnXcroXT6OGbqIp8pwCAeoObyhKFJanqUYoBkmoL+JlazzkEz1TWt7YJmd
 nUokrpExypwqWbkmV7U8U3DoouSBNmIttJzfoIT0p3IqjtEp0CAMyuCpLerZNVGl3Xvk7rz5f
 5Vmpf4+buD/jd0Ysd/1D5wN5Qt51ZcvFmMrI2HAUw26X6QLjyDGLTz8aPqNK+pcTWDO9d8Ayv
 I7x+VUO+giK5zNNz1Rc/k2V8v/I6PEnczqILfIqm49/eK7vqWW0CS16TdXZsg7rgp9eLeZs
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_050833_353063_76BCB20E 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no usage for this define, so drop it.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 0de1a3a..3fc2638 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -40,9 +40,6 @@
 #define BCM2835_NUM_BANKS 2
 #define BCM2835_NUM_IRQS  3
 
-#define BCM2835_PIN_BITMAP_SZ \
-	DIV_ROUND_UP(BCM2835_NUM_GPIOS, sizeof(unsigned long) * 8)
-
 /* GPIO register offsets */
 #define GPFSEL0		0x0	/* Function Select */
 #define GPSET0		0x1c	/* Pin Output Set */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
