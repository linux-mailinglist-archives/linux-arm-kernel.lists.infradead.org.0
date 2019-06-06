Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ACD373E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nvc/uLHQHnWN1YIVzdIzQibrX2ave2i1wY3VnsulwPE=; b=R2RV96KzLA6c74
	seB6z/HGqndfnsJI4yqklegdToYDT2Tot2NxGJ+IZ0i+TCxnVAf4jDF5OtTMqAYyU2TWErHbkJBRb
	nXdk9abjovsSQt9lA01eBlOjYAvMF0IhrcF3J2TyKm4Z19sU+V7XapZ9OHVr/qwJG0kO4vY5VZP/F
	o6RyAFLm6HlbKlkcq5NZ38MAyKyFs/hAYUDbVD+OgFevHQqDHdnb8+0AVfWY+tjWQqOWSXCB6FSYt
	eQPg/0Mq/6JkshsxoKUBs0kaFssWPme9LoGK+7iwD4VCD8T69C3AYVFZVmsksHf2EwsLscIgzSL2I
	ggzTil0KW1MAxgXf3pOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrH4-00055q-6k; Thu, 06 Jun 2019 12:13:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYrGw-00055I-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:13:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x56CDWdx113560;
 Thu, 6 Jun 2019 07:13:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559823212;
 bh=B2qJg0OSQ/M4Oj8HsHc8u+Z16oSbaQ0cWhHiOTbn6dU=;
 h=From:To:CC:Subject:Date;
 b=nneGMVBRvHcsIsrn42Ursoj7pfrKrmzRftXWv06A2wSG0+cQbBVy20kt5xsdAvEtF
 KlgPjwVmw1X55d5IoV1jrrrzW86jjL2hVVoFpJZif1qacANGttE5UjEvdXo8/kp5nG
 F1aQcvmzRQ0f5Bios/cXqm053ughs4mag7gtO1dg=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x56CDW3O077779
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 6 Jun 2019 07:13:32 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 6 Jun
 2019 07:13:31 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 6 Jun 2019 07:13:31 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x56CDTaw074272;
 Thu, 6 Jun 2019 07:13:30 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH v3] firmware: ti_sci: Parse all resource ranges even if some
 is not available
Date: Thu, 6 Jun 2019 15:13:57 +0300
Message-ID: <20190606121357.7932-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_051334_706696_17B59E9E 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lokeshvutla@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not fail if any of the requested subtypes are not availabe, but set the
number of resources to 0 and continue parsing the resource ranges.

Reviewed-by: Lokesh Vutla <lokeshvutla@ti.com>
Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
Hi,

Changes since v2:
- changed dev_err to dev_dbg for not allocation subtype as it is no longer an
  error

Changes since v1:
- moved the 'bool valid_set = false;' to avoid 'reverse Christmas tree'
- Added Reviewed-by from Lokesh

Regards,
Peter
 drivers/firmware/ti_sci.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index ef93406ace1b..571ce24d7f43 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2342,6 +2342,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 			    struct device *dev, u32 dev_id, char *of_prop)
 {
 	struct ti_sci_resource *res;
+	bool valid_set = false;
 	u32 resource_subtype;
 	int i, ret;
 
@@ -2372,15 +2373,18 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 							&res->desc[i].start,
 							&res->desc[i].num);
 		if (ret) {
-			dev_err(dev, "dev = %d subtype %d not allocated for this host\n",
+			dev_dbg(dev, "dev = %d subtype %d not allocated for this host\n",
 				dev_id, resource_subtype);
-			return ERR_PTR(ret);
+			res->desc[i].start = 0;
+			res->desc[i].num = 0;
+			continue;
 		}
 
 		dev_dbg(dev, "dev = %d, subtype = %d, start = %d, num = %d\n",
 			dev_id, resource_subtype, res->desc[i].start,
 			res->desc[i].num);
 
+		valid_set = true;
 		res->desc[i].res_map =
 			devm_kzalloc(dev, BITS_TO_LONGS(res->desc[i].num) *
 				     sizeof(*res->desc[i].res_map), GFP_KERNEL);
@@ -2389,7 +2393,10 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 	}
 	raw_spin_lock_init(&res->lock);
 
-	return res;
+	if (valid_set)
+		return res;
+
+	return ERR_PTR(-EINVAL);
 }
 
 static int tisci_reboot_handler(struct notifier_block *nb, unsigned long mode,
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
