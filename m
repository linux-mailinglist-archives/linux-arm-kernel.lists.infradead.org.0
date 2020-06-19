Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12FA200917
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 14:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEzmohsZpEuWVMtrJBaMYDRSJxs/m+atcalSvrO0SmI=; b=CYoaWCLVhjwofL
	1p1oFY0UQh9VG5JUt8eU8NyYBSQFO+mJG2bz2c7JHhCsg253fi5TpC+3u5oO/tc/432iCMS4I+Odu
	qMXHtCHcbE2IBTHm3BoO1dv3CJM3TeHbXI2ZHxidyeBWU0UTNxy6RtkBmZh5u0VCmX9i29m2FotrA
	3N7qlh2d9mAukuosEEvVD0KOWf1h4eNt/1QW89i+cji1DlJiQnBoccb2chvg1sZ7pFXiIUqHVhuzf
	mAKEl2P+u81L2tju3I6fXLUn72La0I99bGmUzrlPRgLsCEMWp1st9Bm0kLRQpxjW3yytfJ73Yk2u1
	AOt+mYDciqt4kkTTJkTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmGbP-0007sD-Jr; Fri, 19 Jun 2020 12:58:39 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmGbC-0007qs-LO
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 12:58:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwAWU058249;
 Fri, 19 Jun 2020 07:58:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592571490;
 bh=d4x8ogqFfDH2kB8gVKWGAaXg2kq+h2ME/W7y4f5BO40=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=PDUXpxrukOrtOJBTvzXesACfJgIGJOjQdYY8SY1CAYHpMc5/9W5OSq41IGJ3F8bDs
 OSK25zdAkCupMQQ4zJQK4ON2mj5DqhJiVskH9f3DdDtcyU6Im+QSopHJucjDeaaS0e
 ZLORPMgTMWNRy3PTw+3h6VVWtRaKOY9rxZ4Z8WC4=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCwAvC007140;
 Fri, 19 Jun 2020 07:58:10 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 19
 Jun 2020 07:58:10 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 19 Jun 2020 07:58:10 -0500
Received: from a0230074-Latitude-E7470.ent.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05JCw2Hl015675;
 Fri, 19 Jun 2020 07:58:07 -0500
From: Faiz Abbas <faiz_abbas@ti.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <robh+dt@kernel.org>, <ulf.hansson@linaro.org>
Subject: [PATCH 1/7] dt-bindings: mmc: sdhci-am654: Add ti,clkbuf-sel binding
Date: Fri, 19 Jun 2020 18:27:55 +0530
Message-ID: <20200619125801.9530-2-faiz_abbas@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619125801.9530-1-faiz_abbas@ti.com>
References: <20200619125801.9530-1-faiz_abbas@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_055826_760715_D02F8252 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: faiz_abbas@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the clock buffer select phy property in the
am654x and j721e 4 bit IP

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-am654.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
index c6ccecb9ae5a..6d202f4d9249 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-am654.txt
@@ -39,6 +39,7 @@ Optional Properties (Required for ti,am654-sdhci-5.1 and ti,j721e-sdhci-8bit):
 				  Valid values are 33, 40, 50, 66 and 100 ohms.
 Optional Properties:
 	- ti,strobe-sel: strobe select delay for HS400 speed mode. Default value: 0x0.
+	- ti,clkbuf-sel: Clock Delay Buffer Select
 
 Example:
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
