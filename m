Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E50B81BA4A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ep76tsWLY/sy8FAxSWMf6XhjiRXfxRGXM/oaPMRx5dc=; b=Pp7nxVa7Hf5OOw
	vmpO60/wdDlmqBbl8mmRHX3YvXdDC40RtYtXApDElD29FFV8vHO5hv2LdWFLoASChkkRTCa7NMLba
	Twi0+bp7NV0ShtxbbyZiY6yAkNTZDJNPQ/N+VVOszIqaiAcS9iz9VpKGIx4Wi3tpnkOrL1DBR3oot
	uXXzPNlVcpFMywOfipbpFs/5rN9WjbGpydAcYWZ+fIh2dcB0pmsn7HoOSclz8GjsEDsuKjgAIprvC
	cxbd0W9L2sDJt9NGURm/1KmQVTwuqsUv7wBrhAsMmzJp8Arly6P1cuo2Ucrl4xoNo7i/oAXhnurz5
	+ojkppM70BmYLUBZp9hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT3lH-0008HI-2J; Mon, 27 Apr 2020 13:25:27 +0000
Received: from mail-db8eur05on2082.outbound.protection.outlook.com
 ([40.107.20.82] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT3kv-0006pw-BD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:25:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYlbO6xOhdFkNrpHAwMpNJpzorz5nt6ZpJxUwltO8+R7IrpMYkE7+hsYJ5hijvEBu4dk9d43wnxIa3NXj5Arv6iLmOP96zcTSGMyzloWt35Q9rGupAq1Bbrr8dzXloAAQ4ImqjIKXfIQEkWNHz80RfaSjgeThHGP3HTwlfI8l/XJSv50HTxlKDgj1zH3iQChf52H9/vUiIG5NI/F7X+n8j39C0XEhiCyKGpEJnVwJLymb0dVkSv7E8m231ZgqWR3eYzjy9Vo3WIvJsxMSZ6hUDSGJd9TOZpawVPN0uuGmG+AAhPuKGEiERXnVZwtZuqcDRmajv1yeheAl6NWK0y6Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QDIISntgPyNzQgq2M7Zk7hxiN0ad+WOU/OJG37zmS/A=;
 b=I/DMPM0HxCAWtVh3xFzVFez5bUEi2+Q9+oZxOFfdge6M16tX+duGGBDiLm5LbZs7reTAVSlIDiMOcY4jehEKuTeWp3jh/W4jy0v6ktkKUG1EIY4y2voZWsFWv7vc6VquWnBtmZYOydI1CcB05WGfh7qGNJ96xKwroPRrkI5lRM72znx5AWAhv+o8PgAMOfZy+NDETuHbqfXMMVpype+cpWFV5+o3ElOTPSiZzNA9JK9rGu9SnFtUfuDupG9DC7DS3w7NiAMRkxzVLvahPRsJYfLSFId0oHNDp5Dn/enlSEuYBWuw4wagO9abc9fGTPTjHAa6CQWEw1suOnxnLrk7zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QDIISntgPyNzQgq2M7Zk7hxiN0ad+WOU/OJG37zmS/A=;
 b=ipZNpZk3tHvNcdk2NaH/TIXYS63x/lW04Zf26XrYy9mdc6692Gp/6bMTndFuxjtk8YJVCBKaml2eorMR2IVSFz8KatqcIOBKvETGI32ir/iNEo7YUT7d0Ckk+coMbux341oIZw9rL1kPt1lDe1seGW1BhO6k1vBdchukJqwOMfI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6867.eurprd04.prod.outlook.com (2603:10a6:208:182::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Mon, 27 Apr
 2020 13:25:00 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2937.020; Mon, 27 Apr 2020
 13:25:00 +0000
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: linux.cj@gmail.com, Jeremy Linton <jeremy.linton@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [net-next PATCH v2 0/3] Introduce new APIs to support phylink and phy
 layers
Date: Mon, 27 Apr 2020 18:54:06 +0530
Message-Id: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
X-ClientProxiedBy: SG2PR04CA0191.apcprd04.prod.outlook.com
 (2603:1096:4:14::29) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR04CA0191.apcprd04.prod.outlook.com (2603:1096:4:14::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Mon, 27 Apr 2020 13:24:54 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: cd8988b9-ab13-4b9a-387d-08d7eaae62db
X-MS-TrafficTypeDiagnostic: AM0PR04MB6867:|AM0PR04MB6867:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6867441ACB343811412D5661D2AF0@AM0PR04MB6867.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 0386B406AA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(366004)(136003)(39860400002)(86362001)(8936002)(44832011)(2906002)(478600001)(66476007)(81156014)(66556008)(5660300002)(1076003)(66946007)(8676002)(4744005)(26005)(7416002)(6506007)(2616005)(956004)(6512007)(4326008)(16526019)(110136005)(52116002)(6486002)(186003)(6666004)(316002)(1006002)(54906003)(55236004)(110426005)(921003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NDNHAPl3W0Y+ELkgbNJbW/pdUKrXaezvgBTPYndcuif2ut/3m+fUixanR+Lwmx0E0t6VrulkEZU2WszVJM72hQysPwO0XGq3KdCclsQ5BzACmTZULxfgEtLf3oiHza4uGXIj0JT3YF3nQ/SVhh84EL7nIxh5TLdkj4EUYOujxaKzANv36N2L70gLI+hQOIeU9KaI8a7icn1CcR1LhHpl9GSDZvF/6cP81ibCIWLzv0TjOV6z3T8Z/eHfAwyrLhwWocuYfFDk1gVi47Jh/FxNOZfdaeYmoyIb3FsqAjV9FJUxYOycrZwDEAHY/XGnGdQK43DxnPDn5x8FdiQFARU3teC0cCY+PxW8ExlDYV0htHW+Aozt/D6rbrZ2WZbGOavXzNDeZkAmSALKU2UxftvO8I/xR2+KYa6WLvGI9WQPl1AsuGbNTvWf2+kjhveaW/61KOnI+Uy9mg2lcdVmAi/IzRWqQ/e+N8REGs/GQwaPXggtD1GFyOy2tW8cicrDPun/W8TzthmG+Ve6G89PCDWvMA==
X-MS-Exchange-AntiSpam-MessageData: M/fd8T53+zLaUSE9hJ7btUUIoS836qolxYss4v1byAQwYnemd4v5kBmdLnb3qiJFntb1o3h0uQX5QDWCJrXE0wUfH3zEEsb4+/fr5CATroHX+RyVG01FFkAUnwKQSP1igatf/lt6Q+IbvxQizf9/PDt7llxIFno3P4uYrH3nUAwoeaPv99wA7G7kMJxwV6tjTENQe1O83p9wLEpVUnZYFbedTtVCpx+PNiM32ZIGGpRzL1w9BfzzFJaCB705B1Qr4C2z0ARr8AJdMTbhFKnzyZzhUNBFL/St1hjrR2IT7Y229dKXqdUmZ8toPgWqZ6fNGTySpapkmYO4Ml58jM1kFxmicFmyM4Nl3LTJRBOUcRvfm9z2hgalmib64X6U1RwXxmy05xyyD6FulHEYRIWTnZskMU4T2lq8Rq9GWs9oxsolqmspZiWXDSwaKKqIllKARdPo7o8fVI9JDPv7J2raXNyfIpLyF2Gbvasoj4lwJiVgznPWyXvhHe3rJOqHC1wy4SwSwQITbOe1HwuDiyDhgAkH/l1oQnbqhr+GyqR1QGmfNg23YOh38Yx1whlXfEn+SiW+kMqZk55b9NSw8hCksED4JElL0EDwNeoqfpXZ9VVB+53pkS80yYyorKs3MEadOZvLcxX7AQIeZqOMqrgAoT66rH+YO0n7+y6mFXPdrd36YkC+13T+a9UkI1zOmy81Pm+8C88FAcXdv8LRFoj4VlszJby8JWZKlxFzMAUX1SBh6ac1OL6OeZCUmW5X5phJMDp5Sk8bSXxhV4xbZ2fQ8esFPvga9XM2/r5c1yIvR+g=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd8988b9-ab13-4b9a-387d-08d7eaae62db
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2020 13:25:00.3765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6hJrQTVV2JLew8BHmXlji93FHT7aUTR2HJz9+mFN/sZqa1RrcIK8mEdbA6zNL3RJng7X7mcIYDqRk0jJDFYMcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_062505_553837_F016B6CB 
X-CRM114-Status: UNSURE (   5.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Calvin Johnson <calvin.johnson@oss.nxp.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
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
  fwnode_get_phy_node()

First two help in connecting phy to phylink instance.
Next two help in finding a phy on a mdiobus.
Last one helps in getting phy_node from a fwnode.

Changes in v2:
  move phy code from base/property.c to net/phy/phy_device.c
  replace acpi & of code to get phy-handle with fwnode_find_reference
  replace of_ and acpi_ code with generic fwnode to get phy-handle.

Calvin Johnson (3):
  device property: Introduce phy related fwnode functions
  net: phy: alphabetically sort header includes
  phylink: Introduce phylink_fwnode_phy_connect()

 drivers/net/phy/phy_device.c | 83 ++++++++++++++++++++++++++++++------
 drivers/net/phy/phylink.c    | 68 +++++++++++++++++++++++++++++
 include/linux/phy.h          |  3 ++
 include/linux/phylink.h      |  6 +++
 4 files changed, 146 insertions(+), 14 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
