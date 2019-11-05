Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1430BEFD92
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QomQmNZpkOi38ZhEMhqKjkFT+bJqxAKxKE9Xvpr4+E=; b=jVUodPInWdilml
	3PtJO1UKrPqnpw6wH2AYn7Mdn1ymJMEUAm6ZRkDirLilgCCNHdSrFiQ3DGAzKzIeqTtlWJz17TCOd
	zKgCry9BBdCXVWqEzTDcC3cQdeGy1dnsZFiXsSN86SWa4gT2kPN1vZtM/Uyc50hqD3irvMu6vY9jK
	TLkNE7mB6tJ6ZElaEh9GzoxJwLphpsdW3YCA72BPawgQHDVPzu1J6stkQ24+8G/sVotOxf+PYo+c4
	4DGG+HbK+3bBaF2r3AjReyTLGLmKmo9tUWKm+XyF9E3tR3r3BMqRlgmAEb1KoENBb98WyXOyfZYlM
	1TZ8H898KaCDClGlJ4BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyDh-0003dV-Ci; Tue, 05 Nov 2019 12:46:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyD3-0003AD-Jw
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:45:23 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5ChuiK023811; Tue, 5 Nov 2019 13:45:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=PasrWJUoa3UFwSs+GtbCxK+KUm1QgPk+g2vbUrQXP80=;
 b=YmSOOlQgXFyPvF10HuYcw21MoMJPmBpi7+ifbXxdu+Fy88NYmpgO2ZzpfXBedO28HiQY
 K0/KOmJp9doegzpumZWrVQFHqeBLIk08/ZNuHK9pJqhdm9wm4pobEyd+Aa2JQj94FXf0
 cj2g+1lMmd9pAV9P0Ul8mAma7aVeKSfgfa4ZFZnwbOSYCKUpkwLSVR/EkEQQ59t+dFsw
 42NhL7zxwavngeNIz7j/vcgyISfGXxlvjial9wUhltwTQ5DwX1Aewq08xHD1uyHFyYHL
 FS7MtPPeyS1PUqnT+Q2WctBQO6pOn5cdOGQUfZPZvX1TXpyih5uzn7xlNfZP/g1g9i9s hQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w11jn7j8s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 13:45:14 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7E12C10002A;
 Tue,  5 Nov 2019 13:45:13 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6E57A2B97D9;
 Tue,  5 Nov 2019 13:45:13 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019
 13:45:13 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019 13:45:12
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH V2 net-next 4/4] ARM: dts: stm32: Enable gating of the MAC TX
 clock during TX low-power mode on stm32mp157c
Date: Tue, 5 Nov 2019 13:45:05 +0100
Message-ID: <20191105124505.4738-5-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105124505.4738-1-christophe.roullier@st.com>
References: <20191105124505.4738-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_044521_947193_ECBFCAFB 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
