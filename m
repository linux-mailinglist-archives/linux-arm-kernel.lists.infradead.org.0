Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A08CCAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 09:25:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dnGBeC4g0BrD/TZyipy4eF8MjKpas1ZWZovyVmEpVuE=; b=GqNpenF1xRX82AzySQzPEK23Bh
	iRjyZCG7qM/lnRWLALny/ckJ2NYgeA01EWPtjoeL1vBk/uq4/LUwjzuZYGaR0xIuqvdKJYL1oWTMU
	FRfuA8YpwBA2FhTQbFPtOrDlzPZc9AaPJChCA4qtaSJuKEE5Lg4AVUnUdGogo9bjkYbKDv0j5xxL2
	zcNSl2v2BnKcZjgLLhtAEUJheWMppOtS4EK9B6IvLOYH0LUCdpLvccXpciBTvWCKHS8f9SZLuPQ8d
	piR1EdJWC1HoHGVBtwi8PZ+lcdPCX3pQx1jriG+yD1nnnOb7rElb/TPmNzn7IqvsJ1zrofM6wIyHP
	0RbwFMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxnfL-0005j4-9Z; Wed, 14 Aug 2019 07:25:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxneA-0003qs-Sw
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 07:24:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC57D1A00E8;
 Wed, 14 Aug 2019 09:24:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C53A91A0075;
 Wed, 14 Aug 2019 09:24:26 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 00DE5402F1;
 Wed, 14 Aug 2019 15:24:13 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Li Yang <leoyang.li@nxp.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Amit Jain <amit.jain_1@nxp.com>,
 Yangbo Lu <yangbo.lu@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Rajesh Bhagat <rajesh.bhagat@nxp.com>, Ashish Kumar <Ashish.Kumar@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: [PATCH v1 4/4] mmc: sdhci-of-esdhc: add erratum A011334 support in
 ls1028a 1.0 SoC
Date: Wed, 14 Aug 2019 15:26:49 +0800
Message-Id: <20190814072649.8237-4-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190814072649.8237-1-yinbo.zhu@nxp.com>
References: <20190814072649.8237-1-yinbo.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_002439_091913_A2489F44 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Alison Wang <alison.wang@nxp.com>,
 Alex Marginean <alexandru.marginean@nxp.com>, xiaobo.xie@nxp.com,
 Catalin Horghidan <catalin.horghidan@nxp.com>,
 Rajat Srivastava <rajat.srivastava@nxp.com>, jiafei.pan@nxp.com,
 linuxppc-dev@lists.ozlabs.org, yinbo.zhu@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is to add erratum A011334 support in ls1028a 1.0 SoC

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
---
 drivers/mmc/host/sdhci-of-esdhc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mmc/host/sdhci-of-esdhc.c b/drivers/mmc/host/sdhci-of-esdhc.c
index b16f7d440f78..eb2b290447fc 100644
--- a/drivers/mmc/host/sdhci-of-esdhc.c
+++ b/drivers/mmc/host/sdhci-of-esdhc.c
@@ -1006,6 +1006,7 @@ static struct soc_device_attribute soc_incorrect_hostver[] = {
 static struct soc_device_attribute soc_fixup_sdhc_clkdivs[] = {
 	{ .family = "QorIQ LX2160A", .revision = "1.0", },
 	{ .family = "QorIQ LX2160A", .revision = "2.0", },
+	{ .family = "QorIQ LS1028A", .revision = "1.0", },
 	{ },
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
