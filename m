Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E41B70CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 11:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TASxoZxqmQE1vnAZNRrIwi9TojO35hzRIQEiOpmU3dc=; b=kivIQZJe1slBmz
	IX1zo79Y583uKkjAsNm1kURnKOGz+65dpaB+s3mwSd3jmyebMH+EJLBGiHS7mKwAGh7SB6DXmL7hO
	uU/JVsNjhD/rMrC8YrRA+Nh34095uJ1y/9pcvIBBsbEQhYJpmduI0ile4rzCzXEfmHMUizbF5jwve
	UEO44r96XLFj+xFauJtJtPYW2t/yPc8A/nlhHO/7VuH9yR8Ui/nawUnBbQaLpZ/gEA+OzE6FmJu69
	RENmgLoz9827ohGiLAZnN1SpFQpHUn9KiSmkpjEryNzwnOv/oiuxWDsDJRzs4tDq5Ql+kWemN3IyL
	0WZSXWQmqNaPi+L/heiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRucC-0004lz-OY; Fri, 24 Apr 2020 09:27:20 +0000
Received: from mail-vi1eur05on2067.outbound.protection.outlook.com
 ([40.107.21.67] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRuc1-0004kD-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 09:27:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKzxG829k5GPx5BEBUowYqaxFfzwA/N1UGnyzvOwFfmw8tjbtrKetrPx3X0oJdqf8NifhAiLqDjb5qT3WYdEQVd1ueSEmuynrUbak/1xajCDvA/bFsxWyCNQFHek79DjNPLa2wy9T5otXfg6CUoXib7haBL6tYLGT/AZshijbNRh9sXFWTN2WbwD/rvddnz0J7I8ownc8KKfmz6yjkRXW+LqCU+3NA8f797vQM5G4+fc4AIcwvXKYp3eqww8VCEjYk0a0CL0ndx4CLO/vQcRid9D+SI1fQv5XsAz6+kNVo+nURsnw13w6wxE+gkWD1BZUC12Fykk+gxG+0wH5d96Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BJM/Wjjdm80vp5fOaTtwFDwVOJE1Ui37dfD8EIGaLM=;
 b=AjeqAnGi28XgnXwHLEWFNdsLGuliKM0JiYWkjWbad8IoEy81c0NESkWYU+6tBgOwo5tqodHRofkCQAw8WOXkfNtSzYlUeebDten6zOQTaAkcjimLPKvPCF33DjnnUKA9NBFnH3AJKm2J3LoHxZWQwICtdajrPQCcz69mHZjNI67rmpJRg2uoqBVMR3LvvXm4lcWjKLcFB8Nbhl4ziHiGz62pmtzCo98HHQa/2Av1DOilr71qX3N5IX/9VfMew+OYJINNDwYxyRDbaGFuUctg9CZhr39oPErMVcBdWZe5pEPhKeQSajAVs4DhopZWPmEJt8KoH+opJ3f8VvkF5Vr32w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7BJM/Wjjdm80vp5fOaTtwFDwVOJE1Ui37dfD8EIGaLM=;
 b=k8zpJ+8E6HAW344HUwXWcJoE895ti/fPQo/v7qyhtshfK4628Z/d7OI5PfbXzut6vK7+H7tUNg7YOtfWt5kL4cwTSJqv4q85S30g5TvbmKFl+nO6iU0J5YA5UowECavC2yL0ei0PBVjzPQju/uL7Mcp7d/P5ezsAIzHo/j8vnFI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB5876.eurprd04.prod.outlook.com (2603:10a6:208:130::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 09:27:05 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 09:27:05 +0000
Date: Fri, 24 Apr 2020 14:56:51 +0530
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [net-next PATCH v1 1/2] device property: Introduce
 fwnode_phy_find_device()
Message-ID: <20200424092651.GA4501@lsv03152.swis.in-blr01.nxp.com>
References: <20200424031617.24033-1-calvin.johnson@oss.nxp.com>
 <20200424031617.24033-2-calvin.johnson@oss.nxp.com>
 <b583f6fb-e6fe-3320-41c6-e019a4e10388@gmail.com>
Content-Disposition: inline
In-Reply-To: <b583f6fb-e6fe-3320-41c6-e019a4e10388@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SG2PR02CA0022.apcprd02.prod.outlook.com
 (2603:1096:3:17::34) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR02CA0022.apcprd02.prod.outlook.com (2603:1096:3:17::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Fri, 24 Apr 2020 09:26:58 +0000
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 231d6687-ca56-431a-727c-08d7e831a6d4
X-MS-TrafficTypeDiagnostic: AM0PR04MB5876:|AM0PR04MB5876:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB58764AA80BA6B44F9D790328D2D00@AM0PR04MB5876.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 03838E948C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(1006002)(1076003)(6666004)(86362001)(26005)(6916009)(55236004)(7416002)(53546011)(6506007)(316002)(2906002)(33656002)(186003)(16526019)(956004)(7696005)(66556008)(66476007)(66946007)(52116002)(44832011)(9686003)(5660300002)(478600001)(81156014)(8676002)(54906003)(4326008)(8936002)(55016002)(110426005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MSi2/CvGv4lgZbLLcZVAVAOvEIX9CrzBvTS15v72pvPTrViC1AgWrM3ktcWS/ceTTtWy+oYYkt3XLYl3sYCuYu6kb+SeBKrNjrwXzzmoaz1MQAeK0x68FmHHY61NPbzls4jfjI2rpac6/DUXYpzhYhoCitEJ24eneQ8tAjgWAx5MzRc61tiZW6aUy3mFo1lTdd5aGBFnKs386S7pBV48dw63LBAHtLPfK/KwmQ1HvAsVTRsEb5OR3bK6zoVDlYdfqExrs72O83RG3gtCwgkMp4ILeZd8/GSPQUlZ1fbYUnn6mEU3dyRWOj55elgpMXjYfjz8uik0ldSEV1Rib6ace2sulCKY46gk2Ng+3694ZWENxJa9MdkrAd9YI2bbzEkltuReSakg6wTuEGv6chy0JStjsj2d1IafDPFS5KLykDIQlmIHQP7bd0DM6L7I1cz/WU6JWzAGeituk4PI4gIC1aDUhNWNgms+NNgOpz8+ZlCi4dT5aexozeo3WcEBW0ET
X-MS-Exchange-AntiSpam-MessageData: y4WzgI6rnORMM+mBl1isOtVe4dxq1Hmx1WnK9g+S9+3Yt0oMzG5Zz6sv0BMOSe5j5qODjS/Uni1SF0TIF2g9QA3a4nvwTsANxpXTlvlqsjOlhztr+5trUh2M485sAAFeloO6yObNGU46h3QaM+OepQ==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 231d6687-ca56-431a-727c-08d7e831a6d4
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 09:27:05.5402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3JO/kr4mDENotUQ6nwLzCHVrYQj2yFv4fIUHHeD4B3juSgBjC0UXDwK0kxTm+HREssjEdBcQNXQewOvtLY6faw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5876
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_022709_127073_D503EF97 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.67 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>, netdev@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 08:45:03PM -0700, Florian Fainelli wrote:
> 
> 
> On 4/23/2020 8:16 PM, Calvin Johnson wrote:
> > Define fwnode_phy_find_device() to iterate an mdiobus and find the
> > phy device of the provided phy fwnode.
> > 
> > Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> 
> If you forget to update the MAINTAINERS file, or do not place this code
> under drivers/net/phy/* or drivers/of/of_mdio.c then this is going to
> completely escape the sight of the PHYLIB/PHYLINK maintainers...

Did you mean the following change?

--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6354,6 +6354,7 @@ F:
Documentation/devicetree/bindings/net/ethernet-phy.yaml
 F:     Documentation/devicetree/bindings/net/mdio*
 F:     Documentation/devicetree/bindings/net/qca,ar803x.yaml
 F:     Documentation/networking/phy.rst
+F:     drivers/base/property.c
 F:     drivers/net/phy/
 F:     drivers/of/of_mdio.c

Do I need to send v2 with this? On checking CC and MAINTAINERS, I see
only hkallweit1@gmail.com was missed.

Please let me know.

Regards
Calvin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
