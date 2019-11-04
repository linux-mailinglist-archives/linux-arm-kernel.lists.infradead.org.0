Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB961EE110
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QomQmNZpkOi38ZhEMhqKjkFT+bJqxAKxKE9Xvpr4+E=; b=Sctu+MiJAu4cO/
	LRPJlxZvvC1NKDhD/BC2hSw/BvuXFblw+Auzcsh3Bsr1pU0BXt/M8e+e688IiRalykWs3gelFqol3
	ObNZVlkka7TVqvqq5afuv/soY4OrApyGLKC7cgCD2twYCXUPo4gZgsDkB7/52gBZ5+yolrXw5QrLm
	iTPcrW1wj6wen85RKyvEDeMxiTdibQVQqn6dm2PrCRIIKcOdQaq2CaKrpwaqbBIowy+vUiM/DKSJO
	v4/AMSr3zzuoou0TZd02ZGppnrxyHnR/OkygAoEbrJL3kgmc5xFK5iBsTt1zg5e5Qf+PYyrMKtTTQ
	c3mIoOcC07IqEAPf3rqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcNS-0004ro-RH; Mon, 04 Nov 2019 13:26:38 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcMd-000453-Pq
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:25:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA4DNHxI017943; Mon, 4 Nov 2019 14:25:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=PasrWJUoa3UFwSs+GtbCxK+KUm1QgPk+g2vbUrQXP80=;
 b=escz3tFhfHuDlSHLH2Vm0iOtu9babUaVvcVFdMTFvSmhQlLsajW6VF4hBtssOkyKQ8WO
 5PcAQqWLH/QTPmsu7fMBK5vIVYBijUl9LMzi5WVjIsm9FJaoSro1Y+C0N2Sahcb8ZJrt
 RrYuJaioEiRAN9AkoXXywIsNb3RTcnQTb3fVqDbntrXrJLPCpP1P2v9mN3E0QmhxnNbr
 xkH/qpZhEO8sxmheY1Y24kcz0wZf/YLngg8Xl5TdjYeL3fZt3H5Cpyyrp3sEgciB3Cos
 P9H+zjJn/6FpOsNH+BXmMcRH6gY8YftxNsdvfYpoZ9PoWtVrM02nKZmI/keTxqRHR/M6 ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jn1v9p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 Nov 2019 14:25:41 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 051D510002A;
 Mon,  4 Nov 2019 14:25:41 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EA9672BFC79;
 Mon,  4 Nov 2019 14:25:40 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019
 14:25:40 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 4 Nov 2019 14:25:40
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH net-next 4/4] ARM: dts: stm32: Enable gating of the MAC TX
 clock during TX low-power mode on stm32mp157c
Date: Mon, 4 Nov 2019 14:25:33 +0100
Message-ID: <20191104132533.5153-5-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104132533.5153-1-christophe.roullier@st.com>
References: <20191104132533.5153-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-04_08:2019-11-04,2019-11-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_052548_126438_B32C2947 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When there is no activity on ethernet phy link, the ETH_GTX_CLK is cut

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index f13c2348d130..8df2986dd452 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1334,6 +1334,7 @@
 			st,syscon = <&syscfg 0x4>;
 			snps,mixed-burst;
 			snps,pbl = <2>;
+			snps,en-tx-lpi-clockgating;
 			snps,axi-config = <&stmmac_axi_config_0>;
 			snps,tso;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
