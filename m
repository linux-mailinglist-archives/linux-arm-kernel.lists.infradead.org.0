Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5EFF23C0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eq3s3HQfILwLxpyEuIW1MEpvYefYtROFld5aNswi0JA=; b=io62E1Pps9FKSj
	Tt9OJxwaZXsIGxkXsnQtUuuNejDm5wI27zzlP6lbKJBLzCHfG5EfjfhJCOveIfUrPe8SOpmAo1G5u
	Ew/h9mSOwF/c326PfQb+MnjZnWPdJ2bvtwsIkDNSx7+F+1hQYr6TGfjx1HN5a9fUMTO3hMXdd1VcL
	oLmjo8IpS8LIMypOaZ6oES2SlaSMoSb+UnrjRBESbK7w0akEsXESZYX59n79HcCQ2xaDMPVcZWfgh
	pWuhX6xEbBxk/wCg39t3yv7FmjMhlNPDiAgXc4ze4JKaxM0UJxQmALJKyJZVi5psz2fNRiQ6wIsRY
	P1MyFyqrGbcJlRCk5O8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkD0-0008Ol-Ie; Mon, 20 May 2019 15:28:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkCS-0007rc-M7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:27:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4KFLead012608; Mon, 20 May 2019 17:27:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=STMicroelectronics;
 bh=g7uJcx07z3bWTIfepNMx6DxFWWSkzUQXRKhfA3a47Tg=;
 b=e7mQXsyF8vdXHzdtx+52HC8jYF7qyRlw4X0qOBaAESvHt3Ip+3aZ4o6/vHozSjFONiig
 NrqbVP1P/1cyyV73AkfgsiZKzboUTCelLytXlY004FdYABQ6fZw8TaunXLRPxcy0VxBV
 Ffe1ixxaBOaAjJFVsaxl3bncXihdMpAQU1Y2I02JEBVqcS7Rdx8lXxqsubiNx7gwtUFn
 Xc12mkPdLT9Scd43aV5XPFXMSr9IwrmNmuITQUmHFKiR4AYh5Fg9495Mg6c9hkcUW/SM
 Qi08taUsun2Ky+FqDp4+5mtWgSqHABgAc96SChYX7Hyp/I7W19FaAJlmy6+IHoWPWFml ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7ttv8tn-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 20 May 2019 17:27:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1860734;
 Mon, 20 May 2019 15:27:15 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AEEE12BAC;
 Mon, 20 May 2019 15:27:15 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 May
 2019 17:27:15 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Mon, 20 May 2019 17:27:15 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "arnd@arndb.de" <arnd@arndb.de>
Subject: [PATCH v2 0/5] stm32-ddr-pmu driver creation
Thread-Topic: [PATCH v2 0/5] stm32-ddr-pmu driver creation
Thread-Index: AQHVDyCA+bIWujGZrUGYoRHYm+G4Sg==
Date: Mon, 20 May 2019 15:27:15 +0000
Message-ID: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-20_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_082741_009520_3368A703 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Gerald BAEZA <gerald.baeza@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DDRPERFM is the DDR Performance Monitor embedded in STM32MP1 SOC.

This series adds support for the DDRPERFM via a new stm32-ddr-pmu driver,
registered into the perf framework.

This driver is inspired from arch/arm/mm/cache-l2x0-pmu.c

---
Changes from v1:
- add 'resets' description (bindings) and using (driver). Thanks Rob.
- rebase on 5.2-rc1 (that includes the ddrperfm clock control patch).

Gerald Baeza (5):
  Documentation: perf: stm32: ddrperfm support
  dt-bindings: perf: stm32: ddrperfm support
  perf: stm32: ddrperfm driver creation
  ARM: configs: enable STM32_DDR_PMU
  ARM: dts: stm32: add ddrperfm on stm32mp157c

 .../devicetree/bindings/perf/stm32-ddr-pmu.txt     |  20 +
 Documentation/perf/stm32-ddr-pmu.txt               |  41 ++
 arch/arm/boot/dts/stm32mp157c.dtsi                 |   9 +
 arch/arm/configs/multi_v7_defconfig                |   1 +
 drivers/perf/Kconfig                               |   6 +
 drivers/perf/Makefile                              |   1 +
 drivers/perf/stm32_ddr_pmu.c                       | 512 +++++++++++++++++++++
 7 files changed, 590 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/perf/stm32-ddr-pmu.txt
 create mode 100644 Documentation/perf/stm32-ddr-pmu.txt
 create mode 100644 drivers/perf/stm32_ddr_pmu.c

-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
