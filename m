Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F7C1B5C5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 15:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZZB6665MPEJTBql/7j+1JkmIdyDmg3Pfk9uuIdLh0/4=; b=HsUqigL0r7YTwk
	Jwjnw5RyG7ed3VYkrVGW7YR7KJjw6pa5Sniw2dMTiIkYz1N+PW7nycZJXouyYGKDBkYKkQLhHf2mT
	PiO5LJDcnfLZsOuLgQQg8MIcyKqsV+QBM92R/sY0U48JMkBUWR/2u9keiTnLcuhAdMF4tP5Ojscl4
	yCs4C8QlLdTP1MXC6yGg777tgN9ALuphVq4GVWhBZP9XYt4I6tLqsZjoV74JDgf75WO/DxVoHYj60
	KKLZin2pgw2cjy0SV449/C1aP6rqlzrJQuxdy8/PkyNtxiGvD3yR9TzixYmLyt8uVyHGhC0sltGAo
	Uk0QvFEAwMRFktn/TNYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRblv-0000yk-Lz; Thu, 23 Apr 2020 13:20:07 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRblK-0000UA-MA
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 13:19:34 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03NDCX7d009209; Thu, 23 Apr 2020 15:19:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=bWGyr2OPFEYipJzOCA9+YhEVp9WsPMm5ikLMe52JeBI=;
 b=OcnclZ5z23GMDRx2jxDE77tYL+3KyB7ULU6zbJVk+ODxzl2RIpuYZxLSTwfQW72mP+Zs
 fGEnZ3gMmU6LNVLbfDdKbXaPnULH5gFLYzqFLoPACdGSkSmvEEkJ5bsisogv1B3lyO9B
 V9XGiCbX5M67WC4RLphKcy0RIcf3fUqzBTugugm4h4U2wDF6afHcrUixz0sauP4HjVS2
 Wast7SAT3yknAb338UrRaSck5keScWktkU7SfSsEi6xOocTDXuTNQisXuLplHIO+bgAD
 fqcTNJqFm899pTwkhYfFmDstax/ojn5j0dBmYc/aduLwoY9eGxnAa7toD/PAVcigc4Zo ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fregw0k5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Apr 2020 15:19:17 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 968E010002A;
 Thu, 23 Apr 2020 15:19:16 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 86B4020758D;
 Thu, 23 Apr 2020 15:19:16 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Apr 2020 15:19:15
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH v2 0/5] STM32 ETZPC bus controller
Date: Thu, 23 Apr 2020 15:19:08 +0200
Message-ID: <20200423131913.30786-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-23_10:2020-04-23,
 2020-04-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_061931_032374_6B9AAF4B 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

version 2:
- fix unit name into st,stm32-etzpc.yaml example and DT

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
