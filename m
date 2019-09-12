Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84124B0E14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 13:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u37vC+CZK7clzt425vyAaJ6fOw4hxwWBuz7IPomHau8=; b=GjjZaH8jBN/KXK
	fl+eNscuxDEgewSKDwzprcJYznx405nvgYypcUoLc/nanNkBucyGIUYcGAQI1d1ydk8eKHl7v7EUY
	VlO1JKW3L6xD0Kx+4OB1UTwtBw6/byTtkg1Fne7zpw0INg1G1vOnjXCueteJH599lA/jy8PNC9NUA
	cw+zmoMiTTp4sMK7eX39re8xOlarjPbG8wTl1nNdedMA4J3ImRoZE4rIhRzTByR6hFs0zR4C8iVFT
	Nrwbir9rTwU03g0R+Tk3/I6BSoTnZHjTKxHGUXFULuFklxkRejoEd1LoCua0JTJkkip3NMZcrKTVQ
	Aov3YGVP2H/rzb3VXJZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NSI-0004LG-5f; Thu, 12 Sep 2019 11:40:06 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NRm-00046p-Id
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 11:39:35 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdVWb024466;
 Thu, 12 Sep 2019 06:39:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568288371;
 bh=Y7vuHmki0AitevIY4QTjUpFCGHBSgA345LWzYu3kdGg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=JUHApH358MOEJyikt2JFci4OCHJ2KvKh0ljxWHTIgizurT7vSPy1BoJI/2KWqftXw
 et33QuUlNQX/ExgQfoVBzjo1ygi8zgTdvso6+FtdWgfo6PbAwK3WYPlY5vBJJ/HG5o
 7/h1a7Home9Mxe2ub07G1mF84Yk9tqQpblv/S24U=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdVFe074023;
 Thu, 12 Sep 2019 06:39:31 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 12
 Sep 2019 06:39:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 12 Sep 2019 06:39:29 -0500
Received: from sokoban.bb.dnainternet.fi (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8CBdKcs120606;
 Thu, 12 Sep 2019 06:39:28 -0500
From: Tero Kristo <t-kristo@ti.com>
To: <linux-omap@vger.kernel.org>, <ssantosh@kernel.org>,
 <p.zabel@pengutronix.de>, <robh+dt@kernel.org>, <tony@atomide.com>,
 <s-anna@ti.com>
Subject: [PATCHv5 03/10] soc: ti: omap-prm: poll for reset complete during
 de-assert
Date: Thu, 12 Sep 2019 14:39:09 +0300
Message-ID: <20190912113916.20093-4-t-kristo@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190912113916.20093-1-t-kristo@ti.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_043934_654341_9DBC9C12 
X-CRM114-Status: GOOD (  11.49  )
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Poll for reset completion status during de-assertion of reset, otherwise
the IP in question might be accessed before it has left reset properly.

Signed-off-by: Tero Kristo <t-kristo@ti.com>
---
 drivers/soc/ti/omap_prm.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
index ab0b66ad715d..96fa2aad9b93 100644
--- a/drivers/soc/ti/omap_prm.c
+++ b/drivers/soc/ti/omap_prm.c
@@ -153,6 +153,18 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
 	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
 	spin_unlock_irqrestore(&reset->lock, flags);
 
+	if (!has_rstst)
+		return 0;
+
+	/* wait for the status to be set */
+	ret = readl_relaxed_poll_timeout(reset->prm->base +
+					 reset->prm->data->rstst,
+					 v, v & BIT(st_bit), 1,
+					 OMAP_RESET_MAX_WAIT);
+	if (ret)
+		pr_err("%s: timedout waiting for %s:%lu\n", __func__,
+		       reset->prm->data->name, id);
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
