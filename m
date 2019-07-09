Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EC7632A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4fWnNfefJQqvRlHjOXV8qtQ7sv82gnzBtz/8Haqe4bE=; b=IwMo9G3CG4o2WkbnEaB1YeQy79
	4YP+jjYPq5wmZMnNdM9LRsA1w8uBaOIvARMG0J5AmP5jCTAU7EUZifzDr6umzs1FQXnsqdAoPcIpI
	KdQcJihocUmReRlcUhV067ydiknkMv0MviFAY1YHal9LzDOcFRA4mqYBjbHD+iO8nDdp+0nnmwawt
	oL+JUZ/iXX9ruMoeFHG76oTfiwQD9vNeGDZaNiGWubAOGN2+0RjIRVDR8TqmKT83w8IQromnnnJEZ
	KlQVGsITwjMY1l8znomkK2vOQwTsPSv/1UkbG0utF1VpjfTnjPM56w2sQ4Hh/snGZ32cwOKW1KDcE
	2y8a3ydA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklCJ-0008E5-Fr; Tue, 09 Jul 2019 08:09:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklC4-0008Ci-4c
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:09:45 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AB78F200558;
 Tue,  9 Jul 2019 10:09:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 79F03200561;
 Tue,  9 Jul 2019 10:09:29 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E8279402E3;
 Tue,  9 Jul 2019 16:09:15 +0800 (SGT)
From: Anson.Huang@nxp.com
To: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 p.zabel@pengutronix.de, ping.bai@nxp.com, daniel.baluta@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, ccaione@baylibre.com, agx@sigxcpu.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 2/4] opp: of: Support multiple suspend OPPs defined in DT
Date: Tue,  9 Jul 2019 16:00:13 +0800
Message-Id: <20190709080015.43442-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190709080015.43442-1-Anson.Huang@nxp.com>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_010944_328846_5F84EBE2 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

With property "opp-supported-hw" introduced, the OPP table
in DT could be a large OPP table and ONLY a subset of OPPs
are available, based on the version of the hardware running
on. That introduces restriction of using "opp-suspend"
property to define the suspend OPP, as we are NOT sure if the
OPP containing "opp-suspend" property is available for the
hardware running on, and the of opp core does NOT allow multiple
suspend OPPs defined in DT OPP table.

To eliminate this restrition, make of opp core allow multiple
suspend OPPs defined in DT, and pick the OPP with highest rate
and with "opp-suspend" property present to be suspend OPP, it
can speed up the suspend/resume process.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No changes.
---
 drivers/opp/of.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index b313aca..7e8ec6c 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -617,9 +617,12 @@ static struct dev_pm_opp *_opp_add_static_v2(struct opp_table *opp_table,
 	/* OPP to select on device suspend */
 	if (of_property_read_bool(np, "opp-suspend")) {
 		if (opp_table->suspend_opp) {
-			dev_warn(dev, "%s: Multiple suspend OPPs found (%lu %lu)\n",
-				 __func__, opp_table->suspend_opp->rate,
-				 new_opp->rate);
+			/* Pick the OPP with higher rate as suspend OPP */
+			if (new_opp->rate > opp_table->suspend_opp->rate) {
+				opp_table->suspend_opp->suspend = false;
+				new_opp->suspend = true;
+				opp_table->suspend_opp = new_opp;
+			}
 		} else {
 			new_opp->suspend = true;
 			opp_table->suspend_opp = new_opp;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
