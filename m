Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFB8133FBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ahlMT1mrbbX9+7bIVBGt7HMy1lRrVDsIy1EuyodFkSo=; b=PipKqTu9SAt74F
	O/SX8xkyPIBNMhV9crEuzduOzwUN7JJHtg9J25rf0frCinQWyIJqJ+xXlV8bISu756c+VsyP3ZR3t
	bOE7OAnI9Daswy6HpdRFtXVcuKpqjYTpiH+u1nnFvPGbr21LdwDqfST0ujnqcGNHZ9UU0Cs6MmSi5
	LbgYKKDyPt3vd9eXur8Umn8kNtNE2b+N6TrmBTdnnSSqt7LPKFBOjeRkUlFWtzNOeZhFu/r8UzjU7
	6wj8O9gtyURA1oi3s7MOtK9JJ1VMviYhM4oVB6xdG9wH1N0LItCoj2KWa2zd/wShm/nnvtf6CAbZ/
	ZQMeq3jZkPS7fpDjrCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip90a-0007hU-Mv; Wed, 08 Jan 2020 10:56:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip90S-0007gw-Jz
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:56:10 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 008AlxkM021687; Wed, 8 Jan 2020 11:56:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=HQegFaRorBiqJXYyjb8evLS2x249g1aHtLlFii1jNgI=;
 b=IJCtyY21s8a/RpoICoEMu6WYJkGhHaXkYRjScYJ0S872dRdKHzJRjOcCSuFxlurtEgSK
 i31g/ngnQwC5tayjfzehfq1p//ovmvRq+R0MDfk6YPrEtCGDPHbur6tjdu4DeTMbxOhR
 snBaJD+oMpKYJoM4JCDY4yfNATWQcQpNqu+dn2Q9NvWPPCbehcNCSR8p0Xhu7nlnnrcv
 FjTaddL2cUk9DF9CUn3AuuzXIgjFTSoCaHqKXLQDSixHgtvUF3/ZOGu76MqObjrGv7WT
 4ICQQJX+SZbA6G1AF+vOkUGW6ZY8a4J1D9gCWxBMiBd0+3uDv/KUGYd7RVZRf2YASwjQ dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqudyy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 08 Jan 2020 11:56:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1BA2710002A;
 Wed,  8 Jan 2020 11:56:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0B4D72AC7BA;
 Wed,  8 Jan 2020 11:56:01 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Wed, 8 Jan 2020 11:56:00 +0100
From: <patrice.chotard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <linux@armlinux.org.uk>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: ARM: dts: stih410-b2260: Remove deprecated snps PHY properties
Date: Wed, 8 Jan 2020 11:54:50 +0100
Message-ID: <20200108105450.31435-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-08_03:2020-01-08,
 2020-01-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_025608_959137_FA2BFAE7 
X-CRM114-Status: GOOD (  10.63  )
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
Cc: patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

Remove "snps,phy-bus-name", "snps,phy-bus-id" and "snps,phy-addr"
properties which are deprecated.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/boot/dts/stih410-b2260.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/stih410-b2260.dts b/arch/arm/boot/dts/stih410-b2260.dts
index 4fbd8e9eb5b7..e2bb59783146 100644
--- a/arch/arm/boot/dts/stih410-b2260.dts
+++ b/arch/arm/boot/dts/stih410-b2260.dts
@@ -178,9 +178,6 @@
 			phy-mode = "rgmii";
 			pinctrl-0 = <&pinctrl_rgmii1 &pinctrl_rgmii1_mdio_1>;
 
-			snps,phy-bus-name = "stmmac";
-			snps,phy-bus-id = <0>;
-			snps,phy-addr = <0>;
 			snps,reset-gpio = <&pio0 7 0>;
 			snps,reset-active-low;
 			snps,reset-delays-us = <0 10000 1000000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
