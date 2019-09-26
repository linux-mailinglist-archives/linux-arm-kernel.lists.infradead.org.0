Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AFABEE98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1NuAli5Y3j03cfrFAShgNorG/A7vSJUnZHdwEcydFq4=; b=FCE8yWeL6bgGLQ
	ZEEGPuHqCi5kqTago/55E3nnPpao+Pq0j0MHNoNIEZ07Gz+kiP3VUi5APg/1QbhcPmFqmLEq6Sm7B
	qUAyQtI8vrPeJvW1A8qylq5WMxzgw4f+7tV1D4/fQQieyqtzgW6RtQCK0y8yhHGF1zhm0oaDD4c7o
	kRo58xToO/BT6QA7Dr3Ch8Ih6Do7dP9tN3exNSYfvDXg1QJ9jMdXpPz08YdzlDno+Zw9Bm+GRbzxF
	Xu0/pGHWafxPAIpJOMdQLw8BeaiU7dp6D7PVnKGrvWFFrYQdb527cGBttj1NAbeawNVbzZJeshOpH
	HDttalmvRR3Lw1aRkBbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQGj-0006Fc-H7; Thu, 26 Sep 2019 09:41:01 +0000
Received: from mail-eopbgr790051.outbound.protection.outlook.com
 ([40.107.79.51] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQGY-0006Ew-HF
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:40:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NY8Dl3z7yJqG+MbxNirstLp6o8KzStMKbOOACKd9FYJKhEOJ9BeVQT5H8izw6izy96o7so6KEx5Ge/ofJevkt7882L6cpVcaa6MCanWj5B/82mzTEhQSqyvqvjSo0C/bKP8orJvdLDXcFZEcbomUTfPZ4HkkImhYYnyToWuBjdWSdjWhJy2eG0/jUkhD/Z695AoG3yFFbWw0WcRP3HG8KK6GpZaakVRrTzktEeDw3QCdflDJyEDLRQoJd0ObKywuSGaikzH9D2yMQ7Gkd4Gr05Ss23FGBufU5DbbzszOOMZzWa1PiTkU9mYmxYOQ1cJL8hvh+3JfpECodf7hr0nnyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzOCjkfETybK/UjjXpGa6E43RofR02zSKx9EjEqjvvg=;
 b=FU8GAh30sH9d+cFtKIbdkjvcAZ4TP+DLnbgUyq4+Xb8nAYn3oryTRUEw3N2UGovEmN3/rna5sZSyONC7Mhhcs+FvZD2cbNKYsK/g09G9Ee03EtKxT5AcDSwgazB+0kw/fScAlidnCodBO4TnZexrYS/6YEo4KvexKr/gjMPUs3xQeR2o22fK2QrJ1M27907H1za1MCgl/kgVrx41AGig3ERhEUW2NAk+xc8t9GTsnrWbmC7mJE2ht+krxrNSOaVE7ieCViQMUu22jgAr7/deCVlo1tWzkAgjkPZAJ2c0ZIE9S4U6rPHpc+M5xeLtTR5mePoZXOWG7d5NtYNGNZPDtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kzOCjkfETybK/UjjXpGa6E43RofR02zSKx9EjEqjvvg=;
 b=pR6qgJQVzEQo1HjzR44XdwkGUNXfxUkneocBb3GWhewHXJTg6DXv6mdZWKhKEeDhxZDHJDdP7jAbwwuW22IhgKyQkrf2LDteN9j6News6YpHsZtLXUl3WSJ2figOHgAD6Mh5DzNBqtVPIRtSrl0b9Y4xrwjpvXQEynO/0QzKkys=
Received: from CH2PR20MB2968.namprd20.prod.outlook.com (10.255.156.33) by
 CH2PR20MB2968.namprd20.prod.outlook.com (10.255.156.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.19; Thu, 26 Sep 2019 09:40:44 +0000
Received: from CH2PR20MB2968.namprd20.prod.outlook.com
 ([fe80::11e4:36be:e674:7c6d]) by CH2PR20MB2968.namprd20.prod.outlook.com
 ([fe80::11e4:36be:e674:7c6d%7]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 09:40:43 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jA=
Date: Thu, 26 Sep 2019 09:40:42 +0000
Message-ID: <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
In-Reply-To: <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed0bab6f-a763-4733-b3c4-08d7426599c8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR20MB2968; 
x-ms-traffictypediagnostic: CH2PR20MB2968:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CH2PR20MB29688A8175381F706C45D807CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(136003)(346002)(376002)(396003)(366004)(199004)(51444003)(189003)(110136005)(6506007)(7416002)(66446008)(102836004)(186003)(54906003)(66476007)(66556008)(316002)(66946007)(64756008)(26005)(33656002)(8676002)(76176011)(7696005)(99286004)(2906002)(8936002)(81166006)(81156014)(256004)(486006)(76116006)(446003)(11346002)(3846002)(14444005)(476003)(9686003)(55016002)(478600001)(305945005)(229853002)(7736002)(52536014)(6246003)(86362001)(5660300002)(15974865002)(6116002)(71190400001)(71200400001)(14454004)(25786009)(4326008)(6436002)(66066001)(74316002)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR20MB2968;
 H:CH2PR20MB2968.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CfT+ul3bIIAlTW9qJ+CuU8gwSiIE0OGeOlQRIZXpPhWZIxuV+MdtPa/glshU3UYj4nsu/Aw+9lwWVQDOiWp6CSLaENKw6ojwucbxVWlTYUhkYpqvdXHZ0wbbwU6483o0ngtB82moR+KXWQ8v+72O5A8WPCHsbFYhrEehXwiw9BWHq03aI8Kx84MvhqlJFN779XRggTAT4iVkm0bkzX9U3VX+EWKvn7fXmkEW9PsAMAkS11jXUrHyZxao1xZJTCYJ40dBaVmGajA1YRZjqfMsSVrcjXpMHCzvNj5PpzofItZRpW7Dd12mgSVCAR/1K0cflby39lORCpbFn/3gyqlBcI36qUh1YRyiqyqchCyMsKv68kaSCmsYDAaELlNAk2Cz4ZPhdaq5URrsjps2gCVlDWwnW/bKDxlARSuXkbLR4rI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed0bab6f-a763-4733-b3c4-08d7426599c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 09:40:42.9255 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jAh2PHFCKTN/9J5YGuwbsW0pnON7hyoquTWG6VbU40tc6UhnEiy7KxFxATj7yp3qSW1aXWZbqwuk4eaQJKGY527dyxkIVIb2/J6AUALeN4g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR20MB2968
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_024050_717072_9C5BC623 
X-CRM114-Status: GOOD (  27.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.79.51 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
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

> >
> > Replace the chacha20poly1305() library calls with invocations of the
> > RFC7539 AEAD, as implemented by the generic chacha20poly1305 template.
> 
> Honestly, the other patches look fine to me from what I've seen (with
> the small note I had in a separate email for 11/18), but this one I
> consider just nasty, and a prime example of why people hate those
> crypto lookup routines.
> 
> Some of it is just the fundamental and pointless silly indirection,
> that just makes things harder to read, less efficient, and less
> straightforward.
> 
> That's exemplified by this part of the patch:
> 
> >  struct noise_symmetric_key {
> > -       u8 key[NOISE_SYMMETRIC_KEY_LEN];
> > +       struct crypto_aead *tfm;
> 
> which is just one of those "we know what we want and we just want to
> use it directly" things, and then the crypto indirection comes along
> and makes that simple inline allocation of a small constant size
> (afaik it is CHACHA20POLY1305_KEY_SIZE, which is 32) be another
> allocation entirely.
> 
> And it's some random odd non-typed thing too, so then you have that
> silly and stupid dynamic allocation using a name lookup:
> 
>    crypto_alloc_aead("rfc7539(chacha20,poly1305)", 0, CRYPTO_ALG_ASYNC);
> 
> to create what used to be (and should be) a simple allocation that was
> has a static type and was just part of the code.
> 
While I agree with the principle of first merging Wireguard without 
hooking it up to the Crypto API and doing the latter in a later,
separate patch, I DONT'T agree with your bashing of the Crypto API
or HW crypto acceleration in general.

Yes, I do agree  that if you need to do the occasional single crypto 
op for a fixed algorithm on a small amount of data then you should
just use a simple direct  library call. I'm all for a Zinc type 
library for that.
(and I believe Ard is actually actively making such changes already)

However, if you're doing bulk crypto like network packet processing
(as Wireguard does!) or disk/filesystem encryption, then that cipher
allocation only happens once every blue moon and the overhead for
that is totally *irrelevant* as it is amortized over many hours or 
days of runtime.

While I generally dislike this whole hype of storing stuff in
textual formats like XML and JSON and then wasting lots of CPU
cycles on parsing that, I've learned to appreciate the power of
these textual Crypto API templates, as they allow a hardware 
accelerator to advertise complex combined operations as single
atomic calls, amortizing the communication overhead between SW
and HW. It's actually very flexible and powerful!

> It also ends up doing other bad things, ie that packet-time
> 
> +       if (unlikely(crypto_aead_reqsize(key->tfm) > 0)) {
> +               req = aead_request_alloc(key->tfm, GFP_ATOMIC);
> +               if (!req)
> +                       return false;
> 
> thing that hopefully _is_ unlikely, but that's just more potential
> breakage from that whole async crypto interface.
> 
> This is what people do *not* want to do, and why people often don't
> like the crypto interfaces.
> 
Life is all about needing to do things you don't like to do ...
If you want the performance, you need to do the effort. That simple.
HW acceleration surely won't work from a naive synchronous interface.
(Same applies to running crypto in a separate thread on the CPU BTW!)

In any case, Wireguard bulk crypto *should* eventually run on top
of Crypto API such that it can leverage *existing* HW acceleration.
It would be incredibly silly not to do so, given the HW exists!

> And I'm still not convinced (a) ever makes sense - the overhead of any
> accelerator is just high enought that I doubt you'll have numbers -
> performance _or_ power.
> 
You shouldn't make such assertions if you obviously don't know what
you're talking about. Yes, there is significant overhead on the CPU
for doing lookaside crypto, but it's (usually) nothing compared to
doing the actual crypto itself on the CPU barring a few exceptions. 
(Notably AES-GCM or AES-CTR on ARM64 or x64 CPU's and *maybe* 
Chacha-Poly on recent Intel CPU's - but there's a *lot* more crypto 
being used out there than just AES-GCM and Chacha-Poly, not to 
mention a lot more less capable (embedded) CPU's running Linux)

For anything but those exceptions, we blow even the fastest Intel
server CPU's out of the water with our crypto accelerators.
(I can bore you with some figures actually measured with the
Crypto API on our HW, once I'm done optimizing the driver and I 
have some time to collect the results)

And in any case, for somewhat larger blocks/packets, the overhead
on the CPU would at least be such that it's less than what the CPU
would need to do the crypto itself - even if it's faster - such that
there is room there to do *other*, presumably more useful, work.

Then there's indeed the power consumption issue, which is complex
because crypto power != total system power so it depends too much on
the actual use case to make generic statements on it. So I'll leave
that with the remark that Intel server CPU's have to seriously
throttle down their clock if you start using AVX512 for crypto, just to
stay within their power budget, while we can do the same performance
(~200 Gbps) in just a few (~2) Watts on a similar technology node.
(excluding the CPU management overhead, but that surely won't consume
excessive power like AVX512)

> But even if you're right that it might be a power advantage on some
> platform, that wouldn't make it an advantage on other platforms. Maybe
> it could be done as a config option where you can opt in to the async
> interface when that makes sense - but not force the indirection and
> extra allocations when it doesn't. As a separate patch, something like
> that doesn't sound horrendous (and I think that's also an argument for
> doing that CPU->LE change as an independent change).
> 
Making it a switch sounds good to me though.

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
