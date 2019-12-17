Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E089122784
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wtqB89AOu92cM7uBujLNpL+gPreoyrY7LSHO4xHmndc=; b=UOngYXbEpZIrT8
	jwLkZ4bgVCDpHtEG2qz5pgP56kpzXX4CQRCdLIS+GoH9CspZTanRiRZnq/UBMsyPGJlG1CBb4TVz0
	QQ3DhmUNlDG3G5gdN1ZqN5IzbQ9akYLaErrGkTVBIvs7hMnKD7OxUlmYC+OpATgNF5RQJOdd6tRtC
	XjbuTrBT24fbL/a4mwWUQnSa5cZoVD3WAZ2y9P+hy+DWE6EiOtoLlgp1AiU46UB8GRMW6LiCWLG8V
	GkdLbb7VILz0H8psDQGxpKDF7WjlofW4v3i7EICipDicilrnf94CvpPK3EuUnsvB4qWhUotsuXHcQ
	jMa4UGm4RAKUYfs3cV+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih94P-0000OI-64; Tue, 17 Dec 2019 09:23:09 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih93u-0000D2-EJ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:22:40 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH9HuQK001317; Tue, 17 Dec 2019 10:22:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=bIVPxQpH1y2Nz/DK2A/oJ0wAran2ozG4/+vhkdgb6pc=;
 b=N0Z/2exOg83ERHatB2ajspECSMyg4lICfAkuW7kJincP8rUKG6oDKa4yv8JPa10aSH4j
 2MHyWqJ9HJxmIYmzcYl/GI1iZsKyZAGDI0e3EMRRWCCwErX9LK0bXTF8xJrPv2+/f59x
 jkkjBRMw0fmNl1E0aLz3G0NEsCYiUN0dxzZWO4xdmn8LlR5ubi90gkGMMW5vVnrGHQsG
 aN1pqunAxZCApNVvEagOk2WazPNNPm70BicZ4tWftlYaKwwkUB35siZ9ffluvqyG83bn
 jytitTmP2CfyVc/6BJAshFwPIfiSoZZL4WkkY02p7wq+2i7TAFRt1Io0Wjp5B3t1of+v GQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvqgpnksy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 10:22:31 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 459E9100038;
 Tue, 17 Dec 2019 10:22:29 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2FE212A64E4;
 Tue, 17 Dec 2019 10:22:29 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 17 Dec 2019 10:22:28
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 0/6] Convert STM32 dma to json-schema
Date: Tue, 17 Dec 2019 10:21:55 +0100
Message-ID: <20191217092201.20022-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012238_765306_614FF7FA 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series convert STM32 dma, mdma and dmamux bindings to json-schema.
Yaml bindings use dma-controller and dma-router schemas where nodes names
are verified which lead to fix stm32f746, stm32f743 and stm32mp157 device
tree files.

Benjamin Gaignard (6):
  dt-bindings: dma: Convert stm32 DMA bindings to json-schema
  dt-bindings: dma: Convert stm32 MDMA bindings to json-schema
  dt-bindings: dma: Convert stm32 DMAMUX bindings to json-schema
  ARM: dts: stm32: fix dma controller node name on stm32f746
  ARM: dts: stm32: fix dma controller node name on stm32f743
  ARM: dts: stm32: fix dma controller node name on stm32mp157c

 .../devicetree/bindings/dma/st,stm32-dma.yaml      | 102 ++++++++++++++++++++
 .../devicetree/bindings/dma/st,stm32-dmamux.yaml   |  52 ++++++++++
 .../devicetree/bindings/dma/st,stm32-mdma.yaml     | 105 +++++++++++++++++++++
 .../devicetree/bindings/dma/stm32-dma.txt          |  83 ----------------
 .../devicetree/bindings/dma/stm32-dmamux.txt       |  84 -----------------
 .../devicetree/bindings/dma/stm32-mdma.txt         |  94 ------------------
 arch/arm/boot/dts/stm32f746.dtsi                   |   4 +-
 arch/arm/boot/dts/stm32h743.dtsi                   |   6 +-
 arch/arm/boot/dts/stm32mp157c.dtsi                 |   6 +-
 9 files changed, 267 insertions(+), 269 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dma.yaml
 create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-dmamux.yaml
 create mode 100644 Documentation/devicetree/bindings/dma/st,stm32-mdma.yaml
 delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dma.txt
 delete mode 100644 Documentation/devicetree/bindings/dma/stm32-dmamux.txt
 delete mode 100644 Documentation/devicetree/bindings/dma/stm32-mdma.txt

-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
