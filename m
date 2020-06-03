Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5555C1ED01D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:47:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7V5JwpizStS72zZVlCmxixS5OkeX3qptoJ9rQ9Py8fU=; b=rWTd2VCF7kwEk6
	eWtKlkQtym60720azCIsBCnsi/YzxfEw3AM35bWxPjNnlkvesQcm8/LkLVqFQm47vtvarBrtUcF7M
	EW2gpYl+XEQbaL3co2U3Xa9diNKqswrtfyd+xQzWa77zYyhrfx8G9xz/byf/OWapgScOrR2031CO8
	OhAemAdEeeh1E2fK4eFG3CctHfnHIOhbNPayoiTH7LMUR1QV6IkJ5lGjiggoIiz3Ad7jfA80gIJTW
	46luhVe0q5sGbp9iOzV3PdcB0a0dQNyy7bgzc0n3ua59jP9cXKJ4jP9mL7g4kJPaaNnb+SUvFHIfQ
	ZbE7yBSjK6Dfu7GLLrvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSnf-0008JC-G9; Wed, 03 Jun 2020 12:47:19 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSmf-0007YN-Kv
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:46:19 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 053CgFPm027817; Wed, 3 Jun 2020 14:46:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=UV2eXHMfLb4/QtK9KJPbsnZv2k9uIAuEYmQYk8262qk=;
 b=D5TL8kTZweT0eT45TouzWrsmNSNQYw3lM8tr3Fuq6Nxp5UERav2EH9VCq6tbL9ozf5Bl
 bKnOmGIUfMhCeg81kNu2gKBEMsTCX6YDQUYM8uD78GGI1ldssH5Vqw6AVdSziS8QuTWq
 FxUV5ngISBHNK4Wf1o/gJDDegfQ+voW+dJvtmO6BYCIaxX+uvjDXAobmrlgySn8C57vS
 PxdeOn0tyAjMqvza7xlCNPibyVTs/1v4XJUjf88PjNWgqCOH9FqyF64J7ygWhcZAV+Kn
 3OghT9vW7sPHKVKxgzMSsLqZ5CTiOhtLkHVlt07Bnwk8JuWUWcC7z/1gS7b+KolLLEah gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31bcy0mp7r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jun 2020 14:46:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23E3E100039;
 Wed,  3 Jun 2020 14:46:08 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1752F2CB379;
 Wed,  3 Jun 2020 14:46:08 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 3 Jun 2020 14:46:07
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <hugues.fruchet@st.com>, <mchehab@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>
Subject: [PATCH v2 3/3] ARM: dts: stm32: Set DCMI frequency requirement for
 stm32mp15x
Date: Wed, 3 Jun 2020 14:45:59 +0200
Message-ID: <20200603124559.22652-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200603124559.22652-1-benjamin.gaignard@st.com>
References: <20200603124559.22652-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-03_12:2020-06-02,
 2020-06-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_054617_969595_B71F722D 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 valentin.schneider@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure that CPUs will at least run at 650Mhz when streaming
sensor frames.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3ea05ba48215..f6d7bf4f8231 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1091,6 +1091,7 @@
 			clock-names = "mclk";
 			dmas = <&dmamux1 75 0x400 0x0d>;
 			dma-names = "tx";
+			st,stm32-dcmi-min-frequency = <650000>;
 			status = "disabled";
 		};
 
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
