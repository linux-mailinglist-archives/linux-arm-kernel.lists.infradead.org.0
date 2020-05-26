Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2491AF825
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 09:05:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SvGQ+TBR4JbUehAdeSV879Q9C3BLE9RmoFfCa8N98uE=; b=AtlUmE/CWCNUzc
	a5y48sHuIhTCdypV/exqnu1eNYG6wfA6grWXCQx5TO2WJMNCJ4tkpmIX3xROSys7vG6uFYsNJunAq
	WU8btiQmiPMk0ZDodFITRnJ563H4L17iJcWczSgIFiJj+nTS/ue+4mKlecbczm5wsM/M3hJi5LS8U
	B+Zq3b3g8Y2J2CUCCCsu7Dn24+CSB4WZUJgFqvqbOSVqTgbpeJD6a/qry9Y7a9AlDhuc5MY4VrYVc
	Qs6h9eFJvH11q7WlAQeSnXalgPw7ROl6q7dORMolj08p1a2TzXEcHKbGZ245vGZC/zgFaTF7dygbj
	EE4iSSxZ7GYm7ZEZTlaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ417-0004Qb-8A; Sun, 19 Apr 2020 07:05:25 +0000
Received: from cmccmta3.chinamobile.com ([221.176.66.81])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ40j-0002w7-CJ
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 07:05:04 +0000
Received: from spf.mail.chinamobile.com (unknown[172.16.121.11]) by
 rmmx-syy-dmz-app10-12010 (RichMail) with SMTP id 2eea5e9bf7f3f90-b8268;
 Sun, 19 Apr 2020 15:04:20 +0800 (CST)
X-RM-TRANSID: 2eea5e9bf7f3f90-b8268
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[112.1.172.61])
 by rmsmtp-syy-appsvr06-12006 (RichMail) with SMTP id 2ee65e9bf7f1b01-98e0f;
 Sun, 19 Apr 2020 15:04:20 +0800 (CST)
X-RM-TRANSID: 2ee65e9bf7f1b01-98e0f
From: Tang Bin <tangbin@cmss.chinamobile.com>
To: kgene@kernel.org,
	krzk@kernel.org,
	linux@armlinux.org.uk
Subject: [PATCH] ARM: samsung: Use devm_platform_ioremap_resource() to
 simplify code
Date: Sun, 19 Apr 2020 15:06:07 +0800
Message-Id: <20200419070607.15488-1-tangbin@cmss.chinamobile.com>
X-Mailer: git-send-email 2.20.1.windows.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_000502_583538_534D634B 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [221.176.66.81 listed in list.dnswl.org]
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
Cc: Shengju Zhang <zhangshengju@cmss.chinamobile.com>,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Tang Bin <tangbin@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() instead of
platform_get_resource()+ devm_ioremap_resource().

Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
---
 arch/arm/plat-samsung/adc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/plat-samsung/adc.c b/arch/arm/plat-samsung/adc.c
index 839bf7d5f..55b1925f6 100644
--- a/arch/arm/plat-samsung/adc.c
+++ b/arch/arm/plat-samsung/adc.c
@@ -333,7 +333,6 @@ static int s3c_adc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct adc_device *adc;
-	struct resource *regs;
 	enum s3c_cpu_type cpu = platform_get_device_id(pdev)->driver_data;
 	int ret;
 	unsigned tmp;
@@ -370,8 +369,7 @@ static int s3c_adc_probe(struct platform_device *pdev)
 		return PTR_ERR(adc->clk);
 	}
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	adc->regs = devm_ioremap_resource(dev, regs);
+	adc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(adc->regs))
 		return PTR_ERR(adc->regs);
 
-- 
2.20.1.windows.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
