Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F85631DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:23:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jAKhrz9DZyaZWA1bHG/VQKCSBQJe0ksAIOVtnykKSLQ=; b=B7h
	o6LjqC3jw7HO566PN+O9DtUf06+UcbZn3sED05rc6098ro4SEBMtPrWVlLMMKaBJhYlOfVpOgvurg
	SlaL2Gn6qVPv9RG5QTQmlThxZ5TrDMMjgZvBAo7OCTjoMtOpwcEIxJqbitnc+22x3bHzkciNxE76w
	cj4SNNA43K50xup6/zmlHalcW1klLY3N+s+gDxKDm4BgmegD3Xrg9bBwrhj9xxoovXSrHKLAp2ZBp
	pEbtLOgNjmqGlHCdrr9+Whb4WRqLJyUrYl5igYS2h8r2pAry1J3V9QAv5ooIVGX9e1/Hdv7eFS/q4
	b4sDuuziJn9wpzoeo/Dq7/ZA/HzF2Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkTW-0003f6-I5; Tue, 09 Jul 2019 07:23:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkQK-0000sU-KJ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:20:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D6373200D6A;
 Tue,  9 Jul 2019 09:20:20 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 86FA9200D69;
 Tue,  9 Jul 2019 09:20:08 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id DBFDE402D3;
 Tue,  9 Jul 2019 15:19:54 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, ccaione@baylibre.com,
 angus@akkea.ca, andrew.smirnov@gmail.com, agx@sigxcpu.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 1/3] opp: of: Support multiple suspend OPPs defined in DT
Date: Tue,  9 Jul 2019 15:10:54 +0800
Message-Id: <20190709071056.26361-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_002024_848825_97B33AA4 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
