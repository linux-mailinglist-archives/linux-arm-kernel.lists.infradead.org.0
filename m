Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F36A49FB6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSSydwejECPREhRvf5LJpTguhEF14gym2mWnmv3+u9k=; b=mwDEkvW/JjUFLU
	eWYcHmJaKf/y8n6yRGhj+TVXcnefZCR45ABQ3FG8BFfS2Br088kmt4RERdnfquNyULTX98oXil+v4
	tn6mme7g0/PgEbdUaljj0CK8yST3FzcW6kD7gOlbLk+AAuswlkN8ynvFWPnvyfPFcISDEO6w4jnD2
	voHK7tWi6oNPeY3H+rlzEJOZvw2U4i3UrNnZ/60b4rdkzl1+WIsLrbx98ya6HVtNkKvWaYRku+xhN
	ujNsPx0ig9con1eT8IUk3f7GrJisouYdXY4I8luDq3QGEpuOfBrjhHiVJ0GQdC8Q7XDOZifBeFb73
	WQ09PnhkWgfQf8JfLtKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sGJ-0007fn-FU; Wed, 28 Aug 2019 07:20:59 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sFN-0005wF-FI
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 07:20:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JxAl116149;
 Wed, 28 Aug 2019 02:19:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566976799;
 bh=lun/IihhVZD0SSuBuE72idtwD4SSrSW8blVhgZgqk2U=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=sE5yNRtkvGyAPqmNv20ep8YkcF+5JLPMY4UC7vGG9gyEVOtYrxe3ZN0AU5DmyGY6/
 jqSEMF1M0TASDP6kp4ALgZV6Ov++akIxnWCuuC/MoHaIBbxQ1iqskeaJUYqHoHP9VC
 XtWuhxZg1vfdeNP0W+tjXKfRDMKSUHBgzvKNoTRg=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7S7Jxsw078153
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 28 Aug 2019 02:19:59 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 28
 Aug 2019 02:19:57 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 28 Aug 2019 02:19:57 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7S7JmfF052201;
 Wed, 28 Aug 2019 02:19:55 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <ssantosh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>, <robh+dt@kernel.org>,
 <p.zabel@pengutronix.de>
Subject: [PATCHv2 03/11] soc: ti: omap-prm: poll for reset complete during
 de-assert
Date: Wed, 28 Aug 2019 10:19:33 +0300
Message-ID: <20190828071941.32378-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828071941.32378-1-t-kristo@ti.com>
References: <20190828071941.32378-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_002001_648600_F094B9C1 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Poll for reset completion status during de-assertion of reset, otherwise
the IP in question might be accessed before it has left reset properly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index fd5c431f8736..afeb70761b27 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -127,6 +127,7 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	u32 v;
 	int st_bit;
 	bool has_rstst;
+	int timeout = 0;
 
 	if (!_is_valid_reset(reset, id))
 		return -EINVAL;
@@ -153,6 +154,25 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	v &= ~(1 << id);
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 
+	if (!has_rstst)
+		return 0;
+
+	/* wait for the status to be set */
+	while (1) {
+		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
+		v &= 1 << st_bit;
+		if (v)
+			break;
+		timeout++;
+		if (timeout > OMAP_RESET_MAX_WAIT) {
+			pr_err("%s: timedout waiting for %s:%lu\n", __func__,
+			       dev_name(rcdev->dev), id);
+			return -EBUSY;
+		}
+
+		udelay(1);
+	}
+
 	return 0;
 }
 
-- 
2.17.1

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
