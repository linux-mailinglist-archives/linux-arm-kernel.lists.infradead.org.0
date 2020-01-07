Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E39413268B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:39:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/CCaP5MaUQ1dWDRDHpsK/UIMK41saPPGLuGUwDkxSE=; b=HEgNrrAMr7WrLW
	30R/jn+42A4lnhyr0QTMxZaqzG/b0b0DLqpb0JrpFOfmZU5fuNYAh3yk/g+GyWeMEhQ3arGWHukcO
	YWm56X/8OXEYXc1jn3KMwLv+q8j47wNFzJrmHeZgnikqkWII+N/OnZe9P0cpUJ9w0d4Mln6w3oPCi
	rSfnGKA6AhZwxyfyeE4PlmyxX/d56k6ehBFhe58cu8m+eEhxGSJmKgMXondk6msupNtsZj52BtsGh
	xZcR5+Ixnq9D0IuRB64o8gIIVzu9xdQX6zjVzGC2F3l+EQDrLyGPpeG4rzOiJg2y++/bgDhgkR0mF
	AauqJZgLy8uXPeRvnymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo96-0000ik-Dq; Tue, 07 Jan 2020 12:39:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo8J-0000DH-Aq
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:38:53 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007CbXhP018532; Tue, 7 Jan 2020 13:38:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=LrRlBaLDFuffLqD4z5yxGzk/G0cLADgnwc3XsTVfoCs=;
 b=ZaBhwiwAYjyhKoeGI1D5iaFSenhCJ//B7at1Dr1vWILK/nKLgw55tevPMqmFFDWyHsIm
 ILyUukFobhhD3lOOu6ziqtJnMtEDSV9dS3V+3CO+DJOomdOyarqc4jqWpO7cFxi1zaNr
 PdhXOPLxfxc69hsziqcdzAyi+Dt7Jn2nH/2l6RjFyIkULo00qUWCWq3LwadiL23Gg2rW
 ZqS9p3Rl3Byv2Q77XyMWaamgZq7koAlg9JJhs6AqZ0UT3rARH2DVG1iGhQTT00lbLA5M
 stIzk0fl9K8ouEx/5CwEC3FkDVEEdP7zTMFpZqc95Hn1ZH0jHgO5TzIiA5NiV2qzL6zs 1w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakuqp4c3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 13:38:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B91ED10003A;
 Tue,  7 Jan 2020 13:38:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AEA2A2AFAB3;
 Tue,  7 Jan 2020 13:38:32 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 7 Jan 2020 13:38:32 +0100
From: <patrice.chotard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <linux@armlinux.org.uk>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH 2/2] ARM: dts: stih410-b2260: Remove deprecated snps PHY
 properties
Date: Tue, 7 Jan 2020 13:38:28 +0100
Message-ID: <20200107123828.6586-3-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200107123828.6586-1-patrice.chotard@st.com>
References: <20200107123828.6586-1-patrice.chotard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_03:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043851_669658_85C08A85 
X-CRM114-Status: GOOD (  11.62  )
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
properties.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/boot/dts/stih410-b2260.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/stih410-b2260.dts b/arch/arm/boot/dts/stih410-b2260.dts
index 1df2c37eb3a7..3dd7f4b18856 100644
--- a/arch/arm/boot/dts/stih410-b2260.dts
+++ b/arch/arm/boot/dts/stih410-b2260.dts
@@ -179,9 +179,6 @@
 			phy-handle = <&phy0>;
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
