Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D34C030D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCgAUEoBT5PQ3PrxzxdZduCx3qwiEjAmNJwJ8IcDjHA=; b=c93En4XjBgZUXS
	8VmMlDBgJRKqguhuSfIKQUNvOVLHoG2d2XH7H8MkUXOTGmI3gJtGLkEwjlX0HLbaeX9CW7N3PrZLv
	xx3kNIiIm/tw/J+sJW+cFPbEls9YXvfDtrSu6EKCodVV4DO96KE/kERAbwjokWeR82VkRhA5nPFFF
	vuLUJQj9hpWHkJ/ZUOXQp2Czy9MKlFEjxs3G1RIY4P8fgDJ9UgsQqTcHt16hRrSPu2YsgGe3rmQOB
	OFmUsoUyTWZUth0b8d/kBNuTcHBa4utlIvyFGegtecnBzI0JfaC9htp2zQVDErndmU+KM/4PY4sMq
	Fr84uU8Qs9MpJK9lrpyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnEg-0002Rl-OL; Fri, 27 Sep 2019 10:12:26 +0000
Received: from mail-eopbgr680052.outbound.protection.outlook.com
 ([40.107.68.52] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnEH-0002Gl-Ie
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:12:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QiE7SV5vKt1D/b1mn063gDT/lCBdU+PyHhpbkwVzlNDNbOAqnyp6xtOk3KkeHHXbsHHJh9bBTKpsSPNlaAI4R39J3BO3M5n4kfbHpHbT24Z8eD3l877Fo58+LZ093h4NKkdA9Yv8e2kBUU815mLb6ij8+VI7paRdh7P5Z1pJKFZIB6znOf+AkorxCPFkuU8OrdlbpUmeEeML2WyAH0g7DZd/eeo/59mWoQlgxuKCe9HXefCr55SJwfVLkLs6vWQHKTEN50YbPCwjF1E0nwUg/EaeEYehSSBAeqLgKT6V+BMaPwu2343I0bTroPRxSdeXKFtDoPdeG93Od6sRitNGcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhJe61zs1Qta3jx5Lwrt1diUJCzAA8UvaWpDnwvzCvs=;
 b=j6tLR54p7waJ5asTLK1lHlfYyRBMEGtfLQHWaMZhf5uE67Q5lHbw0M+j5sXuSOgKAmS0yIxw3S3/++YEeTYRmUnyLjVpeQcDBuhCMbfoe+dGSbxZ6VVy5LRALMWBd4rlSGadd7fk5RKNkFr4+ydHlqM8p9d6Qpsn6SBwUPfYaO8660XeHTzJ6kw4h0KajQELtNE/jd4aU0lXbRdMebXPwCWvBYn7lGO5kSDcbrW/hJs3jGgyZ5wFR1S/Sg+gVoAOmcppYbgDYj1BprpkbKa4O435jQoySCOCdPx7a/eCKuTimEGI1fzbe5ZQnrRHG3xJQfEIKmXpMm11HyD9xjyZ/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhJe61zs1Qta3jx5Lwrt1diUJCzAA8UvaWpDnwvzCvs=;
 b=sUFngvepZKS1pqy3jLWKQ10qwiQPQwyo9JIxoKJ3nSn5x/3wp52sWpZQ41rPJSlCScaaQ8+HDWUOcESBtvJv27sC7n3h2dGO/M9qw8ItfQ8JwOHT4fKZG6huxMkHSeOWWKnMwftEgQwPVYZKFmJAKYnIIRYQtDeC2Wtyp2+44uI=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2653.namprd20.prod.outlook.com (20.178.250.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15; Fri, 27 Sep 2019 10:11:55 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 10:11:55 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfwgABkWQCAAIUxcA==
Date: Fri, 27 Sep 2019 10:11:55 +0000
Message-ID: <MN2PR20MB2973403A964F0D00440EFB15CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wgu5-Wj=UY+iU+x=RcKN_ceUsKdfhsv2-E5TNocELU8Ag@mail.gmail.com>
In-Reply-To: <CAHk-=wgu5-Wj=UY+iU+x=RcKN_ceUsKdfhsv2-E5TNocELU8Ag@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab138294-3a5a-443c-600f-08d743331ff4
x-ms-traffictypediagnostic: MN2PR20MB2653:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB265336FDD3960E23FB2236C1CA810@MN2PR20MB2653.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(136003)(39850400004)(366004)(346002)(199004)(189003)(52314003)(13464003)(486006)(14454004)(15974865002)(2906002)(99286004)(7416002)(6436002)(66066001)(186003)(476003)(6506007)(446003)(55016002)(54906003)(316002)(33656002)(5660300002)(9686003)(11346002)(478600001)(305945005)(6246003)(7736002)(8936002)(102836004)(3846002)(6116002)(71200400001)(53546011)(71190400001)(26005)(81166006)(25786009)(8676002)(76116006)(52536014)(81156014)(6916009)(66556008)(64756008)(4326008)(66476007)(66946007)(74316002)(7696005)(66446008)(229853002)(76176011)(86362001)(256004)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2653;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3e+xTZf9B45ivOlhWTWQPWJGBQ283rNs4+zcSAO4b1507MNbSvEpsjdzWta56WHCge/0lMdH6aUgTaY9bnWxwcbqRtqRBfTYQTGYYohHNHMhiL0r6nTObMKAeAcFz6EKi77Q3cMR9v2VzuFRS1OkNJJ5sqB6O5HZIVjmfbIFfGUvO28v6QlU/ir02N98C2udCaOEvFx5hpGSlEzFDLCgyAbJ/GZ9UTFJthA56NqleI+02HpWEAVZDVPScsnnVopidSPKHO1bgTUWRRrVUiZP9aifqlvis2H0QHZk+Tb8OYZVEjbBLPN6FZYXxivxNtSnudWLle/oyl2Rh49kAKxjkeWf82m4I8yJ+LwfkwTOwgCSHgbInvIu7HjzD5AvkZPalAsmdnii9a/8ArQUsuz3M3blHDgWmD9LanKqWhi9Upc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab138294-3a5a-443c-600f-08d743331ff4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 10:11:55.2777 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qoegnrtu6S6tYVrSJyEIYItCn3uFgJ0xd/lLZJuyTesfJp+lu9ugh19mJ7V5tSqqpAKkf+SI+uqIO67N1WG3wL1ul3I7qVQL3n6qBAi/DEo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2653
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_031201_613667_6204E7BE 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Will Deacon <will@kernel.org>,
 David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: Linus Torvalds <torvalds@linux-foundation.org>
> Sent: Friday, September 27, 2019 4:06 AM
> To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Linux Crypto Mailing List <linux-
> crypto@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Herbert Xu
> <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> <gregkh@linuxfoundation.org>; Jason A . Donenfeld <Jason@zx2c4.com>; Samuel Neves
> <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>;
> Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> <catalin.marinas@arm.com>
> Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for packet
> encryption
> 
> On Thu, Sep 26, 2019 at 5:15 PM Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
> >
> > But even the CPU only thing may have several implementations, of which
> > you want to select the fastest one supported by the _detected_ CPU
> > features (i.e. SSE, AES-NI, AVX, AVX512, NEON, etc. etc.)
> > Do you think this would still be efficient if that would be some
> > large if-else tree? Also, such a fixed implementation wouldn't scale.
> 
> Just a note on this part.
> 
> Yes, with retpoline a large if-else tree is actually *way* better for
> performance these days than even just one single indirect call. I
> think the cross-over point is somewhere around 20 if-statements.
> 
Yikes, that is just _horrible_ :-(

_However_ there's many CPU architectures out there that _don't_ need
the retpoline mitigation and would be unfairly penalized by the deep
if-else tree (as opposed to the indirect branch) for a problem they
did not cause in the first place.

Wouldn't it be more fair to impose the penalty on the CPU's actually
_causing_ this problem? Also because those are generally the more 
powerful CPU's anyway, that would suffer the least from the overhead?

> But those kinds of things also are things that we already handle well
> with instruction rewriting, so they can actually have even less of an
> overhead than a conditional branch. Using code like
> 
>   if (static_cpu_has(X86_FEATURE_AVX2))
> 
> actually ends up patching the code at run-time, so you end up having
> just an unconditional branch. Exactly because CPU feature choices
> often end up being in critical code-paths where you have
> one-or-the-other kind of setup.
> 
> And yes, one of the big users of this is very much the crypto library code.
> 
Ok, I didn't know about that. So I suppose we could have something
like if (static_soc_has(HW_CRYPTO_ACCELERATOR_XYZ)) ... Hmmm ...

> The code to do the above is disgusting, and when you look at the
> generated code you see odd unreachable jumps and what looks like a
> slow "bts" instruction that does the testing dynamically.
> 
> And then the kernel instruction stream gets rewritten fairly early
> during the boot depending on the actual CPU capabilities, and the
> dynamic tests get overwritten by a direct jump.
> 
> Admittedly I don't think the arm64 people go to quite those lengths,
> but it certainly wouldn't be impossible there either.  It just takes a
> bit of architecture knowledge and a strong stomach ;)
> 
>                  Linus

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
