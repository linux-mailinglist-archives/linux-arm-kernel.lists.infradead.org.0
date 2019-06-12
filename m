Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E26341AEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 06:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MTkBdJJngstgovNOSqFBZBEcxp6LhOO8NolL88VZsGE=; b=bZ1v98pbOHyE8d
	TFJewnwA5bw4F0HTca07aAGOjp/cka0lsoVFbkKJ+XRIzy0/pKjkZqFNoU8stzlaPU8A27HHpgU6C
	DvBfwyTvYwZgmSdhj5Zq6UTfm+pC/2Xm4y274CIx5BL5w7X/F+djzG/Wlanq8Tu9C4sGQs3j6jYul
	v0mkRe9DZ1kLfZo/6/xQtzxJmLpJ74ku4zOTh7swwQnjk3F4qVjOjIL3wYe9hCsUMX/rfQ4BDwkgd
	tZOcqebzangXax/AdLgo6WcXuw1Oqo5FoVdQel964ToQAjJpsaayD3Aq9+OkE2ArOOrGmKoRC9PoU
	GhJmv5y0PQy++BKWHCnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haubD-00066T-Uz; Wed, 12 Jun 2019 04:10:59 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haub5-00065a-8E
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 04:10:53 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5C49uYf025702; Tue, 11 Jun 2019 21:10:42 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=3lMy3z/NjavKi4f4OUIJBLRpfglET1X9W3WeO++Yv4w=;
 b=bhzUv5iL1NicvbP8zSbWMV5ovWK4IEE/1fY/usvI9HuIZXPKHL/MGXJ9pOMa/IGBoneI
 zUypGIc2VUzrSoGW4jFLuuWJ5m4bZfNTSsemkIT7rwVM5egQflPzGmencuR/hOkJf8fT
 7dus+/AM5RATSmnOJyjzBkBLNa9TZHNaRQotnyD4aKSxxDlIYIhN07gHGEmSN3s2ZO6l
 d22Njzv0Ou5E9GbF2sj+tNdMw2Kk4/XtTEgiqyYRuOZvNVWk6VqiqGnCZPl9ncEg78jY
 ui9/VeNg6sSvR95T0tKKOugiwWKB5oGueImIDXSa6qpIrV3AfCc38/vhCC95VWPsmlgo 5g== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2t2r828d91-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 11 Jun 2019 21:10:41 -0700
Received: from SC-EXCH04.marvell.com (10.93.176.84) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 11 Jun
 2019 21:10:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.58) by
 SC-EXCH04.marvell.com (10.93.176.84) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Tue, 11 Jun 2019 21:10:22 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3lMy3z/NjavKi4f4OUIJBLRpfglET1X9W3WeO++Yv4w=;
 b=d+CQ16zWnUuXeQ+Kwei4nJZw/VFIn2yTZ0tONh7UT/zux+TiLfcfpYq0Qx/jARIUC7vj18ebaggNOZp6wPpCKWQS7eUqSp9JSYRymxE+q+iCK1KCXLtAYinlVE6NrmqpTpiLSHx3qEJyG0JLr+jk8kZtjZCxndWZmvz+cMCfOvo=
Received: from BN8PR18MB2788.namprd18.prod.outlook.com (20.179.73.220) by
 BN8PR18MB2418.namprd18.prod.outlook.com (20.179.65.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Wed, 12 Jun 2019 04:10:21 +0000
Received: from BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149]) by BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149%7]) with mapi id 15.20.1987.010; Wed, 12 Jun 2019
 04:10:21 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHVINTAhhHvTN51zUSMYI1IoMsisQ==
Date: Wed, 12 Jun 2019 04:10:20 +0000
Message-ID: <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
In-Reply-To: <20190522160417.GF7876@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0053.namprd08.prod.outlook.com
 (2603:10b6:a03:117::30) To BN8PR18MB2788.namprd18.prod.outlook.com
 (2603:10b6:408:77::28)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fdc8c4d4-ecee-46d8-6d59-08d6eeebe290
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR18MB2418; 
x-ms-traffictypediagnostic: BN8PR18MB2418:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BN8PR18MB24187376B831CF3E840B7B37A6EC0@BN8PR18MB2418.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0066D63CE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(366004)(189003)(199004)(68736007)(81166006)(52116002)(14454004)(33656002)(8936002)(99286004)(2906002)(81156014)(186003)(102836004)(76176011)(8676002)(26005)(305945005)(386003)(6916009)(25786009)(6506007)(7736002)(4326008)(966005)(3846002)(6486002)(6116002)(6246003)(1076003)(71200400001)(71190400001)(6436002)(54906003)(316002)(256004)(446003)(64756008)(66556008)(66446008)(73956011)(486006)(478600001)(14444005)(5660300002)(66946007)(476003)(53936002)(66066001)(66476007)(11346002)(6306002)(86362001)(229853002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR18MB2418;
 H:BN8PR18MB2788.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aX5KB2jFjiGOG3qFyX1w2MqAm7JQnjhALX4aUTtnHFcTT29CLWa0WSd2HT69ribMW3n/sRE1suZaKurdD2OZldaVvGttzlO+7u+kJ+IpOynBh/MDcHZGx0c4u3ucKv6qCg2gz302IgjuVQrXQSSKSrv01hXsmWFb90QAzG64QcHfk6BVeq84RGWBuU1A/PAQ3pojeS8tWmg5AS5qBBHTBan7cPu6rx/9JIoKbjAFO4Ek/KT/6kCizdd7ociYnekiCSFncbspC5qok1M9uvCcz+6nMrcaz8Mak7mLmnrCOY4KAp6DZ8mXVDsJz2vgNPDnLWM3/yIyjQ0zefsy6WS0eLxIflSfw6Rx3iuX/C3/knNYES+mFgpwCpIOp2JEPnuBsVB+salYLwTw4X9XDsfzUs5HIMeGxT8thi0GGtilNCE=
Content-ID: <D67E3618DB8FBC4E9BFD5ACDF807B384@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fdc8c4d4-ecee-46d8-6d59-08d6eeebe290
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2019 04:10:20.8753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnair@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR18MB2418
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-12_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_211051_476013_6DD40594 
X-CRM114-Status: GOOD (  28.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 05:04:17PM +0100, Will Deacon wrote:
> On Sat, May 18, 2019 at 12:00:34PM +0200, Ard Biesheuvel wrote:
> > On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
> > <jnair@marvell.com> wrote:
> > >
> > > On Mon, May 06, 2019 at 07:10:40PM +0100, Will Deacon wrote:
> > > > On Mon, May 06, 2019 at 06:13:12AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > > > Perhaps someone from ARM can chime in here how the cas/yield combo
> > > > > is expected to work when there is contention. ThunderX2 does not
> > > > > do much with the yield, but I don't expect any ARM implementation
> > > > > to treat YIELD as a hint not to yield, but to get/keep exclusive
> > > > > access to the last failed CAS location.
> > > >
> > > > Just picking up on this as "someone from ARM".
> > > >
> > > > The yield instruction in our implementation of cpu_relax() is *only* there
> > > > as a scheduling hint to QEMU so that it can treat it as an internal
> > > > scheduling hint and run some other thread; see 1baa82f48030 ("arm64:
> > > > Implement cpu_relax as yield"). We can't use WFE or WFI blindly here, as it
> > > > could be a long time before we see a wake-up event such as an interrupt. Our
> > > > implementation of smp_cond_load_acquire() is much better for that kind of
> > > > thing, but doesn't help at all for a contended CAS loop where the variable
> > > > is actually changing constantly.
> > >
> > > Looking thru the perf output of this case (open/close of a file from
> > > multiple CPUs), I see that refcount is a significant factor in most
> > > kernel configurations - and that too uses cmpxchg (without yield).
> > > x86 has an optimized inline version of refcount that helps
> > > significantly. Do you think this is worth looking at for arm64?
> > >
> > 
> > I looked into this a while ago [0], but at the time, we decided to
> > stick with the generic implementation until we encountered a use case
> > that benefits from it. Worth a try, I suppose ...
> > 
> > [0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/
> 
> If JC can show that we benefit from this, it would be interesting to see if
> we can implement the refcount-full saturating arithmetic using the
> LDMIN/LDMAX instructions instead of the current cmpxchg() loops.

Now that the lockref change is mainline, I think we need to take another
look at this patch.

Using a fixed up version of Ard's patch above along with Jan's lockref
change upstream, I get significant improvement in scaling for my file
open/read/close testcase[1]. Like I wrote earlier, if I take a
standard Ubuntu arm64 kernel configuration, most of the time for my
test[1] is spent in refcount operations.

With Ard's changes applied[2], I see that the lockref CAS code becomes
the top function and then the retry limit will kick in as expected. In
my testcase, I see that the queued spinlock case is about 2.5 times
faster than the unbound CAS loop when 224 CPUs are enabled (SMT 4,
28core, 2socket).

JC

[1] https://github.com/jchandra-cavm/refcount-test
[2] https://github.com/jchandra-cavm/linux/commits/refcount-fixes

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
