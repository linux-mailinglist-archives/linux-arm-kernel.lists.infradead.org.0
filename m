Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5798B897CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7ZmmrE9MZE3jV+yVQ7XwLq7Ou8llDaK9ttFaFfNeZw=; b=hnI5dfNGoZ1F8N
	e/LQnuImnkclLNKJt5k+e/LtxPgclVJmRlXx9GIWgN0RNONaMvv3WCdpGPuINWCREeAAGnrx1BnfH
	Fr/3V/OI8HSUErb6/SIhfeQ12I2VcXJRiLer7yRq07M36XwOESZrQNA9T3X9XiA1hwv2NRmaz7OaT
	vWFX6MZpmpIX/rYcMg7fDlyXc+dx/NyYJkKjypJyPDE5hhEU/563EpWTuzMSe1F5FO+gFApOtXOkW
	oFO+55/inRZtMC3UKt3XZOnyYYne2k58PKEKS7W+tYCNH9ESr+n5u72VhjC0FPJ6d9K5IFVHmKiFY
	aekM+W4BVvtfrsiyhGlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4lh-0002RS-GY; Mon, 12 Aug 2019 07:29:25 +0000
Received: from mail-eopbgr800089.outbound.protection.outlook.com
 ([40.107.80.89] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4lH-0002I3-MJ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:29:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UQWY9u8JZMtaxFB5QSjUH0I3eMml0zFFlyGVZcxfFd5Wix/EGRaIF/3JCviB5t6jc31udzhSDB8jwk0KOdCYrzAS0QjvRd63NqPgMGXReFvV1tTtWUdAMI0DVRe75FiWgxpmRufLEtoh5Lgteyqa2scZBM+pcLHsGAp14SdlulqOyWo/gK5JBnroiajl3kFGa0bxr5hjfd9sbVE4AXtu1HnrwjgkRHdMp39KN7RqDZ2QD6uSe2GxDPUaT/g2OLzltmOxe1ioHw0L99AOUgdBrp/R9u14P4zXkJfeL+TyTgW47SafdPiYk308xUHOZY+pTv7VVXiJCSRiVP+Iu52BiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVUzGQQkg4Rgq8QH1gJQTAFS5Ha7zRG7XkVh6mE1zjM=;
 b=TLjxiSKjBHbjz1FcWYLNAqm8wPhTIOUWtcjFxanPnmhtcS7d4QQ0fkAjts+PP31Ij3T08GLClWERDrWzN+G8uGeRgEvV12n3Xl0bc4+0o3UbyV7a5G2xvwyaMTGg2Dbqwlv6HRlFMiLqasJQXIx2jVhKeMh6/Smz0hp5LH+A+tUokxqAVCbYqMzhEDL9zh9H5cr0MDztfOaDI6Ok3eJXSXJFZc3YJUsUs4K1DR9l7d2aPO+AShJy6eBqYMcyJQF8e4P5tLAs3PMU+VXISPBlEYO1wj742E93fNxRQ97JaxTP9u1ewEzq7Jyf3/n9kWej+l0Nxsa3nsQLmTqjKKLHOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVUzGQQkg4Rgq8QH1gJQTAFS5Ha7zRG7XkVh6mE1zjM=;
 b=LjKOG3ZItawwkUlPpBgHd2WLTFGM4JBLpJJq6N2seZ9k9oHRi14leVBEiVhCXiSbfCoAwDhvBlnVzr7s/e7NPDgaYZI80H2bQGIBqj5UNjWvmVSFZqYxOdlmxlxxmh3fx3B5yQcFXoKpr3IRQPkjDfXXqyme+r315hjO/eCvP4A=
Received: from MWHPR0201CA0008.namprd02.prod.outlook.com
 (2603:10b6:301:74::21) by SN1PR02MB3807.namprd02.prod.outlook.com
 (2603:10b6:802:31::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.21; Mon, 12 Aug
 2019 07:28:51 +0000
Received: from SN1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by MWHPR0201CA0008.outlook.office365.com
 (2603:10b6:301:74::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2157.16 via Frontend
 Transport; Mon, 12 Aug 2019 07:28:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT041.mail.protection.outlook.com (10.152.72.217) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Mon, 12 Aug 2019 07:28:50 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4l7-0001gU-TP; Mon, 12 Aug 2019 00:28:49 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4l2-0000dz-Q3; Mon, 12 Aug 2019 00:28:44 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7C7SeIj019445; 
 Mon, 12 Aug 2019 00:28:40 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4ky-0000d9-2W; Mon, 12 Aug 2019 00:28:40 -0700
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH 0/5] can: xilinx_can: Bug fixes
Date: Mon, 12 Aug 2019 12:58:29 +0530
Message-Id: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(136003)(346002)(2980300002)(199004)(189003)(63266004)(36386004)(50466002)(36756003)(8676002)(336012)(50226002)(107886003)(47776003)(2906002)(4326008)(9786002)(8936002)(5660300002)(476003)(81166006)(70206006)(2616005)(486006)(70586007)(16586007)(81156014)(4744005)(126002)(106002)(316002)(26005)(305945005)(51416003)(7696005)(6636002)(48376002)(426003)(478600001)(6666004)(186003)(356004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR02MB3807; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2ee0ce5-8149-40b2-0793-08d71ef6b8b7
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN1PR02MB3807; 
X-MS-TrafficTypeDiagnostic: SN1PR02MB3807:
X-Microsoft-Antispam-PRVS: <SN1PR02MB3807A3A45658B7A819204788DCD30@SN1PR02MB3807.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 012792EC17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: LsEsAEDMzTiJm0rN+iUrxpRxRF0xFkRUgVgd4I65xBY1EnSM3xsFfN48vBgXQb5d6J8mgx+UFH9Hfro2vGT2u5Rg2BEnWPHdMYTEa4aBVzmPqBiGKU8FRsDgAkBeYrVmZHE5jOwp7u/8e4sDJCI0lSbTNk+5Iuv2dWr4pwwm9yiOi+PeYTS4o4esIYEazuLgadJliGSjYR84qaJu6HZ50Y84G1RVeHzB+VU5UZQNiRuaxpwThRIYu+GEBJCM/7CsD24H7NUa1/aEdlB4c/gzMB737CPVxRvZLUqYTUeYz7h0U8pw15Dyu3DgxFRqi2XhItcsc4H1zVEFA49zqLouq51zhuuxJCEZETNcFwXOAckUULFChoZYKPO6mspFlJ7+ygitkJ3VMiCK1HmryvUSRNTdjQo00hjgFLE5nTRu7eI=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2019 07:28:50.2772 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e2ee0ce5-8149-40b2-0793-08d71ef6b8b7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB3807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_002859_815575_7814F172 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.8 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.8 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: netdev@vger.kernel.org,
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series fixes below issues
--> Bugs in the driver w.r.to CANFD 2.0 IP support
--> Defer the probe if clock is not found

Appana Durga Kedareswara rao (3):
  can: xilinx_can: Fix FSR register handling in the rx path
  can: xilinx_can: Fix the data updation logic for CANFD FD frames
  can: xilinx_can: Fix FSR register FL and RI mask values for canfd 2.0

Srinivas Neeli (1):
  can: xilinx_can: Fix the data phase btr1 calculation

Venkatesh Yadav Abbarapu (1):
  can: xilinx_can: defer the probe if clock is not found

 drivers/net/can/xilinx_can.c | 162 +++++++++++++++++++------------------------
 1 file changed, 72 insertions(+), 90 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
