Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F7E45540
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 09:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4ls9oa2isN4F2u23PypB1p0Wssyd8TZI+PQcdU1tfM=; b=PSaMwcbtdIMfzD
	FgeWW+GfG7VUtNgznat73b7NMLOrhIBTc3jB5c7VMe2G762abv/cdaob+h7XFNzxCXzyoJYLuSx7V
	APsAUHhPfKlCwK9GSGIvnfWZwW2syEm+OrZmHKt1EB0UXvYagWyM6f7ZpnoKM+Cph6L4FT+dqH2gz
	rcLfmbSiyWHEhiKahGV9vDfTfsHOIPY5yIESqnMDieS1QCVY1LAazfJfgZVnXZ6WryZF787AO4q9D
	KnK2iPY7TG2AOXPw0wrKryDsmxgBamCcET7sHPGa5vEep711FW/DT88WC7RtRbNPiFiXqD1wGr3V1
	EJJz2JvLD3SnqhkkCnpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbgLs-0007dh-JJ; Fri, 14 Jun 2019 07:10:20 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbgLB-0007bK-Qi
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 07:09:39 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5E6vRBj025829; Fri, 14 Jun 2019 00:09:31 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=NqqxRYw2C+A4ktbzuyO+VJy/Z/gfFE25PSt6cJ/aYJA=;
 b=DGZYiXgjGmrvmip4+HHb17cQpWf3o+OkzW0TR3arK2fOG97uKQvIxjLfsCQ9WOuvALQb
 K1Bu+t7QtcQD52T5mkDq+Zs3MalBZEyLSVXfvHSGY8xSQRBTVERiaudH3koJgY3T8Rpd
 Ax4zFYXtX2fnEDsICJkXLcgZoY9ieTS48SJm04GabCWI9EI/OkPb3eHedXisFT1cai2c
 KfUA/IbayNSL3nZvKFcyUFcTzMCQ6wc1DK8ZT23M3wLI4NiUGCFn9lyHWuDvtictcA0R
 Z0bUKMe4PUmIJ1Lu2Da6AtUk5dns46ZA8c0T4agO6/vEXzimKkpV10wThvMLMGuJ9YsU tA== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2t3hvpvuuu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 14 Jun 2019 00:09:30 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 14 Jun
 2019 00:09:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 14 Jun 2019 00:09:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NqqxRYw2C+A4ktbzuyO+VJy/Z/gfFE25PSt6cJ/aYJA=;
 b=v/2qakkIgGbuJ44TyFjRi7rry45s3EsYISFhkvshVZbCkcbRVg1PQWFIN/fly0PEo3EjTklxZAsG6MzoIqSd+h34lHBGcLFLXTrut86VaYbVcia/KbCwJTRVZuuNOWOfwAPSCbc+3TpyDC7Cl0s1UU2+Ym+7R1CUugMnDcF+V5Y=
Received: from BN8PR18MB2788.namprd18.prod.outlook.com (20.179.73.220) by
 BN8PR18MB3044.namprd18.prod.outlook.com (20.179.76.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.14; Fri, 14 Jun 2019 07:09:27 +0000
Received: from BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149]) by BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149%7]) with mapi id 15.20.1987.010; Fri, 14 Jun 2019
 07:09:26 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHVIoAagTXOrbvbUUq36Zgsv9RFFQ==
Date: Fri, 14 Jun 2019 07:09:26 +0000
Message-ID: <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
References: <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
In-Reply-To: <20190612093151.GA11554@brain-police>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0003.namprd04.prod.outlook.com
 (2603:10b6:a03:40::16) To BN8PR18MB2788.namprd18.prod.outlook.com
 (2603:10b6:408:77::28)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1f1a8d8-d516-44d2-0ec9-08d6f0973c6c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR18MB3044; 
x-ms-traffictypediagnostic: BN8PR18MB3044:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <BN8PR18MB3044D67C4EB56EBEB6802FF7A6EE0@BN8PR18MB3044.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0068C7E410
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(346002)(396003)(376002)(189003)(199004)(76176011)(52116002)(102836004)(6116002)(25786009)(54906003)(81156014)(4326008)(6506007)(2906002)(966005)(3846002)(33656002)(478600001)(64756008)(8936002)(386003)(71200400001)(5660300002)(256004)(99286004)(71190400001)(1076003)(14454004)(7736002)(229853002)(446003)(8676002)(6486002)(6916009)(6246003)(186003)(53936002)(305945005)(26005)(476003)(73956011)(14444005)(86362001)(6436002)(11346002)(66556008)(6512007)(486006)(316002)(66946007)(68736007)(66066001)(6306002)(66476007)(81166006)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR18MB3044;
 H:BN8PR18MB2788.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 46hPsd6zOzLdZuRY0qszHgEaxMmnOkQF8O+IEZocCflzUe2Ezb30DbunXpbw83I3Ag0TYswxamYkTWYk5gwoUZm99U16vgj269zl8qvR4/pvTOSRfOMLBIfesOymqY1xx+xU0wvgyKNyQlUg3FX+RY7noGCmXYLVTRF7K2Ulf5Ap91x5DYKws4YqIrZjvPzdqwO9USZ9Cr7QKdiPAVLMUVujWBrFWNisAX8QBIxvdMQ1SZpus6h1eaGipW+xUaNix8BoRYnW/+geVMNos+9wQkOnns9Zw1ixIlbqo7DKxx1g3PS7u7hXQJele4ZTc5ADOxQqyrlXVS5mDlYs7Wi2Tn539UbAHgqE+6KrrK9NagGvrtrc/iF/JxtvctFZ2ewBoFIhYIp/fiOzkcgP7nngP6SpMcdAHUbJi3b8PEE0Xmg=
Content-ID: <8BE4B8FAD2C1AB42B1020275101DDD09@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1f1a8d8-d516-44d2-0ec9-08d6f0973c6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2019 07:09:26.8253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnair@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR18MB3044
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-14_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_000938_052836_229E2251 
X-CRM114-Status: GOOD (  29.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 12, 2019 at 10:31:53AM +0100, Will Deacon wrote:
> Hi JC,
> 
> On Wed, Jun 12, 2019 at 04:10:20AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > On Wed, May 22, 2019 at 05:04:17PM +0100, Will Deacon wrote:
> > > On Sat, May 18, 2019 at 12:00:34PM +0200, Ard Biesheuvel wrote:
> > > > On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
> > > > <jnair@marvell.com> wrote:
> > > > > Looking thru the perf output of this case (open/close of a file from
> > > > > multiple CPUs), I see that refcount is a significant factor in most
> > > > > kernel configurations - and that too uses cmpxchg (without yield).
> > > > > x86 has an optimized inline version of refcount that helps
> > > > > significantly. Do you think this is worth looking at for arm64?
> > > > >
> > > > 
> > > > I looked into this a while ago [0], but at the time, we decided to
> > > > stick with the generic implementation until we encountered a use case
> > > > that benefits from it. Worth a try, I suppose ...
> > > > 
> > > > [0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/
> > > 
> > > If JC can show that we benefit from this, it would be interesting to see if
> > > we can implement the refcount-full saturating arithmetic using the
> > > LDMIN/LDMAX instructions instead of the current cmpxchg() loops.
> > 
> > Now that the lockref change is mainline, I think we need to take another
> > look at this patch.
> 
> Before we get too involved with this, I really don't want to start a trend of
> "let's try to rewrite all code using cmpxchg() in Linux because of TX2".

x86 added a arch-specific fast refcount implementation - and the commit
specifically notes that it is faster than cmpxchg based code[1].

There seems to be an ongoing effort to move over more and more subsystems
from atomic_t to refcount_t(e.g.[2]), specifically because refcount_t on
x86 is fast enough and you get some error checking atomic_t that does not
have.

> At some point, the hardware needs to play ball. However...

Even on a totally baller CPU, REFCOUNT_FULL is going to be slow :)
On TX2, this specific benchmark just highlights the issue, but the
difference is significant even on x86 (as noted above).

> Ard's refcount patch was about moving the overflow check out-of-line. A
> side-effect of this, is that we avoid the cmpxchg() operation from many of
> the operations (atomic_add_unless() disappears), and it's /this/ which helps
> you. So there may well be a middle ground where we avoid the complexity of
> the out-of-line {over,under}flow handling but do the saturation post-atomic
> inline.

Right.
 
> I was hoping we could use LDMIN/LDMAX to maintain the semantics of
> REFCOUNT_FULL, but now that I think about it I can't see how we could keep
> the arithmetic atomic in that case. Hmm.

Do you think Ard's patch needs changes before it can be considered? I
can take a look at that.

> Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
> so if we can't keep the semantics when we remove the cmpxchg, you'll need to
> opt into this at config time.

Only arm64 and arm selects REFCOUNT_FULL in the default config. So please
reconsider this! This is going to slow down arm64 vs. other archs and it
will become worse when more code adopts refcount_t.

JC
[1] https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1451350.html
[2] https://www.mail-archive.com/linux-kernel@vger.kernel.org/msg1336955.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
