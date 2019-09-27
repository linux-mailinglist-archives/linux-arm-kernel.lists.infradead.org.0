Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB3C03D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldACH2hE/LE7IlDjTlhglJcsg2W5cqp0DHKnmoX8rS8=; b=H3Q2UlJPI4PLDv
	Nvbm9ga/juAEbNAcL4wViy2FwlWyyoinUwugZKARD5yZU1hJdV49YB5HdumBAwCysaUxQ5okyIWkE
	yzzECtERZubfVQJRpqvDyLKc/vTawaFftgrf3Kg8lerhS3SKrLSojO+hFHYlPJcXzSM0+klxwpu1E
	FvdxcSLCGP+gceq6xUWWgdYCvUzZIbghiiBedDyDXDawS/VJX3gqEKCMARSm8BZ2lSY0wfA7qZjEK
	yYCsy01YKaPoG7YrmElKR529fVkKqdgCazJo3esPOrnrDC+009C6W3G9+iYAgp6pv7Mod17qfSyF7
	zWWLhFvJhiHBlSVbPSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDo6s-0000HV-Pb; Fri, 27 Sep 2019 11:08:26 +0000
Received: from mail-eopbgr820047.outbound.protection.outlook.com
 ([40.107.82.47] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDo6g-0000Go-UE
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:08:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TZW75Iw10ybSW70HaqXd5Vt/CCnNifL7HVcjPiuJbYMV3p6jak8ipGR2BN/tiK5GlyaNj7ocFumz6bcAqgLo4wQgvw/L03pXmQ7KZ6Y4wBxzc6vjNgm57ippGBe74/Hsim6WFK2N6TedU74XumY+ePKxCegVhpTV2HZ1Lm6FHrte+mdnLoI/hycfnHhTRe7cczbHWD4R3K1wm9a1qV/c44rl0xBCI7cnNtuhP7nJqWZLZNXu16l+tLySSZtVd8nwIt/o7zBIIJ7CIxk5GldF1H57TpsKjboU9tyzbYFde8Cm25U0FSA6ycJm86AZUwy09BX6gyt7cxcCvGs2TTCf1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWybqYW4D7hGUox6qt/uil9HXGGVN/J0t84D1Hbjnfc=;
 b=aIuTn3+S4GMrKu9r0nDneF/vGkSO+bulcHL93ExESDBNFpl0vIVkSfe9MFS1cqQQTJuPLvsI3noAXPz/pnJqSdaehDRKieG576n8DKcmE0rTcXhM+qeEWt9EFCXwQyY56BRmQHdmWzzkWGBb89sthFDBHS/HfzG+4T7RpQnJVwpLU7dmVrZHZNWhgDwjj0bXkv3gsuvVhtAUjXZq6V5QWBEXIVvJnoLy4QbUxYjUqXuEdkNGl/tFeOU0RxmgeLQTRbWvHw6iAPvbIXbXXUKEPs5zndog9SfldXicZj1QdNatwqtv5tUOlLiwW4TV38WEyO1SiXJ0QaaYJB6qeDu1Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PWybqYW4D7hGUox6qt/uil9HXGGVN/J0t84D1Hbjnfc=;
 b=mHkbPQvhsgAS1ZZqWNZwQWWgXdKuyzeFGlRSbaNH3vU0/4Lp4nti5LQxoe1cKZCHsX/VgcqcizAxTiqhWn6KEkoe0yLzpbnOzN3i5O52QgVmqTXD+eLhL3LIq6TQUJDyR9EOP5O32nq+6oX9/3eEEN/+UEqK6uMXkLr9MgouDgE=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2976.namprd20.prod.outlook.com (52.132.172.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 11:08:12 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Fri, 27 Sep 2019
 11:08:12 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Topic: [RFC PATCH 18/18] net: wireguard - switch to crypto API for
 packet encryption
Thread-Index: AQHVc7xLFDyOijy/PkCX/N7Gn7qoy6c89gcAgACj7jCAAI9SgIAAOyfwgABabYCAABdQgIAAe1XQgAANsoA=
Date: Fri, 27 Sep 2019 11:08:12 +0000
Message-ID: <MN2PR20MB29734A5CD174DDA696E720F8CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <20190925161255.1871-19-ard.biesheuvel@linaro.org>
 <CAHk-=wjYsbxSiV_XKWV3BwGvau_hUvQiQHLOoc7vLUZt0Wqzfw@mail.gmail.com>
 <CH2PR20MB29680F87B32BBF0495720172CA860@CH2PR20MB2968.namprd20.prod.outlook.com>
 <CAHk-=wgR_KsYw2GmZwkG3GmtX6nbyj0LEi7rSqC+uFi3ScTYcw@mail.gmail.com>
 <MN2PR20MB297317D9870A3B93B5E506C9CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHk-=wjr1w7x9Rjre_ALnDLASYNjsEHxu6VJpk4eUwZXN0ntqw@mail.gmail.com>
 <CAHk-=whqWh8ebZ7ryEv5tKKtO5VpOj2rWVy7wV+aHWGO7m9gAw@mail.gmail.com>
 <MN2PR20MB297359DCCE92EB1A1F13CE03CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB297359DCCE92EB1A1F13CE03CA810@MN2PR20MB2973.namprd20.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 612d15e5-b999-411c-ace3-08d7433afcf2
x-ms-traffictypediagnostic: MN2PR20MB2976:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR20MB29761914FAD10A6445835E23CA810@MN2PR20MB2976.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(39850400004)(346002)(366004)(136003)(13464003)(189003)(199004)(66066001)(64756008)(3846002)(110136005)(6116002)(54906003)(33656002)(8676002)(6436002)(2906002)(9686003)(55016002)(229853002)(6246003)(2940100002)(81156014)(81166006)(4326008)(316002)(26005)(15974865002)(5660300002)(14454004)(256004)(478600001)(6506007)(99286004)(186003)(71200400001)(486006)(86362001)(7416002)(7696005)(71190400001)(305945005)(66946007)(476003)(76116006)(8936002)(11346002)(74316002)(52536014)(25786009)(76176011)(446003)(7736002)(53546011)(66476007)(66556008)(102836004)(66446008)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2976;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: keYHGQf1ky1iZOYK7jgUAppK/A2APktw9FHv8aoQ5F0Ir05IPepBZReorIp9gZaALOQCupNqLEx9rAKEtrtIJWQHzbqkYWIpIDDbEoi/tUal527cPl4jc7Tb/kCsNGyNUKhE7a5MgIxGO6TAMpdL2oO/KYyfAeL5WejR66kp5wclByNpiUa9aAOhqmuKyB2c98wb9MAEXoLIvOh7SPsBKf5XC83yuGmwe1xW4b8voSpvfh42f4j1bxsjs5g+1u/ISlPZHLlgdGt7Yi3d8mKWVRfSjRPqAKmszzX0beJAp/uFjvDYqVNaGHJbbo25g0dqqmRL4r/CU+Jyjzp118IU8ekttel9VqZ12FxPHAu/AcpsFa6Qpo+BoQ3rKoe2eUjQprKJbMkobfypql19dmm4pG/BSwIwiIdhBLoTEdrbZuk=
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 612d15e5-b999-411c-ace3-08d7433afcf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 11:08:12.5192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QUhpqScV2vSScxqLJJ4ID25jheugXmtfB0n/u6EdLksyWCqNvhJr4FpSTZ0ih1mWwLMoMxgby5oDxLmKwk+NVfry1Nmf+yz9f5xrZusvXpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2976
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_040815_078525_7E40D8AF 
X-CRM114-Status: GOOD (  28.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.47 listed in list.dnswl.org]
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
> From: linux-crypto-owner@vger.kernel.org <linux-crypto-owner@vger.kernel.org> On Behalf
> Of Pascal Van Leeuwen
> Sent: Friday, September 27, 2019 12:44 PM
> To: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Linux Crypto Mailing List <linux-
> crypto@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Herbert Xu
> <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> <gregkh@linuxfoundation.org>; Jason A . Donenfeld <Jason@zx2c4.com>; Samuel Neves
> <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>;
> Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> <catalin.marinas@arm.com>
> Subject: RE: [RFC PATCH 18/18] net: wireguard - switch to crypto API for packet
> encryption
> 
> > -----Original Message-----
> > From: Linus Torvalds <torvalds@linux-foundation.org>
> > Sent: Friday, September 27, 2019 4:54 AM
> > To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>; Linux Crypto Mailing List <linux-
> > crypto@vger.kernel.org>; Linux ARM <linux-arm-kernel@lists.infradead.org>; Herbert Xu
> > <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> > <gregkh@linuxfoundation.org>; Jason A . Donenfeld <Jason@zx2c4.com>; Samuel Neves
> > <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> > <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski
> <luto@kernel.org>;
> > Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> > <catalin.marinas@arm.com>
> > Subject: Re: [RFC PATCH 18/18] net: wireguard - switch to crypto API for packet
> > encryption
> >
> > On Thu, Sep 26, 2019 at 6:30 PM Linus Torvalds
> > <torvalds@linux-foundation.org> wrote:
> > >
> > > And once you have that cookie, and you see "ok, I didn't get the
> > > answer immediately" only THEN do you start filling in things like
> > > callback stuff, or maybe you set up a wait-queue and start waiting for
> > > it, or whatever".
> >
> > Side note: almost nobody does this.
> >
> > Almost every single async interface I've ever seen ends up being "only
> > designed for async".
> >
> > And I think the reason is that everybody first does the simply
> > synchronous interfaces, and people start using those, and a lot of
> > people are perfectly happy with them. They are simple, and they work
> > fine for the huge majority of users.
> >
> > And then somebody comes along and says "no, _we_ need to do this
> > asynchronously", and by definition that person does *not* care for the
> > synchronous case, since that interface already existed and was simpler
> > and already was mostly sufficient for the people who used it, and so
> > the async interface ends up being _only_ designed for the new async
> > workflow. Because that whole new world was written with just that case
> > is mind, and the synchronous case clearly didn't matter.
> >
> > So then you end up with that kind of dichotomous situation, where you
> > have a strict black-and-white either-synchronous-or-async model.
> >
> > And then some people - quite reasonably - just want the simplicity of
> > the synchronous code and it performs better for them because the
> > interfaces are simpler and better suited to their lack of extra work.
> >
> > And other people feel they need the async code, because they can take
> > advantage of it.
> >
> > And never the twain shall meet, because the async interface is
> > actively _bad_ for the people who have sync workloads and the sync
> > interface doesn't work for the async people.
> >
> > Non-crypto example: [p]read() vs aio_read(). They do the same thing
> > (on a high level) apart from that sync/async issue. And there's no way
> > to get the best of both worlds.
> >
> > Doing aio_read() on something that is already cached is actively much
> > worse than just doing a synchronous read() of cached data.
> >
> > But aio_read() _can_ be much better if you know your workload doesn't
> > cache well and read() blocks too much for you.
> >
> > There's no "read_potentially_async()" interface that just does the
> > synchronous read for any cached portion of the data, and then delays
> > just the IO parts and returns a "here, I gave you X bytes right now,
> > use this cookie to wait for the rest".
> >
> > Maybe nobody would use it. But it really should be possibly to have
> > interfaces where a good synchronous implementation is _possible_
> > without the extra overhead, while also allowing async implementations.
> >
> That's the question. I've never seen such an API yet ...
> 
> You could also just accept that those are two wildly different use
> cases with wildly different requirements and allow them to coexist,
> while  sharing as much of the low-level SW implementation code as
> possible underneath. With the async API only used for those cases
> where HW acceleration can make the difference.
> 
> I believe for hashes, the Crypto API still maintains an shash and
> an ahash API. It works the other way around from how you would
> like  to see though, with ahash wrapping the shash in case of SW
> implementations. Still, if you're sure you can't benefit from HW
> acceleration you have the option of using the shash directly.
> 
> I don't know why the synchronous blkcipher API was deprecated,
> that happened before I joined. IMHO it would make sense to have,
> so users not interested in HW crypto are not burdened by it.
> 
> 
Never mind. From what I just learned, you can achieve the same 
thing with the skcipher API by just requesting a sync implementation.
Which would allow you to put your structs on the stack and would
not return from the encrypt()/decrypt() call until actually done.

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
