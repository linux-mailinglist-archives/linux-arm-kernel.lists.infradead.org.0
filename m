Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0266218875D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:21:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+0IBPFkS+5w6+hZgKPNfLXqQHIcvKHR56yNadPP8vjU=; b=ZXdrdh4c/Fdtyf
	bCDwT7n+SmutdtfauWqvEh+4NpiFWf8Jvq5SgpiICQLMdTYk3DwWTi1p8jAwd0eK94xM0PizIWl6a
	RTvejCGZsCWVbbZFFvH+VQvqoJKOn7xNYVe8pd1+jORNkmdfz1fUDfTmtaXAmKfvXK2X5JsyRICA+
	XOErYVsdPxg/xvfERGHy6Kl90I5stVq1UywVhcPO8r8RJTHutvSM/Aflq3dWTOcqRvXOrsA8Yc72p
	P91dwmmNzgygl521XJYW8Jbn15w4OnVMWoPlnOdFAPXZT5/Swr4TZyDjNTCB7a+wytJLC8icbzDU6
	bhhyGyHxe3ToihHSZDjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jED67-00047N-Ic; Tue, 17 Mar 2020 14:21:35 +0000
Received: from mail-vi1eur05on2061.outbound.protection.outlook.com
 ([40.107.21.61] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jED5v-00046O-1j
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:21:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hs2e9NDEZPSKheT4QJHvIvguGFviM+BjcEAdlHG978y+cKMZUvFQSeVV8XdcnbXvP3zUxlDcVrSzvyQaMGLvt0crARnLtzXGfrPMW2A6WVm0ukLWBBuQLlQ1poqwVhYhahdvSbHEpwi7cNk9OrCmVCOIXHWjYOF8Uaj8G0DEjfz2Vm94BKvhSRv3q5H8gjDoE7t88vMULWhpCZ1gpvgGUujKWNKH2RRc9qM7zlLxwb5Ws+5QSucuZ7OUK8ngxFLr2Lw7y0X7REZoCSkRDuk0A9ayQUgtwfkq2z2RUAi4RuLb9qVlpgiNmdP9jok6dQBg/SHW/r0ZGe2/NDvtvYOvJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXn+DU1cF1s7c7fW4v9D4L4sRb6c5pfanXGsWA1/p3E=;
 b=UxJ5AQj3oJbq4Qw6NgBo5KDDR63FuqhtBIThChO1Q78CC1/pWWjpGIxrGdPyPKCLvrzKqoUryMB3i5Q1vDqUDsZ25G3lby0C2m3XnkPsnqLFSiNQsWrLxvSJGbuaj9k5k9XyU9wNNJq4ZaIE5t0pBcOhu1LrJgICbAbvB8I0egeT49oWlEnqoY8DdDEEPWiKb2vBDtJt//hxWm/rYQoMIdtkYIMXueKNt4cVnZKpRF9xoY04w+Fzzfab5lv2/c2vuKpVAb903HpW5SB7do2SGv/xfswdTHTxRbhZhnk359GRBmP09Ba8yBydmw5kWozJw/nTcV6YsaZOoMpmAxC5WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PXn+DU1cF1s7c7fW4v9D4L4sRb6c5pfanXGsWA1/p3E=;
 b=DmQkzfPf3jTaHEaH4lzuO8HSJmtg6dVAQOGvpSDKxWe9dKc8EnHkd5HOY6u/Q8fwtFPw153ckAPge3wLVLwTA6J0Aq/0dtRy7P5+5p7iJfBa7MDOdIxI11IMOL+twRz+IIwcoy311blDoBqLLo5genxMgiqJKmAK/rhSEn9yhro=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB4070.eurprd04.prod.outlook.com (52.135.163.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Tue, 17 Mar 2020 14:21:18 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 14:21:18 +0000
From: laurentiu.tudor@nxp.com
To: thierry.reding@gmail.com, robin.murphy@arm.com, will@kernel.org,
 iommu@lists.linux-foundation.org
Subject: [RFC PATCH v2 0/2] iommu: arm-smmu: Add support for early direct
 mappings
Date: Tue, 17 Mar 2020 16:21:05 +0200
Message-Id: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: AM3PR05CA0105.eurprd05.prod.outlook.com
 (2603:10a6:207:1::31) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM3PR05CA0105.eurprd05.prod.outlook.com (2603:10a6:207:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15 via Frontend Transport; Tue, 17 Mar 2020 14:21:17 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7a9b013e-1c16-48e9-b064-08d7ca7e753e
X-MS-TrafficTypeDiagnostic: AM6PR04MB4070:|AM6PR04MB4070:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4070952621790F41A31F89C6ECF60@AM6PR04MB4070.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(366004)(376002)(136003)(199004)(66476007)(8676002)(2906002)(81156014)(66946007)(66556008)(81166006)(2616005)(36756003)(6506007)(6512007)(966005)(9686003)(16526019)(6486002)(7416002)(5660300002)(478600001)(316002)(52116002)(956004)(4326008)(8936002)(86362001)(6666004)(186003)(26005)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4070;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QAMrHGQfU2yImM/9DxMtpAOtcAENRFzqih5yjAX87sw493cSJVatV7ncNDCed0QOUJ/JKr8Ey4wxTBw0C8gulYV3PB5RPb9BNK9p64CZOgKvFjDZ0+6O9P0mtrR6qDtrOKt2SV4eln/e41CmhKxX19xunNT4yl6m+7/itU7mjULEccFqK8ujV6/QKeU4QCYNhU545yjBtUDIYG/sIm2wKFXL/ReDNrJ3sIIXhVNwsUmxwREASNvBzjE/J98vQ9IjLBHRuPxEv/3og4lsMg7zJoiDGgqDJDmbLJ/pX2eZHnTJ2FEXPFkrX9i1ma1Fl5176PR6vPzCyjQaDr+CrQgDddLeAwPPDdS76YQQVEfDsfERDsSjdKaR0ox9f7Gr7NlWxLM/cLJbVKIIzk9cVF7QDkFngP4Xgy2+V/4WUX51EwWZJ0hT3Uj8e/2fMh/QNlyXf6BYXhnIAwEqhP+k/XJCxXz1i7OLe2e91VCpBaEylRdIkAnOPnD13CpqFuyLmDfLrFT8kCTR0TPqiubZ2698jA==
X-MS-Exchange-AntiSpam-MessageData: HtcqrkpXEFpOQk1h786oyB46Iiw6SPpJb5xyMKPNRi+pA2nlEX/N1QCEkSm8HTTj3LqFQf4kzBUfMTfhbG3rQI+1pnjejwFuus4/o1QizA7/zORJNUueJOAyfosr/B20B0Ay1R+PmJrK7Ub6EXDISw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a9b013e-1c16-48e9-b064-08d7ca7e753e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 14:21:17.9666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W1zgjaaNYMgb+P9Z/T/xbhFda/np9AANwoJ9cKS3WDS0tB72/5G+z8YcvqsLqHq+84iVTftPQhmSI2B2QMyj9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4070
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_072123_189635_281FDA62 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: saravanak@google.com, pdaly@codeaurora.org, kernel-team@android.com,
 diana.craciun@nxp.com, linux-tegra@vger.kernel.org,
 Thierry Reding <treding@nvidia.com>, pratikp@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

On some platforms, the firmware will setup hardware to read from a given
region of memory. One such example is a display controller that is
scanning out a splash screen from physical memory.

During Linux' boot process, the ARM SMMU will configure all contexts to
fault by default. This means that memory accesses that happen by an SMMU
master before its driver has had a chance to properly set up the IOMMU
will cause a fault. This is especially annoying for something like the
display controller scanning out a splash screen because the faults will
result in the display controller getting bogus data (all-ones on Tegra)
and since it repeatedly scans that framebuffer, it will keep triggering
such faults and spam the boot log with them.

In order to work around such problems, scan the device tree for IOMMU
masters and set up a special identity domain that will map 1:1 all of
the reserved regions associated with them. This happens before the SMMU
is enabled, so that the mappings are already set up before translations
begin.

One thing that was pointed out earlier, and which I don't have a good
idea on how to solve it, is that the early identity domain is not
discarded. The assumption is that the standard direct mappings code of
the IOMMU framework will replace the early identity domain once devices
are properly attached to domains, but we don't have a good point in time
when it would be safe to remove the early identity domain.

One option that I can think of would be to create an early identity
domain for each master and inherit it when that master is attached to
the domain later on, but that seems rather complicated from an book-
keeping point of view and tricky because we need to be careful not to
map regions twice, etc.

Any good ideas on how to solve this? It'd also be interesting to see if
there's a more generic way of doing this. I know that something like
this isn't necessary on earlier Tegra SoCs with the custom Tegra SMMU
because translations are only enabled when the devices are attached to a
domain. I'm not sure about other IOMMUs, but in the absence of a struct
device, I suspect that we can't really do anything really generic that
would work across drivers.

Previous version: https://patchwork.kernel.org/cover/11279577/

Changes in v2:
 - recreate identity mappings when the device is placed in its rightful domain
 - delete its original identity mappings from the identity domain
 - added a counter to keep track of number of devices with identity mappings
 - free identity domain when the counter reaches 0
 - this should help fix our firmware issue, mentioned here [1]

[1] https://patchwork.kernel.org/comment/23200041/

Thierry Reding (2):
  iommu: arm-smmu: Extract arm_smmu_of_parse()
  iommu: arm-smmu: Add support for early direct mappings

 drivers/iommu/arm-smmu.c | 280 +++++++++++++++++++++++++++++++++++++--
 drivers/iommu/arm-smmu.h |   3 +
 2 files changed, 275 insertions(+), 8 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
