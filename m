Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB70C26E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 22:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmzzNmX7xIoLB+rHumPzv+0bovrxcI7gSHIy5wMF/5Q=; b=UzEaHd3C6dYd2e
	mSKhFfExh5eRROTiHOt9jNfOHFfPk9xmn3wKzTKJh1XCbBlJwnjmMS91/a2wCKhcr3/iNyXFK1zuf
	8/8GcAFbVdnF0qO3zW/POR6Erdk3qNp7VGzG5dhvA+sCuqKtj7I4y+EbwDqjjVZ+6n4REu5KAywSL
	/CdpWhEGoWa++nPR+eOW2VNex093ELHTrOhto6WXappGK/EXKGBlOZqwrTLl9rV9BfnQ/TTwKtTZq
	ZuTcMek9lsf+mLEQKj86icHSXTP+SBLMoUH8qoXGInKugartJDWUIJcj2IlUim9nIrBCUsWgwr08P
	FN+PrIGtsPHMlDCUrhFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF2Wu-00027r-Rg; Mon, 30 Sep 2019 20:44:24 +0000
Received: from mail-eopbgr680086.outbound.protection.outlook.com
 ([40.107.68.86] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF2Wl-000257-KM
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 20:44:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGsmT2BFtRNyI24j5JQcgSZU7P3Ex6PHzZEDDKp9A7jI4wZms78vLik/oPvcNfjE8PHbBFS1jz41aZu2eMqNCl0kcrrzu0RqdQ1aS6bezemhJeIpd52IkPRY/c0UAt8ne65YXEIvkDNIR2ryGm7WL26d/cYgxUkHc8tYe6/MQRcdzHOkuQhvq6XHIifIyUEyR/yLnr53zpgdSQxhpdWGD5miRUANPyFnGlo3FTlYfW4HpBFr7zkn3IQ+70/wz2UfDS5zE1q8HsfWaCUDmLBDlSk76xgNWTjotrblWHTSOHNJJzw96DhTAbPopDq5/at707v/JNHN4QIZnDDgnDPy7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tl4EokZiXGkpdlPR23P9rGUvEAJJFbioqy2NrmUjC6M=;
 b=EjaZNUP6JpHkPuoqwayrRm2+QanUJNwS80CbxPD/O/jg8Lr4uxOLdQeJDlfIlyxb88zdZZjX1HHfK1PTAe+RtZFlMufoUK5MlQWfHDh6FTB7UbiksRnHKY+wy4Nr2MnjzLNftcWiqmjVuDdtjQgSItUSK6ouyCJWcKJQR2JRMvskuNa7zTvQsRY2t4LCAG1arOgXshPQvpRsyeCPva2b7RLXEhCeC4QEWpdCUIFu4q7lgAn151aT7C3p+lEXnOuf3aNZHcaj8vZfUR3RVxF9SPVZabU5QA3qwSJSUAWNnXKzQrkWOg2hT3yeYa7sgWHUuHTLTMg5l51cD1jiVEZLEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tl4EokZiXGkpdlPR23P9rGUvEAJJFbioqy2NrmUjC6M=;
 b=AXd8XRJblXPOt2GgdHJDrx6Uea+G+eD86HjG6UqavXJUz5eF9z0laShdcHvySYJQ9LpA/I0o5MDqNHvjr4CCTKWgHFoPAyzO9cNykubUjrz23yMZC26Aa2055/JiQZhBo2yf0WaaK3rHKS3Q/oxAdVKX4QgPPnm4UtQnF3V1bzY=
Received: from CH2PR20MB2968.namprd20.prod.outlook.com (10.255.156.33) by
 CH2PR20MB3207.namprd20.prod.outlook.com (10.255.155.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Mon, 30 Sep 2019 20:44:07 +0000
Received: from CH2PR20MB2968.namprd20.prod.outlook.com
 ([fe80::e8b0:cb5f:268e:e3ae]) by CH2PR20MB2968.namprd20.prod.outlook.com
 ([fe80::e8b0:cb5f:268e:e3ae%5]) with mapi id 15.20.2305.017; Mon, 30 Sep 2019
 20:44:07 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfwgABabYCAAFofIIAAn3CAgATkO8A=
Date: Mon, 30 Sep 2019 20:44:06 +0000
Message-ID: <CH2PR20MB2968692F693A5A8CB71CE301CA820@CH2PR20MB2968.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <MN2PR20MB2973A696B92A8C5A74A738F1CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
In-Reply-To: <CAHk-=wj9BSMzoDD31R-ymjGpkpt0u-ndX6+p0ZWsrJFDTAN+zg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ffa14d0-52d5-4f1e-24bc-08d745e6f034
x-ms-traffictypediagnostic: CH2PR20MB3207:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR20MB3207D387209D1581DD99BDFACA820@CH2PR20MB3207.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01762B0D64
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39850400004)(346002)(376002)(366004)(199004)(189003)(13464003)(52314003)(305945005)(14454004)(26005)(52536014)(30864003)(15974865002)(6116002)(3846002)(25786009)(6916009)(4326008)(102836004)(81156014)(2906002)(8676002)(81166006)(6436002)(186003)(66574012)(71200400001)(71190400001)(76176011)(11346002)(6246003)(33656002)(99286004)(478600001)(316002)(53546011)(9686003)(14444005)(66066001)(256004)(66476007)(6506007)(76116006)(8936002)(55016002)(66446008)(486006)(66556008)(66946007)(446003)(86362001)(64756008)(5660300002)(229853002)(7416002)(7736002)(54906003)(74316002)(476003)(7696005)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR20MB3207;
 H:CH2PR20MB2968.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: l5KZkZ02c+3QdiO/CJjwOaXvOunlaCBEdpq8c5GfFXas+Ym7ubVW5JUrM0fko5xCR8px0UWYuG3kWKW7BEQa+IykbaGzqzMQoYOc7rzebkuqDj6NK+zZZA4lWiIqlIu5yqSUJwdaC1LDDMkHa/yIn2AdmvKqB6P8r6mIS+RMB1AB20Hik9f/3xkQZ4WjAHfWVPXJ+iDKafyXTge65LLCcqvAxkFehhG9PYsbrvwHPQ7AWQtgOrszkm8+v5fPN7lkRi9nLOVOaZzOot4OE4aOERRewgk81ueC2kJAsIBg4C6CbmFnC4sZf+XbmUa24uC1x4AQkxrMc4tU5ZCtxw+CLPMOzFzI8/iejGcj6f4KhEBnYHRDxMpTBh8ExVCNiWGTO4oYNaaI7vVkymx1dfWFxaLVZgGibAvQzYGtTIwE58g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ffa14d0-52d5-4f1e-24bc-08d745e6f034
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Sep 2019 20:44:06.9469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1zswGAJYBq+tO19o9Jlbvop4dXv2S/vMldiiTsI9VN2epmFpLoRUSpY/FSukNFBYvDBdgk7ZHAIy5JV1Fl8izwD6Z9e10xhLIkMP3hU1+04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR20MB3207
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_134415_742256_7ECB5301 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

> -----Original Message----
> From: Linus Torvalds <torvalds@linux-foundation.org>
> Sent: Friday, September 27, 2019 6:24 PM
> To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Linux Crypto Mailing List <linux-
> crypto@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Herbert Xu
> <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> <gregkh@linuxfoundation.org>; Jason A . Donenfeld <Jason@zx2c4.com>; Samuel Neves
> <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann <arnd@arndb.de>;
> Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>; Will Deacon
> <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas <catalin.marinas@arm.com>
> Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for packet encryption
> 
> On Fri, Sep 27, 2019 at 2:58 AM Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
> >
> > > I'd want to see wireguard in an end-to-end situation from the very
> > > client hardware. So laptops, phones, desktops. Not the untrusted (to
> > > me) hw in between.
> > >
> > I don't see why the crypto HW would deserve any less trust than, say,
> > the CPU itself. I would say CPU's don't deserve that trust at the moment.
> 
> It's not the crypto engine that is part of the untrusted hardware.
> It's the box itself, and the manufacturer, and you having to trust
> that the manufacturer didn't set up some magic knocking sequence to
> disable the encryption.
> 
> Maybe the company that makes them is trying to do a good job. But
> maybe they are based in a country that has laws that require
> backdoors.
> 
> Say, France. There's a long long history of that kind of thing.
> 
> It's all to "fight terrorism", but hey, a little industrial espionage
> is good too, isn't it? So let's just disable GSM encryption based on
> geographic locale and local regulation, shall we.
> 
> Yeah, yeah, GSM encryption wasn't all that strong to begin with, but
> it was apparently strong enough that France didn't want it.
> 
> So tell me again why I should trust that box that I have no control over?
> 
Same reason you trust your PC hardware you have no control over?
(That CPU is assembled in Malaysia, your motherboard likely in China.
And not being a US citizen, *I* wouldn't trust anything out of the US
anyway, _knowing_ they've been actively spying on us for decades ...)

In case you worry about the software part: of course you'd be running
something open-source and Linux based like DD-WRT on that router ...

Personally I'm not that paranoid and I really like to offload all the
silly  crypto heavy-lifting to my router box, where it belongs.

> > Well, that's the general idea of abstraction. It also allows for
> > swapping in any other cipher with minimal effort just _because_ the
> > details were hidden from the application. So it may cost you some
> > effort initially, but it may save you effort later.
> 
> We clearly disagree on the utility of crypto agility. You point to
> things like ipsec as an argument for it.
> 
I don't recall doing specifically that, but anyway.

> And I point to ipsec as an argument *against* that horror. It's a
> bloated, inefficient, horribly complex mess. And all the "agility" is
> very much part of it.
> 
Oh really? I've been working on implementations thereof for nearly 2
decades, but I don't recognise this at all, at least not for the datapath.
IPsec actually made a significant effort to keep the packet format the
same across all extensions done over its 20+ year history. The cipher
agility is mostly abstracted away from the base protocol, allowing us to
add new ciphersuites - to hardware, no less! - with very minimal effort.

In any, case, while I believe in the KISS principle, I also believe that
things should be as simple as possible, but _no simpler than that_(A.E.)
Oversimplification is the evil twin of overcomplication.

> I also point to GSM as a reason against "agility". It has caused way
> more security problems than it has ever solved. The ":agility" is
> often a way to turn off (or tune down) the encryption, not as a way to
> say "ok, we can improve it later".
> 
> That "we can improve it later" is a bedtime story. It's not how it
> gets used. Particularly as the weaknesses are often not primarily in
> the crypto algorithm itself, but in how it gets used or other session
> details.
> 
I don't see what this has to do with cipher agility. Cipher agility has
nothing to do with "improving things later" and everything with the 
realisation that, someday, some clever person _will_ find some weakness.

> When you actually want to *improve* security, you throw the old code
> away, and start a new protocol entirely. Eg SSL -> TLS.
> 
Uhm. Now you're starting to show some ignorance ...

TLS was NOT a new protocol. I was a simple rename of a very minor evolution 
of SSL 3.0. Has been for all versions up to and including TLS 1.2. And YES,
THAT was a mistake, because SSL was just a very poor  starting point. 
For TLS 1.3 they finally did a (reasonably) proper redesign.
(Fun fact: SSL was _not_ designed by a committee, but TLS 1.3 _was_ ...)

> So cryptographic agility is way oversold, and often people are
> actively lying about why they want it. And the people who aren't lying
> are ignoring the costs.
> 
I wouldn't know what they could be lying about, crypto agility is 
just common sense risk spreading.

> One of the reasons _I_ like wireguard is that it just went for simple
> and secure. No BS.
> 
You and me both, BTW. I just don't want it to be _too_ simple.

> And you say
> 
> > Especially since all crypto it uses comes from a single
> > source (DJB), which is frowned upon in the industry.
> 
> I'm perhaps not a fan of DJB in all respects, but there's no question
> that he's at least competent.
> 
I have nothing against DJB, I've enjoyed many of his presentations.
I might even be a fan. I certainly don't doubt his competence.

But being as paranoid as you are: can you really TRUST the guy? ;-)
And as good as he is: there may be some weakness in the algorithm(s)
discovered _tomorrow_ and in that case _I_ would want to be able to
switch to an alternative instantly.
(and I believe for some big international organisation critically 
depending on such a VPN to connect all their branch offices around
the world while protecting their trade secrets, this is likely to
be even more important - they probably wouldn't want to wait until
Jason pulls Wireguard 2.0 out of his hat and certainly not for that
to pass certification and finaly hit their devices months later ...)

I'm not talking about some convoluted and fragile negotiation scheme,
a static parameter in some config file is just fine for that. The 
textual crypto templates of the Crypto API just fit that use case
perfectly.

And I have other reasons not to want to use Chacha-Poly, while I would
like to use the Wireguard _protocol_ itself:

1) Contrary to popular belief, Chacha-Poly is NOT the best choice of
   algorithms in terms of performance on many modern systems. On the
   quad core Cortex A72 system I'm working on here, AES-GCM is over 2
   times faster, even including Ard's Poly1305-Neon patches of last
   week (current mainline code for PC is even slower than that).
   Also, on modern Intel systems with AES-NI or VAES, AES-GCM 
   outperforms Chacha-Poly by a considerable margin. And, to make
   matters worse, running Chacha-Poly at high throughput is known to
   result in excessive thermal throttling on some recent Intel CPU's.
   Even if you don't need that throughput, it's nice to have more CPU
   power left to do useful work.
2) Chacha-Poly is inefficient in terms of power. For our hardware,
   it uses about 2x the power of AES-GCM and I have indications (e.g.
   the thermal throttling mentioned above) that this is no better for
   software implementations.

> The "industry practice" of having committees influenced by who knows
> what isn't all that much better. Do you want to talk about NSA
> elliptic curve constant choices?
> 
Which is actually an argument _in favor_ of crypto agility - you don't
want to be stuck with just one choice you may not trust ...
Options are _good_. (but do add some implementation complexity, sure)

> Anyway, on the costs:
> 
> > >  - dynamically allocate buffers at "init time"
> >
> > Why is that so "wrong"? It sure beats doing allocations on the hot path.
> 
> It's wrong not becasue the allocation is costly (you do that only
> once), but because the dynamic allocation means that you can't embed
> stuff in your own native data structures as a user.
> 
> So now accessing those things is no longer dense in the cache.
> 
I don't see how data allocated at _init time_ would be local in the 
cache at the time it is _finally_ used in some remote location, far
away in both space and time.

If you init and then immediately use, you may have a point, but
that should be the exception and not the rule.

> And it's the cache that matters for a synchronous CPU algorithm. You
> don't want the keys and state to be in some other location when you
> already have your data structures for the stream that could just have
> them right there with the other data.
> 
Yeah yeah, we all know that. But that only works for stuff that stays
in scope in the cache, not for stuff that has long since been pushed
out by other local variables.

And "other" memory that's used frequently (i.e. when it matters!) CAN
be cached too, you known :-) Modern prefetchers tend to be quite good,
too, so it shouldn't even matter if it gets flushed out temporarily.

> > And you don't want to have it on the stack initially and then have
> > to _copy_ it to some DMA-able location that you allocate on the fly
> > on the hot path if you _do_ want HW acceleration.
> 
> Actually, that's *exactly* what you want. You want keys etc to be in
> regular memory in a location that is convenient to the user, and then
> only if the hardware has issues do you say "ok, copy the key to the
> hardware". Because quite often the hardware will have very special key
> caches that aren't even available to the CPU, because they are on some
> hw-private buffers.
> 
Unfortunately, the only way to get that _into_ the HW is usually DMA
and that relies on DMA-capable memory. And copying significant data 
around on the  CPU tends to totally kill performance if you're in the 
business of HW acceleration, so it's nice if it's already in a DMA
capable buffer. Assuming the cost of having it there is not excessive.

I don't care so much about the keys BTW, that should not be performance
critical as you set it only once in a long while.
But things like IV's etc. _may_ be another matter for _some_ hardware.
(Actually, for _my_ hardware I _only_ care about not having to copy the
actual _data_, so for all _I_ care everything else can be on the stack.
But alas, I'm not alone in the world ...)

> Yes, you want to have a "key identity" model so that the hardware
> doesn't have to reload it all the time, but that's an invalidation
> protocol, not a "put the keys or nonces in special places".
> 
Actually, that _is_ exactly how (most of) _our_ hardware works :-)

But I _think_ keys and nonces and whatnot are actually not the main
reason those structs can't be on the stack. Drivers tend to add their
own local data to those structs, and this may contain buffers that
are used for DMA. I know for a fact the Inside Secure driver does
this (_not_ my design, BTW). I would personally have opted for 
embedding pointers to dynamically allocated blobs elsewhere, such
that the main struct _can_ be on the stack. Food for discussion :-)


>                Linus


Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
