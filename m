Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE251CB458
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 18:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zg+Qdqp7lCAe7yS1kQsiRfnlD1iQezlIQW189/+sLiw=; b=R0gnjPlvrXNjt9
	HLGgZ074nl1Xtd/8bD74CP51aaYRzlKu72g41HcVSWgG8jYDFUz1NfJx1Bdn7kK/TLGMc/tTS/uE3
	PtgH87y30rDYmpWcbsAMUZ62QMz7BJV//WHtUagI4x4qB/Wb3rn8dqE+fWm525jg6CYAE9PWxxNGJ
	szTO/dIvPn4RWo+iu9ZjfxVwAbaOIduDbNz7s5+A/tkSH2LpjTAQAgXLV9J+/HbZU/2SSrXoVJI7l
	ArlSSRZhq8irNGqYzr0dnCIvF7DtAi+1yH0ZG9vs4zFFbMr0ivH4o/88HwbcDgojIte8lLdMvS8Ad
	cHlGVysDyVnpKd3NeUZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5Y3-0006r3-TH; Fri, 08 May 2020 16:08:27 +0000
Received: from mail-am6eur05on2083.outbound.protection.outlook.com
 ([40.107.22.83] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5Xs-0006q6-CT
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 16:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKoOat2eTLnZ29VXq+a+ImXXCOZpY7now3XoJoQZ6HHkwLEk1r9nAkoNlD8N+gJEJjwNK7z38WBwIvcxVlul6OXCGZsPvGp6kwiKDUpN2LvsZft+1Qir0VBCFDtsnCxbcevBrF81BXYCUxVBNPFx/Xczh1J0qZYXL/nr1BdxsR2Obzt9tjKTJBCvP7yhuNKFIBKXqj8DXHBLxrk6KLS5Xv/O3j5+Vjq3ZrDpl5uO/BWmXLV2Z3DDV0ubPrbBTjAdYXJkZE3bagnsUxHgQeOxVWB+Bv2tezzL9QSl/OwjVnyRlUPVEYoQatFEtV9h6oF3szhU6TM01ba4c2mz5hz/AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5VfepConlAiUS1+pr4MjU7351Rg0ZEneeHrwiT+XVUE=;
 b=MXUWEsv2VF2VUuRLxNkUl4gPtR8dWZZcZXBn26gcZ8vpwhMavTCc9MRXy2sxeduJK81g1NiyE3svXOxPMrz14flKkyHkNQdB9um6IJjS/2GeR9J+0DUznj38YW8SmcE8DOu/1raVox7nDlme+sOY/c9oekbyLZgKjueZiIDLNXOUxPwps/9HSW6ISIAKEpLEYg6SkT+PdQJ65y1fHF3ehYxKMOEbDwIWdRnNxH4Hh97nbQEwGjDmJ0w1OVZQRfWU7n16vQmUARn/1xafQLVI9TJi8n6DRnpkBPqxJMvPLTUPipXJt6xDgyOac9qLO3Ff+v4QVhnR5Pu8Ez15aGIDcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5VfepConlAiUS1+pr4MjU7351Rg0ZEneeHrwiT+XVUE=;
 b=C6oGrGrI2a9hxpgBzvdNhhfqmmr8cMQH5nvULUGcbz60x6/NIAkY1msKcwCVDVyE34ve95Z1hE1XYs3kKfSdiibuF2VGWmuyNy2npLJEgxLKC2ReFvZl4lrP6DPwtNuZyqisbTQlJiTOGU+3tbQyZ6VH6jEuG3Vz/G/A4cZPhG8=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB4771.eurprd04.prod.outlook.com (2603:10a6:208:c4::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Fri, 8 May
 2020 16:08:09 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2979.028; Fri, 8 May 2020
 16:08:09 +0000
Date: Fri, 8 May 2020 21:37:55 +0530
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
Message-ID: <20200508160755.GB10296@lsv03152.swis.in-blr01.nxp.com>
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
 <67e263cf-5cd7-98d1-56ff-ebd9ac2265b6@arm.com>
 <CAHp75Vew8Fh6HEoOACk+J9KCpw+AE2t2+oFnXteK1eShopfYAA@mail.gmail.com>
 <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
Content-Disposition: inline
In-Reply-To: <83ab4ca4-9c34-4cdd-4413-3b4cdf96727d@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SG2PR0302CA0014.apcprd03.prod.outlook.com
 (2603:1096:3:2::24) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR0302CA0014.apcprd03.prod.outlook.com (2603:1096:3:2::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.12 via Frontend Transport; Fri, 8 May 2020 16:08:03 +0000
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4280844a-7f68-4866-a4cf-08d7f36a0011
X-MS-TrafficTypeDiagnostic: AM0PR04MB4771:|AM0PR04MB4771:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4771439207EF08EAD7457042D2A20@AM0PR04MB4771.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 039735BC4E
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 55fVQ8ddai9sgFFucphDWZG7QGOwkQCa6R/42hHvd6hN1MdYEkZzC26kVPEQqp3pmryO6pyUmlBzXSfP/ph0MvFVpQz2jPrGMR7SeRYHCwZ3PhNbfhG3qDK/14GGgQdIFJR41RGKlQb7GyL6XaLExzIN9/8BOuTGP5DEbPcG5jIxBL9++cWjx/31lJyck2i+0GNpsJxoilcmsxGT4+aClfkdqpsn/EJ0+eYNgiZgJLhkAAwkEyTciq5BR6hEdduXviflgNrwRzi0HG/qYdQFx83RyQwq0RWdCCzLYvb+ttNFaorFt9GCTHKFVijDVaIGPZkR6SyMWtBUH/ItAbdIY3M2K9cc76HOOyWVEdAAfZVMjwSULiFnZBLczDmF7ICZQQUdShIyen6VpXAlW40gdtBKCVy879BBL7j5A9BLoysvoO81TsCvVHvNg2kPwB/JQWJikqQFf7NBMiGgQdHJkLQjI+AsrFKr39l2fCUbicKffcXNNxTKUv2h/Xv3i9IcoMhNLsVAGWqZFR+JD+d9DSKVQ2z1ivDFjlVhNBDq1uERMz3Z1sNWF9896r98LhipH2B0E0piOoR8ZXlcTDqwQWbZTEk7t9m2tztqSOV8Bx3qD8qJGVZ1ZCXhNPK5FpBlgOQI1J2xCjztCFGZUEAeVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(39860400002)(366004)(376002)(346002)(396003)(33430700001)(52116002)(1006002)(6506007)(8676002)(7696005)(6666004)(55236004)(66946007)(55016002)(44832011)(7416002)(53546011)(54906003)(956004)(478600001)(9686003)(83310400001)(66476007)(2906002)(83320400001)(8936002)(16526019)(4326008)(186003)(5660300002)(33656002)(26005)(83300400001)(6916009)(83290400001)(83280400001)(966005)(86362001)(1076003)(33440700001)(66556008)(316002)(110426005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: k/xrz2wwewfKRe5tVjffYD/xMzzbh72EtiBJ9TQuZma/6WW58FY3voKIyNjX9vKoCc4OkMNPt5KTDmbRONS6K16sDPwSc1h3ziKjLaP9kPfNyYTrkrc5hv2KBfFZZXzqA4F/wSNKIF+JMYIrgnYriBjmLMADsRBNwp45Q1eee+L6yty4//jf0OWdREQDWMXgxeQgsUzv9/VA3qwBTLTYJv5XM/e0qwhQFNQINcOx7kkjjvR2cpmv0g24ob3fHcL/Rj658bjrMAcCHmvqn7jb2ir54unyB+KA7FTdt3RbT8USuWFmcyOi5I0UldPY4ISlONH7iscSuxEyhB6qYtontvQwLFPgOWmaFepqWBtLmU5wLUTky2TlLsllx5gBD5MZYXW4HKMKfRD0E0Imz/ZS05sx/Rm71QhoHYfVsrnACHc9oJEtUq2M2tfDIpBdSxyVZdXBFxjpdJOnRUiqWVpEDgTU2q1WwyNz8iFeWpHLF84=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4280844a-7f68-4866-a4cf-08d7f36a0011
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2020 16:08:09.5050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JDdwzDaAx62/1r5RSUsK7skYUlyxhKtaiAHvjOsXkNYs+UXqr0BPZlWJEtlZA9wueaZ0U1SWJsrItO384LVxqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_090816_454770_BA958F92 
X-CRM114-Status: GOOD (  28.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.83 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:54:09PM -0500, Jeremy Linton wrote:
> Hi,
> 
> On 5/7/20 12:27 PM, Andy Shevchenko wrote:
> > On Thu, May 7, 2020 at 4:26 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
> > > On 5/5/20 8:29 AM, Calvin Johnson wrote:
> > 
> > > > +             if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> > > > +                        &upper, &lower) == 2) {
> > > > +                     *phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);
> > > > +                     return 0;
> > > > +             }
> > 
> > > Isn't the ACPI _CID() conceptually similar to the DT compatible
> > > property?
> > 
> > Where?
> 
> Not, sure I understand exactly what your asking. AFAIK, in general the dt
> property is used to select a device driver/etc based on a more to less
> compatible set of substrings. The phy case is a bit different because it
> codes a numerical part number into the string rather than just using
> arbitrary strings to select a driver and device. But it uses that as a
> vendor selector for binding to the correct driver/device.
> 
> Rephrasing the ACPI spec, the _CID() is either a single compatible id, or a
> list of ids in order of preference. Each id is either a HID (string or EISA
> type id) or a bus specific string encoding vendor/device/etc. (https://elixir.bootlin.com/linux/v5.7-rc4/source/drivers/acpi/acpica/utids.c#L186).
> One of the examples is "PCI\VEN_vvvv&DEV_dddd"
> 
> So that latter case seems to be almost exactly what we have here.

Got your point. Yes, the ACPI spec says the same.
If we are using _CID as a string, then it must be a string that uses a
bus-specific nomenclature. This AFAIU may take the format
"PHY\VEN_IDvvvv&ID_DDDD" as you mentioned below and not
"ethernet-phy-id004d.d072" as used in DT.
So, we need to define it some where in the Linux ACPI Documentation.
I don't see any best place to document this. Any suggestions?

> 
> > 
> > > It even appears to be getting used in a similar way to
> > > identify particular phy drivers in this case.
> > 
> > _CID() is a string. It can't be used as pure number.
> > 
> 
> It does have a numeric version defined for EISA types. OTOH I suspect that
> your right. If there were a "PHY\VEN_IDvvvv&ID_DDDD" definition, it may not
> be ideal to parse it. Instead the normal ACPI model of exactly matching the
> complete string in the phy driver might be more appropriate.

IMO, it should be fine to parse the string to extract the phy_id. Is there any
reason why we cannot do this?

> 
> Similarly to how I suspect the next patch's use of "compatible" isn't ideal
> either, because whether a device is c45 or not, should tend to be fixed to a
> particular vendor/device implementation and not a firmware provided
> property.

I tend to agree with you on this. Even for DT, ideal case, IMO should be:

1) mdiobus_scan scans the mdiobus for c22 devices by reading phy id from
registers 2 and 3
2) if not found scan for c45 devices <= looks like this is missing in Linux
3) look for phy_id from compatible string.

Meanwhile, please note some usage of compatible property in edk2-platforms:
https://github.com/tianocore/edk2-platforms/blob/master/Platform/96Boards/Secure96Dxe/Secure96.asl#L20
https://github.com/tianocore/edk2-platforms/blob/master/Silicon/Marvell/Armada7k8k/AcpiTables/Armada80x0McBin/Dsdt.asl#L280
https://github.com/tianocore/edk2-platforms/blob/master/Silicon/Socionext/SynQuacer/Drivers/PlatformDxe/Optee.asl#L17

Regards
Calvin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
