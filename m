Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2CCC03A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 12:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7R/SBj7QC8NilacG6nAyceqfCcTrvFA4KcD3CHC07Vk=; b=QkRSSZOUovbgRU
	pdDKztjWu6L6gW2oTgmhWUuX4QrvuSqKdzLZl1hd90OvJh29gthhZ9szA1/UpAts/e09roUoByEB5
	AwOS1Vg0Aay+0kwdlrvMvPiLl94Uxa72zTXUZfqZSF7jtd2yV7GZzilhjBH1KWximQvfV09Ed1gtm
	fw2iW/eMVhf/JIXw8WzBrf2Qa8vxCbHHGUCi0c0svhXKIw1rcVFwHlBK/Ae+tuu8KyH4uDnnCy9lC
	++T5jioLUNE7/gnCvmfr04Rm/b/+/+PuEAaGlOLzVKbPf2cd9moNApIV0jZFprWV2/GmEo2iA8sT/
	IrhANg1kdwV+/iNJBCiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDnjd-0007fc-3p; Fri, 27 Sep 2019 10:44:25 +0000
Received: from mail-eopbgr700086.outbound.protection.outlook.com
 ([40.107.70.86] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDnjT-0007f5-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 10:44:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvHRCvHOig8aJAldUmCKWlSxTxXf9ErgvXYVfaRhgefQC7Il4zqHQJT/uuQCyC9NvFDgVizT8ws/sw1pOhPDrYrCVfV1pLOogR3p3C4jX+yyYHrqjygnErLnwzaY/+klyvhUWGrgVi2eCkkXkIJh1U1w4X8QR5JDtgyJE27f+e6qrfrq+CK4cJC0uqQqWBT93FtFJ40kRq5TariDZImQeQhamjxuWyRuedqh554k2BY/XyAJg7MwfsJPtruZf+zAkYeP0wdPenIxbsDNi7ynI6vKzFaHbC2WkeUeznk81zm0X3aHIdCHgLpBrAQIdJWD3XtGo+XPZydnrsqK01euig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2UTggwzqJB8OvVWogrWiyBJ2MtVNGwY03Eyl4Vvyv0=;
 b=UoSoEnOPTHM64QToJajq/YgE9HrEg7+/xD+VR2DnNSVyBpECz9U+oyQljcyLugRflPDF7dJR795zxc1xN7B+jOWMMOtJJSGNiv6L+oK062EgeOkIMMckXUPsAsH3+7yfYtFJTLlJMeg2y3YfJjtZLqSsrXnH4NZWxeCKDTEl+Y6s6IM3ex92q0gdZRT4YZYo4/mSR46H//sYVvs8HElNUdEZZj9mEaYbxconxVEMpOYa+BdD7TVAv8Q7/9rb4SCeD5Yokr7c1x7XQxopNznnGqm80pF4xkjALFoBEEhbvFpOALVeLtRjiu4FJf/GH4QxP92zJFqvs7Hvlg6YcUIB4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2UTggwzqJB8OvVWogrWiyBJ2MtVNGwY03Eyl4Vvyv0=;
 b=GWad5J0zYeyDY/TrDfkei3qfHJDUTQV9xKkG8TILX625Afpyy5E6P3HzuNwcQnK4nYlRApLtR0ymtf59Q7cH23j+jyGV08TRQQp32Ifa/In+DCz7vwGq5BvKDJQ/42nkv1/kPU7AeCpBEwIwfcTlc7sSK6Pa/6CYzVHQXSNp3ds=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB3085.namprd20.prod.outlook.com (52.132.174.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.18; Fri, 27 Sep 2019 10:44:13 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 10:44:13 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfwgABabYCAABdQgIAAe1XQ
Date: Fri, 27 Sep 2019 10:44:13 +0000
Message-ID: <MN2PR20MB297359DCCE92EB1A1F13CE03CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
In-Reply-To: <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45faf786-20bc-40c9-a3d4-08d74337a331
x-ms-traffictypediagnostic: MN2PR20MB3085:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB3085F41CB1B05D7CD0DC50C1CA810@MN2PR20MB3085.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39850400004)(396003)(376002)(346002)(13464003)(199004)(189003)(71190400001)(71200400001)(6436002)(7416002)(229853002)(76116006)(74316002)(33656002)(305945005)(55016002)(4326008)(66446008)(66556008)(66476007)(26005)(7696005)(64756008)(66946007)(54906003)(9686003)(316002)(11346002)(15974865002)(476003)(99286004)(102836004)(6506007)(6246003)(7736002)(486006)(53546011)(2906002)(76176011)(186003)(3846002)(6116002)(446003)(5660300002)(52536014)(256004)(25786009)(14454004)(8936002)(81156014)(86362001)(8676002)(6916009)(478600001)(81166006)(66066001)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB3085;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7X+UHD9Zk7Ef/HcK+4KuYezc/Cin7IE9qJHOXxxTOAXFuOQ5Ib4npe/F7rrlCI5UFTWDiqxA+p8snnguYNiGUB1PCpwjDz1LqpppSpACbp7faveuw3xN18l3TrUnVIk7hKgK0le6Bb2mmXD0XHeiV8F6iKKW+y1O4IkAOpMuJ27CIvcGevOLEdS4BxHfOVVn3i2s5HlAnlbjOAdmZqaBXdVd8yltnQADonS+/q7kHIv80qZErXgNkXjAwoUL6FS9ydsRf8xRJmurjuC5ieyn+3Oe+BGB4OewQqEl1ItcGUJqD86ixA7Zqwuc9crymr+A4PabUW35NtsRTtxMb7dCGS6HBM1uA+IntA5/dqERPnr3b39ivSk4xvEl5iFkl/gB04rKV62xg3gCLC4O3jbbktSf+Lb3STcZyziYFlcP9cs=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45faf786-20bc-40c9-a3d4-08d74337a331
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 10:44:13.3138 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uNwBfOTn2uDvCMn0Pu/vQE63rjZOI5MuGrHFiucgxgmFGZIboHN1XA81cZWoAC6dXtR/o9Y4O2/NEklMb7cUPw+ULyT2fwY+3R4JPJ1pkfo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB3085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_034415_873312_81C45368 
X-CRM114-Status: GOOD (  23.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.86 listed in list.dnswl.org]
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
> Sent: Friday, September 27, 2019 4:54 AM
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
> On Thu, Sep 26, 2019 at 6:30 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > And once you have that cookie, and you see "ok, I didn't get the
> > answer immediately" only THEN do you start filling in things like
> > callback stuff, or maybe you set up a wait-queue and start waiting for
> > it, or whatever".
> 
> Side note: almost nobody does this.
> 
> Almost every single async interface I've ever seen ends up being "only
> designed for async".
> 
> And I think the reason is that everybody first does the simply
> synchronous interfaces, and people start using those, and a lot of
> people are perfectly happy with them. They are simple, and they work
> fine for the huge majority of users.
> 
> And then somebody comes along and says "no, _we_ need to do this
> asynchronously", and by definition that person does *not* care for the
> synchronous case, since that interface already existed and was simpler
> and already was mostly sufficient for the people who used it, and so
> the async interface ends up being _only_ designed for the new async
> workflow. Because that whole new world was written with just that case
> is mind, and the synchronous case clearly didn't matter.
> 
> So then you end up with that kind of dichotomous situation, where you
> have a strict black-and-white either-synchronous-or-async model.
> 
> And then some people - quite reasonably - just want the simplicity of
> the synchronous code and it performs better for them because the
> interfaces are simpler and better suited to their lack of extra work.
> 
> And other people feel they need the async code, because they can take
> advantage of it.
> 
> And never the twain shall meet, because the async interface is
> actively _bad_ for the people who have sync workloads and the sync
> interface doesn't work for the async people.
> 
> Non-crypto example: [p]read() vs aio_read(). They do the same thing
> (on a high level) apart from that sync/async issue. And there's no way
> to get the best of both worlds.
> 
> Doing aio_read() on something that is already cached is actively much
> worse than just doing a synchronous read() of cached data.
> 
> But aio_read() _can_ be much better if you know your workload doesn't
> cache well and read() blocks too much for you.
> 
> There's no "read_potentially_async()" interface that just does the
> synchronous read for any cached portion of the data, and then delays
> just the IO parts and returns a "here, I gave you X bytes right now,
> use this cookie to wait for the rest".
> 
> Maybe nobody would use it. But it really should be possibly to have
> interfaces where a good synchronous implementation is _possible_
> without the extra overhead, while also allowing async implementations.
> 
That's the question. I've never seen such an API yet ...

You could also just accept that those are two wildly different use 
cases with wildly different requirements and allow them to coexist,
while  sharing as much of the low-level SW implementation code as
possible underneath. With the async API only used for those cases
where HW acceleration can make the difference.

I believe for hashes, the Crypto API still maintains an shash and
an ahash API. It works the other way around from how you would
like  to see though, with ahash wrapping the shash in case of SW 
implementations. Still, if you're sure you can't benefit from HW 
acceleration you have the option of using the shash directly.

I don't know why the synchronous blkcipher API was deprecated,
that happened before I joined. IMHO it would make sense to have,
so users not interested in HW crypto are not burdened by it.


>                 Linus

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
