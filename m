Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9AC1A28E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 20:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qVH3bgIFuQU3Rle4hYswGRxlxuvXLsYyGY6uP0ed+9U=; b=ocU8umVwTA0j6X
	v3Ff31NPocE6aJoMr0cdV3xWCi8wH4L/5zrat4MXokdlnUE5H5zk0fGf5kNPKEX4o+FlUQt9lmCjn
	R7fVkGlAJDNcR2KSq5NCW+FLmVo7+uruX8xXLPX6+TwykoZBwNXwQ04bElTr5yCclpMhjI1chBoJQ
	t6cNZk93TZOdzs0YYXTtxmnFKpN1hfr4JWvKkpy9Sz3aP+DMqQ307vqq6RToFD1riuWPQuYb/MGkw
	N5FxpBSvM+Iev8rVj3CvDoo4vaJzoJ7wBCtokJ8oVlzjteAqdaBiEXV8PbkQPTiyymPE4bsRfwAvu
	OSOmdBEtkAvzixleEl2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMFrE-00080O-UH; Wed, 08 Apr 2020 18:55:28 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMFr7-0007zR-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 18:55:22 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 038It487080851;
 Wed, 8 Apr 2020 13:55:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586372104;
 bh=ccqDRMm3FCs3RXBDaJi6W1MUSOA9ffDYkYbKumIKNi8=;
 h=From:To:CC:Subject:Date;
 b=hId+MfxKpcBxPl5HsKrUITUr3flgFfREfi9l8D03gPY31KYNh7Q7+sNc7OsOdZSVf
 dwO5xpWblkRTzUjcmmkglBhYujI0FnfiMsg96zzpizVmHdgqmwERAi5UN0u6y/YzJP
 Mt2UlN1yK9lTvxK++uLy3atB+OlOfj+NbwFaFtwQ=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 038It4XN084399;
 Wed, 8 Apr 2020 13:55:04 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Apr
 2020 13:55:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Apr 2020 13:55:03 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 038It2qQ072145;
 Wed, 8 Apr 2020 13:55:03 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Vinod Koul <vkoul@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, <dmaengine@vger.kernel.org>
Subject: [PATCH] dmaengine: ti: k3-psil: fix deadlock on error path
Date: Wed, 8 Apr 2020 21:55:01 +0300
Message-ID: <20200408185501.30776-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_115521_715529_025DFDBC 
X-CRM114-Status: UNSURE (   9.63  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Vignesh Raghavendra <vigneshr@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mutex_unlock() is missed on error path of psil_get_ep_config()
which causes deadlock, so add missed mutex_unlock().

Fixes: 8c6bb62f6b4a ("dmaengine: ti: k3 PSI-L remote endpoint configuration")
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/dma/ti/k3-psil.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/dma/ti/k3-psil.c b/drivers/dma/ti/k3-psil.c
index d7b965049ccb..fb7c8150b0d1 100644
--- a/drivers/dma/ti/k3-psil.c
+++ b/drivers/dma/ti/k3-psil.c
@@ -27,6 +27,7 @@ struct psil_endpoint_config *psil_get_ep_config(u32 thread_id)
 			soc_ep_map = &j721e_ep_map;
 		} else {
 			pr_err("PSIL: No compatible machine found for map\n");
+			mutex_unlock(&ep_map_mutex);
 			return ERR_PTR(-ENOTSUPP);
 		}
 		pr_debug("%s: Using map for %s\n", __func__, soc_ep_map->name);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
