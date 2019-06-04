Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD0B343B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:09:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q7V9G4FWX6HUoPwrQCC+3WECB/mlinBCr5KIsBBXRIk=; b=dR+HX0nEnM8Tvn
	6Hu46CHEUEOp4FxTI89gkfFfO9Ru4QW/R4NIXyupt40w0dM7a0FiLchu2N3tmB/VZffRdU4aGixtc
	GV9YhsAryS6gL3/yIKdRKE/5VwjV1L6dSgbE78Pc4yFDJyY3b/hiLfnEOgO2OhxJpEirVHESIzQl7
	sga1HwzEYxmblaLEieF8zHDpTpMQwCp/I2R1afgfH7oz2NbQWZGmMgGpiPu3IFpUGFI5Jm+lfAWLR
	iP5xeOX+nqNDLxVXPA3ARnUuh9r/FBalp/xOIFNBhN69VqVdzhTK/LLg2sqOLVBn8y/Rp5j6r01o/
	FgKU4oBaXxCOxsRKE/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6O6-0003yT-Ug; Tue, 04 Jun 2019 10:09:50 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6Nz-0003y0-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 10:09:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54A9a2B046507;
 Tue, 4 Jun 2019 05:09:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559642976;
 bh=hThjUgWOxleYEOEEW+P/ldWpXlE+EqdHjM7J9AuJMlk=;
 h=From:To:CC:Subject:Date;
 b=VyiBLcVjjuEm8peO+DwdeeKfTAXQ7f4Dt4W8m2dTA9meyxP6uEvbXbvtAETu9BqlE
 8J5u7TkV4S5z5xhzehy5fWNRv3uA2BE1AOmmqmFJBO83M843Uu3DmjZQ6n9dh1XIAs
 d0zOljms/6vpXsnto13ir8mU1Jh2AQwkSu4kTlyU=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54A9a3e094878
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 05:09:36 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 05:09:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 05:09:35 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54A9X49114392;
 Tue, 4 Jun 2019 05:09:33 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <nm@ti.com>, <t-kristo@ti.com>, <ssantosh@kernel.org>
Subject: [PATCH] firmware: ti_sci: Parse all resource ranges even if some is
 not available
Date: Tue, 4 Jun 2019 13:10:00 +0300
Message-ID: <20190604101000.6741-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_030944_029526_D475429C 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/firmware/ti_sci.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index af3ebcdeab18..5d13ed724ff0 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2783,6 +2783,7 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 	struct ti_sci_resource *res;
 	u32 resource_subtype;
 	int i, ret;
+	bool valid_set = false;
 
 	res = devm_kzalloc(dev, sizeof(*res), GFP_KERNEL);
 	if (!res)
@@ -2813,13 +2814,16 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
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
@@ -2828,7 +2832,10 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
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
