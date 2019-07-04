Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138035F5B4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 11:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BduR39yDTUSi0fxTc1gDAJFXPg4GkdpKKYQ0JkuqZ3w=; b=nbp
	3Rvnez/kpgGFuCWsM3p3o3UmcASW0nNNXUE+d+oEe4DVRkB22RapouGx7a89QxzqbjyDQUfuj7pu5
	zO88NBfWSAYoSOUIekR8rvaSmdGqC6WaCY308SXQF4VrEmz5LMy1lZMtoWx5F8TlXDp/bWj6Ug/YB
	eAldfV45cWgteVNf0fta5ipFybjVGeMvec1cMzLwoWrHcsz8WN3EKlSFaEMAj8sZ8mMwOEKhxKQfd
	Xbl/47qJGsCxVF/gfAz+0i8rMFnkLneZP86R707rOliv8L2aJlcIJmHovMV7YHTreP5yP42Edxt/4
	dZeV+KB0ma7Gckbwc+xxd06qO48ACxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiy9H-0006GF-6T; Thu, 04 Jul 2019 09:35:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiy91-0006FN-GD
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 09:35:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E7CFF200D8D;
 Thu,  4 Jul 2019 11:35:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D0589200F81;
 Thu,  4 Jul 2019 11:35:02 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F0E5B402C0;
 Thu,  4 Jul 2019 17:34:53 +0800 (SGT)
From: Anson.Huang@nxp.com
To: p.zabel@pengutronix.de, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, ping.bai@nxp.com,
 daniel.baluta@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Date: Thu,  4 Jul 2019 17:25:59 +0800
Message-Id: <20190704092600.38015-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_023511_688834_B87D955C 
X-CRM114-Status: UNSURE (   7.86  )
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

i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
property and related info to support i.MX8MM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 Documentation/devicetree/bindings/reset/fsl,imx7-src.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
index 13e0951..bc24c45 100644
--- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
+++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
@@ -7,7 +7,7 @@ controller binding usage.
 Required properties:
 - compatible:
 	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
-	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
+	- For i.MX8MQ/i.MX8MM SoCs should be "fsl,imx8mq-src", "syscon"
 - reg: should be register base and length as documented in the
   datasheet
 - interrupts: Should contain SRC interrupt
@@ -47,4 +47,4 @@ Example:
 
 For list of all valid reset indices see
 <dt-bindings/reset/imx7-reset.h> for i.MX7 and
-<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ
+<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ/i.MX8MM
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
