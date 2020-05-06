Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4301C70C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHQ40H3O0vVKWqSJnb20fTCdOzW1xIErJvtuyViZ8a8=; b=Rui8JnUweSV23i
	IgwB1ap4RV2E1yDHFrUKdbqQmIpzwGT+vxoE6aI6h3WSl9P7OftrH2zFG9+9Jbj2/gJfCfmsAAoCz
	+vsCo4HmvwOl2EFbMyeUOztA89rIcXqVqTfJKeKY+WXSdRqXZHHQIQSgHhjWYh72NeVGp6dCSZkRC
	d5qmlKPMioi0jjhZvwjFNxuaEqn09pXERnCg/C0tpX3g8o+xF32ehYEUHGBslSEmJF5koEEEsHND3
	9yhLpw37q+wspt8PnzegOrl5K4oueKABzq5tKFNFo3C4Pj1+Qyuf0xqSzni9DKi5ZISf5sL0qzrhU
	OEJoObOlGnnW/qMwwf+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJUR-0003Qw-05; Wed, 06 May 2020 12:49:31 +0000
Received: from mail-am6eur05on2068.outbound.protection.outlook.com
 ([40.107.22.68] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJUH-0003Px-1S
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:49:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GtK4EGp++OBjN3nwZjSQXHaVMG8iZ7qkEaq2qVI3xECOHIEfKv6x9GyZiYoRPqGNQ4npCVdgUFXO4jpT8bL3lZeK339CUMXuXAOT5QehiQK2HlUIQK93auagX8RKWFsS7Gerj4VyIG5mvpl3qXlIJuD6NM7vG/yS9R/9bRkKXKwnVHP0hj2Hp9/1gMUBCiR8QNCKYxsIyA17F2DeDvBwGJ1uONwXEzIKm2B1QT3s4y+LFiob2CYIF+iz9Ms8aeO36ra/K2ZxAfOxQLkOyxF1EaPTVk2kYbS1BG1YcUJ+Xx7OHG5F41mD9Mip3FHvXYm8Ugo3+3ymv1KiwPSPCZY7kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3uJDswV5gMumQlJf2XFKQ4qGMs0QcwMzzBxTz5Si5ZE=;
 b=g46h0IYNqslNmZpJn31Sl77U4/zYDw/M+BhBpOFxhMIu7xoeVgGnGJzywON7QwtxEq0dGYAf0961AD99Xiculw7Gu4y28D3rKTDaDZRaupjmpOGzRh+DrlzAhjhCSoeU40BAO93WQYGLFqEkaY7YtQKmQfPu+D5y1oKFMeons/RTIffIZ4WuNpc1S3nbjSoeygpK2bK+/WuvlNHFDLxIBeXCp7Ao00dkVksVmHlS9dse0FsB2ZnQMiTAOz4W1EyzvDGShD7fzubzjSxMNfSSin53YB3xXQr2dT7dPghpf9crJ4dWFgkypBVLFfFF2mPW11Ja3NQjvjoSZwjldaxLhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3uJDswV5gMumQlJf2XFKQ4qGMs0QcwMzzBxTz5Si5ZE=;
 b=AqansJaJA5Dqe1wZd8LZjOTrJ2pzSR661JSi3HjjLsQBA/4W/RKIoZ0lfbKIJpMP8ifSoU40x/uz7QlgkxoRTKwu0D72uaMylmGMJ5eDnTlGumDohjCr0LslseQUsxo/yhYkpaOakTKOH/8B+I/jKvpZLzVHllyXiFqbNUu0h9I=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=oss.nxp.com;
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com (2603:10a6:208:130::22)
 by AM0PR04MB7026.eurprd04.prod.outlook.com (2603:10a6:208:192::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Wed, 6 May
 2020 12:49:17 +0000
Received: from AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b]) by AM0PR04MB5636.eurprd04.prod.outlook.com
 ([fe80::c4fe:d4a4:f0e1:a75b%4]) with mapi id 15.20.2979.028; Wed, 6 May 2020
 12:49:17 +0000
Date: Wed, 6 May 2020 18:19:02 +0530
From: Calvin Johnson <calvin.johnson@oss.nxp.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [net-next PATCH v2 0/3] Introduce new APIs to support phylink
 and phy layers
Message-ID: <20200506124902.GA20867@lsv03152.swis.in-blr01.nxp.com>
References: <20200427132409.23664-1-calvin.johnson@oss.nxp.com>
 <20200427135820.GH25745@shell.armlinux.org.uk>
 <20200427143238.GA26436@lsv03152.swis.in-blr01.nxp.com>
 <20200427144806.GI25745@shell.armlinux.org.uk>
 <20200429053753.GA12533@lsv03152.swis.in-blr01.nxp.com>
 <CAJZ5v0g4oaDGGk1Jg5rihaG1kj1BYHpZpwTFrXX4Jo4tettbgg@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAJZ5v0g4oaDGGk1Jg5rihaG1kj1BYHpZpwTFrXX4Jo4tettbgg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: SG2PR0401CA0009.apcprd04.prod.outlook.com
 (2603:1096:3:1::19) To AM0PR04MB5636.eurprd04.prod.outlook.com
 (2603:10a6:208:130::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from lsv03152.swis.in-blr01.nxp.com (14.142.151.118) by
 SG2PR0401CA0009.apcprd04.prod.outlook.com (2603:1096:3:1::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 12:49:10 +0000
X-Originating-IP: [14.142.151.118]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 71580222-42a5-4607-9a0a-08d7f1bbe2fb
X-MS-TrafficTypeDiagnostic: AM0PR04MB7026:|AM0PR04MB7026:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB70268AE199C9C21088C0F3F3D2A40@AM0PR04MB7026.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 96RXI6FfnOApmi1q2a3GyMZrWnieOV+vsChuAe8Ck0iZ6CqCsvyt1uY9PV1n0/WXvcG7qkx+JTcZmlesIyWWGIO9KgM6lV9k5c3PpgZ1Q/EPZCwoA745RXBbx8r5Ykq01mLBSjs/RyHzzi0/5rWlbW0JqtrbWFcxUaeNSfVmQnwV1chl0Vt7Dv6VDyOO39DJ9T6sbGkxv/d+DBxf+cJH+SkI/N/N3Wi2PkHUmrqIyZcPZU2BX7IqLNrMO3pYAfOqg1Ha6aRRmign/vo147mqKrIIu4I3Fvv8mzlGvtHoPcxvsesaYwjoFfYk0miGnlssWVaEnnWMsoEWiimOWyVds7cIjlmgeM6i0zuQ8qnxH3n0z//z45bJ0Qv70Jydh+KU0Ir3SnjmeavpdlhngGVeAVJrkIHBearl7duhFYU/cQJBltcXs4YxyQ24YLi+1SlxXm3Fa+Bum9ye47c9plewbSOqZKey46lEmt501eHGl0zNiKOG2g4BC8ojWf15+DBYsIUHNfCmpb+yI9Bw5EGzWiMcZyKb1bk3TRnmNVLRBTBVzed1g0StGTo0g4oip0//
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB5636.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(396003)(346002)(376002)(39860400002)(33430700001)(55016002)(86362001)(9686003)(8676002)(7416002)(1076003)(1006002)(53546011)(186003)(7696005)(6506007)(52116002)(54906003)(26005)(55236004)(33440700001)(8936002)(956004)(316002)(6916009)(6666004)(16526019)(33656002)(5660300002)(66556008)(66476007)(66946007)(478600001)(4326008)(44832011)(2906002)(110426005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: m4mIYkUL2RF/EJZXrAyzGFTXDYnjAUxrHglBeC+WmHhFAXv6ocEBZ0irI5crNsHJd4wa3CCj8u2U4qqrw7jYv6VXS9m/nYvygrJl6e8+xsG0MhPX0/7oaPYutqDFfZ5B4iq8sWUb2l1S8xSQ3vR5Pya9l/lU+RuXJWiVWkrl8UdZQTHHyAch0GhbtDz5hjBMMOJnkWahp6I8cPXPdNVtLmLMUgzxzVnR8fTcpgcSySd+DoeNID0SpvMOZ+ATf1QuQIiPc1ArcZHaInmHtHqZ26pNoci02mv6AMh9vuvlOHyl1FaCTrKg9CF9LVPhWV0FY3Uwz+pMdNO5Xvk4ykAnU25a/Op3b9ItzFrTWJWkRX4KqzrF6cGk9yakHkH4LxPoIjN1P6om/gnYxiMdoIgwlzYi9T4928gYiARCTmXxUf8lKJcWRVre/8m74jeOX7EQmOXRzvtSMBDNKKTDA3l6hqyhV9jGAmFuWp2jpkKCr7FdLgyB7Bgk5JXQC3UlU0X1mi4k2qdvYPUq497yCEmGnq4ZH4c1TwJDRJd6c43KJxdxppL2JCRV3O1MG9ITGM7tCXM3lSEEOe/VVE3/pfHeg7BmCJySDbb14o8ZN91otltlt6A+9VRSDwOhUTbef2v5Ab/Yym8D7sxWYatBsj50kd+w9Jkg/DFLVxaQ8PIVqsJTvpv8EwHL693d0AjIFJb4SYmuoopKUY6CrcXNtjmT9YLZ+lzPWj6Yk6YXh55EaI5bSHm94fNVOQP+lVed+zdG8ammx18INHI8UOGntP6tO0n9h6DFvN+5n0mOxeBcKz4=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71580222-42a5-4607-9a0a-08d7f1bbe2fb
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 12:49:17.0969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AUqX3Qe/pekQV1M90ZlPsxh+dEni89YXgoeeyEKRIFLD8FqVGiQldipIcqzkJJWAVudRZ7XCqpHlIC3U/fZj0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_054921_136580_1373FE92 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.68 listed in wl.mailspike.net]
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
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Len Brown <lenb@kernel.org>, Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,

On Wed, Apr 29, 2020 at 12:26:12PM +0200, Rafael J. Wysocki wrote:
> On Wed, Apr 29, 2020 at 7:38 AM Calvin Johnson
> <calvin.johnson@oss.nxp.com> wrote:
> >
<snip>
> > > So, yes, there's another driver using it, but the ACPI folk probably
> > > never got a look-in on that instance.  Even if they had been copied,
> > > the patch description is probably sufficiently poor that they wouldn't
> > > have read the patch.
> > >
> > > I'd say there's questions over whether ACPI people will find this an
> > > acceptable approach.
> > >
> > > Given that your patch moves this from one driver to a subsystem thing,
> > > it needs to be ratified by ACPI people, because it's effectively
> > > becoming a standardised way to represent a PHY in ACPI.
> >
> > How can we get attention/response from ACPI people?
> 
> This is in my queue, but the processing of this has been slow for a
> while, sorry about that.
> 
> If you have a new version of the series, please submit it, otherwise
> ping me in a couple of days if I don't respond to the patches in the
> meantime.

I've posted v3 of the patchset. Can you please review?

Thanks
Calvin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
