Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC3A60816
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tcHs7JI/BWlbtpMAH5BNUXRvNb/gNWsgpXvp27e7aEg=; b=tOI9KikAT3WmxYTb6SrTkimUmM
	kYaTFtBDikJvetPA8EQNABhkqyxBRPrQMX8DzFJT2DBda63OrwR9M+hmg52rzD6FOoWHHNixwzlJ/
	RnQFdkwLiRQIGapsCyo/1JpMkKXfeyTSdm/rMysd6ZLDSKoiwXBxSVfNn4xlfjjDlS295MNwzREOv
	siAzyxVFkkXvB9KOgOBKbcbpbphPlaXamXpBi78AXdvZE/EDC76OHzzYFsawq9zU0LNzwEWfR5LMa
	aHGJe+eLUuk2unarUDci7OXgiBsR4Kom8AMp7gOl58XZpbFRKMhn5t6pRaqoxpESbTv3s/uJTIrL5
	eCQ+2/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPOh-00041f-7e; Fri, 05 Jul 2019 14:41:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKM-0006Q9-Lb
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKzlGN1SmH1DXRUDuAehAnjmv5cDpf6MmZJZYtWbyGU=; b=GwXXE1ibNSjwbV1uMLo91JBxX
 jp1R+/zNfp8dBS/c9JvMXrLhzswz4cZXlqhCd/aV5IgRDQCtNbLtquJPxEUS4VeqxuyFjq/fXUb0m
 /Xvv6mb9fjKnBvfEWar4XcKqeuICvnVVXkQdRm07OwvcoMrb6SZfAMCacE6znhOqs4/E/yG/5Bs2F
 qUi3lO1H1kL05+pm5EG+ndI4b72Diha9oKr7ApZCiu7lTKDMBKsrbYfzsiv5heH6kCLDjcmvo8ths
 Kms//gNAf+mCmglOrB5SADbfN4NBLITIJNHOT+EdBovScfCUWQnRVvlGX2eB0d48d3ZtSTMA09Ntg
 EWoUjuRwg==;
Received: from inva021.nxp.com ([92.121.34.21])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGPz-0007Nw-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 05:05:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6000F2002B7;
 Fri,  5 Jul 2019 07:05:49 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3EE222002B4;
 Fri,  5 Jul 2019 07:05:37 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1C090402EB;
 Fri,  5 Jul 2019 13:05:18 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, leonard.crestez@nxp.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 6/6] arm64: dts: imx8mq: Add clock for TMU node
Date: Fri,  5 Jul 2019 12:56:12 +0800
Message-Id: <20190705045612.27665-6-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705045612.27665-1-Anson.Huang@nxp.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_060555_793039_6C7B6AA9 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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

i.MX8MQ has clock gate for TMU module, add clock info to TMU
node for clock management.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index c61e968..edfc1aa 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -348,6 +348,7 @@
 				compatible = "fsl,imx8mq-tmu";
 				reg = <0x30260000 0x10000>;
 				interrupt = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_TMU_ROOT>;
 				little-endian;
 				fsl,tmu-range = <0xb0000 0xa0026 0x80048 0x70061>;
 				fsl,tmu-calibration = <0x00000000 0x00000023
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
