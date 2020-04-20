Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE341B0D3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zaCp0SSFrr7xJ7C8QHxWY/0efLwMaRHyS2RWE8j9/yo=; b=axI8KeGcHv36fy
	QD5PCjPDRRUOyafdSzNoKGWOKlUHpO66HrKx9SA12IWn+c8s45LtrfveKYsXspHbLMV1hZDUr6pj5
	RIffs1+Uta+7I3DFgR9Ugf6W1noCyGhyp+/Dx57J+F7QeyYLi4pUzn1xhS3amA9XTiyGMGq7HrQYf
	eqoXnO645GBQxIWvKKNmK5ns2OEN9UbmiTSWL5yDsdycPnKEhdIaHiuxUEkvA1hdywxUsEcljeHp9
	d8VUmji9qiGm1KIooied3OLsqEDm8PKHUlNg6SaasbsirN0n0uh+mAaQd9eNgpesLnVOefb2y/Jjr
	ijaYvGBhNQMDwxfm0rXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWmh-0003pA-I8; Mon, 20 Apr 2020 13:48:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWmU-0003nd-IY
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:48:16 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KDgstO005039; Mon, 20 Apr 2020 15:48:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=newRPJ2KK45rNiffU6kVcqsdXEu/KH0QagJjvhUP/K0=;
 b=XPqRoJjKjDGfeUkdNw+k0fkpiD1WAoNG+4Go2mWVfQak6iXXhpphKOBdEZnrBDOghMd1
 teAVobmzETK6a5fKzeWijLz0j+VlaNH+jjGGzIgVsJj+6lmjCVModMSqWzHteuf/a1LA
 CK46XWPeHPEZo/EDDHEuyCjvVNkkNJDoCHL0ob2Z45L0CXMBxF8+mYitNoNYnJQGyduo
 dy1a5pDDvr4RWGOsYjA5+5ciFni9uTtkVbezpBTvbc0HZZFCA7xRcAc6z24alNWlu++f
 Q6Ol5I5aH0CSsjqZh8aVQhxGKUkcaPiqZkIQr9hVXO9uoyuxtzMFQGjJN3H2U5jgiPon /g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fqaw2hyw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 15:48:04 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C1DC710002A;
 Mon, 20 Apr 2020 15:48:03 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B08342B3E2D;
 Mon, 20 Apr 2020 15:48:03 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 15:48:02
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH 0/5] STM32 ETZPC bus controller
Date: Mon, 20 Apr 2020 15:47:55 +0200
Message-ID: <20200420134800.31604-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_04:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_064815_080928_642F540D 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STM32 Extended TrustZone Protection controller act like a firewall on the
platform bus. Depending of its configuration devices could be accessible
by the TrustZone, the co-processor or the non-secure world. ETZPC
configuration could evolve at runtime for example to switch a device from
non-secure world to co-processor.

The series introduce 'firewall' helpers to handle the new devices-tree
properties. These properties are not dedicated to ETZPC and will be reused
for STM32 next generation of bus controller.

Benjamin Gaignard (5):
  dt-bindings: bus: Add firewall bindings
  bus: stm32: Introduce firewall controller helpers
  dt-bindings: bus: Add STM32 ETZPC firewall controller
  bus: stm32: Add stm32 ETZPC firewall bus controller
  ARM: dts: stm32: Use ETZPC firewall bus

 .../bindings/bus/stm32/firewall-consumer.yaml      |  25 ++
 .../bindings/bus/stm32/firewall-provider.yaml      |  18 ++
 .../bindings/bus/stm32/st,stm32-etzpc.yaml         |  46 ++++
 arch/arm/boot/dts/stm32mp151.dtsi                  |   7 +-
 drivers/bus/Kconfig                                |   2 +
 drivers/bus/Makefile                               |   2 +
 drivers/bus/stm32/Kconfig                          |  11 +
 drivers/bus/stm32/Makefile                         |   2 +
 drivers/bus/stm32/firewall.c                       | 266 +++++++++++++++++++++
 drivers/bus/stm32/firewall.h                       |  75 ++++++
 drivers/bus/stm32/stm32-etzpc.c                    | 160 +++++++++++++
 include/dt-bindings/bus/stm32/stm32-etzpc.h        |  90 +++++++
 12 files changed, 702 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/st,stm32-etzpc.yaml
 create mode 100644 drivers/bus/stm32/Kconfig
 create mode 100644 drivers/bus/stm32/Makefile
 create mode 100644 drivers/bus/stm32/firewall.c
 create mode 100644 drivers/bus/stm32/firewall.h
 create mode 100644 drivers/bus/stm32/stm32-etzpc.c
 create mode 100644 include/dt-bindings/bus/stm32/stm32-etzpc.h

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
