Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D827BB8A9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 07:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glMg34zJm+XFu//os+7/it3tvjwqv3wuLrG1BGsQrMk=; b=ScKDdbkfEdYA02
	x9V+0j/GUVAAWciCV6vu++UCOn7LZSquhQJoEVjo5Dt9pZowu5NWBLYZ9Dxv9U6v3NNdhS1XYYcxP
	pAYp23iZj6aOV0Mb7hjRhmVqbCtMYvwFYJ53GudoLSXmAPT5OaLwUZh3ZKO3lIxt4T4JauXxUgrKz
	8wWlesp+AbWpEQMR84dGQZpATtz/Ujhj1WSYNt3VVcNvZYDSoRCbJbDsEK3pkdk+Xs0cIt1KDGNmN
	BiWWKIOVK9LcxzBHBO10JObf4h/8GE3cF+PCnbRCLSZv4cMEri9v++91lQYgNxpxUY8/fC6WpJBOm
	eB0TNtLPL4jfda3zRqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBBfK-0004Kn-0x; Fri, 20 Sep 2019 05:41:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBBdA-0001uQ-5d
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 05:38:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8K5aJoc007207; Fri, 20 Sep 2019 07:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=BWtgK3NFnWL1A36YqZ+NaVoBaVBLHgczlLwmNfp2gmo=;
 b=QXog/2upFv1Jsl9975ihNyWSRoqsju18WPP9vxe6hPXhxN7+DveoKViquo5SkpQvsuXB
 5YDZT7laVk98q7arkkvXvcwd3r72i6Om468XL/uJ070Z3SF0G11gnPxqBQ0oFVXv10oO
 55Bb3c+pEDZcGy81OFY7rvZ9NnUFgb7oHvOGiOk77aMGJ6/mph7p7IBoeFYmHKkibxqs
 6JQJOiY935e0zphzftK4cv59nLTRReX6/Mk1/MufjU4c2qWXWlBmGu5ThoLVMPLjYFFq
 uN1l4KZBxiOLbXuybl1sgc85Pwh8fEa1fWARhx3t4QiKMDrEexy49Ha8fQiAM1T2+vSs 8g== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx07-00178001.pphosted.com with ESMTP id 2v3va2gk48-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 20 Sep 2019 07:38:44 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C468B24;
 Fri, 20 Sep 2019 05:38:38 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 019682209C4;
 Fri, 20 Sep 2019 07:38:38 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep
 2019 07:38:37 +0200
Received: from localhost (10.201.22.222) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 20 Sep 2019 07:38:37
 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 3/5] ARM: dts: stm32: remove syscfg clock on stm32mp157c
 ethernet
Date: Fri, 20 Sep 2019 07:38:15 +0200
Message-ID: <20190920053817.13754-4-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920053817.13754-1-christophe.roullier@st.com>
References: <20190920053817.13754-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-20_01:2019-09-19,2019-09-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_223856_508228_26C8C590 
X-CRM114-Status: GOOD (  12.77  )
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

Syscfg is now activated automatically when syscfg registers are used

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 0c4e6ebc3529..f51d6222a0e8 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1285,13 +1285,11 @@
 			clock-names = "stmmaceth",
 				      "mac-clk-tx",
 				      "mac-clk-rx",
-				      "ethstp",
-				      "syscfg-clk";
+				      "ethstp";
 			clocks = <&rcc ETHMAC>,
 				 <&rcc ETHTX>,
 				 <&rcc ETHRX>,
-				 <&rcc ETHSTP>,
-				 <&rcc SYSCFG>;
+				 <&rcc ETHSTP>;
 			st,syscon = <&syscfg 0x4>;
 			snps,mixed-burst;
 			snps,pbl = <2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
