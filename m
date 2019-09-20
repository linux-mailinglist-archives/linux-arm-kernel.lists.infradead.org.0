Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9B1B8A88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xv8qbLnHvYm44q4f/LY/yNTHxE5dRP9uU5mKKDW2Wp4=; b=MoLGlVWMlgh+JH
	BgnTIsRU1lZTTA5BSmev9gZns1Rhw3LbROxzDMwNHveANnSpmdxjUTJvoKqJ92T0kfILFM8Zvpvnv
	9uvR/RPpNtyoVlM6O8hpg1vHcKYLwGQVbpqwb0S/WC+R66lIleEk01A2+kQvCkuSATdE/ldUAPI32
	DJRHHPGInb/Lxl5DJZC4LdlMt8Du1QuPBwW/zABaLWDvalzLZNPprCpcBraLobAEoBweuL9a2ZxCE
	te5YeiKU1MFvN3JswzNuRmNPT+J1RFXfJABhOPT9vRjrBWhhppiBwEc9/xINS7G7mMJLQJuHn+nW3
	J0yoX+eeCCafBDcO3E/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBdP-0001wJ-2Q; Fri, 20 Sep 2019 05:39:11 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBd9-0001uM-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:38:57 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8K5ZtCj010154; Fri, 20 Sep 2019 07:38:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=x/LNhVtfhccWnby7ce3HapzzopKDh8uTONbGR64CIfI=;
 b=byWPlN9k23fx4bMu8O6OfpGaDaCZxe32slTjjs5JoP2+1Fsx7/qBylP/Hu+D7wIT8qpj
 IY/2BS07hhtI9utLZ5PpioCr3yjVHT0RDYYpvHiGOE1pLdm7dU/sntkQsDuThbkWlLG1
 W3S4aX+D6FPPUgIb006J5cbUK9VSslRk2uzbMkjDL6Mt3G/Is6I9sQOHIFUUyCiSp+Ho
 CeeewL8VfP/OeBjarwg3IPXl3soCiO3GD/YwR2SrfFOSsptrM+u/nhZYS9DQ8D2NLGfG
 uzpOLXDGITZZKNuvoMk6NSDiQVBfDPJaTGQu1mETn1aVAYd7DUIVd4nsW2djmiyu8qkG qw== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v3va18qd9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 20 Sep 2019 07:38:43 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 3379B4C;
 Fri, 20 Sep 2019 05:38:40 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E09AA2209BE;
 Fri, 20 Sep 2019 07:38:39 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep
 2019 07:38:39 +0200
Received: from localhost (10.201.22.222) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep 2019 07:38:39
 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 5/5] ARM: dts: stm32: Enable gating of the MAC TX clock during
 TX low-power mode on stm32mp157c
Date: Fri, 20 Sep 2019 07:38:17 +0200
Message-ID: <20190920053817.13754-6-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-20_01:2019-09-19,2019-09-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_223856_276906_B0849BA8 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index f51d6222a0e8..d78dfc44a1fb 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1293,6 +1293,7 @@
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
