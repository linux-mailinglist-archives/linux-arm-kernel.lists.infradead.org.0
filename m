Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A889F1F3A43
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qqlQt9bV20Ge748T3oCg9NiQtlPKiEFMmY4VqWvnvJU=; b=VzYoSZSWOzQKQi
	OpFmMqrxl7kPJlcYvWnbeRpkNOnflg+wFd4v8utBpqqAFYqQ91cOqL+4+ttddB4InvN8ZcUUyaJM0
	GE5v2RZtqFz6VJnrgtHgMzFG70m2gshfdq6TuF/65OiGlkZONDIbKNpEMX4tZEXxA9h/m6sJy7BDG
	5jfKMs9vOUgYQJ9v78Dychth33/12CCyLdoAivCDY5KoVNJCyFH243d/AbEQIu1sWAUMrYcZ5Wmm9
	l8gBelTR5J9t8syZD/QVqU+w3FxF0QzPX4A186g2B8iztKL8es+OFow7hiopNm1LQoJtEaf/iSWXg
	D3sPiiX4uLb2jdR7KN7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicua-0004Hu-DT; Tue, 09 Jun 2020 11:59:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jictt-0003l2-RV
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:58:44 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 059BqwNH022678; Tue, 9 Jun 2020 13:58:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=zWShjHdtkDP9KEzM3tiXokZkb+o6dSeLDNYRf6d3oDE=;
 b=B0/L0iEU58nIJdY8aKGaJ4968r2GJigniZK1kMjLMpwjQipRDMDBiulFORk/BLmN37Nh
 YTizBuBpb79NGo4SP2x9hLP3zCQcw1w5mhOcId4J2887RI0G+4Af2D24Kwjek30MCvPV
 aSkdLyTuQFr75fWINMczPAre4R0nGHcmpXKPqqvdxHmnYlgtxlvWmfitPNG0iyLle8ov
 K4HPBXH4wfX0UWP06c+XCWICna/jwkGuZOV2N8va9BiqahH+zdxJy+pvgNg0wHpLmnhT
 JnG92yvi/pvIqzj5p7Lj7wULWYkfYg/L5AqNm5Ri3497m7IowJLQicOpNXQ8u+G+0Af8 Uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31g0977ed9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 09 Jun 2020 13:58:30 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A8DA910002A;
 Tue,  9 Jun 2020 13:58:29 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9CA372ACA03;
 Tue,  9 Jun 2020 13:58:29 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 9 Jun 2020 13:58:29
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v5 1/3] dt-bindings: media: stm32-dcmi: Add DCMI min frequency
 property
Date: Tue, 9 Jun 2020 13:58:23 +0200
Message-ID: <20200609115825.10748-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200609115825.10748-1-benjamin.gaignard@st.com>
References: <20200609115825.10748-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-09_03:2020-06-09,
 2020-06-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_045842_174308_49813ADF 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 valentin.schneider@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document st,stm32-dcmi-min-frequency property which is used to
request CPUs minimum frequency when streaming frames.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
index 3fe778cb5cc3..05ca85a2411a 100644
--- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
+++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
@@ -44,6 +44,13 @@ properties:
       bindings defined in
       Documentation/devicetree/bindings/media/video-interfaces.txt.
 
+  st,stm32-dcmi-min-frequency:
+    description: DCMI minimum CPUs frequency requirement (in KHz).
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - default: 0
+
 required:
   - compatible
   - reg
@@ -71,6 +78,7 @@ examples:
         clock-names = "mclk";
         dmas = <&dmamux1 75 0x400 0x0d>;
         dma-names = "tx";
+        st,stm32-dcmi-min-frequency = <650000>;
 
         port {
              dcmi_0: endpoint {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
