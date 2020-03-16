Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DA8186CA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DI4OzNyP/8u0EmnEwAlsAiGI6bIl3/4mvLexBVBk+iU=; b=oe/h1DQszNKS+P
	zI5t11EoEZKtdc9Qs9ORrhZsX4xnMgEt7FEjZxDSy4QrqUCzM9LuwDfY+wTMdLY9u2iKgaHgRiozj
	jRzpotUlaPkbVht/yuUpTbW7H7xm2HLFV9sEvs8BVmI4+10ZvdHXwdDx611aDE+vrou1DshBfXMOo
	CHe/s+P+kNoQkpGnLzUBGOo+VTjJQEEpmHrVyqA7y19PcOeZYzqYtA7qNNbhGWbBZc2RV8K0YFchs
	+IqDoB5QQ+eh689G2ceXkjOQcmj3hxQczqaAru9qXzU044iOm+1gc8ZUnHK1mW8jM6Fj+8EOYT+3Y
	A/tZYvv4/mlyMQAKXwzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqDG-0007zr-F0; Mon, 16 Mar 2020 13:55:26 +0000
Received: from mail-sn1nam04on062a.outbound.protection.outlook.com
 ([2a01:111:f400:fe4c::62a]
 helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqD8-0007yg-6V
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:55:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0jXBxTWcSyndJ2+WLT9NE7Deu0f6nnF/XE3QcZxg1XcJWewvE/IavWdHvIEpcdnvx8/FkRR6Wp4Fo4JgGYENvAj7hNuM18G9nZzDxqSksoIvnZm9/i27z1EKCVx3uwaWz4yikca1RUBZgSmbPw7Pkh0O6lkQdj/mOc9zkiNUSkD3YzWqUC28asZznWKm49yhbo157muIsSrgctTUdwcWuWABWyKZwdBkys4nWAXFkAxcgo/gIwj0ZbfAHYOU8ancMO7DmVmGPLMkZ/xp2dkCsBH9xyq0tEGWH+MySfL9nk+qh3eAiBh1WfmMsAd1+eZb/eT5GmQpne5lKeaRyzDsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtythZBvjMSg20Rl406SrsT9z2hqotaPxJKM2EFEt70=;
 b=CDGe0XVdY9yPg72BUkeNrI6Xh8XwjI5UwrIjpmlxVrd91kc19LVLi69wm135V/+ojcAEZCatw8gvdhFI1H0Ze0AXmubKzcOVAQr7XNxng/Q2LXHywZVgbkJufqqHdRp1WdfP3CmxkehAA3MgFAyxga4mjZLhtIFsNrLKBWp8MpjGcBHXWx0AFlszeXkUuJ1pUBN0jrdyvctxtBa3evkMkfNauDTiw/0gYd6UGi4ZGyiTXAkQIyxZs+yWA4vFNAffoHiQy3dFTQMHpZ1EChtxW8JC/9LY+LFBI+gkYCiUZ5L2CUF4R8Bzr6so/RruMSISOehsxcN3os61sUbVWQgJNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtythZBvjMSg20Rl406SrsT9z2hqotaPxJKM2EFEt70=;
 b=KNhPqCAbMvAXPKo3FzjYrIl49jZlNYn6z5Xpy3cLZ6TqrICq9ZjVN+EiEVf+Al7adAjFAKOGFN8onlroRMzMhYkbd0kF36WgX/0tLLeXSVdqu0jhYduIAtbNW0Aoewk6ACxBrqLB7IIhIojUlDS8MuANS6QPnYLH16lq5/OBsnM=
Received: from DM6PR14CA0048.namprd14.prod.outlook.com (2603:10b6:5:18f::25)
 by BL0PR02MB4564.namprd02.prod.outlook.com (2603:10b6:208:4d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19; Mon, 16 Mar
 2020 13:55:12 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:18f:cafe::cf) by DM6PR14CA0048.outlook.office365.com
 (2603:10b6:5:18f::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.16 via Frontend
 Transport; Mon, 16 Mar 2020 13:55:12 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Mon, 16 Mar 2020 13:55:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqD1-00041J-0Y; Mon, 16 Mar 2020 06:55:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqCv-0003tY-Tf; Mon, 16 Mar 2020 06:55:05 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02GDt2XV027715; 
 Mon, 16 Mar 2020 06:55:03 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqCs-0003l2-Dq; Mon, 16 Mar 2020 06:55:02 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/3]  irqchip: xilinx: Add support for multiple instances
Date: Mon, 16 Mar 2020 19:24:44 +0530
Message-Id: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(376002)(346002)(396003)(199004)(46966005)(966005)(478600001)(47076004)(426003)(186003)(70586007)(26005)(1076003)(36756003)(70206006)(336012)(4326008)(316002)(7696005)(9786002)(103116003)(107886003)(8676002)(8936002)(2906002)(5660300002)(81156014)(81166006)(356004)(6666004)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4564; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bba01616-f45c-4cbc-83a2-08d7c9b1a545
X-MS-TrafficTypeDiagnostic: BL0PR02MB4564:
X-Microsoft-Antispam-PRVS: <BL0PR02MB456497CE7EDF271D137BFDEBA1F90@BL0PR02MB4564.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:489;
X-Forefront-PRVS: 03449D5DD1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LhteofftiGPJWCSxrY0go/XssiD3LibfwyJEfq5LSp+bwUNWPfpOGCCxX2EUYr73bqYr3GG61/yMfdusLCkRlF8pYRORcK659EpgXzUFxeI7uBeAQ5LALeV05Q5jbi4SUvVU56fkJE+lfMmLtM7b4iY214J+n2WRxcVE901PZZyrN9QvxAhma5n5bl/Rh07G98a3vpZzGFNg5A+KeiOb+LtgqrUJKyBmumxMsITs30At4uo4s/DDLcgi9lWOXndEuEczWh4dlWDQf3hmpWyDERhTK50loQ3t/WhmeheDcbC6UGQ/lbsi3Xbvz0YwoIhXAV/P1gknNCdYdR6Iv6/k76ercaTw7yWXANNvZk7jvyo5q8IlMS6OInMGyBMkVkZxzQ+u4ubB4tKbdfPEMjdMTPSou19YvobEG2GVhDfUXXW+xbgpZkyc9EK7uTfibh/biJkBoup7TT168wO+dA/jOaENkjxt4zOijKSYqGuea1PxYPGZUM3Hjw5e8ViaLcURhoMMS52CFgvaw+7CzENgJf4y8EYdzRJaTijbk4vtT0MB+7tjuPgCCQteUTA/IX0ovbEyWthkp68Ivt67aDZ3zw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 13:55:11.4104 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bba01616-f45c-4cbc-83a2-08d7c9b1a545
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_065518_249024_EDB2ACB6 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.3 AC_FROM_MANY_DOTS      Multiple periods in From user name
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

Mubin Sayyed (1):
  irqchip: xilinx: Add support for multiple instances

 arch/microblaze/Kconfig           |   2 +
 arch/microblaze/include/asm/irq.h |   3 -
 arch/microblaze/kernel/irq.c      |  21 +----
 drivers/irqchip/irq-xilinx-intc.c | 130 ++++++++++++++++++------------
 4 files changed, 82 insertions(+), 74 deletions(-)

-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
