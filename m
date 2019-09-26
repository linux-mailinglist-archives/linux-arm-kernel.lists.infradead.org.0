Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2D3BF57B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM0FLYmNu2dfbLWXrxglyGOsssgVS4otIrSUfkgfqJ4=; b=rGiR0EqncOyBnY
	UUU/oyxRjNjCJbDCdZJ2wWhhScfrkJh+QsULt2mfe9/kDohRYIYtwnBj8TQkiRFwa976oeFTpFwHO
	9lDMG3nK/1mxLRFK9YMgxWKRquFUH3AY9nXcn7Es8HAenUi94QzGCfU4mBOCTldF7Afz9Q3oCtZLz
	OFEjb3HVV1ht5HAyJ/Mw+CjSV2gYdFFisc6d1zs0dAAgSucsH5ic92norarEgI/dZSy7q+QEYj2sG
	SniEQ7C90BJI4IGLDYRVbtpT9bkpvldeLEkgShouObGD02sR4J/CtE6ZChXcI5byZQF4MFmwTTt9K
	HUIrJiIiVkQKGbdN7SrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDVKV-0005vv-7v; Thu, 26 Sep 2019 15:05:15 +0000
Received: from mail-eopbgr700054.outbound.protection.outlook.com
 ([40.107.70.54] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDVKJ-0004w1-7z
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:05:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CHEGdwuOGDhJvmXPqlcdSMI3pSaO2sH/D5sOaPdiztXTEhMEOD20vqPlvJDPziWi32OL3ovTZWXVh9bQNCmumAOHbuSlO++vDBdCxst1cA2vvTawxzuwsWqh2+iVCXttMayRdfhB0bcRVt5q1VA+YTVxsa4VbUeqGVch+aLX5efP+tBrof7cWY8f6THVjsoqdPmsHwSZetULv1ea6ApVuw8TOc5dJFC0l7KrSXkj3uGXn5LOGXF3POjMgUXlF8ZRSy+mlNCiG9GEcf+1rOjtdzFzinXYfpNuhgbDopRmm8ITIdHso1xT0dFZDX8Bzh/FdLoaGa8DNSH5ceg/0GqOJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e4/cO8Ml9Ih68xKH6jmGh9YTHqRZ/3q7N3JEAqC2zxU=;
 b=gFE2KNqudmFDpf5wDM+yr1IWB12TOge36X/dpDSEM2EyH3hJTLf7KxyafNIX42fDgGTEsrYF6GK6OzQMyn3g/SabddpwR8LaJ5Ob/d54XqKA9CDLf4h/il/ETbTsghXl8/D76w7YG7fUQBsVLVB5OUi+QXvMQh5RiPK1TkCDYyrcydWqP4qwbmc9H3d8bNHG2VWc+EpZNIHjMCWcU4jDzlTaAK0NDqOQfITy4jfDFwA+SN/H2xvpuBAmMX+Q2004Y0dDxuD3Ekk5s7pihE6tA78vINEBGwBJxDERhNDaMgyJDW0ame6MO5glb67sV7gazhcUa6eiZXjoNyZAw5zWmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e4/cO8Ml9Ih68xKH6jmGh9YTHqRZ/3q7N3JEAqC2zxU=;
 b=RJuBv2QTA2VGmO02CEwD7awZ6Y30pUwxiZzj2X+gwJColkbrROvKkVs1Pd15sDzbmOagkIdsTnlePRqvaX+C+2MiYtce1uBFLPnowAjbKVtRqAA7xG18TbkXZTPITeF5PkVhdcnBk6gzB/hMIq58BbAjqKr6GV+GE/Zihi1Z7F8=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2416.namprd20.prod.outlook.com (20.179.148.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 15:04:59 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Thu, 26 Sep 2019
 15:04:59 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: RE: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Topic: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Index: AQHVc7w6foOeRxVj+U6Yc++T56fqIac9qd4AgAA0kYCAAAbroIAADDgAgAAKvfCAABBXgIAAAPbg
Date: Thu, 26 Sep 2019 15:04:59 +0000
Message-ID: <MN2PR20MB297301F34F3F69DADEC051C0CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAKv+Gu_eNK1HFxTY379kpCpF8FQQFHEdC1Th=s5f7Fy3bebOjQ@mail.gmail.com>
 <MN2PR20MB297313B598D8EBBE06477B1CCA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAKv+Gu-P58Uar2jUNdN5VvG1g45=V_+3FMXCD+0sFY7y2RPeag@mail.gmail.com>
In-Reply-To: <CAKv+Gu-P58Uar2jUNdN5VvG1g45=V_+3FMXCD+0sFY7y2RPeag@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f909802f-8196-4755-34f2-08d74292e684
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR20MB2416; 
x-ms-traffictypediagnostic: MN2PR20MB2416:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB24167D0035124B37B2BB1364CA860@MN2PR20MB2416.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(396003)(346002)(136003)(366004)(376002)(189003)(199004)(13464003)(2906002)(11346002)(3846002)(81166006)(81156014)(99286004)(14444005)(478600001)(316002)(6506007)(6116002)(74316002)(54906003)(8676002)(186003)(6246003)(8936002)(256004)(102836004)(229853002)(66066001)(53546011)(305945005)(7736002)(14454004)(71200400001)(476003)(6916009)(9686003)(486006)(6436002)(76116006)(26005)(86362001)(66476007)(64756008)(66946007)(25786009)(66556008)(7416002)(76176011)(5660300002)(33656002)(7696005)(66446008)(446003)(4326008)(71190400001)(15974865002)(55016002)(52536014)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2416;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MLg/j3U/X1cqYz7Hvc3z5OiYQhOxTSVSAsH0QnWq7mg4kG56eWg5xUoBJP8q3D3Tw5ucFxac9kBZfj4f4G3AXCOhX/pTolt486v0qkcRw0cpa0biHWJD1svvmgB1P+x0XJ0rCSxncUzosVyN4YXgRNmZKfd6vEb7YTWi2n8g3S9EJN1npCaVsHtZpHucAcRe4mJ5MGAc9oLvYtE8Fq+rD4NQx3gXj+F06tVsrDoNm+xWquxOA6mheSgAb9vOk2oHVOihlzAc2iMjMHgmBQybacJ95BeBJDTn6CqtqTqkvvz3KQycdGWLkYrOH/2gqxhNG0gt2IVm4BsoXR2t0TCD18iNjk1qLrxZ6LyeX1lHCAhGKBEllD8PQUC2JUOnnuhMP4TQ3bk9Isz5fyV7SKSFU3lja6CeQD3TLoUIVvU3++E=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f909802f-8196-4755-34f2-08d74292e684
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 15:04:59.3718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 80Z402VxDLcehUJ6/rSs7Fk0wbl4t/Khu3Ze36BqYvkKp8eFNm47XOCaWR2iW4JlKKuc1AwJi3CtEmDU/nrD6lxQ7nbEF9uoNMjD8THuYck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_080503_372300_94A66CF7 
X-CRM114-Status: GOOD (  21.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.54 listed in list.dnswl.org]
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> -----Original Message-----
> From: linux-crypto-owner@vger.kernel.org <linux-crypto-owner@vger.kernel.org> On Behalf
> Of Ard Biesheuvel
> Sent: Thursday, September 26, 2019 4:53 PM
> To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> Cc: Jason A. Donenfeld <Jason@zx2c4.com>; Linux Crypto Mailing List <linux-
> crypto@vger.kernel.org>; linux-arm-kernel <linux-arm-kernel@lists.infradead.org>;
> Herbert Xu <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg KH
> <gregkh@linuxfoundation.org>; Linus Torvalds <torvalds@linux-foundation.org>; Samuel
> Neves <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski <luto@kernel.org>;
> Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> <catalin.marinas@arm.com>
> Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
> 
> On Thu, 26 Sep 2019 at 16:03, Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
> >
> > > -----Original Message-----
> > > From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > Sent: Thursday, September 26, 2019 3:16 PM
> > > To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
> > > Cc: Jason A. Donenfeld <Jason@zx2c4.com>; Linux Crypto Mailing List <linux-
> > > crypto@vger.kernel.org>; linux-arm-kernel <linux-arm-kernel@lists.infradead.org>;
> > > Herbert Xu <herbert@gondor.apana.org.au>; David Miller <davem@davemloft.net>; Greg
> KH
> > > <gregkh@linuxfoundation.org>; Linus Torvalds <torvalds@linux-foundation.org>; Samuel
> > > Neves <sneves@dei.uc.pt>; Dan Carpenter <dan.carpenter@oracle.com>; Arnd Bergmann
> > > <arnd@arndb.de>; Eric Biggers <ebiggers@google.com>; Andy Lutomirski
> <luto@kernel.org>;
> > > Will Deacon <will@kernel.org>; Marc Zyngier <maz@kernel.org>; Catalin Marinas
> > > <catalin.marinas@arm.com>
> > > Subject: Re: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
> > >
> > > On Thu, 26 Sep 2019 at 15:06, Pascal Van Leeuwen
> > > <pvanleeuwen@verimatrix.com> wrote:
> > > ...
> > > > >
> > > > > My preference would be to address this by permitting per-request keys
> > > > > in the AEAD layer. That way, we can instantiate the transform only
> > > > > once, and just invoke it with the appropriate key on the hot path (and
> > > > > avoid any per-keypair allocations)
> > > > >
> > > > This part I do not really understand. Why would you need to allocate a
> > > > new transform if you change the key? Why can't you just call setkey()
> > > > on the already allocated transform?
> > > >
> > >
> > > Because the single transform will be shared between all users running
> > > on different CPUs etc, and so the key should not be part of the TFM
> > > state but of the request state.
> > >
> > So you need a transform per user, such that each user can have his own
> > key. But you shouldn't need to reallocate it when the user changes his
> > key. I also don't see how the "different CPUs" is relevant here? I can
> > share a single key across multiple CPUs here just fine ...
> >
> 
> We need two transforms per connection, one for each direction. That is
> how I currently implemented it, and it seems to me that, if
> allocating/freeing those on the same path as where the keypair object
> itself is allocated is too costly, I wonder why allocating the keypair
> object itself is fine.
> 

I guess that keypair object is a Wireguard specific thing?
In that case it may not make a difference performance wise.
I just would not expect a new (pair of) transforms to be allocated
just for a rekey, only when a new connection is made. 

Thinking about this some more:
Allocating a transform is about more than just allocating the 
object, there may be all kinds of side-effects like fallback
ciphers being allocated, specific HW initialization being done, etc. 
I just feel that if you only need to change the key, you should
only change the key. As that's what the driver would be optimized
for.

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
