Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAE6BF49D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 16:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyEKugd3D0KFyPLAbwSZxQP/Zk95T7c+5u7UUn3E0nw=; b=jkHUNT/q4P8chK
	iAcQslWQzQKuLdog563vdrNNOXBmkhNU8SZAeGa9zrx868g9m7dVK2dqzSpx/ER0OrMdh1vccRcvz
	qdIZkYXYhi2+fgKmvAiOynA7KBovGmpVJNlBuidlNHtQ8wj79iy2QbBrosESV9jK8plYQ4TTsV4Qf
	9QDzkyLVH+SyeSH89myhku6ciFzZpWs7vBlxsVlf2a/Kin7UtQn1MD6PYZWebf/gZYbYYN1qYmgaA
	zdC2xdbPgXSIoxUlv/aZT83lleOsU2ow/kQt4J54lT3xYBEfYEx8PkPf5E7g2MBoqrPwKkye6gBVw
	OBXLa7MPmV+njs81AaiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUN0-0000K0-Kl; Thu, 26 Sep 2019 14:03:46 +0000
Received: from mail-eopbgr760045.outbound.protection.outlook.com
 ([40.107.76.45] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUMp-0000JY-7c
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 14:03:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f95nCPNlc6WSxP8TGd2JG0l54+ktxh+yTxxrb7l6Usk0lhXKuLpV4wdrTD6hWjO6pJERhpc25SBxtEARssXkJcpNiMw5KnWnKhjcTr/fSDwt5qhLzHZpJjA/TBgRSN4JABCmO/u3lMwxzSFbqpuUSWzcPQd5ua6MSO4BTJcg7awaGPqJ/GGO0Tb8inpgLVCRoo0+M14473ZdNWuqWgCEEKJ1FDd9WmdjxEyNIET3FLohWVDUvEzL9kpDK9h0ThUhoYodAex+HHaWTPrPpuRIcWfSU9wKmPGvUVKLmM4ulRFnViedfLSjr47itFrWVg41JdDGtIS+TuXCWoC8BIR/5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q8bzlXYurZZNA/1jc9g1IgsvSMq3rev7stjFF0KSlRs=;
 b=UKjwXuUGddwdCJh5C/ULIo20TrkUJkcax2qS6r4rT6TS2abMVXesi5w2mNbfa4XRw8bQh2c/2AgGfW3PIbBp64o68R80hM96PE0wHs7t46M6AMIz/V4fAHSskwE63U2TADn/wsefDAGayh3LBGzmlNYHXmzQnI8Hwb8gkJZ0ufVHvhEy+QjwnqAtA2nmB5Khwhmkh6osp5Pkric0mUwfQ36vma8VzL8f93CoeSXnDOal6ty5NR0amMBub6aRY2JXjXB7d4kL4J0sDdthirINEMBzl3+W3a7Pr9oOXgZLYRmPyYpZ/dhuVs5QWzDzScMEcBrgZu/OtfPV1iRHEdXUnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q8bzlXYurZZNA/1jc9g1IgsvSMq3rev7stjFF0KSlRs=;
 b=gSX7O0XHWdBQ5671Ff7pBoPW/Lhi6aG3UzYb5Jnsz0eedgj9MDeHT4S2HbvVRBsQ8f5Swkjo3syuMb9nLehyM5UP8cFc5lEvBRYFGSaxpZBwmECNmxOUD1NNCWEVMRmEW99DhkaqXjfjnIibGwVe+0FY/8cQnRCCcpRCiKJVWxE=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB2286.namprd20.prod.outlook.com (20.179.145.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.22; Thu, 26 Sep 2019 14:03:27 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Thu, 26 Sep 2019
 14:03:27 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: RE: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Topic: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Index: AQHVc7w6foOeRxVj+U6Yc++T56fqIac9qd4AgAA0kYCAAAbroIAADDgAgAAKvfA=
Date: Thu, 26 Sep 2019 14:03:27 +0000
Message-ID: <MN2PR20MB297313B598D8EBBE06477B1CCA860@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
 <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAKv+Gu_eNK1HFxTY379kpCpF8FQQFHEdC1Th=s5f7Fy3bebOjQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu_eNK1HFxTY379kpCpF8FQQFHEdC1Th=s5f7Fy3bebOjQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 04442e2a-1aa7-4863-d6ae-08d7428a4e06
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR20MB2286; 
x-ms-traffictypediagnostic: MN2PR20MB2286:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB2286B38051A5B4F202D8D96ACA860@MN2PR20MB2286.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(366004)(39850400004)(396003)(199004)(189003)(13464003)(54906003)(66946007)(102836004)(52536014)(305945005)(256004)(7736002)(15974865002)(53546011)(7416002)(14444005)(26005)(8936002)(476003)(6916009)(33656002)(8676002)(11346002)(14454004)(186003)(446003)(71200400001)(71190400001)(5660300002)(486006)(66066001)(81166006)(81156014)(66556008)(66476007)(6246003)(2906002)(74316002)(4326008)(478600001)(6506007)(7696005)(86362001)(99286004)(76176011)(6116002)(229853002)(55016002)(316002)(66446008)(76116006)(3846002)(64756008)(6436002)(9686003)(25786009)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB2286;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fR6bQQmyjPCeVva9OWphj2Tg4vSSsAmEIvKqknlBi2sODLQl/HK5OAnfITU8FpLZvEcUqC4rGNlSVl8ZqYEIXITQ6ruR+U+qY8kK3mgNr7dGX95tWPJYRPEE7dpFTUqej6l3qqaat2m5AdBocct/JoeqmcZieamNYxVkd3bLldwB95bvVtAi9xHWtBCdtg0Civ71PHM41OToIHX67LhVLgqR3uOANL4PxcIEILFCl6C5rsC4+5DAtQ0l3McGDv5bd/W+yzEiQlIZ2T4kcykODLndzI4eFT+Z1B4lJCk4/ahfRcqM8zcUg90JeFde6nTMvELukR0hxJiR3r9QWyriCYo/xis4CNuokTMIFbPk4rW0CgGWTxkBF4ZY6SdppbiAbw0JzHXQnriDlUL6HiEH7G8Sk8NWJ4NSTk+IH014pTY=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04442e2a-1aa7-4863-d6ae-08d7428a4e06
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 14:03:27.6696 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lXYVUnGMZOvjiG7RDjMCjNbJlqqZ4tlZ8ED3ZK5V2/ubgl6pNOGpY/hztQLAXtNUgiNclpLZGN2dIwpCepj4kczGKuY5wgtEt3KVVnn+bC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2286
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_070335_275811_24B92E8A 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.45 listed in wl.mailspike.net]
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
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Sent: Thursday, September 26, 2019 3:16 PM
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
> On Thu, 26 Sep 2019 at 15:06, Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
> ...
> > >
> > > My preference would be to address this by permitting per-request keys
> > > in the AEAD layer. That way, we can instantiate the transform only
> > > once, and just invoke it with the appropriate key on the hot path (and
> > > avoid any per-keypair allocations)
> > >
> > This part I do not really understand. Why would you need to allocate a
> > new transform if you change the key? Why can't you just call setkey()
> > on the already allocated transform?
> >
> 
> Because the single transform will be shared between all users running
> on different CPUs etc, and so the key should not be part of the TFM
> state but of the request state.
> 
So you need a transform per user, such that each user can have his own
key. But you shouldn't need to reallocate it when the user changes his
key. I also don't see how the "different CPUs" is relevant here? I can
share a single key across multiple CPUs here just fine ...

Regards,
Pascal van Leeuwen
Silicon IP Architect, Multi-Protocol Engines @ Verimatrix
www.insidesecure.com
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
