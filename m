Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9644D632B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 10:10:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AeUCdFuHQygAuKk6Je3md1PRlc9JRCwNFllgPIW7egw=; b=L6N
	K5ZOluEClbk6jPfYc7149LvOGzdLB+Yv3nc6jQtmg0EDTrCeyq6scGFGVeKvbCKBts2gHuWrCYhCp
	JmCVXSaTBUajvS8Qu8PWY7SV11wN+XdtciOFv2t4voXpP5KBKYmYXY6p1HMbfyJtpc+8YGJENrCI8
	HLcHbqdMusKEW7EiCwgEXSap+D2IOqIA9ksXpCDs2KOlTUmP41G8CS8/vZ5EzQMISCqERTEBj/r7W
	dhNl94bfo7AezkT2TWwX7egT2oXOG3RPOkAuNm8lPNTQ+tioblh1j3GnVn9/QPCwWjmRlU2fjhZ84
	eEkcYL7s3F+kowzcblxVFbc4lPBcmHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hklCf-0008PU-3x; Tue, 09 Jul 2019 08:10:21 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hklC4-0008CM-Ai
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 08:09:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 955721A053B;
 Tue,  9 Jul 2019 10:09:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 666491A0DBF;
 Tue,  9 Jul 2019 10:09:27 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CBEE3402DF;
 Tue,  9 Jul 2019 16:09:13 +0800 (SGT)
From: Anson.Huang@nxp.com
To: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, leonard.crestez@nxp.com,
 p.zabel@pengutronix.de, ping.bai@nxp.com, daniel.baluta@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, angus@akkea.ca,
 andrew.smirnov@gmail.com, ccaione@baylibre.com, agx@sigxcpu.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Date: Tue,  9 Jul 2019 16:00:12 +0800
Message-Id: <20190709080015.43442-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_010944_505824_3F887969 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Update opp-suspend property's description to support multiple
opp-suspend properties defined in DT, the OPP with highest opp-hz
and with opp-suspend property present will be used as suspend opp.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
index 76b6c79..6859227 100644
--- a/Documentation/devicetree/bindings/opp/opp.txt
+++ b/Documentation/devicetree/bindings/opp/opp.txt
@@ -140,8 +140,8 @@ Optional properties:
   frequency for a short duration of time limited by the device's power, current
   and thermal limits.
 
-- opp-suspend: Marks the OPP to be used during device suspend. Only one OPP in
-  the table should have this.
+- opp-suspend: Marks the OPP to be used during device suspend. If multiple OPPs
+  in the table have this, the OPP with highest opp-hz will be used.
 
 - opp-supported-hw: This enables us to select only a subset of OPPs from the
   larger OPP table, based on what version of the hardware we are running on. We
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
