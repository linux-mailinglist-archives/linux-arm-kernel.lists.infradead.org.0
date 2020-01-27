Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A87F14A99C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 19:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vI+2qhhQ/ad2gqCbe5hUTYTYVj8IfAamleiL75V5TSM=; b=boj1KSY/v7nluMqljONFMsrQpY
	TIwo7rcohwHGuN2fwWIQvlOtuoNfi2Fq0p3Scukv0Q2ADP7S7q291VcafNnFU5KN1MrzMbRGe4GnM
	P3V6kUvf56szm1T1NS1MkTH0UxtSeASAdrde8x8OVZKQoaCTk7UON0PPOY27cnqVlh3c0YEdnjw7O
	mqUMZ1W2xfP/jLVZPipZOqiUkCPtyOl7fcUXPVJInCLU8Ap12h/ucwxm6p7sL/miLW+RLo0gKtso8
	vE/Ub+gXij8pNQBcHeQOS3T5w7YYAKX0ckGovHYTGCE5G9DP0PYvWHj2aUr39vu4U7SF87h2rVwQ8
	lsj/6XEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8vR-0007qT-GN; Mon, 27 Jan 2020 18:15:53 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8vI-0007pK-OI
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 18:15:46 +0000
Received: from localhost.localdomain ([37.4.249.152]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MRmwM-1j2Dig1rly-00TAt5; Mon, 27 Jan 2020 19:15:40 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC PATCH 1/4] pinctrl: bcm2835: Drop unused define
Date: Mon, 27 Jan 2020 19:15:05 +0100
Message-Id: <1580148908-4863-2-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:lGg05mfNcExFSuIdqSja3VB+cOAOOVkxA1mUl+WjJLfuDEYN48s
 KCpfgqk9HemEgzwKhTMkYEgexHNzZfeVG5k5xAbv9CDheeQx24pa/Pz7dPaHD9i2zVtcPEX
 ugday3kFGFOvKGH3QCW8oxkE91P2/fJaGsnynRzDkoSe3RjqXABLPjZW+febQ6xUrd9aF8p
 OvDdu6E+cBesU1loyk22g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FBYTcl5hsyU=:/uJXPKY5G3RK2HKm3g2afF
 CA5JAlk5ZwkebJLV4bbQfKqE89ChkfNCYzAIhT9SgQhi22RYSBr1LmN//FwU0R3diFEvflVI4
 OPkci48gv0sh+mZnsk9a5fiLs2oAnSh5hggie4G8ZelqhAZ6n4CYEWIp+lz1bo5KPywuZxqek
 T8GpkbU4eb/oEicxOhC8lN0DwOFD5W3GliKQ1IpWDarfz8Y9a4d+EgeY0+iBjelJHlfR3e1Q4
 5TOF82NxXDkBp/4GoxSxM5JDUgoTnPvWCJ7ZFIchyrHbjc5NauAb/4e//OnNTPB8e7bKoOaH2
 HQ6XUp0Da/6crl8QtfuGEbHRAtkNZFJTRdT07zQtpcH89Cqto3IYQ9ND/7ijWcWxu5wb7Ve34
 RPM8gzArJAvou4fFeqPnnHkVmPuq3p5Xua81P7sTqXQN3m5U5RqmH8Lzr8w92FQrloZ2SMe9z
 XjYOrjAoxuxpe2x+H3tUoY4PwEgZjz7swAA8BeyYnRzumaAVvQgvNKrW2Qj9V73nKPwgtehvz
 hZDfvJgFBHEyfHVj4Fcz+N3r4xFIWS5o2UW5P2M2L2v7bQsckL4EkHWUHSjK5sJhQVDongIHo
 /+aJJViGcVBiAGrzvEW2ksFVnPP5X7R2pBxPckyIx3WhJaGzC1OGqA3Wg/a2k08Ewtt7m2DXz
 yYvnBfgEsV57VS3aLe8dsbJ2HqKMcqeahm6FQesAnangl4BtG6RH1BMKAaaaMeuJm2DQO+UUA
 PELxUMq3dBDAOEuSMNSdvN15BCqDxAajjVLnv+b/+pnKsJ/31p3YVryA78eJ6/kZm1a/DobHg
 vNu1QLjbpYkq/WH/K/LaUxt+YpwMi8egvQPLH32zMRACRbsqlMQ7nAGsZtdEkU8zYbp38yV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_101545_079150_4EC20A38 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
