Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34DA9E7B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qYHwtlNKjWR9uTO0pCy6CkMDZdnjf0rj+dgsBWPZdgI=; b=cBFw8B066oV7Lf
	o8pmn3T3Dgr6moEtigkohLSUNp24VN/8aDbCAHhLkxX2XI14pzLlMPafT4W1elDzpGKMIevKZoAvw
	6hOkLUCnyj5IVqMHEWmAoP4SflvNMgfs3yIqWZ+/GnpBUxNJMYa68emJV23d+uk2v4C3EKa3E7ZKY
	c7Gj1yCpdXt1EYWq1dS5TZ3idhgk3FbhKDLEhbcT8/fa6v0+MrqpEqvqk+THEkm+vsYODUbNiKdIy
	sOHvZfyC6eO0MGUiaQQNbnJmxjm7Dmappp2udO0+XFCgHXfTRacVOEJmm56SEcx02B7N37VorUEfM
	WBRWt3D7nQBwUuBCMf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aS6-0004iz-Vs; Tue, 27 Aug 2019 12:19:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aRr-0004iZ-Ns
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:19:45 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7RC6odm017691; Tue, 27 Aug 2019 14:19:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=STMicroelectronics;
 bh=jmXRhIE8q+Sed7f9WiZAUW4GbJ4tUfk7sqSvhf1B3xw=;
 b=tWSbMhUxOcUa7IXi/+0gVCq61TsIBEaiL01X4EURsI/nyBZg39ganAiugp279ZTR6Wp1
 9B999Prv5z3C6LXligMToI4Qp1j/zzFcvfJOH/0ZbQ72Qt1rCydaqAjlNBLgb9agrZoH
 T6VfkLZw/ywI6PST2MAagFbtGgQRcAc1UBe+jQWPIUoORXRoARBuy/ICtcgkF21kTc4x
 1uWHEXHNX6pi5HobGjJvb+wxk87YbTg9O6zr8CaiD/thxQw7GMjxpINQM6rKWnhLAYxt
 UAXzlK8Cc0sC5VeJUPnGqSB1kZFkYH5XIjU/54tdi7m7QSiQ+EvjiM6NviK7tRXJdBtE iQ== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ujv4ksbxh-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 27 Aug 2019 14:19:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 8E95353;
 Tue, 27 Aug 2019 12:19:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node1.st.com [10.75.127.13])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 461EE2CA731;
 Tue, 27 Aug 2019 14:19:33 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG5NODE1.st.com
 (10.75.127.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 27 Aug
 2019 14:19:32 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Tue, 27 Aug 2019 14:19:32 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Topic: [PATCH] Documentation: add link to stm32mp157 docs
Thread-Index: AQHVXNGu+WgWi0gJwE+sfJwWkTflzQ==
Date: Tue, 27 Aug 2019 12:19:32 +0000
Message-ID: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-27_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_051944_232153_4E838007 
X-CRM114-Status: GOOD (  10.84  )
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

Link to the online stm32mp157 documentation added
in the overview.

Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
---
 Documentation/arm/stm32/stm32mp157-overview.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/arm/stm32/stm32mp157-overview.rst b/Documentation/arm/stm32/stm32mp157-overview.rst
index f62fdc8..8d5a476 100644
--- a/Documentation/arm/stm32/stm32mp157-overview.rst
+++ b/Documentation/arm/stm32/stm32mp157-overview.rst
@@ -14,6 +14,12 @@ It features:
 - Standard connectivity, widely inherited from the STM32 MCU family
 - Comprehensive security support
 
+Resources
+---------
+
+Datasheet and reference manual are publicly available on ST website:
+.. _STM32MP157: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html
+
 :Authors:
 
 - Ludovic Barre <ludovic.barre@st.com>
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
