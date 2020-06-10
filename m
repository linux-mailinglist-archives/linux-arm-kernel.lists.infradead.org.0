Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659001F56B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XNTcDBlcJGxUQvHq+D3zWAr3FS4hDNv8Fkw4Z1JNOqg=; b=cBBoZD67eSBD4h
	mMaclR1NXbx45Mplv6F+lqle1FvsxSem+Urh68Bg5vvtl4pyE2Y+220NxSbOuoToINVmIsSHyB+Oc
	0/x13PJkODgboJYUpfAgVsd+NHn8QFQ9HiL+NT4kfd4t/GVdyYt81IzyMx6I1TSrWY/tMKzEt4hUw
	TKcUUPVjo/lE966T9qUdvqxldOMVMAKTAcGiG98GYEJF1fCdcgZQmqT87zNSdvnuWq0oNaaUW3W7/
	VGDp9rp86nJIOaJvmQFHe5Cc7UdRcc5LHEkEAF+n+yBcsW5RDtEn2p2hx7OYhmbfKqrbkYAM8gM2f
	ciAnLZwp+7Ap5dcwfRGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1ZA-0000bU-Pe; Wed, 10 Jun 2020 14:18:56 +0000
Received: from smtp.asem.it ([151.1.184.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Z2-0000Zi-Mp
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:18:50 +0000
Received: from webmail.asem.it by asem.it (smtp.asem.it)
 (SecurityGateway 6.5.2) with ESMTP id SG000309593.MSG 
 for <linux-arm-kernel@lists.infradead.org>; Wed, 10 Jun 2020 16:18:32 +0200S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 10
 Jun 2020 16:18:29 +0200
Received: from flavio-x.asem.intra (172.16.17.208) by ASAS044.asem.intra
 (172.16.16.44) with Microsoft SMTP Server id 15.1.1979.3 via Frontend
 Transport; Wed, 10 Jun 2020 16:18:29 +0200
From: Flavio Suligoi <f.suligoi@asem.it>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] arm: include: asm: fix spelling mistake
Date: Wed, 10 Jun 2020 16:18:28 +0200
Message-ID: <20200610141828.20478-1-f.suligoi@asem.it>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-SGHeloLookup-Result: pass smtp.helo=webmail.asem.it (ip=172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A09020C.5EE0EBB6.001C, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_071848_950242_38D20BD8 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [151.1.184.197 listed in list.dnswl.org]
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
Cc: Flavio Suligoi <f.suligoi@asem.it>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix typo: "triger" --> "trigger"

Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
---
 arch/arm/include/asm/cti.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/cti.h b/arch/arm/include/asm/cti.h
index f8500e5d6ea8..ddd7b73a5870 100644
--- a/arch/arm/include/asm/cti.h
+++ b/arch/arm/include/asm/cti.h
@@ -41,7 +41,7 @@
  * struct cti - cross trigger interface struct
  * @base: mapped virtual address for the cti base
  * @irq: irq number for the cti
- * @trig_out_for_irq: triger out number which will cause
+ * @trig_out_for_irq: trigger out number which will cause
  *	the @irq happen
  *
  * cti struct used to operate cti registers.
@@ -57,7 +57,7 @@ struct cti {
  * @cti: cti instance
  * @base: mapped virtual address for the cti base
  * @irq: irq number for the cti
- * @trig_out: triger out number which will cause
+ * @trig_out: trigger out number which will cause
  *	the @irq happen
  *
  * called by machine code to pass the board dependent
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
