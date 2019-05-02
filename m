Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F326811503
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:10:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/hpZ7rc/Xtc5jf4ZtcQNisT+RWcOr37RgQw0+/TwCk=; b=BP7tGjcR6O6fBu
	kuQ00n/tu5fzmVLvEd2bkJfBuxLXHlhhpi7fkHyYpPfOM1Vnjmen940qRS9q0v0QxkQrLQmgbnkoe
	+D6IbbKyIkKnyhzoCHqloZtFnVcw2t66v+VewEhBrucd86a+YMFNG+HXSLqevCuRCHYC2UIghi231
	3PgTOCa4MFgoGXWYDUl1IxcqVdGOCQKv1xmGrCXKxN8e7+2gSV1OtZHcloEu2N6x/XH2ecTbvDnIO
	FQRq7yD1SVv8xNl2kloA8fgzdSk4urZhbLFEQlY7hEokPsF1O36RIm33pWMqYkD4pDOWS7Jt4qi9J
	kgrHdvf3jQ6fq0YBc8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6nq-0002ds-Ec; Thu, 02 May 2019 08:10:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6nR-0002RJ-Ad
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:10:33 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42862RU006167; Thu, 2 May 2019 10:10:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=R4ti5gteNcBki+KcCZxNtPlE39G37YfOCdhQ1hFnO/4=;
 b=eNxlwstRAn08phkcWqAvf2F8iKl3xDJ4Y6ZI1feZB7HPwNdaDWwHjMAEl8yeTeYUpd8F
 CGa44tuNVPHxgZ+znx0PIhUe5Qd3dVAxFnnqhTuFiApyCkjCY6RB7oc3H+dpovlyINFp
 Wzx3KkaRmwFg1LrewL98IKgwSWd6ABVRygSeZ50VA68/g/Yiu9hdRXorkcACQ0x7qa3D
 Ew2FNDonBa/kSg9tP+eLzYF1Yiz9GfFvjsj+NGmY1TCfm2yzKo8W38Zg0mMf3CvkiT0Y
 4dIBwsnezr0oZTy2M9PLgfWxqTTbIGWztwOmxJKTxbbEJcl6i+8vITrbAAvSwengrrV+ Hg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcq48t-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 10:10:16 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 216373F;
 Thu,  2 May 2019 08:10:14 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C3FCA12E0;
 Thu,  2 May 2019 08:10:13 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 10:10:13 +0200
Received: from localhost (10.129.4.86) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.361.1;
 Thu, 2 May 2019 10:10:13 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v3 0/8] stm32 m4 remoteproc on STM32MP157c
Date: Thu, 2 May 2019 10:09:58 +0200
Message-ID: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.129.4.86]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_011025_951102_E3635B61 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ludovic
 Barre <ludovic.barre@st.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

STMicrolectronics STM32MP157 MPU are based on a Dual Arm Cortex-A7 core and a
Cortex-M4.
This patchset adds the support of the stm32_rproc driver allowing to control
the M4 remote processor.

Changes since v2:
- Clarified "reg" description
- Change m4 unit adress to 38000000
- Renamed "auto_boot" in "st,auto-boot"
Changes since v1:
- Gave details about the memory mapping (in bindings).
- Used 'dma-ranges' instead of 'ranges'.
- Updated the 'compatible' property.
- Remove the 'recovery', 'reset-names' and 'interrupt-names' properties.
- Clarified why / when mailboxes are optional.

Fabien Dessenne (8):
  dt-bindings: stm32: add bindings for ML-AHB interconnect
  dt-bindings: remoteproc: add bindings for stm32 remote processor
    driver
  remoteproc: stm32: add an ST stm32_rproc driver
  ARM: dts: stm32: add m4 remoteproc support on STM32MP157c
  ARM: dts: stm32: declare copro reserved memories on STM32MP157c-ed1
  ARM: dts: stm32: enable m4 coprocessor support on STM32MP157c-ed1
  ARM: dts: stm32: declare copro reserved memories on STM32MP157a-dk1
  ARM: dts: stm32: enable m4 coprocessor support on STM32MP157a-dk1

 .../devicetree/bindings/arm/stm32/mlahb.txt        |  37 ++
 .../devicetree/bindings/remoteproc/stm32-rproc.txt |  63 +++
 arch/arm/boot/dts/stm32mp157a-dk1.dts              |  52 ++
 arch/arm/boot/dts/stm32mp157c-ed1.dts              |  52 ++
 arch/arm/boot/dts/stm32mp157c.dtsi                 |  20 +
 drivers/remoteproc/Kconfig                         |  15 +
 drivers/remoteproc/Makefile                        |   1 +
 drivers/remoteproc/stm32_rproc.c                   | 628 +++++++++++++++++++++
 8 files changed, 868 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
 create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
 create mode 100644 drivers/remoteproc/stm32_rproc.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
