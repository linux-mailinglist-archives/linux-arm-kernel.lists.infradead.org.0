Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244A9CF9EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dSPkEfFWMIVNGfBtCiAHj4FIrbdTh3rhaNticFLhVY=; b=IW0ShSqxFvf8qj
	06gnjiaTRbKWaxfkckfG+idVecIAhI+sZ595hZrQ6ioiiBKOzLHPZr6xiZyLhpouvtkAryT8MQtMp
	e+D07XIs1SItfhbBAvO8ay4NJCL+//40zfu3oiQ/er4cPjxr0xaGgZ5BL3y39QYvkrfRLvQ+EuY0g
	zNzckjqVSaEtk1qSeHbYiDrZTGvO4bxWb2eytXdXmHGxnJbE/x4UEtNnbJIHyuVEnJ3ktoRNLhFqF
	PBxg9CJUFBAHcHw9JDVM8jnqbwwB5Qq/F5et+bqVl0QPx9gpgkLNsqVVlu9+FQRLziv0thWr1Mmv7
	sCi2rTVQWBUZ2bd9CJJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoiO-00014i-2u; Tue, 08 Oct 2019 12:35:44 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohc-0007rI-6T
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:34:58 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013L-II; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHohZ-0000RQ-QQ; Tue, 08 Oct 2019 13:34:53 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/11] ARM: bcm: fix missing __iomem in bcm_kona_smc.c
Date: Tue,  8 Oct 2019 13:34:44 +0100
Message-Id: <20191008123453.1651-2-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053456_403519_48A66E1F 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following sparse warnings from a missing __iomem
in __bcm_kona_smc() function by adding __iomem attriubte.

arch/arm/mach-bcm/bcm_kona_smc.c:143:21: warning: incorrect type in initializer (different address spaces)
arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    expected unsigned int [usertype] *args
arch/arm/mach-bcm/bcm_kona_smc.c:143:21:    got void [noderef] <asn:2> *static [toplevel] [assigned] bcm_smc
_buffer
arch/arm/mach-bcm/bcm_kona_smc.c:149:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-bcm/bcm_kona_smc.c:149:9:    got unsigned int [usertype] *
arch/arm/mach-bcm/bcm_kona_smc.c:150:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-bcm/bcm_kona_smc.c:150:9:    got unsigned int [usertype] *
arch/arm/mach-bcm/bcm_kona_smc.c:151:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-bcm/bcm_kona_smc.c:151:9:    got unsigned int [usertype] *
arch/arm/mach-bcm/bcm_kona_smc.c:152:9: warning: incorrect type in argument 2 (different address spaces)
arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    expected void volatile [noderef] <asn:2> *addr
arch/arm/mach-bcm/bcm_kona_smc.c:152:9:    got unsigned int [usertype] *[assigned] args

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
---
 arch/arm/mach-bcm/bcm_kona_smc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm/bcm_kona_smc.c b/arch/arm/mach-bcm/bcm_kona_smc.c
index 541e850a736c..43a16f922b53 100644
--- a/arch/arm/mach-bcm/bcm_kona_smc.c
+++ b/arch/arm/mach-bcm/bcm_kona_smc.c
@@ -140,7 +140,7 @@ static int bcm_kona_do_smc(u32 service_id, u32 buffer_phys)
 static void __bcm_kona_smc(void *info)
 {
 	struct bcm_kona_smc_data *data = info;
-	u32 *args = bcm_smc_buffer;
+	u32 __iomem *args = bcm_smc_buffer;
 
 	BUG_ON(smp_processor_id() != 0);
 	BUG_ON(!args);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
