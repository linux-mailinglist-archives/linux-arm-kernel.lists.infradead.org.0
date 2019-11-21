Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A491210569E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:12:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3VTToFPDGwwHM5OD6yIcIOywK41IJHoTcZkJn9XgIig=; b=unU5WEJe+Lk8ol
	8ET7xdYmGpcjXbYaIidIpFjHJ3ul4E0oR/9OYsvhrI38o+T1IbP6K73+LZIMntZDr9byoouUx3BEz
	lla759cTDsTUAs/5+mKqsJfMjzixWdsgxQ9TgTb2DQpyAJyOUgnzU2COZqFz7b0rQw7r6M+uCOnd/
	mHDaIWKxbURLH3bBtxmBC2BbXfCAuP6ENZSp5v2qCJ7SLg9CWMg9sEmPvVlqQOIX0rShFY8h2IeWD
	OFAQbXv8I2nt7utZOiy6pkqqs/nfvdGjuI6Ab3sliVoVvvA7CyFXhkiJ4wkXMoafHijnj0lBjW1dn
	x0fTm5k+AHPNp3AnJlZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXp4E-0006pl-Kr; Thu, 21 Nov 2019 16:12:26 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXp44-0006pE-Q5
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:12:18 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xALFq6jY032620; Thu, 21 Nov 2019 17:11:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=t+47w3ZxOzPvOfnpHUIZTNysGQGkRlS9if3BoXHEp/c=;
 b=p8vWYBuX6eITDAoXWYZA61KOdd4iq4NhRXTUYCVWt8N/AkTLVq2MPadHjY//4W2KPkvg
 X8Ujq4pLwkmnAvLUBF72d1DdE3rtw5cBZRko6ozJsdgDlJZ59qA5xul+X9FRCegno9ys
 D7csLi4X5StafcofndVVieUXGMLXtxYD81kBkH03ZMMMMG/QBe9OkgD0KCVqMTpphCFU
 Uzu09qezYWTeLM0lDTr4YnPqm1oxwul6shBVKztUAswwEln2HHDJ9B3Tu+NiJd1LH4i5
 Rj+6xtnZdfJTjnKSBcYm9EfJ8UOrCimrjbMEeQDEjARCdyDBI3rOn0Oz0OctGFNUtvIP MQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9ujc9ve-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 21 Nov 2019 17:11:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4C80910002A;
 Thu, 21 Nov 2019 17:11:53 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 152102C084E;
 Thu, 21 Nov 2019 17:11:53 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 21 Nov 2019 17:11:52
 +0100
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>,
 Russell King <linux@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 0/5] USB support on stm32mp157 boards
Date: Thu, 21 Nov 2019 17:11:52 +0100
Message-ID: <20191121161152.25541-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-21_03:2019-11-21,2019-11-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_081217_218095_2E0FAD0D 
X-CRM114-Status: GOOD (  13.79  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset adds support for USB (Host and OTG) on stm32mp157a-dk1.
USB OTG HS is forced in Peripheral mode.
This patchset also fixes USB on stm32mp157c-ev1: USB PHYS supplies were missing
(CONFIG_REGULATOR_STM32_PWR) and usbotg_hs node requires phy-names property to
get the phy.

Amelie Delaunay (5):
  ARM: multi_v7_defconfig: enable STM32 PWR regulator
  ARM: dts: stm32: enable USBPHYC on stm32mp157a-dk1
  ARM: dts: stm32: enable USB Host (USBH) EHCI controller on
    stm32mp157a-dk1
  ARM: dts: stm32: enable USB OTG HS on stm32mp157a-dk1
  ARM: dts: stm32: add phy-names to usbotg_hs on stm32mp157c-ev1

 arch/arm/boot/dts/stm32mp157a-dk1.dts | 28 +++++++++++++++++++++++++++
 arch/arm/boot/dts/stm32mp157c-ev1.dts |  1 +
 arch/arm/configs/multi_v7_defconfig   |  1 +
 3 files changed, 30 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
