Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC7247D99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jX/mWIylA6FzllmWkmCQTc7EWa2KJccUEWwDb3DOEb8=; b=TXOTbimSNrpYXo
	L7qEtE/iaCIx3lZEwIiUv9on5lBOxIVwwWjYrhS4VzbAY0xqpj92u43DxcylLcJ92W6Ui3uSyHDAQ
	iqJbo7LRr5pr9Mc7x9TfjkCQeprfLxuLYElAYbEbw89dmixurT3+Z/VuF33lhwlHyZLj9ilZ6IeoO
	cu5d5X1xI/FpzdNdBYd0XKqk7UOA8iH1lsrrVkJi4JvAx9qmW6Jdr12AfKIveUX4FvZpvvRvBq3dr
	oLkLmZ1wsjPRcl8xFj1QtB5UcckWP0I4VLMsEHaOVDvwTpz2UoZ0vapdSFFZmw1eKaxbG7A/VsYNf
	OzEq11md0M0F7txwG7/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnM8-0005Qk-0Q; Mon, 17 Jun 2019 08:51:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnLg-0005JA-KE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:50:46 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5H8faGH018088; Mon, 17 Jun 2019 10:50:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=mKq6aXRt6yPdvv0WN1RsD2U79XJ8Gb1nUEC8uornMGc=;
 b=lXEL++QNAZxVCrBJMcQ3hfh4I5HKtmd5STDTD4YVF6nQjaTCtoEimMpUIUr9lyJhj9v0
 fEMxnPguKtPsD9ZLF6qf3K6Ct6/OkTIaYttCe3EgOljrxllyJoBeoN8517uSjrWWh7ty
 Ior/IDc/F4EM7Ni0o6/bw0kmUP9iE5nz+x0UWtQWIx4bgkkkRjE4YcTAbEY6tC317Xx+
 UWypLPYJZLEL7tVt5VEZVn/V/A0plkgXhZbRJgdUJ08bg/fL25kNA1AdVMMBfkg0yBN1
 D5SL7os/TCvcKZLzdy3zhXGVoGbaroguwZUa9Sr4gMGaPPD7PCdENpgCDZj9FOKOmxkW mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t4p519f5m-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 17 Jun 2019 10:50:33 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 737F538;
 Mon, 17 Jun 2019 08:50:32 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4133D246F;
 Mon, 17 Jun 2019 08:50:32 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 17 Jun
 2019 10:50:31 +0200
Received: from localhost (10.201.22.222) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 17 Jun 2019 10:50:31
 +0200
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH 1/1] ARM: dts: stm32: replace rgmii mode with rgmii-id on
 stm32mp15 boards
Date: Mon, 17 Jun 2019 10:50:18 +0200
Message-ID: <20190617085018.20352-2-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617085018.20352-1-christophe.roullier@st.com>
References: <20190617085018.20352-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_015045_011254_979410A1 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On disco and eval board, Tx and Rx delay are applied (pull-up of 4.7k
put on VDD) so which correspond to RGMII-ID mode with internal RX and TX
delays provided by the PHY, the MAC should not add the RX or TX delays
in this case

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 arch/arm/boot/dts/stm32mp157a-dk1.dts | 2 +-
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 098dbfb06b61..2c105740dfad 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -51,7 +51,7 @@
 	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
 	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
 	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	max-speed = <1000>;
 	phy-handle = <&phy0>;
 
diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index b6aca40b9b90..ab1393caf799 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -79,7 +79,7 @@
 	pinctrl-0 = <&ethernet0_rgmii_pins_a>;
 	pinctrl-1 = <&ethernet0_rgmii_pins_sleep_a>;
 	pinctrl-names = "default", "sleep";
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	max-speed = <1000>;
 	phy-handle = <&phy0>;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
