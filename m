Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E7015B811
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 05:05:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EydpMXU3rO16raRhHGiIR6+xpMFo/X/om4v1TnVc1YM=; b=NaNpmKXZ3z68Wa
	kobNHsSaCJvobybm/nByxo41oEKc3Xez2mAsG/yu9ywUjhXv+0VYYBMjPCxaJhrPsTxOErozb36WB
	bucMOQsExCdRTNWxRn17LKyBgkuM5TqNwNmGZhU7XiHMcdHimmdwlNvMw+bjEDF0iNEV6q2cB4W/a
	AM17c4/X7bQuM+D+4VLQrNx2hridqqTUlCWaNbgZ+HhDza4J9JDVdbTtjRNuD9YU6ciRNMsm6t36A
	bhZaR2YB5H0zl8M38ewrM6Bv0D+7flHR0RUDRR1+B+sOdu+ttTzGeHnq+c9d6OT57tXf286tkzFOx
	xCzUuHSt96LNfxZmM97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25kX-0002Ll-6s; Thu, 13 Feb 2020 04:05:13 +0000
Received: from mail-eopbgr60040.outbound.protection.outlook.com ([40.107.6.40]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25k0-0002BT-HP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 04:04:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXxxabR4Iej2OCw6B8oWTg7ip+0FZR0aEd2k8CmE65YaD6jwnENf8hC5jlHPqImHycswWuYfTrRbot2pOk9E0B+0YBaOVNBlts0Q+J2YFTi+ZApiobjmrrFb/bt+4WnfMxmmXXUN9u2r4YCVFbquHS64vGDx+9UK1Fc21I8CGZYOXEXHUVwQQkxAR54aCDdSJYqUgT+Y2Eqy5/r+QnB9zT1UG/rFvRSOZHSCoLYO9mlKS0FanYZ3abWi6m8IwPnLQUbDHImI0MYkzSk9o+lECJTul3xqKr4WLOPRKSMDkM4/0clOG4xqTUf5ManNcMAd7ntpkJdHwbw3eNALsRlKpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3WFJxMHK7dWSBJAP+NSyGDp4Aeq2W5fMrYXJyaIzlg=;
 b=QvWxiJh/HELF9nuIDng2vEZOSsRu3Q6ssxDDxFyx2qkNrHibEnOyZPPVDQqAXwcMDxh8UtCemuOg48mXIM2FsFEET7WC/bkiz4TE7kek1NMBeQQeM/1PDjCp5bTPCK0sE+m8nBshcAYA2hVDJjkXJHMdfmDvnG7fQw/sGnfoFR0r795zp6sGHR67AIdxWxA0M9bwkYhjZZnJJJXc5cMjjSwk3V0xdIzzymhw5D5arFi0IROpu+vfVI7cu9WDUGM07mIgDsj085dpvV0KQLlDMOpgUYulTKgg4HY6FDtH2KMdREpqEEQisR/30X1TdfAelUizb2FJDkMlBUzHF4sFiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3WFJxMHK7dWSBJAP+NSyGDp4Aeq2W5fMrYXJyaIzlg=;
 b=IHCSD518lSxcH/CQAm5cq6X6gsRd2H3IQ2MQqF/5fCbzhJJwKKR/qVJthV7bFh1+vp50fP5VFNdg1874K1sknH1F5OhA2MhVKWx+J64+Qb5A/CBBk6d29F9l948RE2J0t5NpXL15h6p/Cw804378TRcusFDBI0u4O21ga8iMvxY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5220.eurprd04.prod.outlook.com (20.176.215.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Thu, 13 Feb 2020 04:04:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.024; Thu, 13 Feb 2020
 04:04:39 +0000
From: peng.fan@nxp.com
To: sudeep.holla@arm.com,
	robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V2 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Date: Thu, 13 Feb 2020 11:58:49 +0800
Message-Id: <1581566330-1029-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
References: <1581566330-1029-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR03CA0056.apcprd03.prod.outlook.com
 (2603:1096:202:17::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR03CA0056.apcprd03.prod.outlook.com (2603:1096:202:17::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.12 via Frontend Transport; Thu, 13 Feb 2020 04:04:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 88a68435-b4a5-4cd8-e033-08d7b039d8ad
X-MS-TrafficTypeDiagnostic: AM0PR04MB5220:|AM0PR04MB5220:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB52206F01C4B811437CEB602E881A0@AM0PR04MB5220.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 031257FE13
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(199004)(189003)(52116002)(4326008)(26005)(186003)(6666004)(36756003)(69590400006)(6486002)(956004)(2616005)(86362001)(8936002)(2906002)(478600001)(66476007)(5660300002)(81156014)(8676002)(81166006)(6506007)(9686003)(6512007)(316002)(4744005)(66556008)(16526019)(66946007)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5220;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q1ByVuJf3pUlTJ0jbkQleKpT3awRjOt9vP5pOlIW/eFUCOJbCgVt63jdsklY1VeBBbgAy3zXcZl793bpnW+hfSuw4JLRRq9XLwgraE4nolPHxdXOMeIW2QPTefAbDWlfhrdJwdu1nCjifj9gLVPID7SrOzJRuWrCoVq35tMrGj5IIZ8MWnSURDB3DgnXVKrXKUXSvp6dRjMIu1aIKXTaYWyQA9iDBHhFjKNvcQ3qMryrlj2VQO11zTzB5/oG+e/9mdN5UiBkELjtlkpGec0yo6FMzegevdeXcZmx0lTFLSlBQgKZuugX8FdnAKl+sexniUdjk5LOicrVeCqG1p/I0/bXuzCz7qpVx3GdENIH1GgSIDhHbO5O2JQyqD2bVKuVkzLzA5kagpd37bwhYSiS2FuAHnKJUS5HtsfkzfI4eCPF3ibppz3GqDPwfESJ9aJDT+aghkp5BxiX7LBjkJxP40lYSsrOfdDVu5opgKnvK8xCVVxQr4hyjGICPI5Vfi72OxmyU1C1Pji0cy9nVYB060Vwun9wC8bv6RQl2syib8asfDf7ks862qVmMhAIScWp
X-MS-Exchange-AntiSpam-MessageData: 4eURe24jHErBakCP7SwP7V7cm+vrsKeanj/tOFA8ycdFHWeLxrtCY4fQ2z7Ut3UzVOpHzZN0fXczwajO+OUCvi4ksGxx6kNkqTrSLLRYvpuM6DwRV4dXtI/Uv1ISjt0V5v1GTKWyaXL56o4/XkusLg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a68435-b4a5-4cd8-e033-08d7b039d8ad
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2020 04:04:39.6659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pAvLIwhVY+B1hgXBB1dsLy9x+z0OJp+skJUhPAe4RwaAY0T2r5rmcdOsOrR2M7PxxT9S99bNowrZ3Ftk9o70Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5220
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_200440_572644_BACBDFE8 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 f.fainelli@gmail.com, viresh.kumar@linaro.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, andre.przywara@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

SCMI could use SMC/HVC as tranports. Since there is no
standardized id, we need to use vendor specific id. So
add into devicetree binding doc.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/arm/arm,scmi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index f493d69e6194..dacc62dc248b 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -25,6 +25,7 @@ The scmi node with the following properties shall be under the /firmware/ node.
 	  protocol identifier for a given sub-node.
 - #size-cells : should be '0' as 'reg' property doesn't have any size
 	  associated with it.
+- smc-id : SMC id required when using smc or hvc transports
 
 Optional properties:
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
