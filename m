Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161349EBF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3LuV+OxckxQkBgvMNNuakk7C7qZRK/ucQWeed7r2KQ=; b=aP2DIjjG/T9NMg
	WIAcDCl5Zp2qPUmnFvg5Em9Nao7TJ0G2D/MIYaV4UxdK3wVsgCDQ01fKUWODOPs7U5ZmcF5d9prgU
	pWoVMHZZaWzNb4OXKd3zH5AScTFozz0gQyoMTJULamWGhB9OrLF4CtvfPgX3rcNJFh78l69MSkfso
	ckD2iR6yF4M07gvUXI7iKDIagiI6uzzYkv/hdGcI6IHy7s24slgTGKwbrP49cB/ppgq08yTZTcT14
	SfptEPhUcuZRhzuQMWlAVwRxLi+kwicvKraiC07QNYbUnXJMoHoarekPKR2N/Oaj6HbisRT00dl2H
	VLAFldHo+WDHSEXOdxcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2d5f-0007YO-G6; Tue, 27 Aug 2019 15:08:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d5V-0007Wn-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:08:51 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7RF27Ps026516; Tue, 27 Aug 2019 17:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=WCVwMfXR8g1j5Zrd8gSemrcYNLfQjqC+GHfOy9t5zVo=;
 b=v84wXD4zkDFkoWgr/paZtKm5VOcO5Nrnzm7i0EE2WfaYqJa3fi7e2mIQ4iIz+sLvtCvr
 5/ewb5Q4At/B/iv1d+9B1wSTKn3U39s/W1ipI9+0A+tIJ/6Q+NZLvC1iDmrf5Qvi6MuO
 fgD7nXic52Sre8I0aymQ/tj8WU7dkiBBRymnEWeqThDHfCXw5rvfKTDCJykbj5pdNGyM
 NRjeE8FlDpMjzCLNMbYWjDVB0sXIlVhdr5nIMdOP1oyq7/py2u304A9hR0RibjYzeL1G
 iZZ6eMbS/XXEy/WayuibsrKp/Utelpdr+pITnYWg1YY/gFVDrzMrJrqyH35TQccFqP7C gQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ujv4kt4as-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 27 Aug 2019 17:08:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id CB53B52;
 Tue, 27 Aug 2019 15:08:20 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7AFAE2B6ABC;
 Tue, 27 Aug 2019 17:08:20 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 27 Aug
 2019 17:08:20 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Tue, 27 Aug 2019 17:08:19 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>, "arnd@arndb.de" <arnd@arndb.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>
Subject: [PATCH v3 2/5] dt-bindings: perf: stm32: ddrperfm support
Thread-Topic: [PATCH v3 2/5] dt-bindings: perf: stm32: ddrperfm support
Thread-Index: AQHVXOlCMu3qbdWcXEe5CqPZR/zfNQ==
Date: Tue, 27 Aug 2019 15:08:19 +0000
Message-ID: <1566918464-23927-3-git-send-email-gerald.baeza@st.com>
References: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1566918464-23927-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-27_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_080849_967393_824F31FB 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
Cc: Gerald BAEZA <gerald.baeza@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.

This documentation indicates how to enable stm32-ddr-pmu driver on
DDRPERFM peripheral, via the device tree.

Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
---
 Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt

diff --git a/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt b/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
new file mode 100644
index 0000000..87ab12e
--- /dev/null
+++ b/Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
@@ -0,0 +1,16 @@
+* STM32 DDR Performance Monitor (DDRPERFM)
+
+Required properties:
+- compatible: must be "st,stm32-ddr-pmu".
+- reg: physical address and length of the registers set.
+- clocks: phandle and specifier for DDRPERFM input clock
+- resets: phandle and specifier for DDRPERFM reset
+
+Example:
+	ddrperfm: perf@5a007000 {
+		compatible = "st,stm32-ddr-pmu";
+		reg = <0x5a007000 0x400>;
+		clocks = <&rcc DDRPERFM>;
+		resets = <&rcc DDRPERFM_R>;
+	};
+
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
