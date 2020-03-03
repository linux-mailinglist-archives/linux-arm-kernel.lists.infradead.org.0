Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF4B176D79
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 04:17:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JIw+CHO3JDY0EjbuLfKMmc6S2LSLgPOdx5lmLZ9KmSI=; b=LstRGXQwCUZDPj
	dYy8u9dP1TEe8uCQ22B0HndmHtAftkNp58v5eYyizux73M295cMzf6MoMKGXdb99ERLaChftvNehi
	pRopFXobjbB/WnZC+TeX7c0XuylzDxw82KitpnacaAajWOAMLr0elYk3BqEx8SmNvh1vhSuWUn9Mk
	mX5f2TD1C7zWkn4eKJz7Bb95q0p5FomMb6Fy7j3Rqa+2G1tzIJZNXCoyrsNiBFEl2om9gOBXbUbPG
	puhKO+jkWlsSoBBulE0ACbbNcPkwVoWapdjj+Ie85adc3DswjuHCId+BPLfvJd1PMnpQBGK0r0BsD
	fGG9iCzUUnL2q65qew6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8y3q-0002II-9c; Tue, 03 Mar 2020 03:17:34 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8y3j-0002HY-89
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 03:17:29 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.3]) by
 rmmx-syy-dmz-app10-12010 (RichMail) with SMTP id 2eea5e5dcc1769b-c21bc;
 Tue, 03 Mar 2020 11:16:40 +0800 (CST)
X-RM-TRANSID: 2eea5e5dcc1769b-c21bc
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.22.8.194])
 by rmsmtp-syy-appsvr02-12002 (RichMail) with SMTP id 2ee25e5dcc1237d-b51a3;
 Tue, 03 Mar 2020 11:16:40 +0800 (CST)
X-RM-TRANSID: 2ee25e5dcc1237d-b51a3
From: tangbin <tangbin@cmss.chinamobile.com>
To: jun.nie@linaro.org
Subject: [PATCH] =?UTF-8?q?ARM:mach-zx=EF=BC=9Aremove=20duplicate=20debug?=
 =?UTF-8?q?=20message?=
Date: Tue,  3 Mar 2020 11:17:25 +0800
Message-Id: <20200303031725.14560-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_191727_783708_1F84A690 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: tangbin <tangbin@cmss.chinamobile.com>, shawnguo@kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

remove duplicate dev_err message, because of
devm_ioremap_resource, which has already contains.

Signed-off-by: tangbin <tangbin@cmss.chinamobile.com>
---
 arch/arm/mach-zx/zx296702-pm-domain.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-zx/zx296702-pm-domain.c b/arch/arm/mach-zx/zx296702-pm-domain.c
index 7a08bf9dd..ac44ea8e6 100644
--- a/arch/arm/mach-zx/zx296702-pm-domain.c
+++ b/arch/arm/mach-zx/zx296702-pm-domain.c
@@ -169,10 +169,8 @@ static int zx296702_pd_probe(struct platform_device *pdev)
 	}
 
 	pcubase = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(pcubase)) {
-		dev_err(&pdev->dev, "ioremap fail.\n");
+	if (IS_ERR(pcubase))
 		return -EIO;
-	}
 
 	for (i = 0; i < ARRAY_SIZE(zx296702_pm_domains); ++i)
 		pm_genpd_init(zx296702_pm_domains[i], NULL, false);
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
