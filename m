Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F008E19286C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 13:30:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pirfOfLt/EAzNU40SRAIZ5lHDxMDoy+YtywgTlf4QNg=; b=VCrv9/+SIUuKr5
	Khsg+nhnUXUht7mlX/8k3OQMzhlRoIJtQF+8JH9psTCj7PoMhSZWt7r5H9TdYe7AIBfgPCyWK4hkF
	d2lEM8P0bDMZWH0wHdT+yB4q+/JbOQeW1OT2+dPlF75g44pwyUGHAvl5mQbZH7eV6XBkkpfP5Azz2
	7+Er7dH49kY5t78qQCTkNzYW1/leXCKY5M18KyeFXbZasgMtHwK60ifM1Qj2xH6yzOyyvsLLEZEPm
	eIZuudM9hbxQWtqvaAarqxZKEp6LYg72u1QNaCO/K6GI0PACCtxGhq60LcTGIXew3OeVSTBQMVSMb
	lB2C9MiDtNOxnEg+xfAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH5Ay-0004gJ-Lh; Wed, 25 Mar 2020 12:30:28 +0000
Received: from mail-eopbgr80078.outbound.protection.outlook.com ([40.107.8.78]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Am-0004fp-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 12:30:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dsfk93Z7S/jGXIe2Y92MlVHS2ZF4424UQ0RmZMezKo7avpfLfIaJzFdP4Ds3RQt8sMqPLQJopvrF0qevtAD2dV7+FHBkbY2RlbtB6KnyHamPilPnLpZHc9hPGouFgwKl3NpvAlKKbq7FrPmG7Ya7VJOw8uSzL+qnZgXpootrUjmDN89tLnv6XVTxexvyBh68wCqlPwsX357EttE/CN0gfTFiiEOPGJ88uwj95rqFm7MUo073EEhRBDzUxkkt8cnl483jcjT4N4CYg3YDCVBkekl2VX6IzE8ky/90oyREyfqYUi7EBjvUx6nzoYBMQNpUwVWawSvkAr2x3mjlIgl+zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x4BjYlW/6YO0guIU3ipAjjc8TE1V69gyw/Vq7shKALM=;
 b=SF7MLkmn6HZJoJ64JM3ANB1KKc8+cvv7G0pBHd99nfJy9AvSlmYaC4HMZXgZDTRLowozWSESKjrVEH7I7Cu0Ec4AVbU5d1ZmAGwSebq1/1c0ZSsvgubpgFHQC6vU9vkEm17cMsFoei/0q2qga+RpGxfWtKJqfxi1/HQedh+UuDiy7qEOC12x1lsUgqWOOWRryXomTj5IURmgFRSRAj3ymzCUjJHE5CQXgLXdAFWcf3oaPFevQI12anoluHXbIvwX81lpOmyFcvSYyJDreJuqSE1EaV0gU2hsvRQK9gms5JO1q3njkxXX+90uKXfbujVBrD7CLmbIQehvNRYEO/LqRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x4BjYlW/6YO0guIU3ipAjjc8TE1V69gyw/Vq7shKALM=;
 b=Nd1qeHuKyDQLgVWuXwvJXPvZT95ONAzG8eqcVhp7IDw1EarHYMdhC+ZNVYKblKXyxUHl3KGfDFqq4FuutJA2KRZ+vAv8n34UNw2CrL6sAnufI5YfEAwbJNz9MmjyRh+zIag6wmeeR7lIp7RplhRe/+I6x8nTnu2+MUwpNZ2WR2E=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4353.eurprd04.prod.outlook.com (52.134.125.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 25 Mar 2020 12:30:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 12:30:11 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: RE: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Topic: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
Thread-Index: AQHV9tsrS4nkBuxsuEaY66LPIEgB5ahYGTaAgABvteCAAKZfAIAAJLhQ
Date: Wed, 25 Mar 2020 12:30:11 +0000
Message-ID: <AM0PR04MB4481C3A233AB455BDC68736288CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
 <20200324174134.GH3901@mbp>
 <AM0PR04MB44819E95EB1FABF09DEE682788CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200325101652.GJ3901@mbp>
In-Reply-To: <20200325101652.GJ3901@mbp>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2756cbd8-7d92-445e-2c62-08d7d0b842f7
x-ms-traffictypediagnostic: AM0PR04MB4353:|AM0PR04MB4353:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4353832C686498E2B43E984788CE0@AM0PR04MB4353.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(39860400002)(396003)(45080400002)(64756008)(66446008)(76116006)(66476007)(66946007)(66556008)(7696005)(55016002)(81166006)(81156014)(8936002)(8676002)(478600001)(5660300002)(4326008)(9686003)(966005)(52536014)(316002)(44832011)(6506007)(33656002)(71200400001)(186003)(2906002)(54906003)(86362001)(26005)(6916009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4353;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fmIQPvNrh5P1wVcvbh11m0GzNWPP+Fi4R6m8+qWHXZxABeNgFzdQUj9bPmWz9Nfw4D2bqpGPUNuyu3VFwqHPdJD6Ae3YScaI1yNfxxq9DszP/0TYJMQwd/gUXvD5AhQomSRofDs1xxnfLn3k+/bMPfhGoigmTYub4DxR0WUyvYIHl/3DN9TGOm62pOvk5jHS4NgU5PlKAtfxXqs9s2qzBZJEIpt26bPFDrN0f+RauMJ29i2IRtaW0kIINDiJOILeMuV4ARnWFJ86SXmURA7uh1ZW7fwW6+YEFBnxFcsmDi4ITNIcRp8OFndUkYFB7oTiG/Kihvy2MtSaDntH2JsuLgDLq7Xplz3Z9XDyLNaQKjthYuXeVaILASU+cwTDIYNFyXi2XZmYREh4W2MYFCoN5hQsUKTI2n6ZQlxkQVZXjNvvwY38LHNTGQ4Qn0CLH8RX+MyDK2j93mqJ+Haovq25YTomlSKxmeyskUAjaIPc9gQ7E2iw2BRLwyjDkQyZrOt8b7F1vsmw/zooSffHaBeITQ==
x-ms-exchange-antispam-messagedata: Po4jOW8p9I14Hl6pv95ENiWVoAYFD79XDwxUEVxVB14SGm6SuzRdV42r3Zg1HVbz/u4bathb4GBN4HpVJwoKRr7ncqNuD4kWItgGoJVHmk5tfqcWtcxBVAPWN88glj4t2MeTBlPrtQZU8ezAQSgFNQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2756cbd8-7d92-445e-2c62-08d7d0b842f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 12:30:11.1599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uo/VuOfGok600PDPuTFOeIFYpI2pCeB/JLn4l+55yqyUaTWmTaSkqVS/N63wV6hzAkq5npypANOE+pqQJn5Wsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4353
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_053016_174715_C57EAC27 
X-CRM114-Status: GOOD (  24.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "will@kernel.org" <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "nsaenzjulienne@suse.de" <nsaenzjulienne@suse.de>,
 dl-linux-imx <linux-imx@nxp.com>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable
> without EXPERT
> 
> On Wed, Mar 25, 2020 at 12:34:15AM +0000, Peng Fan wrote:
> > > On Tue, Mar 10, 2020 at 08:48:46PM +0800, peng.fan@nxp.com wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and
> ZONE_DMA32")
> > > > enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory
> will be
> > > > occupied by ZONE_DMA, this will cause CMA allocation fail on some
> > > > platforms, because CMA area could not across different type of
> > > > memory zones.
> > > >
> > > > Make CONFIG_ZONE_DMA configurable without EXPERT option could
> let
> > > > people build non debug kernel image with CONFIG_ZONE_DMA
> disabled.
> > >
> > > While I see why you need to toggle this feature, I'd rather try to
> > > figure out whether there is a better solution that does not break
> > > the single kernel image aim (i.e. the same config works for all supported
> SoCs).
> > >
> > > When we decided to go ahead with a static 1GB ZONE_DMA for
> Raspberry
> > > Pi 4, we thought that other platforms would be fine, ZONE_DMA32
> > > allocations fall back to ZONE_DMA. We missed the large CMA case.
> > >
> > > I see a few potential options:
> > >
> > > a) Ensure the CMA is contained within a single zone.
> >
> > This will break legacy dts with new version kernel.
> >
> > > How large is it in your case?
> >
> > It is 1GB
> >
> > > Is it allocated by the kernel dynamically or a fixed start set by
> > > the boot loader?
> >
> > We use alloc-ranges and size in kernel dts.
> >
> > But there is only 2GB DRAM in the board.
> 
> So I guess without changing the dts, option (a) doesn't really work.
> 
> > > b) Change the CMA allocator to allow spanning multiple zones (last time
> > >    I looked it wasn't trivial since it relied on some per-zone lock).
> > >
> > > c) Make ZONE_DMA dynamic on arm64 and only enable it if RPi4.
> >
> > Option c seems a bit easier to me :)
> >
> > I will try to explore both, but if you have time to help, that would
> > be appreciated.
> 
> I don't have time but option (c) was already discussed and there are patches
> from Nicolas on the list:
> 
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.ke
> rnel.org%2Flinux-arm-kernel%2F20190820145821.27214-5-nsaenzjulienne%
> 40suse.de%2F&amp;data=02%7C01%7Cpeng.fan%40nxp.com%7C6403ddf37
> 89b452ae5ee08d7d0a5a659%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0
> %7C0%7C637207282191026738&amp;sdata=t2cZ9HTCcRuaL9RO4kD%2BzN
> 2n4VqM%2F66zYNZIOComCVs%3D&amp;reserved=0
> 
> The above series was checking whether the platform is RPi4 and limiting the
> ZONE_DMA size to 1GB (otherwise 4GB with ZONE_DMA32 empty). We
> ended up with a static 1GB for ZONE_DMA but we missed the fact that it may
> break existing platforms.


Thanks for the information. I'll check the patchset and work out something
proper to fix the issue I met.

Thanks,
Peng.

> 
> So I don't think it would be too hard to revive the above series (most of it was
> already merged).
> 
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
