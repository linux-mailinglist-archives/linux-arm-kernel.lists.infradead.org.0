Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DAD1CD37B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WBznUToMkEZuRX9HwI+Ss6+y+hgMB52Tu/hww5pyVA=; b=fgSYgh0bcdUs1M
	/Y+pptoHOj+YBGTcT9p/ZaFCZO/GRwnpfM43UQIGW+Qj3oYHfN+oV/ayzMopyUbtvhZRudaS8s81d
	Cs6pfNHJYM44H62AZxgTdQOoPzQC3MCiodNVy5q4Zqbx0zkZeKtsboao84i30BNNfsVdkWBd7xT65
	nlw1CE7np1gu0Gozcw1irJKitAJH3Orm2FhVfZiuR2ZYP7oMR0ItQPiyqm5W0ZwqeaIjJsRFHWcc6
	v3mDf4tINz3RQ1QHBpWFNX3l/GG4H/pppUvZUPMO3TZkYHQdYD3aznMy4MNNgJrx+UBGrKAaN0ffT
	cNt1Z4Ao+ENosgQCtFmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3N2-0005HP-RG; Mon, 11 May 2020 08:01:04 +0000
Received: from mail-db8eur05on2076.outbound.protection.outlook.com
 ([40.107.20.76] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3Mt-0005Gr-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:00:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkbvyZrqk0GQNqRpDM1g9NJsXjj8G8wz9b1NsUheOs9Nu+qldcEB2kTAyoe5NOfwz5UHKfVFX6FsHDdRlNWDI7AYUQWU+rbirKdee9q3gP/Ef/At0J3sLZ1VhNEghujziRyLfDxHs0EWC7ulZfSNnl5Ebj+l3t/fO+KZm7qMzHZqgLiQVc5MaPz4mF5K/nEPozNI3CO0CS0Cgo9rgvFXhc8c3Tj3WOTf78GoeCbebtptXsc7s7xFT62weyYFsHdOI/73ZyQmFsajwfsF4a0e3JqC4pxE4ews716o0BzHPL2SeNFbt313FQFZvZ/zmdm7oTTEOZILKp0Ho+fPmS9wkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JTP0P9pjvcxFCQrK07K5ZTIJZ83C+zZ4Ihz86RHu4s=;
 b=H+OU4VjiHC+f6FV2hHQRtIuc7so73rAODxGUkWLeWtV+neF5VFJ28GU3Sc7cvK5Gacag5s7azemfH8MTI2o9Rbq2PjIZVc/YwIstLKmuNECqoaFKeXokuGx+XKW8rPi3oYr4Yem0Wt4eMOzjHXSCPUITJUQMIKjxSijIJ8tKvf/1w6UgOb6a6Fv6tVLczcPA2QSWdVLGXchEOC0TsTaVswsV3C2+3o08u1jho8gSuY0pUZsix1r81ucL+C9sq1AfQWPtrL/EaiZUUfL7U+JuG54G7OYBxWoYnCKwYk1Ylq4ehEiqVpHff55O2Lf8dtAfmJTczW+b1zx0nD4BSXOosQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2JTP0P9pjvcxFCQrK07K5ZTIJZ83C+zZ4Ihz86RHu4s=;
 b=F0jgDG8BhLno0EFuIi3PGvjlZZCbdA9rUwlSEfny/rt47uaRQaOGdjnskDYpsL184iQ1YqyXatTbXeMdczY5xg/b7E9/ayylDvymDFIGKBH7HTg3BF8g5kxagIIzX7jopCfEzZH50lbzYPa3ADgWwPnLLDJx8kXPPJV378TJ1TE=
Authentication-Results: lunn.ch; dkim=none (message not signed)
 header.d=none;lunn.ch; dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB7012.eurprd04.prod.outlook.com (2603:10a6:208:19e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 08:00:53 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 08:00:53 +0000
Date: Mon, 11 May 2020 13:30:40 +0530
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200511080040.GC12725@lsv03152.swis.in-blr01.nxp.com>
References: <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
 <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
 <20200508181301.GF298574@lunn.ch>
 <1e33605e-42fd-baf8-7584-e8fcd5ca6fd3@arm.com>
 <20200508202722.GI298574@lunn.ch>
 <97a9e145-bbaa-efb8-6215-dc3109ee7290@arm.com>
 <20200508234257.GA338317@lunn.ch>
Content-Disposition: inline
In-Reply-To: <20200508234257.GA338317@lunn.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SG2PR06CA0223.apcprd06.prod.outlook.com
 (2603:1096:4:68::31) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR06CA0223.apcprd06.prod.outlook.com (2603:1096:4:68::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 08:00:47 +0000
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: df8042f1-ab08-4090-c278-08d7f5816d62
X-MS-TrafficTypeDiagnostic: AM0PR04MB7012:|AM0PR04MB7012:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB701264F305C3EE4B9DAFB57BD2A10@AM0PR04MB7012.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q8qDIfKGubMeUrXDzeNdoRFT1qjetWVnNNzpsTO+31cAgXIrQLvrTsMa+8tRl8iG8ufBHCVbJWotXX1Zmi7hqgAJ45KqqluCXl97clb4rOgmYcb1SnilNg05fXo/ntBdAn7/NDvyKqBnTZ9vQrZentv7ETBenNCgFqcJUTqZ9kvg8TWI4bIy+vX/ZSPwlOiPNc7xqS63c/C6pWES/sKJJOFn6WXn4hleFWhTE2NJ/CHES4+k/QGqpB+AFp7NT/g54SeG9yuIYlDcnW5Lz4cXbbkmV3cvXQejJLTtjmmnRjJ2VWjKuGBB0TkM4vvTCVot4y1etCKU+12z+ohIscMrWCsLMKN1tN4P5brzT6hif98IS/rx+Ts/iQNFS2T2caA32cSRNf5KdMIJPfeqjYGmVO42219tlvjwDjEnbV/4aZmG9b9I/gT+GM8djuKKnqrGHSfYGuiUAevSDvLuHt67wvPJw9fwa0QGzFxsXIvPkbeArrQptrHR4zXDyAchIGRH+fKDXxvRFqZKh7w1TwzUKCU/SJ9vzCMJxLggTAYbhvaw5CVBJJOBlyG0BQCJKT6V
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(39860400002)(396003)(376002)(366004)(136003)(33430700001)(66946007)(86362001)(1006002)(7416002)(66556008)(6916009)(2906002)(33440700001)(478600001)(4326008)(16526019)(186003)(55236004)(956004)(26005)(53546011)(6506007)(54906003)(66476007)(5660300002)(316002)(52116002)(7696005)(9686003)(8676002)(8936002)(33656002)(44832011)(1076003)(6666004)(55016002)(110426005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: yhsV1x3wrZM9z2aqi+7XcLWAIaFvBFZKbk7VEpUImCoBmDQWO8aqxfE57T5+taxrio6J4DjFsf/K5ulo5au9CxtD6GGZP4UK/CYIhg9kERlnjdy6hUrQvEAB2d7YCMMhW3HUDGimZ0rkPozjY2QACkw2IitYCHrrfbWJouVwR2E6t0cZg4IwKoVNe/D3/vwb6zS8UsZTW5u+vTiSGZdW0kGOpsrtfNruLg+KVlATAJI8SDUGvX3Ta3/juYdXAPI6cr4CiUoWT3cO6k/sOmXERuS7YXa87eYr3yKTb0I8Gu2JPRwFPapn8fRWvarE1ATlZufDqPP3JtAe005z4LsuOvRRV6unkn2yj6DEhEQ7Ej9p82CVyQGl42Py1L8auLIlk1d9hoSO959sItsnFI78s+Rg79geWn0bjtQBoSAroQZIohzKZajyOJOBzAUQWmF6KZvGnATwu2jzsSIwYo20cW9w8hlEk1WQq7XAPC483zkkydjrSchLpGa2Ywe9ZeaG
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df8042f1-ab08-4090-c278-08d7f5816d62
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 08:00:53.5067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zhyxKPtqbAt9pKPbFEPxuds7BhNtTgEnXxrdvFfewiKlr5WjxQYBGQ2P/jCIsM8U12e2iGJOx03c70T77FUteA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_010056_035618_4C3C9B4D 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.76 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.76 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 01:42:57AM +0200, Andrew Lunn wrote:
> On Fri, May 08, 2020 at 05:48:33PM -0500, Jeremy Linton wrote:
> > Hi,
> > 
> > On 5/8/20 3:27 PM, Andrew Lunn wrote:
> > > > > There is a very small number of devices where the vendor messed up,
> > > > > and did not put valid contents in the ID registers. In such cases, we
> > > > > can read the IDs from device tree. These are then used in exactly the
> > > > > same way as if they were read from the device.
> > > > > 
> > > > 
> > > > Is that the case here?
> > > 
> > > Sorry, I don't understand the question?
> > 
> > I was asking in general, does this machine report the ID's correctly.
> 
> Very likely, it does.
> 
> > The embedded single mac:mdio per nic case seems like the normal case, and
> > most of the existing ACPI described devices are setup that way.
> 
> Somebody in this thread pointed to ACPI patches for the
> MACCHIATOBin. If i remember the hardware correctly, it has 4 Ethernet
> interfaces, and two MDIO bus masters. One of the bus masters can only
> do C22 and the other can only do C45. It is expected that the busses
> are shared, not a nice one to one mapping.
> 
> > But at the same time, that shifts the c22/45 question to the nic
> > driver, where use of a DSD property before instantiating/probing
> > MDIO isn't really a problem if needed.
> 
> This in fact does not help you. The MAC driver has no idea what PHY is
> connected to it. The MAC does not know if it is C22 or C45. It uses
> the phylib abstraction which hides all this. Even if you assume 1:1,
> use phy_find_first(), it will not find a C45 PHY because without
> knowing there is a C45 PHY, we don't scan for it. And we should expect
> C45 PHYs to become more popular in the next few years.

Agree.

NXP's LX2160ARDB platform currently has the following MDIO-PHY connection.

MDIO-1 ==> one 40G PHY, two 1G PHYs(C45), two 10G PHYs(C22)
MDIO-2 ==> one 25G PHY

Both the MDIOs are capable of C45.

There can be other complex use cases as well.
So, it is important to configure MDIO talk both C22 and C45 for different PHYs
connected on the same bus.

Regards
Calvin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
