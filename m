Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB585125F3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:36:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7w+WH+Xs5RBlhv5zIsf1uo1KHaaLjHWlGALTt9eG9Ns=; b=uWs3nc9hhewBvI
	JkEzYHHD/tOq1a1Ii8hXLtxSZkB+xnLy4qhZeAnSy7Qqpp8EZULUtvXZ0RlNKtAnGZ2cFqIxz1rzJ
	3BtdWEo2ZBL4rqxLufZsTNfpiu7evb0cY1nmM8Bm51qmqc0XD/TObtyg2KJ9qQwMHie9XLfOS2GIz
	WwOXyJRqAc46TW+7pxp1rlOfMsaIqbIt29ntYSH3rEwBpdSg2wD1eu1MyJ8wlPo/tK3gBzYByrcXL
	H+OedsIy49Lun/9mfHvsH9rccEMcTSd1Zxk1VAmaqJxdQCC37MF6vY6Y4puAoUM2vRKyNBqTC0XyR
	+i0ctg1YGne/j6qkrRsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtAQ-00063O-4T; Thu, 19 Dec 2019 10:36:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iht9x-0005sT-Mr
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:35:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJAWcHA023188; Thu, 19 Dec 2019 11:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=vChJ5etL9fvswVVKX5yEE7E0ExcPkC92Uak/3fYaeRY=;
 b=Lmf4l/51V/pXGjoOU2FOehmY7DTc2Bo1Fmto/fk10QI61Sdzl6EosapWEnJdL+kqR1l3
 bW+JkB+v0n4sBQOVH/tRC1VaQRyeuvMPBnIWoFW0sgricJt6Gtp7KNt643Ld475r7h7w
 uvteyurzvNVL3cr0Cx0eyA+2uRe2F9Ra6ds5OAQc2AO7XcgCCgJ7p8wSz01L5T05/3uK
 RLxgWL8k4OWziKro6wd4va7j8bm/2FfCUQ90Ywxu4M3WMnl1j6jEnCnC8NIQXcuEsecs
 TW9h7jVD7FeAWTmstp/lWrMPB06rBQr3h3IbHywZa+nET0dBJxSp7sPdP4HfScCXgtks mw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1s21d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 11:35:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 56DC4100049;
 Thu, 19 Dec 2019 11:35:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AD90D2B6A19;
 Thu, 19 Dec 2019 11:35:42 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 11:35:42
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <kgene@kernel.org>, <krzk@kernel.org>, <hminas@synopsys.com>
Subject: [PATCH v2 2/2] ARM: dts: exynos: Remove unneeded "snps,
 dwc2" from hsotg node
Date: Thu, 19 Dec 2019 11:35:36 +0100
Message-ID: <20191219103536.25485-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191219103536.25485-1-benjamin.gaignard@st.com>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_023558_102743_E393645A 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove "snps,dwc2" from hsotg@12480000 node compatible list because
"samsung,s3c6400-hsotg" should be enough.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/exynos3250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
index b016b0b68306..d4866269f4ee 100644
--- a/arch/arm/boot/dts/exynos3250.dtsi
+++ b/arch/arm/boot/dts/exynos3250.dtsi
@@ -362,7 +362,7 @@
 		};
 
 		hsotg: hsotg@12480000 {
-			compatible = "samsung,s3c6400-hsotg", "snps,dwc2";
+			compatible = "samsung,s3c6400-hsotg";
 			reg = <0x12480000 0x20000>;
 			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&cmu CLK_USBOTG>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
