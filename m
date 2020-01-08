Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D29F1343D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:27:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=un/xJM1f2QoxJFIn4ZmxVo3sytAgUrxUi4L0pS9MK38=; b=olSFERJyrVGOoZ
	CIed+zfBlhmZi7V0xfY+s7sj7I8q+qCzUXssHKAQS3gFyfd5JaUTsUKIADKlnuIRVwirIe2sn07kF
	B8Ow/rzQq3IZ2s16ue7ocpJNBl0pZ4F/+CvJ/x/nU6fZN0RFgncNOrphcOSwO6aSVGaZv+RWeszVc
	gZYitA0Lrs/41ei9g9ktGo/nlpNyNtkBSDZMfQ5fENtJ+IjMWI6TbE8wFuA5U7ErdbvqAnoo7XFf+
	Jr1ExEgwriNZ2A7OgiM1sVfd/rs6G45v/Z06azqcBOs/woMiYUHxTX20KUvq0eHXrtUBzZaBScOEs
	CzyKikW8tW4u3L8/kL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBMs-0007fk-Ue; Wed, 08 Jan 2020 13:27:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBMV-0007Xo-UM
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:27:05 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008DNhH1005860; Wed, 8 Jan 2020 14:26:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=NL+VeEb69RBcerxfUh8eo8NOs/tscCAqUJujkcbwU3E=;
 b=GO+udYkIlFSENB1IbBDcbqIY8P+cYAIpaKvBWgKv8Xo/hG2FK+w8Afh5ZTBfS3n+doIb
 IswQDpXOgBMeIjQmhIpsqrQfoCmsx9xgarVQPgeZvQZTKXkAgL2+kJFYMwpzUMTxkDY7
 p5wmWbCW6FOOuM/sbS3i5o7NFoS2JhxS9FrOQDjuEadzqZPlWgrRMXAc5y9Obgt2OS17
 6S7HKAaNqJzfPkZJWasuK3i0S6X4J71LYf01/11spTxJFpW6laqxJ/Hg/oNcK9OIIuQg
 uirXDFqrg57vSRaIlMnQHHtkJumAy9OaP9E4zTZ2n5CqN3q+20BUYyzxScDeWK1pS0uW Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5m37v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 14:26:57 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 959F910002A;
 Wed,  8 Jan 2020 14:26:51 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 89FAC2B772B;
 Wed,  8 Jan 2020 14:26:51 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 8 Jan 2020 14:26:51
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: Add power-supply for DSI panel on
 stm32f469-disco
Date: Wed, 8 Jan 2020 14:26:47 +0100
Message-ID: <20200108132647.26131-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200108132647.26131-1-benjamin.gaignard@st.com>
References: <20200108132647.26131-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_03:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_052704_273929_107C8FE3 
X-CRM114-Status: GOOD (  12.97  )
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

Add a fixed regulator and use it as power supply for DSI panel.

Fixes: 18c8866266 ("ARM: dts: stm32: Add display support on stm32f469-disco")

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f469-disco.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f469-disco.dts b/arch/arm/boot/dts/stm32f469-disco.dts
index f3ce477b7bae..4801565e19d7 100644
--- a/arch/arm/boot/dts/stm32f469-disco.dts
+++ b/arch/arm/boot/dts/stm32f469-disco.dts
@@ -76,6 +76,13 @@
 		regulator-max-microvolt = <3300000>;
 	};
 
+	vdd_dsi: vdd-dsi {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_dsi";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
 	soc {
 		dma-ranges = <0xc0000000 0x0 0x10000000>;
 	};
@@ -155,6 +162,7 @@
 		compatible = "orisetech,otm8009a";
 		reg = <0>; /* dsi virtual channel (0..3) */
 		reset-gpios = <&gpioh 7 GPIO_ACTIVE_LOW>;
+		power-supply = <&vdd_dsi>;
 		status = "okay";
 
 		port {
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
