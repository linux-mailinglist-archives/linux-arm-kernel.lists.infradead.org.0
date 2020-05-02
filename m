Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59EC1C2312
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 06:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIJ8ulIRg+dg0BoWw2QcV8R9Sr1pffAHWYwbObTByPw=; b=cjQ6XChyWFeehn
	x1kiMrLPjpkZc+SwhjDNr72QgYlkv4af10/fKvWnob2hlJ+WaUGDcV6ARLZmW+o6PrT/h4ui+J4Me
	BWLwB9Djjt3xSp0l5mimIWcK9HdeN2IMj8lA0YCI/UgevdF7mpthtf5C1/eiCQvM3oXAPxb50eLkC
	AV+F02WuzNQ5S5zmy4yxIRff/MqAH38Qx+wy8fkdKglXWq+h5Yn2XQAYmAck1rZKgFeX84wqQpdO8
	FSL2oDS1u4aV1XzU/GVtFXvX+KdqkvVRTJ65GE1hAHRRRVojefyVT3uqn/dOfDT46zwWR5l7vT/YP
	mAzK9xWCCVLfiPDYGskg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUjui-0001Pf-6l; Sat, 02 May 2020 04:38:08 +0000
Received: from mail-bn8nam12on2051.outbound.protection.outlook.com
 ([40.107.237.51] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUjtw-0000vD-AH
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 04:37:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHTJFWiW6RyvzA3YAiPMp99Lt8FISQ4tWbaNMtuHMC2ZGifKYWEf6YkjhPMNL8uSrb35S2AQ93WKMrIa3bG322RWd7Q7waTuJ8QTwqBdI6p6kmdkLAyzztHT3n805wLcQSy71788kp2kVIfZ2cdxfacTPxKtOSFU5GmiBO2ydPjW7wtKtshxehjJhBkVd7HrSPlrNisAxystFHx+Tu9e1kQxdeC996boVq5xI+JSLqECOBOYPZb51Hu72rrLhuw8AEZTszcuoQbHTngKr6AayB3KNlGU0pZKaIa0sDdyCJDtwsb3/DRGuezFy7EaN834yAbi1VPUJi0y6hzMewMeaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+88KA8ZxBlZvF3MCD2se+3EwTYWa/GkHmgoIUXmkrM=;
 b=SL4OyK7N01+l7Z6zfRY6wI0SxYlMvJ+ojYPfKU/9lPcQeKEB10imVYyI/nJkFN+KPFxpeEesHmw6bMOPRk/NBSK5hqyu7O2L7etEvupSLB++y/oEjSeKKYZjTrflOU40GdEPQp2NqvxQfg13z6Uv+/4YLSNfRFuzlr+dwKFsdfId8yxDW+ltOPqCAyjgacpBySQRFcj4OdcLCX/sucHRuSjEHHoOxzrHtpsKDzzaomsi959EYSdeshkRmedyrc6bgtyvB+/0pV4CtGxeO/fCgj9a/HZ3zNZG6EYp/ecjLXgJOqNRuQckY747trxs/ihHcw07YnvBfoTmssLZxAayDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I+88KA8ZxBlZvF3MCD2se+3EwTYWa/GkHmgoIUXmkrM=;
 b=sdeWNaDI732u+4106AYgtBBdY0QSNdMwDi5lQ8R+M6MrVwEQEI7QQTZVn4P8kwVCCCG6qEjXBMrCv64/WMsZchNO6OtlyG4sDW38T3Gsaq7zx2p3c3KTAfLsl+jckFT3hmq7waA8gWk8ZI7+bzxKa9lcVhBMlKf5VY9xFeVuzks=
Received: from MN2PR08CA0014.namprd08.prod.outlook.com (2603:10b6:208:239::19)
 by SN6PR02MB4365.namprd02.prod.outlook.com (2603:10b6:805:a8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 2 May
 2020 04:37:15 +0000
Received: from BL2NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:239:cafe::2d) by MN2PR08CA0014.outlook.office365.com
 (2603:10b6:208:239::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Sat, 2 May 2020 04:37:15 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT055.mail.protection.outlook.com (10.152.77.126) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 04:37:14
 +0000
Received: from [149.199.38.66] (port=34458 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtn-0002fn-Ex; Fri, 01 May 2020 21:37:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjtp-0004eZ-VZ; Fri, 01 May 2020 21:37:14 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0424b5Js003804; 
 Fri, 1 May 2020 21:37:05 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUjth-0004de-6f; Fri, 01 May 2020 21:37:05 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 1/4] drivers: clk: zynqmp: Limit bestdiv with maxdiv
Date: Fri,  1 May 2020 21:37:00 -0700
Message-Id: <1588394223-257635-2-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588394223-257635-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588394223-257635-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(39860400002)(346002)(396003)(136003)(46966005)(316002)(82740400003)(186003)(36756003)(478600001)(426003)(336012)(4326008)(54906003)(107886003)(26005)(356005)(81166007)(2906002)(5660300002)(8676002)(82310400002)(6666004)(47076004)(7696005)(70586007)(70206006)(2616005)(8936002)(9786002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 61644f29-80cb-43ea-154d-08d7ee527cbb
X-MS-TrafficTypeDiagnostic: SN6PR02MB4365:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4365C9EE822094FE8FCE9B44A7A80@SN6PR02MB4365.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:923;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SiF05vbsofkBuGVPP+gJ6I2fFzyNEnuGiYb2QkGga81leoRz69t5CBgyhada5pKoYgznYHYNTSyJ5CgS+Kc9eXQzv937qfa7v/uR9ylKTlcxq4JzxL5aVLvkjy2UJLHXpHAY7rkW5//0bXvLXNtKVxWJUmpN96D4r2gQ6yHQpNyCN8X1OveeISyDxmfUrE+iBPZPaIk6JpjIrSm8VIuaA6oNQ0S1vQ5ycjHsUod/+vmTTMfwjNCot6Iby+rz/zvztN7CiYmX0sZ1gahWQ1WS56az9sZ1nGGE4NZXGdN6q5dOVNjClk3iVUzK0lKfnqPPd3Oue/Dz9EP52EptY225WvJj7+eEPavdMQf60GrKD5uTpgcz0WnzBlqnAujKKfjiKz/HHQQGUybdRL4n+8yiG5VZY0DL5O7UJVB7cPlhnnpvADviOMk+H41nVv/G5GYZaeE0B+JaLaXw/zryhid6KK/D89m2oYK9z2/RQrrc8dX4mr9Axor/32YScAIXgpJv8YtX5bD1EWs5AlU7W3qdbQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 04:37:14.3479 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 61644f29-80cb-43ea-154d-08d7ee527cbb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_213720_355567_D323A07C 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.51 listed in wl.mailspike.net]
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
Cc: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 jollys@xilinx.com, rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Clock divider value should not be greater than maximum divider value.
So use minimum of best divider or maximum divider value.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc7..5c41ddb 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -197,6 +197,8 @@ static long zynqmp_clk_divider_round_rate(struct clk_hw *hw,

        if ((clk_hw_get_flags(hw) & CLK_SET_RATE_PARENT) && divider->is_frac)
                bestdiv = rate % *prate ? 1 : bestdiv;
+
+       bestdiv = min_t(u32, bestdiv, divider->max_div);
        *prate = rate * bestdiv;

        return rate;
--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
