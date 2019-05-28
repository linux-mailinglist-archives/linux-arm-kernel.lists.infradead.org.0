Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006CB2C777
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XAfHUpSmXWDjyyvpJT7WqxB6XwjhctYGZNdRh1KW7g4=; b=a9/qEzsepVOCo2
	dU1CXoLuZq2/lAzNH8wsRFL7qveFZK6G+07oYOLxxiEs0CHXgVM0j7efMtH9GSp4SVYW5waaaMhIp
	+SFTM2UIEQGaKEVvh0YmxLljjg/Y5O3+gp9KyB9zzdUW+LPbIslXEIQeASEAhOgrQPLKzk6wDS907
	8ruYS9vd8FNhGiGoiABYuiSNNi2NfZRNUOdIkVtx/1weDihIsx3R5mrIw0PMKhJUWCz65ERrQgJmQ
	hOX9CdLPQ4tW0luCdKlOPRyHKgt9Oz06DS78gKbQ9lAIoSNrZrGUznn56gb1XnRu3pw3cyiwf1tSR
	z39PPFHSjeYRLrZ2HEqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbsL-0004io-0I; Tue, 28 May 2019 13:10:45 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbsD-0004hy-IG
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:10:38 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAZCX121731;
 Tue, 28 May 2019 08:10:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559049035;
 bh=xT1JLxedLCnPoPyGzV6/VOQlGCZBRVZ5YEZbPKntjq0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=gHldp5MQ3utTbzhq5FmVntIgdxlVs5Ha4qbATAouv1wVSYO57H3XcGXU8oOTj2OJq
 bspaVccWbLbEmGGE7JzIZQsm0YhG+r5r007zFgigOVQdKBwk9Y5uVFhn7ua7AuTfZr
 xhuKoWUDkNsUM/saAevYTZwiCP1uEvhttqkc0BAA=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4SDAZ88090391
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 28 May 2019 08:10:35 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 28
 May 2019 08:10:35 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 28 May 2019 08:10:35 -0500
Received: from gomoku.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4SDAVBv079520;
 Tue, 28 May 2019 08:10:33 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-clk@vger.kernel.org>, <sboyd@kernel.org>, <mturquette@baylibre.com>,
 <ssantosh@kernel.org>, <nm@ti.com>
Subject: [PATCHv2 1/5] clk: keystone: sci-clk: cut down the clock name length
Date: Tue, 28 May 2019 16:10:20 +0300
Message-ID: <1559049024-30872-2-git-send-email-t-kristo@ti.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
References: <1559049024-30872-1-git-send-email-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_061037_681443_23610459 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to store the full node name to the individual clocks,
as this will just consome memory and make the clock debug entries
unnecessary long. Just shorten this to "clk" for now.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/clk/keystone/sci-clk.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/keystone/sci-clk.c b/drivers/clk/keystone/sci-clk.c
index 4cb70be..e737f24 100644
--- a/drivers/clk/keystone/sci-clk.c
+++ b/drivers/clk/keystone/sci-clk.c
@@ -280,8 +280,8 @@ static int _sci_clk_build(struct sci_clk_provider *provider,
 	int i;
 	int ret = 0;
 
-	name = kasprintf(GFP_KERNEL, "%s:%d:%d", dev_name(provider->dev),
-			 sci_clk->dev_id, sci_clk->clk_id);
+	name = kasprintf(GFP_KERNEL, "clk:%d:%d", sci_clk->dev_id,
+			 sci_clk->clk_id);
 
 	init.name = name;
 
@@ -306,8 +306,7 @@ static int _sci_clk_build(struct sci_clk_provider *provider,
 		for (i = 0; i < sci_clk->num_parents; i++) {
 			char *parent_name;
 
-			parent_name = kasprintf(GFP_KERNEL, "%s:%d:%d",
-						dev_name(provider->dev),
+			parent_name = kasprintf(GFP_KERNEL, "clk:%d:%d",
 						sci_clk->dev_id,
 						sci_clk->clk_id + 1 + i);
 			if (!parent_name) {
-- 
1.9.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
