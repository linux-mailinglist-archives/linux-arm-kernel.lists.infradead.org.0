Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A79BD424D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:07:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAINTAwmgf37i4GSWOgVS639kPSyKVovnKX2Elp0orM=; b=IJqxyiJKf1bVGK
	d8o5AM51mJt4ocWSfvUHBMxM5uH8pVKaCZO0yh9SiqOZCq24EatzgBYHFpCz8y7rUgc9eTIShkQb0
	/m5jSqKfhdJ+MIzLZRPMu7duEtx0iipTS5oQjTk4gX6On3sVAIW/HjZVmmep989LWTbw+jc3+HLGI
	rKEXG2l5K2kM4ap8mPs12iMHl1BZ3VxnGPgbxtjEkYzroHWVOHtESq2q+GEEQBcMpcqRCwTW+oXQn
	MvPTMprENvCvQ5Ynf/RVUuXvJnfIRO9P6xdjqTEkBOWUCDljrA0f1BqFi99jB4tfk/L5Tib26NO0c
	YUAdezJ7xv0XaxzzXGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvZg-0004ZA-Fv; Fri, 11 Oct 2019 14:07:20 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvYB-0003Me-UT
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:05:49 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BE149M032059; Fri, 11 Oct 2019 16:05:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qvG5tHTLBfgJy2cVG8araZL9QxN9PV13AmMFSSV98WA=;
 b=GnXa2m+aBPMioX4V8sEPYum1RCAMQk88Mb+waGPqZdSxLN5/PkjjA7Nz+IXVbftr5FYS
 f3mPuQh+Trn/n9eAZvM/QKBfiYHJnD96sAt66gR+cFqkY3sMTHMsaNXuakMn01kuiIdr
 dNAW/mgaPGoMM1lwFw9RbUGXCb2b1VvtWCvMicKG9eXQfu28LVfkvCk1235NA7tiunZD
 Hz2aoKfrQct6+5pzN88RZsNZ3SDrWZl5LZtcJAlx35FFO/nyKgSAf6XhWWGrDIVRX/0p
 WuHXXJKs7JmWHQZ8NP/hgp5x5K8ESNPolM94HrlDZ8KfQQ7Nr+E5ul7/FX5g8N2EGL3V 6A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vej2ptnwy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 16:05:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 60D43100038;
 Fri, 11 Oct 2019 16:05:39 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 565DB2AD70B;
 Fri, 11 Oct 2019 16:05:39 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 11 Oct 2019 16:05:38 +0200
From: Pascal Paillet <p.paillet@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/4] ARM: dts: stm32: change default minimal buck1 value on
 stm32mp157
Date: Fri, 11 Oct 2019 16:05:31 +0200
Message-ID: <20191011140533.32619-3-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011140533.32619-1-p.paillet@st.com>
References: <20191011140533.32619-1-p.paillet@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE3.st.com (10.75.127.12) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070548_301867_89EE81D9 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Minimal value is the value set during boot or before suspend.
We must ensure that the value is a functional value to boot.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 arch/arm/boot/dts/stm32mp157a-dk1.dts | 2 +-
 arch/arm/boot/dts/stm32mp157c-ed1.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-dk1.dts b/arch/arm/boot/dts/stm32mp157a-dk1.dts
index 26fb7c77092c..efeefb3d25b0 100644
--- a/arch/arm/boot/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/boot/dts/stm32mp157a-dk1.dts
@@ -250,7 +250,7 @@
 
 			vddcore: buck1 {
 				regulator-name = "vddcore";
-				regulator-min-microvolt = <800000>;
+				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
diff --git a/arch/arm/boot/dts/stm32mp157c-ed1.dts b/arch/arm/boot/dts/stm32mp157c-ed1.dts
index 1dbcc580e43c..15afa8f1a36f 100644
--- a/arch/arm/boot/dts/stm32mp157c-ed1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ed1.dts
@@ -127,7 +127,7 @@
 
 			vddcore: buck1 {
 				regulator-name = "vddcore";
-				regulator-min-microvolt = <800000>;
+				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-always-on;
 				regulator-initial-mode = <0>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
