Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9001CD9E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 14:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F6Xn7wLJCsU+cbXXbCxPIrjfEDyrkyNGQisoqZgJtGo=; b=cTkYhXfOU4gGYE
	eamOB82EZS48n3vjkO2SV4BRe8vrqqIY1i3Ef3lWE8C+IqLdUTlWDXNElqryp4+Vb6e6V7104Y/BS
	ZVRQ+QOKwnFZcafPuOV0wnHRY05mUECQ/YrSOKO4dw2fauiq0lWx2BMOoiBz7CtAEmOmzWPNwq787
	7dNfFcDlQZG+kuPL1FMIlcwU3mv8AF7UZ0uQ1qlbyEAP0zt+f9FwOah8QWfjuSaipiwLgLddxh+Jr
	xxF7mUsCafi/jaCqWqnhgyMnQUv3KOtgLX5/pDVf5ESnaGN87K2u88ppQHO1zNHAP3JCDb09D45XW
	Q+yNXj68J71ELA2cOtxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY7Zq-0006yC-Iz; Mon, 11 May 2020 12:30:34 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY7ZM-0004RJ-CB
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 12:30:08 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 62BA41ECF4DD7E306A7A;
 Mon, 11 May 2020 20:29:59 +0800 (CST)
Received: from linux-lmwb.huawei.com (10.175.103.112) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Mon, 11 May 2020 20:29:57 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: <shawnguo@kernel.org>, <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: imx: pcm037: make pcm970_sja1000_platform_data static
Date: Mon, 11 May 2020 20:36:04 +0800
Message-ID: <1589200564-12623-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.6.2
MIME-Version: 1.0
X-Originating-IP: [10.175.103.112]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_053004_596484_015CCD4D 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

arch/arm/mach-imx/mach-pcm037.c:407:30: warning: symbol
'pcm970_sja1000_platform_data' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 arch/arm/mach-imx/mach-pcm037.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/mach-pcm037.c b/arch/arm/mach-imx/mach-pcm037.c
index bd9443f..c7d23e9 100644
--- a/arch/arm/mach-imx/mach-pcm037.c
+++ b/arch/arm/mach-imx/mach-pcm037.c
@@ -404,7 +404,7 @@ static struct resource pcm970_sja1000_resources[] = {
 	},
 };

-struct sja1000_platform_data pcm970_sja1000_platform_data = {
+static struct sja1000_platform_data pcm970_sja1000_platform_data = {
 	.osc_freq	= 16000000,
 	.ocr		= OCR_TX1_PULLDOWN | OCR_TX0_PUSHPULL,
 	.cdr		= CDR_CBP,
--
2.6.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
