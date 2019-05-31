Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87B331177
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kAMDoJkr22UkV94YDjOENmz+V+EyI1kM10swau3DYmU=; b=GQcOBPKLJY9+5l
	p6ZNxwDnf0V8zGyOZPhx6V6+JqiN5eoFlSqFxg+5s2GjuIbXklA8vSvvT3Twao9wmZsz8l+N7LD8Y
	6hc0X5xMhbcIs9ecm2y8crU7vCN6g2m1ZMfmyJkbOJRERHJpnxMC/IseqabFYw/OjL54LHPAyAAGn
	PKNKT3DoWC+Abt3Bgv3TElOOqrAJ7lj27dmAsOp4sa/kTN09IkYsqzA0D/WyFVbC8g8IAIu5dllgu
	Hfyon+gkfvMPwKq4J0jLdGQZnsT4jgGwXvKW5k4ufBuzq/Hkkwcj0KwnCU8PjUWETD/4LcbZ6/4vs
	G164AnDhYse9onc5Zf5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjdF-0000F9-7d; Fri, 31 May 2019 15:39:49 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjd8-0000Ei-0m
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bgL2y3/j5lT8VJv1X4icMHRSKQxSkhL0zm7BgJmmyuc=; b=CRhKa0d7JKJS2eFUydT0k7hFv/
 jh9nJDgyVz6OdCJrr0pqpLVRxfRLNlmf6x/IWwJk/7o5xgWNVoVZ/68huvgK5GunC8iL/8YYtsyBY
 gTyHMPzCo1ELx1VTetg5rQrsF4vrV/RID6Td6Z/kXwt+0LRbsGKSZjSubMO6WhQ8OiPFojMyfFhsH
 ZOGMjh/VNxdKRKahT097OgFHGRQCuMfYGN/id3vXL6xzCWtWJurv//zVbc53JESXjP7hirL0j9+4c
 /SUYqEl14k4UggLLvN3aB3gfjlxYxPugtWtEAOe7JHfPVLO7amEW1U3OrFBuXhRb/HnNsxnNeyZQO
 DK47eJCA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:50342 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjcz-0001c9-SC; Fri, 31 May 2019 16:39:33 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hWjcz-0008Eq-BV; Fri, 31 May 2019 16:39:33 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Robert Jarzmik <robert.jarzmik@free.fr>
Subject: [PATCH] ARM: pxa/lubbock: remove lubbock_set_misc_wr() from global
 view
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hWjcz-0008Eq-BV@rmk-PC.armlinux.org.uk>
Date: Fri, 31 May 2019 16:39:33 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_083942_063951_A41DCA6C 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are now no users of lubbock_set_misc_wr() outside lubbock.c, so
make this function static.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
Hi Robert,

Please merge this patch, thanks.

 arch/arm/mach-pxa/include/mach/lubbock.h | 4 ----
 arch/arm/mach-pxa/lubbock.c              | 3 +--
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/mach-pxa/include/mach/lubbock.h b/arch/arm/mach-pxa/include/mach/lubbock.h
index 1eecf794acd2..9926a5d741f7 100644
--- a/arch/arm/mach-pxa/include/mach/lubbock.h
+++ b/arch/arm/mach-pxa/include/mach/lubbock.h
@@ -50,7 +50,3 @@
 #define LUBBOCK_LAST_IRQ	LUBBOCK_IRQ(6)
 
 #define LUBBOCK_SA1111_IRQ_BASE	(LUBBOCK_NR_IRQS + 32)
-
-#ifndef __ASSEMBLY__
-extern void lubbock_set_misc_wr(unsigned int mask, unsigned int set);
-#endif
diff --git a/arch/arm/mach-pxa/lubbock.c b/arch/arm/mach-pxa/lubbock.c
index c1bd0d544981..9fca56dbe8d5 100644
--- a/arch/arm/mach-pxa/lubbock.c
+++ b/arch/arm/mach-pxa/lubbock.c
@@ -119,12 +119,11 @@ void lubbock_set_hexled(uint32_t value)
 
 static struct gpio_chip *lubbock_misc_wr_gc;
 
-void lubbock_set_misc_wr(unsigned int mask, unsigned int set)
+static void lubbock_set_misc_wr(unsigned int mask, unsigned int set)
 {
 	unsigned long m = mask, v = set;
 	lubbock_misc_wr_gc->set_multiple(lubbock_misc_wr_gc, &m, &v);
 }
-EXPORT_SYMBOL(lubbock_set_misc_wr);
 
 static int lubbock_udc_is_connected(void)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
