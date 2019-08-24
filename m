Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473FB9BC54
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RdRuokpgxgLRCDkra87oDejNxn3wWqqWdkDUa6eQ1x4=; b=OSF2Z/HLA2MXnzim9F6h5DLnvy
	AXFUzlMroJFx53LRkL8I7SpAVZhRAJ98CvR10WN5jLRmz8VbzlxnI6SPNDIR1+/14ieGn/7KkwPHr
	Ys3/IVqVf6gWMJ78v/rJYljtWEq8lU/tl+wVbQaUkNmYSxpiO7zs8gZLuMCyFfD0yTVbJd7f5nBTj
	eBoxbVioO9oLcRxj0m2Bi43HBnvExXHtCl+iLmoqxEyK+MmBxsme9FGF5fOF8yvhokLixk2PZ1Dl4
	5kzkehyLvnv4CJZ4oWrYKI2mg+bXzIwxu4zyxaapsApVuYk9g+Q/7H5LAqiplO+x82s2lqB/e129l
	EnLA9cjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1QAj-0000GV-Cq; Sat, 24 Aug 2019 07:09:13 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Q9U-0008Hz-Bx
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 07:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566630463;
 bh=7zmLzSl5QEPcdtQwy7pC80ljPOepFXeVShtWEIEYFf8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=FXvtBikCxHyYJ5pd66Qj5Khv2Gx8b7Xxf/tHar4op/NeA4BccB8phnLo28f6E6QZV
 LpMW3dPxX/GN33RhyZNKSj+unItC4TWXduUYibrEfDE/Xlun3yEGw4vd+ja5+xHVmZ
 fAEuacnxVnYffrz6Plf48T2/vAAWCOof5V78H6AA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.106]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mw9Q6-1iJv0F2u84-00s5RQ; Sat, 24 Aug 2019 09:07:43 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thierry Reding <thierry.reding@gmail.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/3] pwm: bcm2835: suppress error message for invalid period_ns
Date: Sat, 24 Aug 2019 09:07:23 +0200
Message-Id: <1566630445-4599-2-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
References: <1566630445-4599-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:R0rW09NZDppqcsM8P+s82dRAM2pzVvmlFRvXrFJwJkMbvk72HFO
 dlryHWDKQVAjfoYFqvodWM5E4VY6N0yp4iKQeKqkzXWr68yY71hvuDcF5jbNbNUreGQpHQt
 s1PilcgL+J7jB2F0GmzE7uOG40aQd3JmQ/boXh4QdYpT7opq7gnO3JJZKBQxWBoeJ5+KHN1
 8V7kBWLJVRFk3tqVXt2QA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:o+iHcj1vHTk=:Io+XoR6JaAcaQXGdTyr5qk
 Tni7PnouSwq8noVSlsO0kpzTWKOO4N2Jm7ebh35jn4d+FDUVAuOAK2P2V/4Y8cnC0aCdX/CKv
 cntumpopx4yuOo5pwpjPBjJDsWv7X1i7c8LXRZOpLVvnyvPreyZiYWfnLSHATOhbc45dHWAgn
 yGu+v4F4n2POeGmJe7pJCqcBEdiGcKcKx+Ec0ReEtz/SgzlwmLOwERAdY4k50kGAx8H8cRcKs
 xArVavDCC4sVkReNAfrk8ZH/VhxCybiAjScTy+t0p1h5kAlsKj2YeYuidoXKjKFv5QSqtOvqN
 x3YZYb04xUMWenOOezkTUHOBQE00+4igm1RsRxDY10QOrIuXJ0Y2yC7+CSuaY0FwKJJryMKO/
 7HX9fGxUXrFdr6tyuCohyZqHadDVGhOIL/p/QM1xFLWvPQhXAW24NSLUpptzCXhFUpA+C3pGe
 Ue6bjf/uzidtH24tjAo0yVli4WFUx417S4+XT019zM/cTP/EtwevnELYnKnlvRLq2RX7S1GtE
 /02kbUkOvhiG0mzHsS3xItP/wAYZdchjGXH2Zk/SIdPSnNfflAoAo2Ye8BhTBsdkftaAUw1V2
 vq22/Y8JGW401qC4BcDqKt5slDPqWln/hZlk1hcConWuDIBcQzHVa3MTmJ7Ca8G+B9oHUvPTs
 47u91ShCp8mNbj/RuuE1QDta6LnhzV5jcVPBhsMtudpI0UwVsWfxrMlPsOundANibANQu6CMq
 jwrJrNuRYjTbA8+zu250FnHdeJFR42oamMMSnmdHPUcvUGXjT34zjjWaro4bnHG53SyCw/3f5
 Z9srReOTLJ9Ws+UulS7yJDmprDvjXLg7fUN4QJiI0kcrSnSCJPRoBnnmOn61HSSiIhqL5WSjK
 l1UIh66mXtnXefBWWwS8E5gqf9Ee6hdN341XG58ExRJB8hCcvMXxeUb9zfmL//wm65g22FrcA
 AIyIm/00A+KjK1VB6j8BuD2jRNGonKNcGK8ixeZx0bZbwD/OLxRRHh1E6HlUC3Qsq5y5VWNJT
 ymmhfQIL8L2CewWMZrH/GngZRTQlZoTDA2FIQ/80DQ9PsTVJH0+ZOEfh7eQH6rwSlqaP6vAVd
 yLZSBrOQd85RLE8zh2dpmxNW5NO1Mbu0Z22jHlzRa3EvnfRFxX/+Nhrkw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_000756_698313_AAC0D2A8 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PWM config can be triggered via sysfs, so we better suppress the
error message in case of an invalid period to avoid kernel log spamming.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pwm/pwm-bcm2835.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/pwm/pwm-bcm2835.c b/drivers/pwm/pwm-bcm2835.c
index f6fe0b9..5276306 100644
--- a/drivers/pwm/pwm-bcm2835.c
+++ b/drivers/pwm/pwm-bcm2835.c
@@ -72,11 +72,8 @@ static int bcm2835_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,

 	scaler = DIV_ROUND_CLOSEST(NSEC_PER_SEC, rate);

-	if (period_ns <= MIN_PERIOD) {
-		dev_err(pc->dev, "period %d not supported, minimum %d\n",
-			period_ns, MIN_PERIOD);
+	if (period_ns <= MIN_PERIOD)
 		return -EINVAL;
-	}

 	writel(DIV_ROUND_CLOSEST(duty_ns, scaler),
 	       pc->base + DUTY(pwm->hwpwm));
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
