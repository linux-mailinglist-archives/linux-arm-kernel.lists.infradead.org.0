Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C4312019C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUqYz/eA3cjoobA41vj5CR9zXRAspFIalIExxLtoL/0=; b=jivKGaxBiRnAu/
	eohge3OJxo+9I7eSP0UtJghd5m4CuMgVlc5UHRUSHlLXNrgo2LkFjBQYxXMPN19ofFKt0r7f6If2G
	o8UefhE/swA/9h/QJMUyoB7J6TC1n4uFcnsA1OlVSiCCIlpoU3QaI+0/TzkM/5op8wQLXTbMnH6tS
	bHqFC208YaVdoDxdFFPAXIfk6NZr+CNpUBDlWCidyutVks/NCYqMYRQTaEZWQgwOKP/o97IpSnya8
	xi7VESPzh9u3C57g4bfnVX83NB7omilLyGF1Se1vCJnJxy2i3Edj5dLqX3zbn/sMif6aewUyh4q6H
	pCBMq0tcKVuNbJ8R4hIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ign9H-0007Qh-G5; Mon, 16 Dec 2019 09:58:43 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign71-0005bv-P5
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:26 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9uKJU106107;
 Mon, 16 Dec 2019 03:56:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490180;
 bh=xsoCMaeYo5YfhzTn+vSlcz0XqN7p8MMRE1rbf+zv3po=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=rsjkF7M/pzDNnWelB/P5Q1MKmcM3KGAZf5b8hrsLGRX4QfYrJrDFj5fBBymqnIMhT
 agdEQrDu6x0RAfqLxL1lizv1X5YqPDVeA/VuH4pbq5ByztbEe5qExDArj5uJH/U5r1
 lrFktN5cmqmuE/m9cwF6Nfpg4vfz7mqbatyil4Po=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBG9uKbt049441
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 16 Dec 2019 03:56:20 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:19 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:19 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJR084408;
 Mon, 16 Dec 2019 03:56:17 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 08/14] phy: cadence: Sierra: Get reset control "array" for
 each link
Date: Mon, 16 Dec 2019 15:27:06 +0530
Message-ID: <20191216095712.13266-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015624_006934_6E3F8DA3 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A link may have multiple lanes each with a separate reset. Get
reset control "array" in order to reset all the lanes associated
with the link.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index fdca3bd178c6..497c83827670 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -499,7 +499,7 @@ static int cdns_sierra_phy_probe(struct platform_device *pdev)
 		struct phy *gphy;
 
 		sp->phys[node].lnk_rst =
-			of_reset_control_get_exclusive_by_index(child, 0);
+			of_reset_control_array_get_exclusive(child);
 
 		if (IS_ERR(sp->phys[node].lnk_rst)) {
 			dev_err(dev, "failed to get reset %s\n",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
