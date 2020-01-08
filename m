Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5663C1343D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:27:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VjwWSO8tpT1qTTwS+p9Q+PPL/OkROiHmNQB2tnIBKdI=; b=c+utUn3FMw/XFD
	yrDUaeSqK6Bomxz+MM7eEWhrvbLK/AB3lBccxwDaansfIAywCKUUWEHthumxrxPeU5nxaLhJhTMdJ
	2uGbt3el3GjVYWpPyo2kg3D04BEzy/5Xj3PKHk/QPhmrNSwET/MmZagEr+mn6hwTo6HhCrJEGuhHx
	1wAM7AaBX1XcC3CVvJFuxnburgmrc6OBwN0E6YXnE8j4q6avbrDxkOWUxs//3hMH96O5DCaZ3NPGz
	Zm5imGRhc7EU4+d/ZPfKdOnL5gB/h/wPOsu7rcfeC/mKJUvGugMa9aDqrPv0H8jr74kXsPF4jsl0W
	YeZBjDZgPUf3RZFfX/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBMd-0007YX-5j; Wed, 08 Jan 2020 13:27:11 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBMV-0007Xn-Fq
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:27:05 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008DNeqh002687; Wed, 8 Jan 2020 14:26:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=mRBCKFBQg+ia5d/y2ZIbtPulwQsHjLNs+eoJZvCHQNY=;
 b=0S5bzDvr9G/QfG1gLoSSUu097SWxu5WB0FxASc79Xe6Bd3eDDdoyh2aaER7f9ra7VvoD
 KyDQ4AODoY48O9/qjJP9aCWNesEF2hGyofnl6H9znc1mwvjwD6eGqCWCvCFNE7TaBsXd
 9qZWIgIJvmP1SV85fMsEimVl4KpG1QXVLGnmsXr5DVF6fDO7hGyK1/eISiCgbW44jUHr
 ji1q0gtg8v+CTXoCEEOKDhXBBVkavJBl+pVkGa1hsmWtEDDO//E/6SZ02ox+qZd+943e
 j7C387tIO/mwKRdRnwmBQtprAikdQTIquIPcihE/W3fvsUG29GiaHupFkjrMjL8QAND2 cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqv23w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 14:26:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0B2B510003B;
 Wed,  8 Jan 2020 14:26:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA5732B772D;
 Wed,  8 Jan 2020 14:26:50 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 8 Jan 2020 14:26:50
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: Add power-supply for RGB panel on
 stm32429i-eval
Date: Wed, 8 Jan 2020 14:26:46 +0100
Message-ID: <20200108132647.26131-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_03:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_052703_893587_2CD9F958 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a fixed regulator and use it as power supply for RBG panel.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32429i-eval.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/stm32429i-eval.dts b/arch/arm/boot/dts/stm32429i-eval.dts
index 58288aa53fee..c27fa355e5ab 100644
--- a/arch/arm/boot/dts/stm32429i-eval.dts
+++ b/arch/arm/boot/dts/stm32429i-eval.dts
@@ -95,6 +95,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vdd_panel: vdd-panel {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_panel";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		green {
@@ -138,6 +145,7 @@
 
 	panel_rgb: panel-rgb {
 		compatible = "ampire,am-480272h3tmqw-t01h";
+		power-supply = <&vdd_panel>;
 		status = "okay";
 		port {
 			panel_in_rgb: endpoint {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
