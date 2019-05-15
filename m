Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E791F933
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 19:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cOQ3SjnGgv4gBct3y09qmaMCXdlAdQ4zQsEyO2qGPUc=; b=gCg
	xNhBBmAl6OoRfgiKo6xsd+JOLKYalTkoDtirZyUU0K6/HIkWVZOEsjGNL3sjOYD4NZ3sp6pBhv+1Q
	8ZVYR/VmsIBVo/X1mKk3yzvrGONItJZsJpaO0+pb6Ig7XxRsNVYNpGanL8FfbYAptMWmmF/DsH1Du
	VNmWcMMq5WxwcgXrBo5wH8PaGbH79QPTxVGsu77t71XCBUM7jCOlYPJlunEfFptozYxcxA+pl9D2f
	EO8UCAXZ+c/QxUBX8gTLKDBXciUlG95Hi+oo1WzA5NSln6GUzECGdQvEjlCDtYXyt5jQXtpyebj/I
	+DJURsTE8CS/hCSqLT82TkhU2cLJHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQxUp-0004Zy-D8; Wed, 15 May 2019 17:15:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQxUg-0003hP-Se; Wed, 15 May 2019 17:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1557940479;
 bh=Nr3h1+y4CIbQ5dWtN97akntOP5NuL28h1LY/fjhmquw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=ID2evJrKjBHz2LRgYwhzkqjNSXgc7MPS7EZUthir6++AV2j7lGqyxlsIOx26/YbR7
 iVZ50S/QsjenlSTUW/Ro7nLYnyvVps5tmNhlVf3+ChsdcJh0/pZx68mtyuPyeFxX66
 /TRGT4n9xSczVFHd3P9Ddww1ZsBybI7Isll8Mb+s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.144]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MDywo-1hYhFD37Cu-009vYa; Wed, 15 May 2019 19:14:39 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>
Subject: [PATCH] watchdog: bcm2835_wdt: Fix module autoload
Date: Wed, 15 May 2019 19:14:18 +0200
Message-Id: <1557940458-8661-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:TsA9YOEJPGxTelJ7VCsYWR6sqtVxZ1Z1wLmBOSBPmP0CX8mJ/wl
 +GerF/0Gn3JfN0MnZEm3GV/JWHngw4KbzIghCRPSaynzprPuHwrhFFxMoWphAOjAE/biPmC
 2uYNpdA1BurCxRjjDMEGwDgih2xMAPmr9H3xiKcIelOrBjDCh30fb76JQYM2Xe0ATikuZpH
 4Xes11UA5xa6OibOVpXLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4GIwKZnNH0U=:FqJ0Y9sew2VI1/fkNpFIRZ
 OVsbFWGC76tApBT9treKz2zgyGuby6mpyFKxHwDp9CgHGfv+zBjzMEpAM98ilYpgEjLLA0CP+
 o0P9bnDQxnLi/TXxlvaY99S8zH1/TaBVNln7d4pguhb/fv6vahPlrXizql0SCOGpeOrLZJ6r9
 29JLpPGg9A8s6PGEkbhKRy4+drIXGQ9pZMtz2P0dlc1Jh5PeeoLtl3AtalJYscf4OuaVvNqwm
 tqhJTz9s6VuW5IG90y0qxWjOZAJLXgKnBTZ8P8UYD+08rbVd9XdSZsUQQkGEhhIjdihseHAV5
 e3iZDCYRNeKdIP8cN4FoAY04JnztxEYc1+79g7ETJsW/cqc/tAn0QJasaMVgWpJ4frS2zwLkG
 Er0syyXsbrTfb5znc0zUq7WfabjQFWSnBuaY3erSLaKlwfgHz9V5Pb1UhhXrm0aQoDT053Jq6
 ok/+zHsu4WqwyhBBjVHkLQJxdq7EcYYFgcLh1KWC8tSJmf4z683Nozc60WN5U68GSLBEeRKwX
 EabEgeosjbEt4iLsX4HvfuONcrlEgAYJ90uznJO9o/k5ZtP7T72mEPNcLHiC5/Zyz275nG95b
 fB1q6+H7aVwW+CPo3F4KT74Ycqns18ve32TyLnJrHtp08cI81GgEPAOo1PcOAV11CET/IT/KN
 8tKRT4tQoAa+nticuPFB43cKC/2NLZ0RSBNL7bkyjztTWCzOdjaTCiucrUT690wduXnQjawWC
 txGCx9bIRInXBucs+jgV1KUgKQtEA/lZ9EUB7TiNrCypnrQFKS+n/HPRIXxCXzg81ggk4dBpj
 5JdNn4IUX5F94zKRMWnHEDHtDJkVtUz0lrmj/CJpIv1cEVA1zJQNSDsOnxIwmTo6Quxc7zCRR
 Ft2z0WHw6MK6c+MFS05ukWcC+x68Lm5/oNYIbtiPzFRCmSqh36nvrBSmhZOavE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_101507_300598_1A5555DF 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-watchdog@vger.kernel.org, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 5e6acc3e678e ("bcm2835-pm: Move bcm2835-watchdog's DT probe
to an MFD.") broke module autoloading on Raspberry Pi. So add a
module alias this fix this.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/watchdog/bcm2835_wdt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/watchdog/bcm2835_wdt.c b/drivers/watchdog/bcm2835_wdt.c
index 1834524..c7695a0 100644
--- a/drivers/watchdog/bcm2835_wdt.c
+++ b/drivers/watchdog/bcm2835_wdt.c
@@ -241,6 +241,7 @@ module_param(nowayout, bool, 0);
 MODULE_PARM_DESC(nowayout, "Watchdog cannot be stopped once started (default="
 				__MODULE_STRING(WATCHDOG_NOWAYOUT) ")");

+MODULE_ALIAS("platform:bcm2835-wdt");
 MODULE_AUTHOR("Lubomir Rintel <lkundrak@v3.sk>");
 MODULE_DESCRIPTION("Driver for Broadcom BCM2835 watchdog timer");
 MODULE_LICENSE("GPL");
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
