Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F601EF32C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1KbvIwpmT7kqHQ6+gLvi/1bm9Fji6Z9dSw+ovpN/tuY=; b=V1Ar0595uVwVoF
	NTC4NJmFRRAK8W/Ji/M3PCLyieC/+Ai/oWz1qyzQbwU+Nvmhf1ptZ5W7rdKtvEFaD/1u4J3E4MCFQ
	F/uCdBPH+F42bJ4Lr0mohujmiE/VhVD+S9nFu2ga4LW8OJH1XvwnuvR+Jim3MS9OShKYRyHGCXRp6
	9EIuZl/nB33shsXMcdD69ir/o07Yi8ZkhXxCI8zOKAorLQ1TuXcMIN9jAiO5h1HVw3C8LkljiEDqE
	hHu6XJ3RDF9oho4Fx3/4EMye6/WncwUpoRNtYbLwDB1WMy2IXwQ3KOaRHNQykOzn2X6cbDFge7fAF
	u93FhJa3wjDCYjEz49Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7o9-0003p2-RG; Fri, 05 Jun 2020 08:34:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7nl-0003eh-51
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:34:12 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0558WZDe029739; Fri, 5 Jun 2020 10:33:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=N34mf34zyNH9z+LguQ97xJdxyRAZPkEJBPLArQ3FE8Y=;
 b=ffT9jAG9sz9w3RTPQOMBMJyZbOlubEeufw8LbrMAnJ5vJaAuJOlvdx/JtIxBgAnSMaC/
 7huB9zhrmhe6gZHQQCuaBk3OlXibba5KtGWHE9cqS0JVfEmEUUqXM0F4xFVj8qGWGRQG
 O04XeLP/wajHH2+KW7VSPRb8emz/DyeI6bXxFc6sT9EUxDngXcDs2cs4ioVetA6U7FIq
 L4Rk9B02UPDYy5aoSAqflFSuRl6tjmeEr652yaDTjxsd296oQtnj9UEc8bobUlKrYYln
 /jz/aSKyQAzi9eiT4n0GuMEhSnUO+ZueD9YtntUTgftw/UPE44V+g+IvHqQicKh6Zn4y 5w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31fasma4f3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 10:33:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2DA55100038;
 Fri,  5 Jun 2020 10:33:51 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1E3F92B21C1;
 Fri,  5 Jun 2020 10:33:51 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jun 2020 10:33:50
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linus.walleij@linaro.org>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/5] STM32 ETZPC bus controller
Date: Fri, 5 Jun 2020 10:33:43 +0200
Message-ID: <20200605083348.13880-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-05_01:2020-06-04,
 2020-06-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_013409_524934_DA00FC2E 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, tomase@xilinx.com,
 linux-kernel@vger.kernel.org, stefano.stabellini@xilinx.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
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

version 4:
- use bus API

version 3:
- add description in firewall consumer bindings
- add Linus reviewed-by tag

version 2:
- fix unit name into st,stm32-etzpc.yaml example and DT


Benjamin Gaignard (5):
  dt-bindings: bus: Add firewall bindings
  bus: stm32: Introduce firewall controller helpers
  dt-bindings: bus: Add STM32 ETZPC firewall controller
  bus: stm32: Add stm32 ETZPC firewall bus controller
  ARM: dts: stm32: Use ETZPC firewall bus

 .../bindings/bus/stm32/firewall-consumer.yaml      |  36 +++
 .../bindings/bus/stm32/firewall-provider.yaml      |  18 ++
 .../bindings/bus/stm32/st,stm32-etzpc.yaml         |  46 ++++
 arch/arm/boot/dts/stm32mp151.dtsi                  |   7 +-
 drivers/bus/Kconfig                                |   2 +
 drivers/bus/Makefile                               |   2 +
 drivers/bus/stm32/Kconfig                          |  11 +
 drivers/bus/stm32/Makefile                         |   2 +
 drivers/bus/stm32/firewall.c                       | 251 +++++++++++++++++++++
 drivers/bus/stm32/firewall.h                       |  66 ++++++
 drivers/bus/stm32/stm32-etzpc.c                    | 163 +++++++++++++
 include/dt-bindings/bus/stm32/stm32-etzpc.h        |  90 ++++++++
 12 files changed, 692 insertions(+), 2 deletions(-)
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
