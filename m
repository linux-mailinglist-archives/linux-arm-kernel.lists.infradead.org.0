Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799D9C0C23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gLpaIy/mepPtpJvfMAHrBOnv12NUqXUtDm/CqAokR5U=; b=R/2pu5OFE8ol9b
	n8v6kyYpco1tSvZrNvbA27ybwjCKmGhKkAFOksqQ3bgB2Swq/hMHOzpHGn+8RHtU9ZiE+ZlM8dGww
	QS/QIEF+509W4zfWsV+copxXAK3n60KiPVPSKhfFPWFN/eYgjFp54HbGTpH9BiTLEg/YO5aq/J9Gc
	ElXkHZ45y6CjmiBGeoFv3X+3BEazLtxjqtLwxZbHiy2y6O81iwSAiJYHIUw3cxg4zN4Fs9+pRl+pM
	Gk7lT60tTCxr9bChHnE22w8qKY9Z5lV3ziaMcM3uZwuZXvT9MYQYTSJXMz34vJ24uwUf0EeWBrTAz
	hLIKyrtt98qllQ5tgbAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDw6q-0001LR-Uw; Fri, 27 Sep 2019 19:40:56 +0000
Received: from mail-eopbgr810050.outbound.protection.outlook.com
 ([40.107.81.50] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDw6T-0001C8-1D
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 19:40:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTG4+C0/qWYzFGHFTaFWCD+jI9KjSKneZ9r8zdNc+HYA8tFwH8pbTbAdRULwwTPIfF2MOlw2+SXpfISkqWjfgydDajvGSh0vEuRbau+kVZsb+IX7EmFCHx4Sqdz00HdSqa2zAyJw4ySt06PkDcxur/H9QP60uc9fa+VlQoNr1jfbzUp99DWgfQ5UyNoI86omjmuQadTFxmfRk5dCOqacFGJFgcmxDK7U11krmTBM8os4Q8dUhJzDtHZRoNlzQMNMT/QaC4M+7onfQZePXfdh+k7ZHPYbai3Mn99qfDNlt1gnh7c/fQUCVWir5cyFL2yASzPSBJmvGqvL4E/Gbo7k6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/G6d8tMR0G+kP6p0I4FxtywYsCrR0mj8FWjo9dl3n8=;
 b=M82PWoGNftbN/J6rAaH/0NbCDXKP660Sh0GUrrFEMO/q8v/hNZLbhGKCYR79OuIPfVnhOsNKCkHM8wf2pEiPk7NXoiMgfSsyCP0FMI3fiDTnlE8HkVBJOqx8tJAnNrAbnpMZlItKWftQHJ2jXPiP02aieHj+b4D4HdTZT/ANqmUExPlPFWFSttMkgbpR8DHWKkW2996L4sZUIjZ7bcw5WH29gNbTPjY6c/ISqAIcB04EYnIPMoce2vWya+akX2U/5c+Bu44pvmP0xNCy7cGgzyAY4XrQ0poO5JCYVWybwrf09ukjlcG4b0WSRETCQ7qrR3wS0koyXfqo4ZwI2qcScw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u/G6d8tMR0G+kP6p0I4FxtywYsCrR0mj8FWjo9dl3n8=;
 b=rLeSDyCpHihyGJIe8JwPQJzI5oaOcJKnrK0WeTatFKGt14xlPprYgUq02iVW5iSOYY53EeDoWegB1ruhKIWAA9ND5tUEflHDD+MCaRByBOxiRzy5YWk0LjlQp0kIiuOBZ7UlTzoHtW33n2uJ59SrPrvi2TmdEv1WjQw1+KIiZAQ=
Received: from DM6PR02CA0126.namprd02.prod.outlook.com (2603:10b6:5:1b4::28)
 by BYAPR02MB6437.namprd02.prod.outlook.com (2603:10b6:a03:11d::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.19; Fri, 27 Sep
 2019 19:40:29 +0000
Received: from BL2NAM02FT013.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by DM6PR02CA0126.outlook.office365.com
 (2603:10b6:5:1b4::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.20 via Frontend
 Transport; Fri, 27 Sep 2019 19:40:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT013.mail.protection.outlook.com (10.152.77.19) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.20
 via Frontend Transport; Fri, 27 Sep 2019 19:40:29 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6O-0000L8-Ki; Fri, 27 Sep 2019 12:40:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6J-0003aE-Fe; Fri, 27 Sep 2019 12:40:23 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6B-0003I3-Sw; Fri, 27 Sep 2019 12:40:15 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 0/2] drivers: firmware: xilinx: Add support for versal soc
Date: Fri, 27 Sep 2019 12:40:04 -0700
Message-Id: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(376002)(39860400002)(189003)(199004)(47776003)(51416003)(7696005)(44832011)(36756003)(6666004)(107886003)(26005)(9786002)(305945005)(356004)(186003)(476003)(486006)(2906002)(106002)(2616005)(126002)(8936002)(336012)(7416002)(81156014)(81166006)(316002)(36386004)(4326008)(4744005)(70206006)(478600001)(70586007)(16586007)(5660300002)(426003)(48376002)(6636002)(50466002)(50226002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB6437; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5d3f5e17-2367-4e94-96a4-08d743828d74
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:BYAPR02MB6437; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB6437:
X-Microsoft-Antispam-PRVS: <BYAPR02MB64379C3A41D42F9A88EF2872B8810@BYAPR02MB6437.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 0173C6D4D5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: gKjXEYTOGVhJ3EcvBlrY08CjPSB399AJt7GqOAgl8PlU7vRh+DmHBaU5EyFnImprIhclnjP/cSqY/vavAsnQpgJi9ER5zmfxIVh8Ht/Jc7dRQnUmFPF+PEYRp2+Lbq7JYh6OEQyqixyO/a4UcUPf2MDYUZ3T+NXlJQGj+uHHsxq35uIDu1jVLd/TD2xAd2v1b6ouAWMacXJlY8NtHw5a4GGDEqzHWnSc2ba91C68DP//ZlXSWQwdObh5MrcjYksjSGkX7o1jDouJCnqbnCx5Y2DYlOnd3oxz/hxokFD38flrgvt5UFAxA0ypjBk3uhKZCpSU+USRuOdZnM6Sx0crOC7l+hXLwwl7ZYqRetpQnNqggNZmCZP2R2D7HmJZACw5+rMt9sI/Fj9zk01NNM0Iz8bb59kvB/62+ezB3n1UwGc=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 19:40:29.2510 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d3f5e17-2367-4e94-96a4-08d743828d74
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB6437
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_124033_073928_EAE2B079 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.50 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Versal is xilinx's next generation soc. This patch adds
driver support required to be compatible with versal device.

Jolly Shah (2):
  dt-bindings: firmware: Add bindings for Versal firmware
  drivers: firmware: xilinx: Add support for versal soc

 .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
 drivers/firmware/xilinx/zynqmp.c                         |  8 ++++++--
 2 files changed, 21 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
