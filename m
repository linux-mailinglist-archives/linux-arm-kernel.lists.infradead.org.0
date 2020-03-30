Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF491973F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 07:42:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jiEqy/qBnOWi13e1KRFXL/ZTv+jLcxu3wNGrbjQDr90=; b=Lpr/9Jzmz0wcYB
	mrbRaIiFb0dqn+/OrGC10rDJKijQqvpE3SAVaiQcn/NMB9vqrpEQaBgoUE/Jg6Tj9BbRCkoi4syQ7
	oajPs7NTm16NZemvbEh85jEyM/q62lr2g55uu1toypcCBX09tp6F4T6Rc+HrZfl/KMugMr7SpXQhB
	Lh63cBUMLvFf86GW3W4p4DZJWlJ/716JkyzGDHNxKK1OH9G3vOJvssivB+JoT0fEu52nMwjFbgwjp
	CYgQ2kQjh4hY2Mc8LH0ZkYdFQJ0sIH62mbz0C654HkkSh/YzaPYKkd8r5afwK/62WeJyh3g56GOuC
	Ol2qIqVWtCybyvN2I9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jInBK-0002QL-Rs; Mon, 30 Mar 2020 05:41:54 +0000
Received: from mail-eopbgr700080.outbound.protection.outlook.com
 ([40.107.70.80] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jInBA-0002Pu-7Z
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 05:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nr6QoQxEO7f016Qx5yICPgByQn4vUBKGcVJfT0tJR7Qg8UFpdSgbWDwBHmfNdHnzg7l5W0B+kGWwt1viMxiCuHVfaNFMqlQyJZgwXr4T3a2g22fs8F7oWHmE/6WJQTge8JzBAIOMDm/iKJJPGW9PLS6d0TB39K/gb4xX034dUVJElRQPBPywKQfC+j4f1mjxeBCezk/aIooHaT2gRBW4au9YhWkCaUf9ZpqYv0Hmkve5ck5Prn82awVB5hwt0Y9XbwLg+agGn3SbsaW1bVIqhMRiodZWqdZucvjnCmnwaoKuLxMBs6oWvLZhyrvqbPkLXGMiOvYyt6tNP5yJ3/KnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=12AN7TBBvRxGaNwfMhxG4pxwd9twOMSP+/RvRJldvrA=;
 b=krHYrTcbrAr37dqSGxgBOcCt+i2/GQT3d21K28wZqnwtwvEA28bz0oSEfUDmyjBM0dxWBJpCHJwXwfzpgq8aAntD3/WXS5AKLbIznvfxCQxqtMO2yHTYSXy51XuLiX3CTgKXgXgx5jcsf09oKcyinno9WXBv+GrCM+A4AbAVVB2Zb8shq9+RyaNW4O1Js3ehqnrSltAVJkq7GgoAi+FJcI0aWsl2yl1WIuzDTZyTDn1LI3FqVBJVGZPhXnhEJRC1FvoiLgWN8oZlbnVWzuNw8PwEl0oX1gWujYZWBz8/ctRo/grulpqziRRloHV9OuA65q74+QONs1DUCM+IHp8x1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=12AN7TBBvRxGaNwfMhxG4pxwd9twOMSP+/RvRJldvrA=;
 b=tcS1zyAWQGGj/WpC756DbJlx0Bky5uChoKTYHDyzVOxpr3VX6vnHhdiEf8ABjTfttuv1W6VgHL4FX0euAdvTBMhEvWAEhJ1ongW7E/lDiPeSjevtUUSjFmx1DPHeJQpoRFlGl/rfNU+dwFlFWXdwWYravKYcKXyvyT+Yf0SrIcU=
Received: from SN4PR0701CA0038.namprd07.prod.outlook.com
 (2603:10b6:803:2d::31) by BN7PR02MB3955.namprd02.prod.outlook.com
 (2603:10b6:406:f0::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Mon, 30 Mar
 2020 05:41:39 +0000
Received: from SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2d:cafe::4c) by SN4PR0701CA0038.outlook.office365.com
 (2603:10b6:803:2d::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend
 Transport; Mon, 30 Mar 2020 05:41:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT012.mail.protection.outlook.com (10.152.72.95) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2856.17
 via Frontend Transport; Mon, 30 Mar 2020 05:41:38 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInB4-0005gm-Hk; Sun, 29 Mar 2020 22:41:38 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1jInAz-0003FY-EB; Sun, 29 Mar 2020 22:41:33 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1jInAp-0003Cp-Li; Sun, 29 Mar 2020 22:41:23 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id D7087121267; Mon, 30 Mar 2020 11:11:22 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com
Subject: [PATCH v2 0/4] Add support for Xilinx Versal SDHCI in Arasan driver
Date: Mon, 30 Mar 2020 11:11:15 +0530
Message-Id: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(346002)(39850400004)(46966005)(6666004)(6266002)(356004)(316002)(2616005)(42186006)(336012)(426003)(8936002)(107886003)(186003)(4326008)(4744005)(6636002)(44832011)(81166006)(81156014)(5660300002)(36756003)(82740400003)(70206006)(478600001)(70586007)(2906002)(47076004)(26005)(8676002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf1f576d-198c-4eac-a033-08d7d46d049f
X-MS-TrafficTypeDiagnostic: BN7PR02MB3955:
X-Microsoft-Antispam-PRVS: <BN7PR02MB39554C40DA157847897DF52CC1CB0@BN7PR02MB3955.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0358535363
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wh4VNKvFtAg6A8D38vzgP+LC83hNcyQf3TzeUj5p+2jCw21ULYULXXH4ZSHCVBVz3rVrHb9P5GgQLCa4LS4QWHnI7LMmALIBjOEgJzn9oXEbu6+gKLRISXjoooqBrxIea4NnkJQ5CnsZY/lv+luQykm359NQiInsMTf9x3SjaP143c5BjSrMSEFn3HFaeB0Qh5SVUJoJpD4lPHq43UC0PV9/Tz2xPTJfrglhoWMHQPfHIA896kwtDNJtCn5/T3ZTTBUaiQ/nSiH05H5o06Ir9Lcu30ANk/RkmDfWh1PivdMo5u4cm0TyWGFSydWYO8OtJ0U9gYr19wjlxMDjKj0r/srqlwQkaL5QEPBtGRC75HC3x3xmwuwtzrLAQFfovOof9RO+InyBujiHSeTQFw54tlmXJmCZqTnN1BDtHPvDBKRt8TjyRYFPnL60gfmlgu3QHXzzHoolMLn1yFAGvbOEpYeySZurtyk+8AVOD2fkvQ+68tClDqE66Pw/UNlNiiCXqIEaqC9bCT61z2xDuXofeQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 05:41:38.9188 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bf1f576d-198c-4eac-a033-08d7d46d049f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB3955
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_224144_276239_705250F5 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series includes:
 -> Document the Xilinx Versal SD controller
 -> Add support for Versal SD Tap Delays
 -> Reorganizing the clock operations handling
 -> Resolve kernel-doc warnings

Changes in v2:
	- Addressed review comments given in v1
	- Changed clock operation handling for better modularity.
	- Changed comments to fix kernel-doc warnings

Manish Narani (4):
  dt-bindings: mmc: arasan: Document 'xlnx,versal-8.9a' controller
  sdhci: arasan: Add support for Versal Tap Delays
  mmc: sdhci-of-arasan: Modify clock operations handling
  mmc: sdhci-of-arasan: Fix kernel-doc warnings

 .../devicetree/bindings/mmc/arasan,sdhci.txt  |  15 +
 drivers/mmc/host/sdhci-of-arasan.c            | 473 +++++++++++++-----
 2 files changed, 361 insertions(+), 127 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
