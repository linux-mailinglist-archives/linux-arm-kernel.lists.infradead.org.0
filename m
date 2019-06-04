Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8387A3445C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bz0r8khHOblj0h6yorUduhsA1uGZJlHmWL1sh0gs+4I=; b=iHQ6P0vgwRvVrl
	NZKaqvw5Ft9wznjoV4whoJKD6qaDmnLkcwML3YKlgnCPXTHrJxG8abkJHxO1jiwWU910lSGpeX1Uf
	la2JXQTitzNhkzGYpMpJi7cBd1Ky+hdq6TauMePlOSucW9cInKcm6JHzxhybbyXeI/b6Ylo7//Ntp
	fRlMjskmM5nX/HG7K8S8b0MdWATZYvCx18ZWjFSimIvqthWqqQr40NYktnj3f19Se2ogk8VFo+xgm
	BMPzyydjP44lNKcWcjV/dM7K9xfqELN9Ug/ybkiqMWabMZyUbAh1qh1qj3GGpkcIQM4dKvZA4H/3o
	Ynt0HESQ1CRPpxFD9rZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6fm-0001Am-JC; Tue, 04 Jun 2019 10:28:06 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6ff-0001AT-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:28:00 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54ARwtY042795;
 Tue, 4 Jun 2019 05:27:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559644078;
 bh=B1+1KPjcoFQ5RbzScQxjgdHzhKXOjNrOlB1lb/VG8vU=;
 h=From:To:CC:Subject:Date;
 b=H0wJBOny965Jhbe0u414+AHOcTNPMma1Psdrj72nZOytkJdT5ftkdngF7i5Hu4iTR
 dwTNL7B9PPfC4E5aRZSlFQbuqCuUCm9vKj6yiOZeLhQut63MWK8PJtiiJW6HmSki62
 zcydx0IQUaOj5zjnRJ/QJm8YCoA2fcLkDlNc0ksk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54ARwwZ114271
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:27:58 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:27:57 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:27:57 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54ARuiO020817;
 Tue, 4 Jun 2019 05:27:56 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH v2] firmware: ti_sci: Parse all resource ranges even if some
 is not available
Date: Tue, 4 Jun 2019 13:28:23 +0300
Message-ID: <20190604102823.10166-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_032759_748218_705747CD 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Changes since v1:
- moved the 'bool valid_set = false;' to avoid 'reverse Christmas tree'
- Added Reviewed-by from Lokesh

Regards,
Peter

 drivers/firmware/ti_sci.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index ef93406ace1b..191939476d64 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2342,6 +2342,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 			    struct device *dev, u32 dev_id, char *of_prop)
 {
 	struct ti_sci_resource *res;
+	bool valid_set = false;
 	u32 resource_subtype;
 	int i, ret;
 
@@ -2374,13 +2375,16 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 		if (ret) {
 			dev_err(dev, "dev = %d subtype %d not allocated for this host\n",
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
