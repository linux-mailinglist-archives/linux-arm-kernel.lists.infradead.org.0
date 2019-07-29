Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C846578319
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 03:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gqWyHDf4ic1rK513uBo/xBPscz4NAWg45bmwrxzuGug=; b=fPmSlBCa8BceEH
	eQL5ytyF6/13ZBnQbLsPLHARvWEcgO+OpMuDVATzmhnLsRC3Rq9dZecXUyKOC66f89tuwzs5JWbPu
	CgB+d1RMB/xqC+ogSjlhCfQ9DQAQatS+8vOds8UWtE7frRdcIndUM4lLPZU04CJT1U+ExexxgkWQs
	pNHvlpurPmSwmehvihzXlaHGro7jHeHLDCo9+1I5uaWSI+ferSO7H2wYHHStMmrKbygkY8mjU0X86
	o+oP6kA3eW+BDemzwybMCiilVG/LW1DBgitNiNLQpu7DNanlW/qmW6QtCBH62ipnCwjEYdNCac1Gu
	kb92kiQuiJFtfq4i7RMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hruZC-0002YO-22; Mon, 29 Jul 2019 01:35:10 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hruYv-0002Y0-V5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 01:34:55 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 72DE1FBBF269BFCB83A7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 09:34:41 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Mon, 29 Jul 2019 09:34:34 +0800
From: Zhou Wang <wangzhou1@hisilicon.com>
To: <xuwei5@huawei.com>
Subject: [PATCH] arm64: defconfig: Enable CONFIG_ACPI_APEI_PCIEAER
Date: Mon, 29 Jul 2019 09:32:24 +0800
Message-ID: <1564363944-208181-1-git-send-email-wangzhou1@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_183454_175370_5659EEB5 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Zhou Wang <wangzhou1@hisilicon.com>, linuxarm@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HiSilicon D06 board needs this config to support PCIe AER error report.

Signed-off-by: Zhou Wang <wangzhou1@hisilicon.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 74f0a19..8167d6f 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -119,6 +119,7 @@ CONFIG_IMX_SCU_PD=y
 CONFIG_ACPI=y
 CONFIG_ACPI_APEI=y
 CONFIG_ACPI_APEI_GHES=y
+CONFIG_ACPI_APEI_PCIEAER=y
 CONFIG_ACPI_APEI_MEMORY_FAILURE=y
 CONFIG_ACPI_APEI_EINJ=y
 CONFIG_VIRTUALIZATION=y
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
