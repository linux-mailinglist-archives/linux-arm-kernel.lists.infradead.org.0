Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09541CDF3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3s3MFFAGnTquWsDq6VvoaIiicXo8FtzZscPibEFCDs=; b=CMY38/Y1RVM1IQ
	jDdxz1tRoAdBfbBqmlCEz9jpY8dJ7FhOKuWdFM8oBDWf2USLT/Ecq1mhJTzTsoTpIwr3sLHM0AFoM
	2WHuTz4YBb7GIczSftxFi+k1FHuTk8O/YJKfLDSOT6GbY04aaXSDvP80O8fhn6IJj1DdDhkovfcmk
	vCh/UuM2SgESRxH/+qo26VaeS70QGVWjjuevVfIYEkvswvwe4KHYkjioK0QDrsXzF+frdpOpaG9Sy
	m1/+angItziD1KZKzkBnYnM391L9pyBWwXyE3jGdtWpGuF2Se/BfiKtOJYzM9J88Em8TrsIwNq4uH
	6QTFrwlYFbfwBDgRYkvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQDg-0006WH-On; Mon, 07 Oct 2019 10:26:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQDT-0006PV-F4
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:26:13 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97AL5S7020066; Mon, 7 Oct 2019 12:25:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=M74aio4f0hcIb5CStKqLwZ4Znh93MbF0U0WtdJoeBBo=;
 b=Q2KN9UBXXxl2ohKocVXHND/laavGfATGspsUy9pU0HAcSp3+DeRmBYXG++qFT6I8EWta
 TVHFeTG0EScwA25a3e+YQgWsQrIbsntu9C1rPLjPjoyx5eawmNn3WbFzgkkkr8iXOxjz
 jw5XD82oPppZiW8SgbaaBxw3y5FRE63xXNobM/bgpbu66ySDwi/Y2Qie6+Abjic9f45z
 xqP6bbvHhr0V5VrskG1Kh/sSjJQIqETDYokF+mAjcC3PCC05WjCqK24MSigXbWWCH3ff
 wa0FMTbXuxNmdL3ynz439jX6yPRu1LN05zOXg52LnrDmzVraEhqf/ZxPMVmpppcsQyXB tQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2p1s5j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 12:25:56 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 476A7100034;
 Mon,  7 Oct 2019 12:25:56 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2F2572BFE0A;
 Mon,  7 Oct 2019 12:25:56 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct 2019 12:25:55
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>, Alexandru Ardelean
 <alexaundru.ardelean@analog.com>, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>
Subject: [PATCH 2/3] dt-bindings: net: adi: Fix yaml verification issue
Date: Mon, 7 Oct 2019 12:25:51 +0200
Message-ID: <20191007102552.19808-3-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007102552.19808-1-alexandre.torgue@st.com>
References: <20191007102552.19808-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_032611_922150_D01D11A1 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit fixes an issue seen during yaml check ("make dt_binding_check").
Each enum were not declared as uint32.

"Documentation/devicetree/bindings/net/adi,adin.yaml:
properties:adi,rx-internal-delay-ps:
..., 'enum': [1600, 1800, 2000, 2200, 2400], 'default': 2000}
is not valid under any of the given schemas"

Fixes: 767078132ff9 ("dt-bindings: net: add bindings for ADIN PHY driver")
Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/Documentation/devicetree/bindings/net/adi,adin.yaml b/Documentation/devicetree/bindings/net/adi,adin.yaml
index d95cc691a65f..23e8597acda6 100644
--- a/Documentation/devicetree/bindings/net/adi,adin.yaml
+++ b/Documentation/devicetree/bindings/net/adi,adin.yaml
@@ -17,6 +17,8 @@ allOf:
 
 properties:
   adi,rx-internal-delay-ps:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
     description: |
       RGMII RX Clock Delay used only when PHY operates in RGMII mode with
       internal delay (phy-mode is 'rgmii-id' or 'rgmii-rxid') in pico-seconds.
@@ -24,6 +26,8 @@ properties:
     default: 2000
 
   adi,tx-internal-delay-ps:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
     description: |
       RGMII TX Clock Delay used only when PHY operates in RGMII mode with
       internal delay (phy-mode is 'rgmii-id' or 'rgmii-txid') in pico-seconds.
@@ -31,6 +35,8 @@ properties:
     default: 2000
 
   adi,fifo-depth-bits:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
     description: |
       When operating in RMII mode, this option configures the FIFO depth.
     enum: [ 4, 8, 12, 16, 20, 24 ]
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
