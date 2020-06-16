Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3BB1FB433
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:25:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzTecSmXjKNReQOZpW8CXy2DYeeyf7xyZFcjE3wLddk=; b=O/cKs2V4r4ZxwF
	qyTftHo8HCURw8MS/0mihBrkhEByu1HF9jlPSIZOvQLUqNQnQVNAAwyA6qj1ElE9Opf0d2o/EETMz
	P26evWM0ujQLyuwK9sVTjk8u6iqnvuogfg6BG9L7BVsQg24fd2rKpAngLYqhWQ4LnLyt/+4sltJ5T
	uQT69xBbEBdyaO4cXYDn18aqYrPciBe5/DpJ/eKPVielSh45IM52w/SbK3u5lbb7J5rpToWp3xLxf
	8n1AoYYgVmZFMimSIvy7HOd9TvDcCLVDObay7TKWopXKc2LDV1nWqSUeUtYDwBcKZnYNXxulxGMZ5
	Gd8Jvaz1fn5yNmccbU9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCWI-0005b6-TU; Tue, 16 Jun 2020 14:24:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCFS-0001kc-FY
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:07:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GE2wij002436; Tue, 16 Jun 2020 16:07:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=5Hcd79p5ovxHgR2Kw+vJ8ycKacohfcjtHYW/V9jWRZU=;
 b=LQlgpY2PuUrJPpqbJ2bkNsqYx7LRUbCXYxr526KmqbAo6u6b+8mQreEakCrDmEQeFoKE
 Wl1DDz98V9dTNm7gWmOKwBQ0zn2aBcADVyfvinxmpVrL0xAQs4k2qxXsAu4/BzPMCzBt
 bFw6sZUCUUMKM8hP+kPh+W6Ypm4pW7pfZScttWpox8UDOBFhfuj0n3rDtuARZXq8P2ic
 C0UZgoIbFsLAriSPDz84DMrdg4BYhUrJbtAZC53k0M+AGiVOylMSaUoFI/sEE3sDHGcO
 0L236C5TIVaxyMNqBos64ddV5zOcAa8/Fe/TW81sHv54yNIYSaZAg9LB4O1UjBAGm41p rA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mmjvyrjv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 16:07:28 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5F8DD10002A;
 Tue, 16 Jun 2020 16:07:27 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 48A582B56B6;
 Tue, 16 Jun 2020 16:07:27 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 16 Jun 2020 16:07:26
 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <balbi@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH 0/3] Add USB role switch support to DWC2
Date: Tue, 16 Jun 2020 16:07:14 +0200
Message-ID: <20200616140717.28465-1-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070734_953486_5BE277A3 
X-CRM114-Status: GOOD (  13.71  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using usb-c connector (but it can also be the case with a micro-b
connector), iddig, avalid, bvalid, vbusvalid input signals may not be
connected to the DWC2 OTG controller.
DWC2 OTG controller features an overriding control of the PHY voltage valid
and ID input signals.
So, missing signals can be forced using usb role from usb role switch and
this override feature.

This series adds support for usb role switch to dwc2, by using overriding
control of the PHY voltage valid and ID input signals.

It has been tested on stm32mp157c-dk2 [1], which has a Type-C connector
managed by a Type-C port controller, and connected to USB OTG controller.

[1] https://www.st.com/en/evaluation-tools/stm32mp157c-dk2.html

Amelie Delaunay (3):
  usb: dwc2: override PHY input signals with usb role switch support
  usb: dwc2: don't use ID/Vbus detection if usb-role-switch on STM32MP15
    SoCs
  ARM: dts: stm32: enable usb-role-switch on USB OTG on stm32mp15xx-dkx

 arch/arm/boot/dts/stm32mp15xx-dkx.dtsi |   2 +-
 drivers/usb/dwc2/Kconfig               |   1 +
 drivers/usb/dwc2/Makefile              |   2 +-
 drivers/usb/dwc2/core.h                |   8 ++
 drivers/usb/dwc2/drd.c                 | 190 +++++++++++++++++++++++++
 drivers/usb/dwc2/gadget.c              |   2 +-
 drivers/usb/dwc2/params.c              |   4 +-
 drivers/usb/dwc2/platform.c            |  13 ++
 8 files changed, 218 insertions(+), 4 deletions(-)
 create mode 100644 drivers/usb/dwc2/drd.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
