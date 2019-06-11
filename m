Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604A43D2E9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UojcR8FAmt5LvqCD9UepIvpu1MUfEc8QZC7Tv4Ww5Ug=; b=vDTO9m+ZZpZaOW
	ETtY/TrIDeT5GtTFsfC6T8/qodIEfat01FeZ/E+WFXulhWMyMTmSB5swWiTytQ11UHuRAOk+MnTw7
	WxV51JngvslpEfWSldQew9vxdTFYV8Hz7RUX8pFHPrXqYGZZHOVp5UycmlrTBhJncAI+YvGhd9K17
	BAF3QiBcrGPx/V6hw/P05+jUl9IJ1T3ad3394VrO6KNIethiGHJnqYVM6RXUUQvKzXcPCo6dovAml
	YvycdqKPHyCrPXnN4Sm1ApWa+H6P06iJkD9VBvzu+mjqSxvvE/40F/mW6Ze1V0RnDsRqZQVBq19gd
	bfPkY9kOqL14VzOBmsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajvj-0000R6-Ld; Tue, 11 Jun 2019 16:47:27 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajvU-0000PS-2i
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z2vrcAjHoAMwgHKCHjWNjvkuuryNI0Fb3RhInIshDyE=; b=fIPuEZ9spjuSL8Rq6AakrscPG4
 dlKdvQNgqCTdgBVhbMXFQQCA9aoZbd05zn6b6f4How2jHcSEDDcPP3WfBvdeurfJnMjJNkEPhbe3R
 0rbaorOmiXUjDAyN2UIY/z6xwnnG9Teuyf4WdA8sTMrVag8Lq7VNlS9VIza6VDfHydYogbNza3swy
 9x1HKXHIpuHCMvNfhhDtHYIJCHbRBx/DtVfiEls7Sm+vOC4FobMOkE4OuioMff+UM3RG1wIbNn+9h
 cM0UkmVgPCla4xPv+JCeDBsvld5mhicQrADz2o6/A8W8IqDCGZTKyh+v1l/IJsKY0ovJng4HAB5iH
 ekeYAUVA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37170 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvI-0006rL-0R; Tue, 11 Jun 2019 17:47:00 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hajvH-000370-48; Tue, 11 Jun 2019 17:46:59 +0100
In-Reply-To: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
References: <20190611164634.lojmqu3ojfteeyet@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/5] ARM: riscpc: add ecard quirk for Atomwide 3port serial
 card
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hajvH-000370-48@rmk-PC.armlinux.org.uk>
Date: Tue, 11 Jun 2019 17:46:59 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094712_122716_89BF3A2A 
X-CRM114-Status: GOOD (  13.27  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Atomwide 3port serial cards seem to leave their interrupts active when
exiting RISC OS, resulting in an interrupt storm during boot, and the
expansion card interrupt being disabled.  Avoid this by manually
disabling the interrupt on each serial port via a custom quirk function.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/mach-rpc/ecard.c | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rpc/ecard.c b/arch/arm/mach-rpc/ecard.c
index 3e7b81cc4274..eec5ecd6e948 100644
--- a/arch/arm/mach-rpc/ecard.c
+++ b/arch/arm/mach-rpc/ecard.c
@@ -70,17 +70,21 @@ struct expcard_blacklist {
 	unsigned short	 manufacturer;
 	unsigned short	 product;
 	const char	*type;
+	void (*init)(ecard_t *ec);
 };
 
 static ecard_t *cards;
 static ecard_t *slot_to_expcard[MAX_ECARDS];
 static unsigned int ectcr;
 
+static void atomwide_3p_quirk(ecard_t *ec);
+
 /* List of descriptions of cards which don't have an extended
  * identification, or chunk directories containing a description.
  */
 static struct expcard_blacklist __initdata blacklist[] = {
-	{ MANU_ACORN, PROD_ACORN_ETHER1, "Acorn Ether1" }
+	{ MANU_ACORN, PROD_ACORN_ETHER1, "Acorn Ether1" },
+	{ MANU_ATOMWIDE, PROD_ATOMWIDE_3PSERIAL, NULL, atomwide_3p_quirk },
 };
 
 asmlinkage extern int
@@ -871,6 +875,16 @@ void __iomem *ecardm_iomap(struct expansion_card *ec, unsigned int res,
 }
 EXPORT_SYMBOL(ecardm_iomap);
 
+static void atomwide_3p_quirk(ecard_t *ec)
+{
+	void __iomem *addr = __ecard_address(ec, ECARD_IOC, ECARD_SYNC);
+	unsigned int i;
+
+	/* Disable interrupts on each port */
+	for (i = 0x2000; i <= 0x2800; i += 0x0400)
+		writeb(0, addr + i + 4);	
+}
+
 /*
  * Probe for an expansion card.
  *
@@ -927,7 +941,10 @@ static int __init ecard_probe(int slot, unsigned irq, card_type_t type)
 	for (i = 0; i < ARRAY_SIZE(blacklist); i++)
 		if (blacklist[i].manufacturer == ec->cid.manufacturer &&
 		    blacklist[i].product == ec->cid.product) {
-			ec->card_desc = blacklist[i].type;
+		    	if (blacklist[i].type)
+				ec->card_desc = blacklist[i].type;
+			if (blacklist[i].init)
+				blacklist[i].init(ec);
 			break;
 		}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
