Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C30312424D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 09:57:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b3G1u2E3E1TaxubwMD9KbYKly+/Hld2tLyYr47EFna8=; b=t9Q6c31B285ZrT
	FZs6ZanbTZzDn8T0+AvIupmQ1VKjngAWw8oo6SaHp7YwiUXMFgfwbEKNKLJ7aenm8K+Q+AzQi2Lu9
	VlMTxit+1YrxKJzpEJ0WoU+/NXeLAOLsBxGFeR8HrYR5qLtpfVGiLEDbPn9sckyBuMBZBS+u61rLM
	rws090Vjs4FpCoEf9TmawGK0UEMMHBYUSsizGC6dWPDb9S9fkmCn8XmsZCtZa7Q9p70b5yxNab+nn
	SotBvNICr/OnZku7Tupp+VjwH38BuPyn//yO4k4JZD6zHf6ugKMHhv7FE/F+L469gwEbTVjHbVphE
	toUY1sutZve/oIn8SIhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihV9J-0005pv-Jr; Wed, 18 Dec 2019 08:57:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihV9C-0005pa-Bf
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 08:57:35 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBI8sRD0008071; Wed, 18 Dec 2019 09:57:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=xY69+K3CDt8WIn1tRsSBo05iiqi+wQiVGkvAfv6jSUA=;
 b=xCM86XwVU/qOBfZeW2/Wv3PbksC+Ts74s/aZM6VvyknPr4fHVNQoRuG3nO1VFTEO2vG7
 sjZjDMLG5JbW0EKUImtlgs0uN6o7TSUUnkbbZd/b6kDODcqUAdu3N4gL9+zM8CgpSfwQ
 J0K0f3DBANleVqZcEAHKVVaK7uZ9zmRSS1sl/IgzzLf7GEJf6ENDhQI8jSOCZOEwsYJ2
 1y4LKjyZtCdzbv5OSqq0jknVaWV3/MQoknxXMj47HcGFuNsy2ILp3WDm6CX0VwRGrlWZ
 Mmgd3XwbNBM9j9F8mEukjU68/nxWYSqi1xzry19qyYooREdo2NT5RJ6774APcOi2/a1D Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1kam2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 09:57:25 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0CF3D10003B;
 Wed, 18 Dec 2019 09:57:19 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3B2E9220826;
 Wed, 18 Dec 2019 09:57:19 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 18 Dec 2019 09:57:18
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] ARM: dts: stm32: update mlahb node according to the bindings
Date: Wed, 18 Dec 2019 09:57:10 +0100
Message-ID: <20191218085710.2142-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_02:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_005734_772407_53F27326 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: devicetree@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update of the mlahb node according to to DT bindings using json-schema

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index ed8b258256d7..be04eab7f139 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1513,10 +1513,11 @@
 		};
 	};
 
-	mlahb {
-		compatible = "simple-bus";
+	mlahb: ahb {
+		compatible = "st,mlahb", "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
+		ranges;
 		dma-ranges = <0x00000000 0x38000000 0x10000>,
 			     <0x10000000 0x10000000 0x60000>,
 			     <0x30000000 0x30000000 0x60000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
