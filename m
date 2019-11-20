Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08661031F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 04:17:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fgg+nalb88Ryne17b8ay7vTYP78oIdm5jb80CUL5Jd0=; b=Iyp516mLALUb2s
	10eXRP4h/TPX9rSy011y4+dw3TbEAUEmBCsKeUgZ7EIZV1RqSyInfO0scCpUz1auilfTqczPOc/f1
	TkaMeLRXiADInRUpQ/BtEwv1KXy+CxRbzyY2OZk41w533VvbRBLCaIXL4T0KyDKq5x3W3ytqSwqn6
	Tl2gufU3qyMATSiSff24wJFFbxyzfKwQELY4nBkrZWjrmuEevFZtu6JtW3p4ES07qLc9qjFDP0I+z
	6MRAorT8ZhpOAEUY8fT5hbpcbvv81JLsSsTjkYtbhN2xExVdVqMLFVEzEAuayjpzxyBzbi53O06As
	JBFT43ocfktHIi0DTXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXGUy-0004X7-SB; Wed, 20 Nov 2019 03:17:44 +0000
Received: from sender4-of-o54.zoho.com ([136.143.188.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXGUn-0004Wc-DB; Wed, 20 Nov 2019 03:17:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1574219793; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=RSpCohzv+f9T1VYLNuM8wp6pAQvrLm2bKPIikd/UwZECpWbbBVVVhp69Cvkpk7/gGbh6uRsH1moDUiysa+RhfWfZ+Ba32Z7pf+t9nkel2v664fc1y9pUnZUqnS3rckmCMh0Qd8rP67n72+osy8VGAlgZcYX/jNYSyLujz0U6MhA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1574219793;
 h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=Efwht2VhX2X3iX4OfpDosxQefq6lHG/BFamPUzKTwA4=; 
 b=Rbp24i5z1RYEkQYC8Z1NQ6DyJodMQSQtP7W2lRO7GYMKztZgjHS5U2vWWYPWmAiNYgJZMyl4+NfKedGPSCi6w2WmP6w4JfCUi3Sokr05dza6XEBDxXQYw7x0xSGnhGylqlT+smki0HlqY3qw7+IA6oQja2mkoH16agHSRm0c1M0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=brennan.io;
 spf=pass  smtp.mailfrom=stephen@brennan.io;
 dmarc=pass header.from=<stephen@brennan.io> header.from=<stephen@brennan.io>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1574219793; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 l=1571; bh=Efwht2VhX2X3iX4OfpDosxQefq6lHG/BFamPUzKTwA4=;
 b=UWPcAzhZF95UNB/VBCiQqqO3KguKbaI74BeISboBhYdO8f5QKIgVvoUMQtr/PRhX
 MTjevbThZ4/+9GKNQbVjFpiM/saGGh27+zxzoHJ7fNOb0qbEjEHGrBvKK6Ws0RIz+jj
 RxrDLhzmSKr9sNU3oVSI5YzvO9HennBi+bFgW6uc=
Received: from localhost (c-98-207-184-40.hsd1.ca.comcast.net [98.207.184.40])
 by mx.zohomail.com with SMTPS id 1574219792572634.0146447404323;
 Tue, 19 Nov 2019 19:16:32 -0800 (PST)
From: Stephen Brennan <stephen@brennan.io>
To: stephen@brennan.io
Message-ID: <20191120031622.88949-3-stephen@brennan.io>
Subject: [PATCH v3 2/4] hwrng: iproc-rng200: Add support for BCM2711
Date: Tue, 19 Nov 2019 19:16:20 -0800
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120031622.88949-1-stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_191733_494256_08322486 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Matt Mackall <mpm@selenic.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Wahren <wahrenst@gmx.net>

BCM2711 features a RNG200 hardware random number generator block.
So make the driver available.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Stephen Brennan <stephen@brennan.io>
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
---
 drivers/char/hw_random/Kconfig        | 2 +-
 drivers/char/hw_random/iproc-rng200.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/char/hw_random/Kconfig b/drivers/char/hw_random/Kconfig
index 7c7fecfa2fb2..77e848fca531 100644
--- a/drivers/char/hw_random/Kconfig
+++ b/drivers/char/hw_random/Kconfig
@@ -90,7 +90,7 @@ config HW_RANDOM_BCM2835
 
 config HW_RANDOM_IPROC_RNG200
 	tristate "Broadcom iProc/STB RNG200 support"
-	depends on ARCH_BCM_IPROC || ARCH_BRCMSTB
+	depends on ARCH_BCM_IPROC || ARCH_BCM2835 || ARCH_BRCMSTB
 	default HW_RANDOM
 	---help---
 	  This driver provides kernel-side support for the RNG200
diff --git a/drivers/char/hw_random/iproc-rng200.c b/drivers/char/hw_random/iproc-rng200.c
index 899ff25f4f28..32d9fe61a225 100644
--- a/drivers/char/hw_random/iproc-rng200.c
+++ b/drivers/char/hw_random/iproc-rng200.c
@@ -213,6 +213,7 @@ static int iproc_rng200_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id iproc_rng200_of_match[] = {
+	{ .compatible = "brcm,bcm2711-rng200", },
 	{ .compatible = "brcm,bcm7211-rng200", },
 	{ .compatible = "brcm,bcm7278-rng200", },
 	{ .compatible = "brcm,iproc-rng200", },
-- 
2.24.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
