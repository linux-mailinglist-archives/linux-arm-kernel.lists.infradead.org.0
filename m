Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CC419400C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xbgs0G6lHaVGmsyFPjvb3jPQo0FK/aD8Faz4aDLEt98=; b=GPyRxwQP+HN7aC
	Eds1F7piV5q6DESFSmWVLo3647bZNzBPy2G2vP15kwI0U4A8ed3NrvQqoDNOuOLfoWzc92OaLShQv
	7r3EvpzFVH1hCKz0YQFWcZJEsFYhsnZym5GGwQWfaip8XotMxoDt5YbPFgb8YznU/PrtBye2mZ1K/
	HVbnhYB26rFuo0bffXPXVskVOKfrvep3t3OdfbQLIrXdnuBR/MZ1SNtud3vHJCZXtXJwgQH3Ers8l
	m1znOdYZZ4/Fu3jTpTAK6iXzORlETiWLCB9HKF2AxZBJj3guZnbLHFIOiHezpbxlqWLh8AlXc/VpQ
	G6loVxoFXcYI478f+LbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSpE-0005b9-Tw; Thu, 26 Mar 2020 13:45:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSop-0005ZY-6i; Thu, 26 Mar 2020 13:45:12 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B1542AB3D;
 Thu, 26 Mar 2020 13:45:09 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] ARM: bcm2835_defconfig: Enable fixed-regulator
Date: Thu, 26 Mar 2020 14:44:57 +0100
Message-Id: <20200326134458.13992-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064511_439412_6C287DD5 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This regulator is now used to control the SD card's power supply on the
Raspberry Pi 4.

Suggested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/configs/bcm2835_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index 8e7a3ed2a4df..44ff9cd88d81 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -103,6 +103,7 @@ CONFIG_WATCHDOG=y
 CONFIG_BCM2835_WDT=y
 CONFIG_MFD_SYSCON=y
 CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED_VOLTAGE=y
 CONFIG_REGULATOR_GPIO=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
