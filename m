Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793991E9B9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 04:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BgEsMXeTocs50mkfaiXJrXOgWQw+3um1Z+rt2KN6poo=; b=hPOk+b4UPyhk/B
	gd67uz9hFa5vGm5doNcOtT1J3mcjBlGihklL4KnV0se60PhvWJyEHNpmnR2/msNTb6BrnFaDw40El
	2JI8MFIHA9VwjVMKjPYbMIM+3YzyIXqwvBaxh+Ze+axiPCZmuOX3Dt8MMP9XSg11533ZKBHrBZcgI
	1Mg05/jQQQonsPMRJ9si3L0hFqwJD3k6BTokBLYe0LEbPTaD9fruAYuccSumYGS2Ajq7MLEyXBtnF
	COJdBzSwNgQ+is8k0moeEeHi3GAvUJhn0NtkUTeeOHrKgmxp+bq0IW25MNzX7gcqyJCCH46zGibk4
	U9K2uNUsreDMNukMy3Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfa0h-0002bp-TT; Mon, 01 Jun 2020 02:17:07 +0000
Received: from mail-eopbgr140083.outbound.protection.outlook.com
 ([40.107.14.83] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfa0Y-0002b3-Is
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 02:17:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aaBC2KHnO0at449N3rMSMUK7TB1lC846m3Ke870kSFMUHLYN7Xp6toWeayj097+v1z4H9WOB9X6ZbewzS13GeKgIBIPkeDkK5qrGX1KC/iVG3l3Qach37Nq9+2qa4GUEqLrtT3E4fGl/PkpN6uIPLCoUYp5CRhdMBnNvIC3H+6+K+2w5DUVSi28F8dD2E+M+YTKQg9eV5Friq3ipnMjErkLfBBMnUNAq35aVRCRVKtcw1wV14o5dQCTwuG23kx604kS1DxR8rUzrBoNgfgLDSaQI2GHAODrGtk1Yylq5GfzqpS7bDNbhshueXNeIJZpqGJF4EgHMNG5TLJrbnFBjZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJMPA9QMAzEYk6cEERdf4JbmBymwZMKNaMK8ZPolpXA=;
 b=DWNjShN57c7DJjgND/U/C2naMTkSkoBtGR9IY4J1O8LaQhyMv6V4UuK+3BYspJT0nngnhld9BgXUYz3mp9lZiX/0L55P33Eim/thf7nUBeCEpVfh9OYbk7LVdc3+/lt4A8K4c9pd3DiA+CJqdkj6H+3UpwWbdJV56OvnkF8K97F8yGuHx0QwT+QnfUbEd7aV0AZjpvt0asVngPb3T1B7ckgimrF1XaFumnqjDo9ed8LD31WOgwNmHVg7rdX8GeEhXyBIkrssdbNtxdHBS93nGuTktCEXUxUtyUsRRenHLDscaHJ8Glz/U8oUyfsjB99hvtf5XaVFoO2Fu1MZoHJ8vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YJMPA9QMAzEYk6cEERdf4JbmBymwZMKNaMK8ZPolpXA=;
 b=GwvGw0xDUDTCqAiCo3FzUQnRUxbN7sgo6ZuyO2EeYdFvaa1tt99Eq7PdHJiun9cS/OGawcnAzy3lbFt99c835+PUSD6se0W0J5tiw6o0Bi+h8V7ygq2j9rJim6PXpyM8hKtYpQiw3UIhiXvebfLkFqzdyH8PFNef7qAwOFrLW3Q=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Mon, 1 Jun
 2020 02:16:52 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 02:16:52 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com
Subject: [PATCH 0/3] arm64: dts: imx8qxp: dtb aliases fix/update
Date: Mon,  1 Jun 2020 10:06:17 +0800
Message-Id: <1590977180-9957-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0157.apcprd06.prod.outlook.com
 (2603:1096:1:1e::11) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0157.apcprd06.prod.outlook.com (2603:1096:1:1e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.17 via Frontend Transport; Mon, 1 Jun 2020 02:16:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4f5f4314-6cda-402f-7106-08d805d1d8b9
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2744:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2744EA3997227438FA9B2AB7888A0@DB6PR0402MB2744.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2276;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SNW+8ZcU7rEi+HJrlt/ZRjMJuduSsvD1k8qb+1jZlesmzBIn+dcfWn4ulG2otXLy24WUMAkeAQulQN96kXeQ6rpP6CfDrxMCdRrzKgfvsxptsqRExSVOGHXdOjPbVG9guaDzewx8oPMQIoh6MhN1KrCcglJneqYYTj4rg39g6fbbqrZASQvnFSpqqNxqx34xIQQ23CVYKgprhLcmOlKtFQLl5jPK3ipibU4nfVh+YbemfJBelexUt/IHMEQfsYU92SjnluDHQnTVDHyPO6NTvN5t37qUaiEvYBWrhUce+qjgGJ9AR7rlA2awTIXnw1DJtUSxF58+md/Z99kDW0Dx7QEwfEC1olMljj4MgLrXa8tiUZfwA67ksPFMXJ4tQl99AKb588xHkNHxbxo9DBANMQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(136003)(346002)(396003)(39860400002)(26005)(316002)(52116002)(6666004)(186003)(16526019)(6506007)(8676002)(6512007)(9686003)(478600001)(6486002)(15650500001)(8936002)(4326008)(69590400007)(2906002)(36756003)(66946007)(66476007)(66556008)(2616005)(956004)(86362001)(83380400001)(4744005)(5660300002)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: gEeajkaOR4nYJKvmNv7Bi+xlpBIygq0hLhTbftUNJuQCVdlfqDKNK4QI4npUhOFC9tpS77gonDcHSohJQRKsLOoI+EOQ2xKB9DcvdHON5gGHYeADgVwHXfQTeJ0TYE7n9z8DBzbXEt+WjDJbIilaB1EGx9Z/bciAG3uogSSNIpvDAI9PYTYADOiDACziIo6cX6+YQI0dmvBZJ2ufb4zIbI87RShJPqNuEa1h6yaVqZgzJy8MB3g9Dqv3YSbBgRP0r91MHzztiSt1xxk0Mn8WxG9/f9X9pkcVOnz2zN34zNLgSFCIA+MxGAXj4gnR88tr76gnhLj0oYA/q49WLeJjdBAva+1WyVXvKfe49Opy8QFVBC4zRP482kzcl6acRVB+jXuuyFKmkgAsKF5L3vkHr++GRKzJVJ7iIDrp4WHF2XHDmvNchU1vSZEIdN1U9X//Sh9B2jLKsv2Vq4nkK4LKJSWhhCCvPbYtXi17I7DHSv0=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5f4314-6cda-402f-7106-08d805d1d8b9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 02:16:52.0788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ed3m5laOHHgGpJCV4SJ4PXJJ3DFljW/OSLLA8+kSnHm8h2DWvuEmpuVg/rLx64pusiubKxYzlhqXNIDkj6zYXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_191658_730982_02BFD9C7 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.83 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Minor patchset to fix and update alias for i.MX8QXP

Peng Fan (3):
  arm64: dts: imx8qxp: add alias for lsio MU
  arm64: dts: imx8qxp: add i2c aliases
  arm64: dts: imx8qxp: Add ethernet alias

 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
