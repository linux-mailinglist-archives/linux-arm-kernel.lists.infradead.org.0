Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FE01B6BCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 05:17:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cJdUK51L99EO+ety+/U5xwuwfwDKgBKlVqHciS9sNZU=; b=P2mxje4HybEoJi
	0o4iO/CKDoF7YlTLMlI3luibhbOZ5EGLI8aqmWptniqaEv1jYgOn4St7hGOLejO1XMiSp+GKvOPO3
	73N9oaN8wlEiDMCIwfGzckOuZsLmgZlotO0YUazvVdugJD09EU4DLTIVcEkk5z32xVRqYgVJ4qBTc
	LS421KQX7hLRrNp5X0bYTLPpfw/1TorfwCuoY2azpXiHpS+IFJ6tjggf2ru+nNdiaGNP+B+jMCMrB
	LUlaTkYY9l+APH0+vej8y9U5tVfF3UZrou8i+RNiggRxcgHsBd4bjxr1ZzMf/4TttH40OHhNsHp1F
	1n5sPULiRhPkbXIOBzhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRoq2-0006NR-H7; Fri, 24 Apr 2020 03:17:14 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRopn-0006My-ON
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 03:17:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O/8eldznQLvZrO904IQrt350kuFHzGkwB/yO1fn/o22wZpMw+rcZQpzgf+z265Hy4PMlTUHeo0jOpQ5RJJwHgW5FzAP5xqyBm/JHN9S7Ry69IPcbCrov6YEJIWp31ZUGnuSbY9wQ/lSU5+KUW/hVzT7dWqGQixU0SdIAa+LT0Njzr13qLvVcGr5s/W1QXlPfgGDoFCZbRFJfje/76rqji7gh7ar0Mqs7r9DKBX5nEuSqHOhkNRmGcUSkDugBwCFRsUT867R5P1v83yC/NUVJjY9Gt7UumsW5swB6e+MQQYiGv8uCeaCDyTSS1Y/Sc1I3ZwmR1yiW19N9ga8kVYRYsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJrrKFcJj3+4b7N2H1iiMO/M4JRjznloM8XjSAKSD8k=;
 b=f1CmnYcVsLYpaMSVNkKKv02WKV0Dj682avmlorXVwMYmK5af09uvVyNY3hFa3eKJ0/Lwj3LHRzRGOKRnnpX6q3aI4KEh95ePJm8HSOcN4Gm2cwfE6ApSArHKPgc3//8+D7KZAiYHXm6rj9MRP9MuZ3YXBYO80msS63rb+wmOwOwaE3qdPculyYMmPavICjThzHWVWvtNZPLMTGZ9ZvW9FbjWadIws/DeTu5O/HvDRII+JqbBTCDPNPqDzd10aEUYEbyeDymb4AXyj7zLHPXS4ZwipLOrgepvFfcMFbnvRDQTYcnJJd7TwP3MKL1vVNbOOLObguOoxOnVAdpnfuHt1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TJrrKFcJj3+4b7N2H1iiMO/M4JRjznloM8XjSAKSD8k=;
 b=AO8VnscdxjPszv+bw8fdlmeHQU47kfxYuvHTHIMjxoNbtW1vgQDrJWoOkddXHGHE090kKIjU4RCY2749Uj+ffsRl+9HnLcpAAdudNvPt+t4Y6i5tVKzAMcd/6v6zh6MSfHF+C8Z5X4ReVp5QmL+M2jaMG+ytqlP9674ro4M+OXk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6788.eurprd04.prod.outlook.com (2603:10a6:208:18e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 03:16:54 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 03:16:54 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>
Subject: [net-next PATCH v1 0/2] Introduce new APIs to support phylink and phy
 layers
Date: Fri, 24 Apr 2020 08:46:15 +0530
Message-Id: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR01CA0122.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::26) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR01CA0122.apcprd01.prod.exchangelabs.com (2603:1096:4:40::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 03:16:47 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9a18e40c-2bc5-464a-b9c0-08d7e7fdf07e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6788:|AM0PR04MB6788:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6788154F4A9CE76419D7739FD2D00@AM0PR04MB6788.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 03838E948C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(396003)(39860400002)(366004)(136003)(376002)(2616005)(8676002)(956004)(5660300002)(8936002)(81156014)(186003)(6506007)(16526019)(26005)(54906003)(86362001)(110136005)(52116002)(55236004)(2906002)(1076003)(4744005)(316002)(478600001)(44832011)(66946007)(6512007)(6666004)(6486002)(1006002)(7416002)(4326008)(66556008)(6636002)(66476007)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dCsP/QPRSPAUxNxZJ4eoa/zz3EqRmHC9TArQJt+q6J2FiJbRSCh1AlejB+s9hyUOLP9eS0Z0mnDPcKjhY7XGEDqSb2xybYlS0F0tFU2h8xM+GWBbC1nIxeL9ozn++5O/URn/fZkC2L4Uk7P9kqnl+zn+HRAxcoDyePBdCqrnHiRxdvGSZnB+g7tHuyCPoC3VAW7kIbHooN4e7dq6RrWAahcI07Dde6ISmZjjTZfY0KQkBCjj6EGFuSBv7VyO9FzqsqFJz2HFwZ4/nZ+HG8EQ6i/RvwuxhdiAt9d0tF6r2KeD5MWRD4ucQ4YpVqvjkX+vm6lPz0CKty2mn9Ot1eWl4eng1SvvvZ320KIVcZqmoeqH2tbKCv1VV5/qDO2Za3UdhGJW+vNkIYXOXpX0LjoHcuT6kIS1qEQ+xjj9gqOgp4SxYQJUey4ZiC7eMNUePmrLrWz628vuweiNpOQavHq5Pbvy0XJ8Dr2LvuHwK6ylBCq8m//f6dCWVKsjELXsUAPz/pAF54xLFpkfjOhgz4Ms3A==
X-MS-Exchange-AntiSpam-MessageData: Ebr4Z3QciwkNvQ42QuOa4Qnxz+R0EyuBx6m22qZ3d/H7ND9J7RlthYWoVnRtpdk+uZDtvfl1POf50jm1kvVS1lYmBgn89XNwlxbat1vflMBsvIw5Qb3es8+oH9RAFMo+irCn/KX4HldLcJNwEwrJkA==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a18e40c-2bc5-464a-b9c0-08d7e7fdf07e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 03:16:54.8071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pIkOqWZBfwx9u6+XtJPAOcqqltcxh5pUFPpa0Ka+38xLCvrHeetoeSFEhoEV179VDLIGB1vMGckIksGs1dJlQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6788
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_201659_857477_7BB14840 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Varun Sethi <V.Sethi@nxp.com>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Marcin Wojtas <mw@semihalf.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following functions are defined:
  phylink_fwnode_phy_connect()
  phylink_device_phy_connect()
  fwnode_phy_find_device()
  device_phy_find_device()

First two help in connecting phy to phylink instance.
Remaining two help to find a phy on a mdiobus.


Calvin Johnson (2):
  device property: Introduce fwnode_phy_find_device()
  phylink: introduce phylink_fwnode_phy_connect()

 drivers/base/property.c   | 41 ++++++++++++++++++
 drivers/net/phy/phylink.c | 90 +++++++++++++++++++++++++++++++++++++++
 include/linux/phylink.h   |  6 +++
 include/linux/property.h  |  5 +++
 4 files changed, 142 insertions(+)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
