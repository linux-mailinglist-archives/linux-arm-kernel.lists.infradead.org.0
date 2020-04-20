Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BC51B1069
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPsyI+mWLQ6mICE5XvAmukBUZeqr0HsJ9OJfZCLmI0E=; b=Gff6F7FnmXe1Ry
	eleW69gXbEM+OaYsqaRjXcIrMVVu09+fykdMk052JA+PGiZxXmaGfRMZa5uLpHIKPJnPvY5zagfdX
	kBLiLfFXllzntT+q7ZppSd9GWQFY/4+BktcM7cDI+iTp3qDLLTFh5PU+kDhYlE/BWVzU9Bk8ui2ux
	YC3zrEZfKC8hxOlQE7LQLQxdC8A8jfnANOHrVH/6tKerBZiytYdHlLJmjzUDHawh3SwbVGaRRq4ug
	f223C0nSFyN8jQ2GBlugDaK+mPLjpo2a80Oy8BmcQbDR6dEerHfonwfICIEdiUk8dotqFEupa9J2i
	6NRm1njSnHk9FIFOZV5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYZ4-0001QG-Qh; Mon, 20 Apr 2020 15:42:30 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYYs-0001Pe-Dn
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:42:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=keYPZHid56H1OkopylqDMRrdL5I2fXexqBknwWroQl1d+zGeG9zPDrs3PyRBgqa4Rmo4R3nGKNoQPRh3mtaxmQElPEvKuuyTkkTdP1hT1+O4qN/dd1J1Rfw0GIDxKJ7tU7tvNLR6Nddkzo9vuQdywTHnOldKmGyvBnEIXFDJJogFmEfvlc8rZrxWrQIsEND3NKP6siHqjZHJO9rpg22GE849CW6jLeO7O1RbK464o9eI6OpMUmctnrXn1Q49/3rhPWLviSgwZDXAhjjti0lpXFTIES8Dbng/oixw4R6F7oAxNSZaw8KyfLaamEAyWq0nr4XESC+9a4/pc9OSHUMBQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/II/Ycv1coMzjXGzGCL9JnrbmlZ8FYi1sjsVKxTGjI=;
 b=fL563Gm7B9BBgBBYjcttlGm9eA67kRH4aL4RWcyQtxZn2k9rgIEHloa56G3wgKZqI9eLdhDBAKaI6+LzI/5HltUoDoeaq8cw4MiJsf134J6XEvbM71P9z66Z6YwHxK0Bx99KY7J+KgmFVXZXyb7EeWuPcYeUv+DsHynKFYJ7KB38olu6PmTmZYFEmqGIs16OpSSpYwZfomLhgt8yAEg379voEOS8hSouRsuWv2bSeIxO4cBS3qXmn1EKnDVqqeg7Blqm1vzDWvNdVE+zT/nMocowtPRp8jiWgV0bAfW5YexwnJm9A5BEuD+4Mb9yLnjxX7x3KZ9ryIx3IAFtqvnK2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/II/Ycv1coMzjXGzGCL9JnrbmlZ8FYi1sjsVKxTGjI=;
 b=A6oQYxrGpezvwLBuqsJHGIu30xSzy0Uo36mnrJUv8idg+p5UzoORqRN50dSMAhOEkJDl10F9g/iQ1LKnfRbDCGbX2WbDCftOxwvLZPCiVtq3aBx6Kou8nj3QVeYVd1IkDCrEtcq5BG+Zag61hfxRRKZkD3I/DaPxeCHQOFg/Huk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=calvin.johnson@oss.nxp.com; 
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB6084.eurprd04.prod.outlook.com (2603:10a6:208:13e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Mon, 20 Apr
 2020 15:42:15 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2921.027; Mon, 20 Apr 2020
 15:42:15 +0000
Date: Mon, 20 Apr 2020 21:12:02 +0530
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [RFC net-next PATCH v2 1/2] net/fsl: add ACPI support for mdio bus
Message-ID: <20200420154202.GB27078@lsv03152.swis.in-blr01.nxp.com>
References: <20200418105432.11233-1-calvin.johnson@oss.nxp.com>
 <20200418105432.11233-2-calvin.johnson@oss.nxp.com>
 <20200418114116.GU25745@shell.armlinux.org.uk>
Content-Disposition: inline
In-Reply-To: <20200418114116.GU25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18)
 To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR06CA0186.apcprd06.prod.outlook.com (2603:1096:4:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.26 via Frontend Transport; Mon, 20 Apr 2020 15:42:09 +0000
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9e1d9552-0ad0-468f-ac60-08d7e5416632
X-MS-TrafficTypeDiagnostic: AM0PR04MB6084:|AM0PR04MB6084:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6084A45BC26BD48725513287D2D40@AM0PR04MB6084.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 03793408BA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(6916009)(8936002)(8676002)(81156014)(55016002)(966005)(9686003)(7416002)(478600001)(26005)(5660300002)(6506007)(1076003)(86362001)(55236004)(66476007)(66556008)(6666004)(316002)(4326008)(33656002)(54906003)(1006002)(7696005)(52116002)(186003)(2906002)(44832011)(16526019)(66946007)(956004)(110426005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2fBlHXC33NnvInoBMszuuONW4dSIDTknBLfZkiSxyWfM4qosBEBCE7YWGtssSxIu+46QgnD8t+l5xKk+CfNJZI9FYUQpSSAkrUFnVkAyXVq2yYNI9mMHPxOV/2YlAA7BV/dEjS2w9P9SbLrtncxUigKlVbs20PM+Dt4krxwZFQCby8m9UIJSCblFk0mxuDWg4cPb5bvlwktDDYfViG8xqt0DcMnPAqOYP0iXACCSsy54xzMN30ZbeTLpA/cOGPjHrlXRpKttCJJZ1z4jW1S76B8Rr/YfCchlv+32QktDjCN62XFXqDGUI/3YfBxF5YLjVH/RxXqUrcFdBIN5S58yzVo/kY6Y/2Qrz9BrDMa2HJY9OK3JwpXxpxjtUgH5QmCsJLSrFjdY3EOZHucH8DbBOwtMlZYMzmqBy58mCw7ICeqQnI7KG4ckWCvlzKCIin6654KBdiOIB5+ZuDFSTQSy8+G4LwZ/pAuULH/ZMDt5mQoOMcd8bwYvFvT7V7Kwm3wxMka8TsyP/1Xq7LQuQcOrp3t3sYOyrZbKmCLJE5cF3XPgR6O/ghc35pRyW42kp4hK+SmweYhcPeaA551O1PaWuQ==
X-MS-Exchange-AntiSpam-MessageData: ZWuZZYuCnBotM3fcTpiZMGuCTa5canTiv7uc30Ifr+9Rz14cMxn6OkcxU1KBZKm7FDG3oOlbidWWxd3O8BNwRTqw7MHQFTu+V/fMTYRJLOtvS927ubKLP6AraMzkce+IC2ZH/zwQw7mRroANza7kag==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1d9552-0ad0-468f-ac60-08d7e5416632
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 15:42:15.2183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7nShog1vvtx9yeiTswYBMGgD8MuLMCpaT9+qKe3jXS6EvWVsTe2jATLiqLScgXeqhevwoZXHRauHklW0qRfxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_084218_524611_BAA4801B 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.82 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>, netdev@vger.kernel.org,
 Pankaj Bansal <pankaj.bansal@nxp.com>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Marcin Wojtas <mw@semihalf.com>,
 Diana Madalina Craciun <diana.craciun@nxp.com>, linux-acpi@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 linux.cj@gmail.com, Ioana Ciornei <ioana.ciornei@nxp.com>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 18, 2020 at 12:41:16PM +0100, Russell King - ARM Linux admin wrote:
> On Sat, Apr 18, 2020 at 04:24:31PM +0530, Calvin Johnson wrote:
> > @@ -241,18 +244,81 @@ static int xgmac_mdio_read(struct mii_bus *bus, int phy_id, int regnum)
> >  	return value;
> >  }
> >  
> > +/* Extract the clause 22 phy ID from the compatible string of the form
> > + * ethernet-phy-idAAAA.BBBB
> 
> This comment is incorrect.  What about clause 45 PHYs?

Agree. Will correct it.
May be we need a comment update for of_get_phy_id() also.
https://elixir.bootlin.com/linux/v5.7-rc2/source/drivers/of/of_mdio.c#L28

<snip>

> > +	/* All data is now stored in the phy struct, so register it */
> > +	rc = phy_device_register(phy);
> > +	if (rc) {
> > +		phy_device_free(phy);
> > +		fwnode_handle_put(child);
> > +		return rc;
> > +	}
> > +
> > +	dev_dbg(&bus->dev, "registered phy at address %i\n", addr);
> > +
> > +	return 0;
> 
> You seem to be duplicating the OF implementation in a private driver,
> converting it to fwnode.  This is not how we develop the Linux kernel.
> We fix subsystem problems by fixing the subsystems, not by throwing
> what should be subsystem code into private drivers.

I've used some part of the of_mdiobus_register_phy(). Looks like some
other network drivers using acpi had also taken similar approach.
Anyway, I'll try to make it generic and move out to subsystem.

Thanks
Calvin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
