Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BD23C0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7KYhRT+Ben6HvG01pyaHXikS9xZiJ4Z0wS6ppHZkJ4g=; b=tk915svRWl9gNe
	kYvQZEwEIDCbB48qPV05c5+ZZ5GbRTGi8FxBOQML6wYEoW0CC9UGFmR0wzEA5t2uOLKi66pdhf0Wk
	gHhtGgDbJkGtnAmgXmqRpSv0b2Mhq2yWnZXyGZ1jcFJC1trZcgV3T25afU18kII8jFdUlfRhLVeDr
	wHVnZqC5X6h82OE+wOEZmtqtnXRV+7mBRnZAYcJGisP7Dgs7IqTyueEpB+2WOQSeomhh0KNUGT8oQ
	siEQ11K0Qt75TS64vIqLHwGRLDVPGaOUezX4NYpaMQE1UggAgZIFz7VduQ7LLs2zMWtl7OkscXB0C
	ZBamQiaoOGbCP7wgotBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkCi-0007yf-R0; Mon, 20 May 2019 15:27:56 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkCS-0007rb-9n
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:27:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4KFM4a9003544; Mon, 20 May 2019 17:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=U2Xk/tSGjSdT7ACCOz9neNN8wNEdQxVmj3R4DrYe6zY=;
 b=q4IlvcAzVtwOzwPjvWbTHC37IRm3pJs47Hz65n3iAeuDTMalPwfXNikzCODzQbsmemcg
 F+oK4TNEe1i0vQ8r5w2xZrufz+KxTmWpSnkwHgawMW020IbQ2+1JqZOSGYHip4QJvZam
 5Ghe9tqpEzhlAjfF23tgBZbhD/NbBRXY+I28pU9ZhU2QC7Cbc0HaKOn1sd3VqniLjw0D
 olGetIoUcWKZzhv/u6P0YdmcLHqWgdc/zZiz0DTv+tY1r4RQVfe7/Uiuv1LQ+yDCcPnh
 jw51izDvusGXOztwtC227PQmosTJa/aD7xJA8DRpcDEW1kz5ceMRk2aPRgRyW8SkbwAV EA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj773vj63-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 20 May 2019 17:27:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A439034;
 Mon, 20 May 2019 15:27:18 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node2.st.com [10.75.127.14])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 73CBA2BAD;
 Mon, 20 May 2019 15:27:18 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG5NODE2.st.com
 (10.75.127.14) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 May
 2019 17:27:18 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Mon, 20 May 2019 17:27:17 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "arnd@arndb.de" <arnd@arndb.de>
Subject: [PATCH v2 4/5] ARM: configs: enable STM32_DDR_PMU
Thread-Topic: [PATCH v2 4/5] ARM: configs: enable STM32_DDR_PMU
Thread-Index: AQHVDyCC+z9rDopJM0iiSqzcMwe2cA==
Date: Mon, 20 May 2019 15:27:17 +0000
Message-ID: <1558366019-24214-5-git-send-email-gerald.baeza@st.com>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
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
X-CRM114-CacheID: sfid-20190520_082740_619780_C5316CE4 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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

STM32_DDR_PMU enables the perf driver that
controls the DDR Performance Monitor (DDRPERFM)

Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f2..059b1b9 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -1009,6 +1009,7 @@ CONFIG_PHY_DM816X_USB=m
 CONFIG_OMAP_USB2=y
 CONFIG_TI_PIPE3=y
 CONFIG_TWL4030_USB=m
+CONFIG_STM32_DDR_PMU=m
 CONFIG_MESON_MX_EFUSE=m
 CONFIG_ROCKCHIP_EFUSE=m
 CONFIG_NVMEM_IMX_OCOTP=y
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
