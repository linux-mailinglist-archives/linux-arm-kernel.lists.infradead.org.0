Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BD0165FC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 15:35:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTFLTVyNg0kES0yIbcmSNHdh5Yo7nkB7CJw1ER66zbI=; b=Lb9mo5VRMouzWQ
	TGxrxJAt917MnNPYSXN5JjoYS7brADqCgPoptv7fagaYIJ0rYzb6AfgUcElVnKzhxsfMAJBUAd9yn
	2Nk98oZSROkkjW0nxgCohj+cTsniLuhOC2QccW17mR2xnJth3aAe+0qfz4at6zpLxB0jKwdO/8Rnb
	LnjDgXcowXYXZe4wGBu0MPNLoIoI1wxk2iXeCGyrr8mqyDB3fe2mHUpXpyrSuOPqVyQ05ZZNVv29w
	DWhOt4byYLBbeS4DzNdAylCV0wSzrlnctxOew7i8L5egv/33rVp+Nk13EYDkuCcJbgd6RqbaK3lpD
	y6my0BrQ6SR0al39kEpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4mvM-0001ML-7o; Thu, 20 Feb 2020 14:35:32 +0000
Received: from mail-eopbgr1410097.outbound.protection.outlook.com
 ([40.107.141.97] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4mv8-0001Le-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 14:35:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rx44jm/ld+gjQ3IEgdaJtKd2/nwT0wfPCoT/njGZIWYDq9g8HBNqyCQEe1p5s/CSw1ZFmBMen5F8Mfant3WAnhuTnCj8lk2Hzb59hjr4tC4uo6Wh8dMuO7zD98DIGDo2ItWkl0oF6rZeuL5S5nKXYkqQ5pZxxmot88OkEwMLu0RPhm+HPwIh7Ls8LYDbnoldzrJIHk9jZIK/d4VcyxwYxBiOkMRH3wEvk66PcFTvGWOMcRarrFT6u1lO1XXFUWBAOlKLazb91flKC7+n90e2Wd24VJgudxoAoCbXQx2prdCUkaY0/HLDsPKTmLzERMezUEJaOGmp3l/cc5jGHfPxaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5gustrJHK0PmVK8CB2wjZz7pF88vKbQ1TQ3kjIEY20=;
 b=bc4Fmq+X6zYbC6V8vMkbDGRljztN/MYpvPVKrzeTxEP3XtMgarsWM4IkxynltZxvlsLPeqLT5RvjtPk263D56aa7FH65ZqzpOk9btDaamIm6SGj8FP7tXI3FDCYg2R9IgAApHW4ph9DtEOq8ByRn22sWlm4p1cet10slItfY4X5Mt3LGS+g9OW12W8JOUJ13lsks5Pno/gT4lG8CVfwDvf30Un3hVUXeQH6KekyBL0pd+5hQ9hQTMkLH280RcGlCOf4srfHFNki2fkA29J/6ANwtCp9YnAieLH6Ue1Ka4wMc1/kY5iem3E+B+Zg1idDjjMVcAkiHMlwx4Kw82f274w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5gustrJHK0PmVK8CB2wjZz7pF88vKbQ1TQ3kjIEY20=;
 b=OVHO0MZad0Tg53+RFcgTg2AEUIdsDAP2lkPonGhMhzjbbby6A+AVogwNeVZBEvRbsvRMaGPCZOr7ALj8LD+JCbJFxHhbDyizeSgPg4Wx37OnYzOIvw3e03Gu9GwASl7EX9fj4onnuk4N1ZCSJW7qfBVaIIfmKQzqrv5mPcLszqw=
Received: from TYAPR01MB2285.jpnprd01.prod.outlook.com (52.133.177.145) by
 TYAPR01MB2672.jpnprd01.prod.outlook.com (20.177.105.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Thu, 20 Feb 2020 14:35:13 +0000
Received: from TYAPR01MB2285.jpnprd01.prod.outlook.com
 ([fe80::1045:4879:77ed:8a70]) by TYAPR01MB2285.jpnprd01.prod.outlook.com
 ([fe80::1045:4879:77ed:8a70%7]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 14:35:13 +0000
From: Chris Paterson <Chris.Paterson2@renesas.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Thread-Topic: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Thread-Index: AQHV4UBCokgUzaN+lUSpKIEPQqBkX6gXQFUAgAIZNoCAAsk4AIAAXS4AgAEY+wCAAKfGYIAADuKAgAXhllA=
Date: Thu, 20 Feb 2020 14:35:13 +0000
Message-ID: <TYAPR01MB2285608AFEB9D1FC7AB10E41B7130@TYAPR01MB2285.jpnprd01.prod.outlook.com>
References: <20200211175507.178100-1-hannes@cmpxchg.org>
 <29b6e848ff4ad69b55201751c9880921266ec7f4.camel@surriel.com>
 <20200211193101.GA178975@cmpxchg.org>
 <20200211154438.14ef129db412574c5576facf@linux-foundation.org>
 <CAHk-=wiGbz3oRvAVFtN-whW-d2F-STKsP1MZT4m_VeycAr1_VQ@mail.gmail.com>
 <20200211164701.4ac88d9222e23d1e8cc57c51@linux-foundation.org>
 <CAHk-=wg1ZDADD3Vuw_sXhmBOrQ2xsp8YWxmtWiA6vG0RT-ZQ+A@mail.gmail.com>
 <20200212085004.GL25745@shell.armlinux.org.uk>
 <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <CAMuHMdV8-=dj5n-FM1nHjXq1DhkJVOh4rLFxERt33jAQmU4h_A@mail.gmail.com>
 <CAK8P3a0m574dHYuKBPLf6q2prnbFxX1w7xe4-JX-drN6dqH6TQ@mail.gmail.com>
 <CAMuHMdVpTngVXUnLzpS3hZWuVg97GVTf2Y3X8md--41AtaD1Ug@mail.gmail.com>
 <TYAPR01MB228505DD9E7C85F9FA4AA785B7170@TYAPR01MB2285.jpnprd01.prod.outlook.com>
 <CAK8P3a3Za8dthPE7czQs+rK+xUq+ZZC4Sbj8QF5YjXvtfzop4Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3Za8dthPE7czQs+rK+xUq+ZZC4Sbj8QF5YjXvtfzop4Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chris.Paterson2@renesas.com; 
x-originating-ip: [193.141.220.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5572f0db-fbac-4cce-9d49-08d7b61218b9
x-ms-traffictypediagnostic: TYAPR01MB2672:
x-microsoft-antispam-prvs: <TYAPR01MB2672AE2904BB87B5BC1A7CA4B7130@TYAPR01MB2672.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(199004)(189003)(55016002)(186003)(6916009)(81166006)(478600001)(53546011)(86362001)(6506007)(26005)(66574012)(8676002)(81156014)(5660300002)(4326008)(66476007)(316002)(7696005)(66946007)(8936002)(33656002)(7416002)(9686003)(2906002)(76116006)(52536014)(64756008)(66556008)(66446008)(71200400001)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB2672;
 H:TYAPR01MB2285.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SEaAQQ4/icaRd/CDB1DsipiDZDY87KukAjCu3vDNg31R9QPqG01dcHukSPdewaX18fpv7LD8lTkgvKTMM2Jt78eOn6/+n1pI5vJ1Nra9oA8uDQdWYP5v7D283mbs6WKJkZXO0y3bVCrbtir76/BoNy9+JaTMBVOYM0XEbpoE2DJVqLxVDnfTApNplRjitPsjnsMLX8sXMVUIvfVB1kav2IaSrKXSpm/4eXlqVSBDrRrIpwxdy5hT8KH+ge1sB1Lr09EVgVFUbuEsCvd/03dMmr73G/v1/fhM3BuauxemCPi88tNQD2+wyYYGd9cgiaVZla6XvNopWYfBNO1B1/QdWmjtq723hDsTT/LRsu7BU0r5TW/H4h7RmlhxSuUY1svTTqQfvXJcfJGWFDPGWZv9WTxoIJ5BDlUKJ3Qgv9EF5Hapg34Xv1AXXgyHtiYNUrNT
x-ms-exchange-antispam-messagedata: 6MIK1qWhOmF+Ln6kOTcQJFvllu69B3/KU85GXLdPG89dEycTH2e128HlMK7dfUIW9WFS111NWDLNJJ+gMqNC/GRiBmlYQbHZejoe8SaCYwUM9QgV7PDnV73n/95ASewnbn3Rewk+v/oJR2PKAUuUcA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5572f0db-fbac-4cce-9d49-08d7b61218b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 14:35:13.2631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vakimPMFgPGhkIr39hpIZPf3EY0HkW9DjLIJZLFsNen1xT+wFekEdP8+99aKAtv4w49tv32JeKUhPp2FMneRt3bCKgvRCHEOM+hgAOzJkOQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB2672
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_063518_157471_AC3FB9EF 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.97 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Hocko <mhocko@suse.com>, Rik van Riel <riel@surriel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Yafang Shao <laoar.shao@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Al Viro <viro@zeniv.linux.org.uk>,
 "cip-dev@lists.cip-project.org" <cip-dev@lists.cip-project.org>,
 Johannes Weiner <hannes@cmpxchg.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 "kernel-team@fb.com" <kernel-team@fb.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

> From: Arnd Bergmann <arnd@arndb.de>
> Sent: 16 February 2020 20:38
> 
> On Sun, Feb 16, 2020 at 8:54 PM Chris Paterson
> <Chris.Paterson2@renesas.com> wrote:
> >
> > Hello Arnd, Geert,
> >
> > > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > > Sent: 16 February 2020 09:45
> > > To: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Hi Arnd,
> > >
> > > On Sat, Feb 15, 2020 at 5:59 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Sat, Feb 15, 2020 at 12:25 PM Geert Uytterhoeven
> > > > <geert@linux-m68k.org> wrote:
> > > > > On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de>
> > > wrote:
> > > > > > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > > > > > <linux@armlinux.org.uk> wrote:
> > > > >
> > > > > The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split
> (even
> > > > > for 1 GiB or 2 GiB configurations) in two parts, one below and one
> above
> > > > > the 32-bit physical limit.
> >
> > Yep. One example is r8a7743-iwg20m.dtsi.
> 
> This one has 2x512MB, with half above the 4GiB limit. This means it needs
> LPAE to address high physical addresses (which is fine), but it does not need
> highmem if one uses an appropriate CONFIG_VMSPLIT_* option.
> 
> > > > Good to know. I think there are several other chips that have dual-
> channel
> > > > DDR3 and thus /can/ support this configuration, but this rarely happens.
> > > > Are you aware of commercial products that use a 4GB configuration,
> aside
> > > from
> > > > the reference board?
> >
> > iWave Systems make a range of SOM modules using the RZ/G1 SoCs.
> > I believe there are options for some of these to use 4 GB, although 1 or 2
> GB is
> > used in the boards we've upstreamed support for.
> >
> > There are also other SOM vendors (e.g. Emtrion) and end users of RZ/G1,
> > but I'm not sure of the details.
> 
> Both iWave and Emtrion only seem to list boards with 2GB or less on their
> websites today (with up to 15 year availability). My guess is that they had
> the same problem as everyone else in finding the right memory chips in
> the required quantities and/or long-term availability. iWave lists "By default
> 1GB DDR3 and 4GB eMMC only supported. Contact iWave for memory
> expansion support." on some boards, but that doesn't mean they ever
> shipped a 4GB configuration.

I probably should have been clearer before - I actually have a couple of iWave RZ/G1M SOM modules with 4GB DDR on them.
However I've never booted them nor do I know what the memory mapping is.

Kind regards, Chris

> 
>        Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
