Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9521B3AD92
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x9xYH3032UniSbN0FrBJ27aKIAGwD+eH9Ql8zaTMdwc=; b=Q4bwWSxxGsE+P4+rZbYFznYPjJ
	gKjtVVEyLVDryuc4ApIf+mEiavbsu/6gJ6VIgZ+F9HR+6DVhb+TpvQ7R1aQ8vANJ7tO4qc3UrDRvS
	Kz9dQpzNR/vue8ykzd1qEaglHVLKmt/6rK6zNlzv880Antr906v1O2kSWb6qOfEwNW0r6m7DUHrAj
	PHoGUA4tiX7CGqJ/eI1kQ4M35X2jEJB0TtOJyYcEml9yNMXRACZ1F23yqiwbpOmuRbMI6ZbaYRM1Y
	0Y0dHfL2Pscp9VJv1hvdH3jbwF4gWPxaZucQtX0Y0/IFckxSdhDcWvH6lJ49You8mGOocXBPjw/Ty
	Jij1uHLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haArG-0005Hd-Gq; Mon, 10 Jun 2019 03:20:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAqM-0003bC-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:19:36 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8AA981A073B;
 Mon, 10 Jun 2019 05:19:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6BC9E1A072D;
 Mon, 10 Jun 2019 05:19:29 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 06B8340310;
 Mon, 10 Jun 2019 11:19:23 +0800 (SGT)
From: Yangbo Lu <yangbo.lu@nxp.com>
To: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 3/6] dt-binding: ptp_qoriq: support DPAA2 PTP compatible
Date: Mon, 10 Jun 2019 11:21:05 +0800
Message-Id: <20190610032108.5791-4-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610032108.5791-1-yangbo.lu@nxp.com>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_201934_916573_4BD05395 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Yangbo Lu <yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new compatible for DPAA2 PTP.

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 Documentation/devicetree/bindings/ptp/ptp-qoriq.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/ptp/ptp-qoriq.txt b/Documentation/devicetree/bindings/ptp/ptp-qoriq.txt
index 6ec0534..d48f9eb 100644
--- a/Documentation/devicetree/bindings/ptp/ptp-qoriq.txt
+++ b/Documentation/devicetree/bindings/ptp/ptp-qoriq.txt
@@ -4,7 +4,8 @@ General Properties:
 
   - compatible   Should be "fsl,etsec-ptp" for eTSEC
                  Should be "fsl,fman-ptp-timer" for DPAA FMan
-		 Should be "fsl,enetc-ptp" for ENETC
+                 Should be "fsl,dpaa2-ptp" for DPAA2
+                 Should be "fsl,enetc-ptp" for ENETC
   - reg          Offset and length of the register set for the device
   - interrupts   There should be at least two interrupts. Some devices
                  have as many as four PTP related interrupts.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
