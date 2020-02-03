Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0F91503EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 11:11:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CZ+3yipq+thZdCNlE5QfWZKphZ26DxPDVNehFnEgtvg=; b=PXjCQ2AC9dbSDJ
	7WCmNlS9egSLMJAjlE+K2Ga/daDkBiJwM5XH6fPSAexejf7kDsbT9RtShtoVL7ZcKC1pYW30g6tlG
	vjhSqWGeqC6FwYIPrqkQ4uteZd2/DYZtPNkCwLzDziGT2RgfqRNc0SqX3ZkhikSFu/IXTGaIWRvGo
	XvbsuSSWGfojbezhyxi+D93OBxHNfOLrcwoF40mTQ69t53htQtFwhlRH9zhl4PHBkW2/sjYHj/tP2
	SJIqWiGvgjzw8syMs/x0aCTaeZ+BSIhTRyEQ6tg9it0pMwHU1FGEI2kBrew20JTs21FIlY1sIpTHr
	4PbU5u79gNHwmcGJLDig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYgx-0005jM-Pk; Mon, 03 Feb 2020 10:10:55 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYfT-00038K-06
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 10:09:24 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 013A9KwI034849;
 Mon, 3 Feb 2020 04:09:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580724560;
 bh=2hUUozdIkXgPq4UCQpd7JyChjZz/QfVlLVWE+xS6/ek=;
 h=From:To:CC:Subject:Date;
 b=vCJnleBgkmlugF98liU5HWSItdoPV4r3aHSsVKgVzCaIK+5/u/EjF2/ZCiMF35h/y
 Iifj9ALiB37FXTVKXUNlCyIa0LdxAHjDfIxJ4eD4WrNEa7p1C0Uqh6fYmIEoDYXOdV
 pYimNP+Liq1PLp3awnLZSr5HBs9WarHjFRzeOcAU=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 013A9JU2025522
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 3 Feb 2020 04:09:20 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 3 Feb
 2020 04:09:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 3 Feb 2020 04:09:19 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 013A9H5l002834;
 Mon, 3 Feb 2020 04:09:17 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <grygorii.strashko@ti.com>, <ssantosh@kernel.org>,
 <santosh.shilimkar@oracle.com>
Subject: [PATCH] soc: ti: k3-ringacc: Fix dereference before NULL check in
 k3_ringacc_ring_cfg()
Date: Mon, 3 Feb 2020 12:09:16 +0200
Message-ID: <20200203100916.19057-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_020923_114346_B066421D 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: t-kristo@ti.com, dan.carpenter@oracle.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only dereference ring->parent after we have checked that ring is not NULL.

Fixes: 3277e8aa2504 ("soc: ti: k3: add navss ringacc driver")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/soc/ti/k3-ringacc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/ti/k3-ringacc.c b/drivers/soc/ti/k3-ringacc.c
index 5fb2ee2ac978..8f90cc56d44d 100644
--- a/drivers/soc/ti/k3-ringacc.c
+++ b/drivers/soc/ti/k3-ringacc.c
@@ -556,11 +556,13 @@ static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
 
 int k3_ringacc_ring_cfg(struct k3_ring *ring, struct k3_ring_cfg *cfg)
 {
-	struct k3_ringacc *ringacc = ring->parent;
+	struct k3_ringacc *ringacc;
 	int ret = 0;
 
 	if (!ring || !cfg)
 		return -EINVAL;
+
+	ringacc = ring->parent;
 	if (cfg->elm_size > K3_RINGACC_RING_ELSIZE_256 ||
 	    cfg->mode >= K3_RINGACC_RING_MODE_INVALID ||
 	    cfg->size & ~K3_RINGACC_CFG_RING_SIZE_ELCNT_MASK ||
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
