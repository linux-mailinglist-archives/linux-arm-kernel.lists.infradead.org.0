Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F5D32DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:49:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqXSF8lCtYeHKrQhxDKJXgUqWIEmB3NU80fFi+IpuP4=; b=kwLBQL+7Ehs2d1
	vIjY6vqwbss3t3Uz9CsRkazPGd/JkIO8iK5wk6XFazw8UOLMHnrM2GIeI+IyBkgw6BlTt2gO9uk0v
	h7LAEnA2hcFbz08/0qbVQBNUfAXYS1HBJkk0R9msII5dn4zijVoNWeug+D8m1ctMCazkOdrR9deO4
	BrU3Squkc9QotOHWbr4iBG/j0UaFjIijFyB5F3kUReT7xYubszLRGW1JOF573H6HjLn5/ekY7RknK
	4G8VUb8sHrGpF5/i3Upy6TPavuHwN1t73xfV/J+GUmAwxVm88N3NZ4+XK3zS8PA9LgTnyheChgFq2
	0C432JUiqMOmDPzXJW6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfNe-00069P-7q; Thu, 10 Oct 2019 20:49:50 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfND-00060W-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:49:27 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M4384-1iIfNB2MVs-0001v8; Thu, 10 Oct 2019 22:49:21 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 26/36] ARM: s3c: bast: avoid irq_desc array usage
Date: Thu, 10 Oct 2019 22:30:10 +0200
Message-Id: <20191010203043.1241612-26-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wHjpWj5ZU3LsTJEShbn6OIxxBJLNZ6bxgFqjSskTwAPhMhycOBQ
 zKGRravzyP5344Fi58tfwlJ0a/J2oSdtvQedzmSKzig/5K7I3mD7RJOw7etEuUeXsi5FujS
 Q6eBl2YRK4cMFIDyK5PmFNLy3BcKqcQhCAicUiwU4niAlE9XHqaM+NSq5uBy6+DBQUsoDSS
 wPs6E+FLc98tt/2ohXJkw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2BwSOkcaa5U=:FaBTcKC8FkOGwluHd57eCZ
 6kznSKLyXayamvx1d+QnhVPhUiTCg7shvUXniM4JYmmnboJ8v/Bxuy7VnkfP+Xe8TEJ8QkatD
 SnPTfWpzSzzxVoTOLb2SYTbwYzFY1eDXmtKwJeX/JaQxGWWQPeRPEwRTMfGyYPEcPC5CKiBXn
 VLEfI/lZYGEKqbUrlc2DJ9/xTPq0uwUlJfhFoffJfNu+zTVjzuQQ8UODovE7Y3v2qRK2LgYnd
 sqtkLlHg73tM4qyOJ9TV1q+I8b5aglfG4gj+EreFw5WSJuXUNkLq03manPvcIUZiDHA/my5ic
 RGSdDfmuGE4PuPlP/r5MZuw0xVwgpl/BfVZQy+ypCehGaU+wCOpk+Kvr+y9BFELSefilctwqX
 HVEaEbbu9kmM2LnKOt/a4BiGIUmE9JgNQszW/W9mBsEFvTAa2BHj7PbfpBS7etjM/KTmGzakX
 xumtw8IQCSy//t8TUIPlSOSptEx3ebOrpQThSTKLd+ZcqA8Si5ZTF1qSV5gAwTQ9UeE9Yndg9
 Gt/6vSA9qG4QmrXITlUHd0f6d/jMr3AwmBZ1NgcKufu0BLldzPWoXtC5seXsyHa+OAPx2e5ks
 cxO5AIw3o+/McG75t3UCBjdgG0xsTU5Zx23A6Cnr38YJhbjGPBDI254NqeF1wdmN76FckaTFG
 aOnxybQh1wPka3AwPAVNiXcTqo7mYC7M0H2vG/tXkWieaXYYjMOSyHwlx83ZGo9LY34YLZyhi
 oyaoV/vedy7Mnd5p750f+HZg3r/gDbIjV/U5uV+MyaDcBJFq8sgvb6Z0i1OldXc/PIgEK25Pw
 6bojOwOpWFqk+XkVLsuVyQP+jHxD1+J2lKRnkolW4n2v7DJCN4B98FJaLCefmx+Ak6pPxT7J0
 /3B6K1uS27i9BZnfyYqA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_134924_192151_4D7D7CC0 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Once we move to sparse irqs, the irq_desc[] array is no
longer accessible, so replace the two uses in bast-irq.c.
The first one can use irq_to_desc(), the second one seems
completely unneeded as we already have a pointer to the
correct descriptor.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/bast-irq.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/bast-irq.c b/arch/arm/mach-s3c24xx/bast-irq.c
index 4cec084ae443..b3083ee3ab33 100644
--- a/arch/arm/mach-s3c24xx/bast-irq.c
+++ b/arch/arm/mach-s3c24xx/bast-irq.c
@@ -63,7 +63,7 @@ bast_pc104_mask(struct irq_data *data)
 static void
 bast_pc104_maskack(struct irq_data *data)
 {
-	struct irq_desc *desc = irq_desc + BAST_IRQ_ISA;
+	struct irq_desc *desc = irq_to_desc(BAST_IRQ_ISA);
 
 	bast_pc104_mask(data);
 	desc->irq_data.chip->irq_ack(&desc->irq_data);
@@ -95,8 +95,6 @@ static void bast_irq_pc104_demux(struct irq_desc *desc)
 
 	if (unlikely(stat == 0)) {
 		/* ack if we get an irq with nothing (ie, startup) */
-
-		desc = irq_desc + BAST_IRQ_ISA;
 		desc->irq_data.chip->irq_ack(&desc->irq_data);
 	} else {
 		/* handle the IRQ */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
