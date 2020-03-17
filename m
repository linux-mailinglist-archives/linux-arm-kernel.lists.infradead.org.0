Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CC2188499
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:57:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DAXE4jls5KkBCWpPCRpBzTePsKzvq/JpOgIdhGHfmQQ=; b=oKHFxLzH5fwErh
	UfSxWViLuPbr6n3J3txruOMZZ7lUhftSElFmUJLKcDE5OgHpfWlN/sCqlpDVsZrhJg25du/KRDcbc
	2lC72ukmGVlP35oXMsm1YwGcIvxLpRrbRo87JmTiUPQYqsDCkX/o27RlVV3pcJhiif1EDSDxXwFsl
	VfRcxRqieJlCl7MhIoFVAn3VR1JXpt18EEQD6nUg+/7ApsFS7J5TOYb0PjWUl2GMAKAq8/EMUlaVb
	ywsNpD2siDykQ3VEKum273Gsjt6xtFMyKRIHnfq2JPKGY2oGQfSKcX0UlW0bV9JDP+Qm55H3j+tHn
	h6e5s7NFe5SFrL2dJy9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBmV-0004Ge-1B; Tue, 17 Mar 2020 12:57:15 +0000
Received: from mail-dm6nam11on2065.outbound.protection.outlook.com
 ([40.107.223.65] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBmK-0004AV-4V
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:57:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YAtf1h1CYHRjr6zwYmLN38KfQUdq3DBIrODEIlL/PBOH3VeL+qnmid7/M299nosiBuh4JqD733L9U27ORw9g68eq0O9lgS2Q5r1LcvsY+ToLwmcgzwif3tMYdRWHz3RmmLVbKudGavqegiTSJY6vwzzy8GpNiMsTlN6H03Vtx4nQOj8Tg0n2O03Gf0zD6OLCsVvEut2rP+S6ZciHJGHYoXeD+VV6JfHYl051Y8dEzN/nC58hwfrpGiEZaSlYHDmXEJpLoU3MaW4TZdcTzO0WufuuCgS22aY+pWY736XE0TffRReOB0AbdLfM40d9V1G78KLx80S4mWe1t2g66QrmOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aCvlAVLR1RlPDnltjLbv03P2vwGNH3sNKAg3b+EPWs=;
 b=O01u53qh3xS4eseYuXuXkFfElHv4LUFdE/BD74OCFislRJMG8gozMnUtX61GojhcVoWUcdzmtyI54DegZ1ORXBDe8s/EhLaguvq71glku8YrY3ciVFn2B4WcQsawc8ev841lBgNaJ6PuPgSFToMtxDyUf932OuMpcBngp0bvzGJXvvGYOpF5UExjhsGhGRt3bOPz44UG0X6spw6dX2+zGPPghUKz6PxUtFXiCGd5DE+QcdWNSJoGg7eC18mybaEDq69+OGd0n47mQxcaCLeONthe/h66g+SxwBE2cncNWIO1231K9gl7Uza85OUOh8DbhtZdu5qhJBlvtxm3uygLLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2aCvlAVLR1RlPDnltjLbv03P2vwGNH3sNKAg3b+EPWs=;
 b=NyYTrCrDtCPgsbNJ/eQMaFxf2OdLHb+94p6OQSO5n6GjW62Nkbws0ipsu4ov2audrALb6XUOCc400hXigG9lYGIFFAk9IfpScpvMYzf/Cb6CGLRQeg0UQ6oyrdYc1A3G0PbEAOkDuxFeTGagXxUlH6brt6yIvopdsAzK0Do29tc=
Received: from SN4PR0501CA0035.namprd05.prod.outlook.com
 (2603:10b6:803:40::48) by BYAPR02MB4103.namprd02.prod.outlook.com
 (2603:10b6:a02:f9::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Tue, 17 Mar
 2020 12:57:00 +0000
Received: from SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:40:cafe::9b) by SN4PR0501CA0035.outlook.office365.com
 (2603:10b6:803:40::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.12 via Frontend
 Transport; Tue, 17 Mar 2020 12:57:00 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT018.mail.protection.outlook.com (10.152.72.122) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Tue, 17 Mar 2020 12:57:00 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmF-00020N-Po; Tue, 17 Mar 2020 05:56:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmA-0001f0-Mj; Tue, 17 Mar 2020 05:56:54 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02HCuqlh007535; 
 Tue, 17 Mar 2020 05:56:52 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBm8-0001dT-7T; Tue, 17 Mar 2020 05:56:52 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 0/4]  irqchip: xilinx: Add support for multiple instances
Date: Tue, 17 Mar 2020 18:25:56 +0530
Message-Id: <20200317125600.15913-1-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(39860400002)(199004)(46966005)(478600001)(36756003)(81166006)(966005)(81156014)(8676002)(9786002)(26005)(186003)(8936002)(4326008)(107886003)(336012)(356004)(7696005)(2616005)(5660300002)(426003)(47076004)(103116003)(1076003)(316002)(70206006)(70586007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4103; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eadda818-c2c0-4dcc-3bd1-08d7ca72aebe
X-MS-TrafficTypeDiagnostic: BYAPR02MB4103:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4103661BF93030B856B7D906A1F60@BYAPR02MB4103.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mEvG39uylTp7cqbrsBB3dHCKYkaLBk42F4Vson+Yo64k/H2GRvV1gBi1A5HtKnl6VMSJNg1DeiHfD7AHUjFgGzX0RBidE+clKvVcI6FWTQmDOgUgaOUpIA0zqvZXbyIboi06hxGDOdqnD4tJSw9G3v5eey+m/DOnHVIAqLADfamq9AbXgqnjXRIAAQoX8qUN9gC728yU1SPVEk79QQDKcOITdUZbejmAXYChu5RiDRotUVDCZil0wGea8s034hzjJ/DUBhxr4spULlzXbW+1dCvRAJtNlEeI10l8vecVemhYjZbQxDa3pmaT+BCwWAphkVWBEwWaiH5H0lB9SkogqBfo/yRpeRL6+KdCP8xAyAbd45sbobtpYYLehhMYKoZPu6VlvEXrfKdUmKpIjb0bKB/l+FmvKNRX4plrHe+SovwVa8brJkCNQCS7VPIkT9XFt3MewI7Aj1CInp7e7VuOBj/r7qdOq8W12Q5sxHaUB/tkSNlWneHsgY73AVNiBkUB5LjJU/fWeaGD8vomFAUqJH2k8yd1YaYIGU9uLF5BKvOQ+NRclJyYjtvoAM1611ib1LEANjP/Xjp1noL6oxtN3w==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 12:57:00.1848 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eadda818-c2c0-4dcc-3bd1-08d7ca72aebe
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_055704_181097_8483DEE2 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.65 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.65 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.5 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>,
 linux-kernel@vger.kernel.org, anirudh@xilinx.com, sivadur@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Created series by rebasing inter-dependent patches
from Michal (https://lkml.org/lkml/2020/3/8/164) on top
of v3 (https://lkml.org/lkml/2020/2/14/2680)

Changes for v5:
        - Fixed review comments from Marc - fixed intc_dev
          related handling in 1/4 and added 4/4 to remove
          unnecessary call to irq_set_default_host()
Changes for v4:
        - Fixed review comments from Thomas - updated commit
          message, variable declarations changed to reverse
          fir tree and cleaned up some code.
        - Added inter-dependendent patches 2/3 and 3/3 from Michal
          https://lkml.org/lkml/2020/3/8/164

Changes for v3:
        - Modified prototype of xintc_write/xintc_read
        - Fixed review comments regarding indentation/variable
          names, used BIT
        - Modified xintc_get_irq_local to return 0
          in case of failure/no pending interrupts
        - Fixed return type of xintc_read
        - Reverted changes related to device name and
          kept intc_dev as static

Changes for v2:
        - Removed write_fn/read_fn hooks, used xintc_write/
          xintc_read directly
        - Moved primary_intc declaration after xintc_irq_chip



Michal Simek (2):
  irqchip: xilinx: Fill error code when irq domain registration fails
  irqchip: xilinx: Enable generic irq multi handler

Mubin Sayyed (2):
  irqchip: xilinx: Add support for multiple instances
  irqchip: xilinx:  Do not call irq_set_default_host()

 arch/microblaze/Kconfig           |   2 +
 arch/microblaze/include/asm/irq.h |   3 -
 arch/microblaze/kernel/irq.c      |  21 +----
 drivers/irqchip/irq-xilinx-intc.c | 123 ++++++++++++++++++------------
 4 files changed, 77 insertions(+), 72 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
