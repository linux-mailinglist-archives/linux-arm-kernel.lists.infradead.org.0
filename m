Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201771DCDF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:29:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pavnO3Hx/c16bGoQd28AHN4CM9zVw/6UrCoHGzt05dY=; b=mnWQpyzLBUA5k1
	CwmBr0+cdhCSwVgilB0OlHNsyJ06nojRgNE8bd/YeuL0RiMRmzHIvJ8qV6iEshy3OOhD0LeTVpfCb
	ETVrAMeg1zb94wP3VCERGNa9uy8Jd+V0Bf4L5SxuovhUyL3H+B4LweH5Op7reb9jf7HFPh87HmUGA
	kCGQCA2WQL9uGaJutu0eNsdXuQo70dk5lLTZkDsBuLwUDHSx67DH/ZfrfbtjdkzDTKfi4TBa56rom
	eVYK3Vd3wLBdc5H0i3XnpHliqd571Ox6WKSca1HZXUqpyy6V6SQaHdjQ9ZO7FevZtJBW52NZIfELf
	SH1mU3i7m03ufcbAYSCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblG9-0000g4-9z; Thu, 21 May 2020 13:29:17 +0000
Received: from mail-co1nam11on2058.outbound.protection.outlook.com
 ([40.107.220.58] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblFy-0000ff-Ug
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:29:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHT9llTotxmhgphAwq/GVeZUVBUs2tijTAlYa1zA5NzP26AOzezq/Cv5iBxFdZfew+ZlUAkJtKeIjOPVSupg8UDk7HQ5pprqqelqWG3SN2wxtRhXFFz/v1CS9l/IHSHp6yKZtthpAm4GIxPGqNwg5C0oOGwhctrcDHrCoX6+8CedifERydMSxBDWcsCK/XVDczaarKM4jcMub7fdzMgvpT7oX7hgF+Gc/0n33NJhTm+NQd3nqUwKP0OsdZrcB/lGzCXhfUuI6wXiwoEZXFm1BCD/r7KiSo6ju2vWRpolXpw9auVnFGzAhfTkyMVgLkzdY/IXcyzcTgeYMd6bmxq+JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4Drcki0Ixelmm3Kyt3XT0bOoLskaDWkSw4+UpB3KeM=;
 b=IL5WRLkvtogetZ8vnKbr2K/yCOe+kkIyYkcmRCC3ZN/9d7Vzooy4Y84eB5APkr+qoW2CyYpuexP9q2A0KvFNt/68j3S086MH1FbAb1QfptyEvTp8lrstW5jHhOVWIsZofZt3OwOOWSHsMPlDsAv0KpMsOKYxAewvSRaTPxCVSEP4IpKJ9awnpEDjs0KhAHG1Ni4qK1VTMvx4K0bK5azUkWHkqQC/FC1+MdG0sxGb3HZ8zCKq2fayUxGe+KsFw+rygnFDnfdNxB0s53ftvDnC+mKMvrYxJpgGhlrLoF/fpbgF+a+/67mwGAogyNd9snkG1L/h1eKy2KUlHJHGESHeoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G4Drcki0Ixelmm3Kyt3XT0bOoLskaDWkSw4+UpB3KeM=;
 b=Nnls2myLVPChUcQWNzaiSftFafOR5YXGx2KLxspagGyn4xmLAENudvca5wUsKZWZKkalKfW5RGZCSLcjLF+1uflD8R27DFgsJ/xevOsMJtxxHqIpEgrbNkpJp4c1tLst2MuorOstl6Jgg+cy5Uz5YxIbfI8YAqevAn8u5cgAs5Q=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1870.namprd11.prod.outlook.com (2603:10b6:300:10f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Thu, 21 May
 2020 13:29:04 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 13:29:04 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Possible race while masking IRQ on Allwinner A20
Date: Thu, 21 May 2020 15:28:56 +0200
Message-ID: <4055631.Zo4jul7Flx@pc-42>
Organization: Silicon Labs
In-Reply-To: <7b8772cbdb9ed907981b18a0ffbc7762@kernel.org>
References: <11042983.UNsANRFJuY@pc-42>
 <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
 <7b8772cbdb9ed907981b18a0ffbc7762@kernel.org>
X-ClientProxiedBy: MR2P264CA0114.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:33::30) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:cb00:89d9:f400:78be:b52e:82a1:1e54) by
 MR2P264CA0114.FRAP264.PROD.OUTLOOK.COM (2603:10a6:500:33::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.27 via Frontend Transport; Thu, 21 May 2020 13:29:02 +0000
X-Originating-IP: [2a01:cb00:89d9:f400:78be:b52e:82a1:1e54]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dcdc33ab-cb9d-4f75-d424-08d7fd8aee6e
X-MS-TrafficTypeDiagnostic: MWHPR11MB1870:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1870F20C2E9FB623F42E656693B70@MWHPR11MB1870.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R54KZ6iFhS1ptUKwBZo6GfEDI/AUS4VEfGWGJotJgfwD8Q5nM/K7+5dPgrU23S9UrJN5IKpGPvefuHRliuwspDQD1yItZW+RV4u5pVF/8m6Hs51uiVu4+RNH3SAIukyC6HBDjTtTxH2EagCBKsNmsv7x32MS1TKGKBnmKO45m2inzwYcBZ7hmt4VaeBgy5lAmfQ92kmaEP+prBb+GOC7ZU16CC2Et2QH/5Y99c6gUIwvg9zVgf5nbTmFqrjW7rqSEoTX5XYbnD4Be9zedoZrrUT3rGr5DpU75ZPxze+V0tdOoIv07MHxD/Y1PP3nQBI65b6Vf8yukHYeWYnxn5LxWjZ7EZk1h0PASsy56qUu/JgD4j1P7tLTtktugJPwrhabzguOg6Rh4JSofcf29d83BHrnq1zUPqI2vN7LWgu1fuYB6tAMYxrByEPT0O1df/ly04dtiEwekMJyNg4q0sLrlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(396003)(376002)(39860400002)(346002)(366004)(6486002)(5660300002)(86362001)(2906002)(36916002)(478600001)(53546011)(8936002)(6666004)(6506007)(8676002)(186003)(66946007)(16526019)(66574014)(6916009)(966005)(66556008)(4326008)(6512007)(66476007)(33716001)(52116002)(316002)(54906003)(9686003)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: JuwxJK+AZuF8c/kKnnm8k/iMj1ToQQL5UhaGn9MytiQElHH7BOnLcUuSb22nCqeA4RbVyQOti8gr8fQHlqxDjclwAANX37zd1OJHfRxuFOdQ/u5zGSO/2p3vo5twlO2rMkEvLAxyQI0qP+XDBKcuEmAsjqLV5mZXyEkjalcSnYXKh5SC5rN/Zw/80sTZZgFfM0zevORILINP4eH9X5hQFTTcKb2JQ6wyRDlu9IIgFgZN4324M26TsSL0MorcfoXonjnELlaYNZvaJe9ccLc1w0wEA6FptQtSwH9BN+N662HeWivXAElM9F95dfll31/P8lAouB1/89QLAr9s7ExThmvimV3eMxq2hx4ckNj+sCpe93YpWNQluW5sYTRlMFINf/1XQ7zry2m3nhiqwUdw896c1vCu0fVaDawkcj9YlpIgPBx4KpTVpMBeDy73eniwqU5Cl4UysEKAl4i6cN9k8MmpnH4O+YKUndgoNZlygH+5C0qXRbjwHhC0H6C+bMYQ9nJtlIMYMroiZfq7nsmUVWxYZTX5v+lK+mciuwiIqscBqPByPSnB1ZCWig+fCMlS
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcdc33ab-cb9d-4f75-d424-08d7fd8aee6e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 13:29:04.5138 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /cktwWUTGzVfY35IZsVQ9Xsj4hgNcYpIUMMu6xKcYRi+4u/3tTbCnvT4pl4JUU5l2uS7YREiJ31ek+uYGDbPkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_062906_989505_20F7A4AF 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.58 listed in wl.mailspike.net]
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
Cc: Marc Dorval <marc.dorval@silabs.com>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 21 May 2020 10:02:48 CEST Marc Zyngier wrote:
> On 2020-05-21 08:26, Maxime Ripard wrote:
> > On Tue, May 19, 2020 at 10:59:26AM +0200, J=E9r=F4me Pouiller wrote:
[...]
> >> Nevermind, I tried to use a level triggered IRQ (and my request is on
> >> this part). As you can see in the wfx driver (in  bus_sdio.c and
> >> bh.c), I use a threaded IRQ for that. Unfortunately, I receive some IR=
Qs
> >> twice.
> >> I traced the problem, I get:
> >>
> >>  QSGRenderThread-981   [000] d.h.   247.485524: irq_handler_entry: irq=
=3D80 name=3Dwfx
> >>  QSGRenderThread-981   [000] d.h.   247.485547: irq_handler_exit: irq=
=3D80 ret=3Dhandled
> >>  QSGRenderThread-981   [000] d.h.   247.485600: irq_handler_entry: irq=
=3D80 name=3Dwfx
> >>  QSGRenderThread-981   [000] d.h.   247.485606: irq_handler_exit: irq=
=3D80 ret=3Dhandled
> >>       irq/80-wfx-260   [001] ....   247.485828: io_read32: CONTROL: 00=
00f046
> >>       irq/80-wfx-260   [001] ....   247.486072: io_read32: CONTROL: 00=
00f046
> >>     kworker/1:1H-116   [001] ....   247.486214: io_read: QUEUE: 8b 00 =
84 18 00 00 00 00 01 00 15 82 2b 48 01 1e 88 42 30 00 08 6b d7 c3 53 e0 28 =
80 88 67 32 af ... (192 bytes)
> >>     kworker/1:1H-116   [001] ....   247.493097: io_read: QUEUE: 00 00 =
00 00 00 00 00 00 06 06 00 6a 3f 95 00 60 00 00 00 00 08 62 00 00 01 00 5e =
00 00 07 28 80 ... (192 bytes)
> >>     [...]
> >>
> >> On this trace, we can see:
> >>   - the hard IRQ handler
> >>   - the IRQ acknowledge from the thread irq/80-wfx-260
> >>   - the access to the data from kworker/1:1H-116
> >>
> >> As far as I understand, the first call to the IRQ handler (at
> >> 247.485524) should mask the IRQ 80. So, the second IRQ (at 247.485600)
> >> should not happen and the thread irq/80 should be triggered only once.
> >>
> >> Do you have any idea of what is going wrong with this IRQ?
> >
> > That's pretty weird indeed. My first guess was that you weren't using
> > IRQF_ONESHOT, but it looks like you are. My next lead would be to see
> > if the mask / unmask hooks in the pinctrl driver are properly called
> > (and actually do what they are supposed to do). I'm not sure we have
> > any in-tree user of a threaded IRQ attached to the pinctrl driver, so
> > it might have been broken for quite some time.
> =

> What is certainly puzzling is that this driver doesn't seem to use
> threaded IRQs at all. Instead, it uses its own workqueue that seems
> to bypass the core IRQ subsystem altogether. So any guarantee we'd
> expect goes at of the window.
>
> It is also pretty unclear to me how whether the HW supports switch
> from edge to level signalling. The request_irq() call definitely asks
> for edge, and I don't know how you'd instruct the HW to change its
> signalling method (in general, it isn't possible).

You are talking about the wfx driver? Be sure you read the right version
of the driver. The ability to use a level-triggered IRQ does not exist in
the stable tree. You have to check the "staging-next" tree from Greg[1].

[1] https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging=
/+/staging-next/drivers/staging/wfx/bus_sdio.c#109

-- =

J=E9r=F4me Pouiller



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
