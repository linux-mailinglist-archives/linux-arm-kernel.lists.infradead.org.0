Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C879160611
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 20:54:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4LrnL6wTubfGMQFDdjJnLw2X4hmEcXUTcvKD+Vj6K0=; b=G63JWF4Dck5UND
	iC88YBlZ1rxgrdK5F7vH3ukhdQoFnJB7zdAAu/Nv9bw5Xp/7KmqX0wylbOG0A7fs5U8TdEqhXtyYV
	P4Dx0pO4ZmlopA1V2/acBAm+q2NyYbIG8XWtJN7XuNH+CuQGn8Mzn3cvtDIXLZ7NrgqPv2qSjGaN4
	kPlkTEul8ZduAGMLCtqCzVdO74FrX9CM5vmTj/7xlKafqqDO6yXRb4QC+sNdCCGJqT5OJj+t5fjXU
	ObwA+XzaCpvxo1sNoGEnJ7K093n7DN9zYUSZv8qK9WAr/1TEukN2xom4sJwT5Jv5g9I6K+yeJItt4
	FbkMAyPaThNjgzI4+wDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Q0C-00079r-DE; Sun, 16 Feb 2020 19:54:52 +0000
Received: from mail-eopbgr1410093.outbound.protection.outlook.com
 ([40.107.141.93] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Q03-00078o-PY
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 19:54:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ferxquqvt0UCp/B/uDEgBRQ+2hjLn/VhY838Yt4NGJi7gcE0uFA7M38ZUv1xpJFsCKr+JVDHiX/z8sEWv9gT1mb/YVbLCV3/bOZW+eJtYZ1ZjrI898zVILACB4Z2a/tVOUiy1e/CYXuXdQTJnv2p0swItPREfYecQ/azU10CISPzJ+Dbx7K3efJhD0xtlw6N6Rwt9BFOJo0z0h4wOEHUD0nye4ren5IuUcPGY1JljwI2vaLyTyHJLm31PxzvtfVkG9sSW1NQI84BRm+NOe8ZNK29ISUD8Tk8mkfs1ZIP287r4Kz2OB0/xaEN/CROe8+psKfnMbThcdHXe/tRG0j0Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6JWHHdjximhgCT4QAkEXrYqy68MStrBcmJ2e94W3ZRs=;
 b=Ga75TUHtJFfAIBQUmInjE5ZLLn4Y5urzfPDzClSyUFyQ6jsIobYjszAim5PpoFqmI5Jc6c6PW5OMKbGHGMMCZZU+QkI+UKjWUNfhpgNy+8wSE6+X7W5qll2O5xYfc1R7DcZdehCNt+bltEvugbtReXlMI1r7z4U+0IytSxcQ0U6vg6NXgqUkaEq4+oy4bWNGo2B/xAiLz4/XqKJPgfZUin7LfaWCjEgrDj9Pr5nNZIwt/RjHgqG66eDvbAV/TWfGoUApCe8XwixNE8KBXIbgW/dEUfePzOFD7YLRm+k+1cP3h7Q96yHQLo7bXFRd1yjZfYGqOf2R0zWteGn0LwDH1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=renesasgroup.onmicrosoft.com; s=selector2-renesasgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6JWHHdjximhgCT4QAkEXrYqy68MStrBcmJ2e94W3ZRs=;
 b=ffzrYpUYEplTwgwRRnMQoA84WozMSqpIJJ8onkJr9PM7H2EId/MRdIpVYcJpZGMy5uop6kk4ID39OraaUGTnLO68qGuG3W59i9bgC9AlhiRxJcbZU0IfQFjOvnO3fCIIgSyGPORrOu/S/mDEoQQLusRtq5DV8IclVzreHYCJYbM=
Received: from TYAPR01MB2285.jpnprd01.prod.outlook.com (52.133.177.145) by
 TYAPR01MB3712.jpnprd01.prod.outlook.com (20.178.137.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.23; Sun, 16 Feb 2020 19:54:34 +0000
Received: from TYAPR01MB2285.jpnprd01.prod.outlook.com
 ([fe80::1045:4879:77ed:8a70]) by TYAPR01MB2285.jpnprd01.prod.outlook.com
 ([fe80::1045:4879:77ed:8a70%7]) with mapi id 15.20.2729.028; Sun, 16 Feb 2020
 19:54:34 +0000
From: Chris Paterson <Chris.Paterson2@renesas.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Arnd Bergmann <arnd@arndb.de>
Subject: RE: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Thread-Topic: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Thread-Index: AQHV4UBCokgUzaN+lUSpKIEPQqBkX6gXQFUAgAIZNoCAAsk4AIAAXS4AgAEY+wCAAKfGYA==
Date: Sun, 16 Feb 2020 19:54:34 +0000
Message-ID: <TYAPR01MB228505DD9E7C85F9FA4AA785B7170@TYAPR01MB2285.jpnprd01.prod.outlook.com>
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
In-Reply-To: <CAMuHMdVpTngVXUnLzpS3hZWuVg97GVTf2Y3X8md--41AtaD1Ug@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chris.Paterson2@renesas.com; 
x-originating-ip: [176.27.142.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2a184311-dcf4-4352-d7db-08d7b31a0c02
x-ms-traffictypediagnostic: TYAPR01MB3712:
x-microsoft-antispam-prvs: <TYAPR01MB371261E645276A94CEBBDBE6B7170@TYAPR01MB3712.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03152A99FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(366004)(136003)(376002)(346002)(39850400004)(199004)(189003)(4326008)(33656002)(81156014)(8936002)(81166006)(86362001)(8676002)(7416002)(71200400001)(478600001)(55016002)(9686003)(5660300002)(7696005)(76116006)(2906002)(53546011)(66946007)(6506007)(316002)(54906003)(110136005)(186003)(26005)(66476007)(66556008)(66446008)(52536014)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:TYAPR01MB3712;
 H:TYAPR01MB2285.jpnprd01.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: renesas.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3zKmvziL4Tsvl8IkfZo1A8khxZlxiW38F+8fRUxjK1lLm8BltTitRB3BET0b+CiTpzKKpDiLObNdJqZxNYmiqAs8g56JcR3Lrjj978pW1G4kIAGLmhF8n09w3aJkoqgnIgCaNaZ5S0yZECWb16wO4CsxJbFyDnulsOdxBOe1yk+9egDgA2TjpiUr/n5gIIdUBR0G0nNhTUXukb/b8Ot+PGO3cleMnrHjRHpTFxv4D2Odfs2ishbXDW3B5gikGT1OfErRHzpjJ9CWBqnsVQVGTLjKfzkzFZh1rk4rrPea0QYYVV3rf5mke/bRpq3LkLL4IMxPt3HCTOrDlY62WXomWlRfk00bFMknPOaRxiBEOEiT2Md9OU9rkCv7paYfsn4x61OMyU8AUYs5bEfDQN+3JpLgQwmN0QPSiyC2aJ8NbHe0V4PIuz3498tr1d/dHsHi
x-ms-exchange-antispam-messagedata: Zr4Dz1d7bB/W52KB4vH2WwEm7Oi3eCITMTQXP6o1Dv79YGCsj8JboLRuAN6b0giuw73HKxlMIW1ybRx8rbJRzfIdbcjIhiq4osprr2X/8kqZYRqDSXkuoZMkKFykCNZO5KFvyXw3hSLLVJWRWfGvcw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a184311-dcf4-4352-d7db-08d7b31a0c02
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2020 19:54:34.4371 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L5IeZBppSCXHAIcaU4f0oJIU7OcbJefultakuQC9+zbn1JifeG5c/EBWiKMxgRQJ7dkcNtl2PJWezG/2RZuP+imBTZ1iIA+vrh5Hf3IKJLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAPR01MB3712
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_115443_867777_A21776CE 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.93 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Al Viro <viro@zeniv.linux.org.uk>,
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

Hello Arnd, Geert,

> From: Geert Uytterhoeven <geert@linux-m68k.org>
> Sent: 16 February 2020 09:45
> To: Arnd Bergmann <arnd@arndb.de>
> 
> Hi Arnd,
> 
> On Sat, Feb 15, 2020 at 5:59 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > On Sat, Feb 15, 2020 at 12:25 PM Geert Uytterhoeven
> > <geert@linux-m68k.org> wrote:
> > > On Thu, Feb 13, 2020 at 5:54 PM Arnd Bergmann <arnd@arndb.de>
> wrote:
> > > > On Wed, Feb 12, 2020 at 9:50 AM Russell King - ARM Linux admin
> > > > <linux@armlinux.org.uk> wrote:
> > >
> > > The CIP-supported RZ/G1 SoCs can have up to 4 GiB, typically split (even
> > > for 1 GiB or 2 GiB configurations) in two parts, one below and one above
> > > the 32-bit physical limit.

Yep. One example is r8a7743-iwg20m.dtsi.

> >
> > Good to know. I think there are several other chips that have dual-channel
> > DDR3 and thus /can/ support this configuration, but this rarely happens.
> > Are you aware of commercial products that use a 4GB configuration, aside
> from
> > the reference board?

iWave Systems make a range of SOM modules using the RZ/G1 SoCs.
I believe there are options for some of these to use 4 GB, although 1 or 2 GB is used in the boards we've upstreamed support for.

There are also other SOM vendors (e.g. Emtrion) and end users of RZ/G1, but I'm not sure of the details.

Kind regards, Chris

> 
> Unfortunately I don't know.
> Chris Paterson might know.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-
> m68k.org
> 
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
