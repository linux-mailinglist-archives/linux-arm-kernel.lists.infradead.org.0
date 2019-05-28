Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9A12C4D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rit/FKwLwkCRnQYpg0mYi6WC7vQVDdBBdJx3MgRAZYM=; b=sFlqI7I3qWc05h
	Zd7pTDAgESMNA39X9Ra/cDe92bVhkjBu1V7gkfw3GAMwIyarWWdCJReJtavhgqLnTOXXcp5mJ48HY
	YyhDvySJ6kNifwHP2c3LicVHWu9YQ8FVocYtM77elrO69Bk4S5yMi1VfbYzGycg32ERrcyUV09j1p
	4WWrfdaBppAD+51E7coiZ0/J/WRNdl7W+JYP7Jnm37WHK6qcs/0yxi9dSqH7+nd4aM18ppzMyWycf
	GZAO3Pr2yc+cmBY+ON1KBPFTq/EFYB0i2JZy8prEsEs6txb9ITXOPy1qfvrizOyZAVs0Goi8kG2xt
	6+iDnpNpZ7kN/Oxb2DcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZiJ-0005VV-UC; Tue, 28 May 2019 10:52:15 +0000
Received: from mail-eopbgr70054.outbound.protection.outlook.com ([40.107.7.54]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZiB-0005V8-8b
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:52:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioNb+DIgHp9f15M7SnfsfijndD+CIBzIcltPbgrUeQY=;
 b=PBOH6uzikhT93q9shvtXaMuHsbJYdJCK6gON0naoRQQXNI8sRTKqIbh71fvdhWiYLsIFLse+MBr0SmjLfmNOA0OlZH0M2CN+MsbZfE/QTu6dPPrBSqWz+yqSd0b0tjVWVyho6XM+7S/nFfXwekmFYWeg8894PGtB+jAV3AhzaCU=
Received: from VE1PR08MB4847.eurprd08.prod.outlook.com (10.255.113.87) by
 VE1PR08MB4927.eurprd08.prod.outlook.com (10.255.114.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Tue, 28 May 2019 10:52:03 +0000
Received: from VE1PR08MB4847.eurprd08.prod.outlook.com
 ([fe80::d17e:fe55:9860:fcb8]) by VE1PR08MB4847.eurprd08.prod.outlook.com
 ([fe80::d17e:fe55:9860:fcb8%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 10:52:03 +0000
From: Dave P Martin <Dave.Martin@arm.com>
To: Mark Rutland <Mark.Rutland@arm.com>
Subject: Re: [PATCH 4/8] arm64: Basic Branch Target Identification support
Thread-Topic: [PATCH 4/8] arm64: Basic Branch Target Identification support
Thread-Index: AQHVEjD8get/p3f1rUKBROdJSa3g/aZ6bSsA///8AQCAABo5gIAAAdIAgAXdJwA=
Date: Tue, 28 May 2019 10:52:03 +0000
Message-ID: <20190528105200.GU2019@e103592.cambridge.arm.com>
References: <1558693533-13465-1-git-send-email-Dave.Martin@arm.com>
 <1558693533-13465-5-git-send-email-Dave.Martin@arm.com>
 <20190524130217.GA15566@lakrids.cambridge.arm.com>
 <20190524145306.GZ28398@e103592.cambridge.arm.com>
 <20190524153847.GE15566@lakrids.cambridge.arm.com>
 <20190524161239.GA28398@e103592.cambridge.arm.com>
 <20190524171908.GA18057@lakrids.cambridge.arm.com>
In-Reply-To: <20190524171908.GA18057@lakrids.cambridge.arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mutt/1.5.23 (2014-03-12)
x-originating-ip: [217.140.106.49]
x-clientproxiedby: LO2P265CA0171.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a::15) To VE1PR08MB4847.eurprd08.prod.outlook.com
 (2603:10a6:802:a6::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Dave.Martin@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88bc6115-5708-45cc-c6b0-08d6e35a84a1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR08MB4927; 
x-ms-traffictypediagnostic: VE1PR08MB4927:
x-microsoft-antispam-prvs: <VE1PR08MB49274C885B8B2F1C7917619DFE1E0@VE1PR08MB4927.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(346002)(39860400002)(396003)(136003)(51444003)(189003)(199004)(40434004)(486006)(68736007)(476003)(4326008)(186003)(446003)(1076003)(53936002)(6512007)(6246003)(66066001)(5660300002)(11346002)(316002)(76176011)(478600001)(26005)(66946007)(73956011)(25786009)(6862004)(66446008)(66476007)(66556008)(64756008)(14454004)(2906002)(99286004)(8676002)(81156014)(6506007)(14444005)(256004)(81166006)(6116002)(3846002)(54906003)(33656002)(6486002)(71200400001)(386003)(6436002)(52116002)(71190400001)(305945005)(7736002)(102836004)(58126008)(86362001)(8936002)(72206003)(229853002)(5024004)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4927;
 H:VE1PR08MB4847.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EikR+iM1RWkcD6zUulT8fO1ww+j7AgtjpE8JpiXMOW9wAoQTsBsSW/lv+sZ+xsB/S1vQnyYJafed5VXo9q0YvJ2M3UlQrZ5fTCLZ4tfBbfS9QserlP2JvfU8lCyvtbmUHQS/VnugJKigKqfVYXbamYOqm1aKISDekqsxJVMj/P4yPk1LjoSu9XhF2WvKmxL1lfInvqvww5qbhQlxdcmEVQtub6ryKaahjBMWTGA4pM0D0YZT6ckiFG+5JEwVOYcuXv+ZW6TLVbgaMfZDfWihzWZ2QetYLKoQD/6+iw8UZTlCgwfIrqeUH+6Hx7lrdT/zoXNxdQPGBm/6cX+aOjNrdEPmgxd6NCzQAf4JV5qyTij3YWjPZlhStpMQ+csVUf62UPVf6eoAESjPva6is6UZ4baEVp4JvwOOcYUwQB4K5Is=
Content-ID: <314CAC5F10663F40B9736AA1E0A855E3@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88bc6115-5708-45cc-c6b0-08d6e35a84a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 10:52:03.3718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Dave.Martin@arm.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_035207_400210_E611E57D 
X-CRM114-Status: GOOD (  34.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "H.J. Lu" <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Paul Elliott <Paul.Elliott@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Andrew Jones <drjones@redhat.com>,
 Kristina Martsenko <Kristina.Martsenko@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Sudakshina Das <Sudi.Das@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 06:19:10PM +0100, Mark Rutland wrote:
> On Fri, May 24, 2019 at 05:12:40PM +0100, Dave Martin wrote:
> > On Fri, May 24, 2019 at 04:38:48PM +0100, Mark Rutland wrote:
> > > On Fri, May 24, 2019 at 03:53:06PM +0100, Dave Martin wrote:
> > > > On Fri, May 24, 2019 at 02:02:17PM +0100, Mark Rutland wrote:
> > > > > On Fri, May 24, 2019 at 11:25:29AM +0100, Dave Martin wrote:

[...]

> > > > > > diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> > > > > > index 5610ac0..85b456b 100644
> > > > > > --- a/arch/arm64/kernel/syscall.c
> > > > > > +++ b/arch/arm64/kernel/syscall.c
> > > > > > @@ -66,6 +66,7 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
> > > > > >  unsigned long flags = current_thread_info()->flags;
> > > > > >
> > > > > >  regs->orig_x0 = regs->regs[0];
> > > > > > +regs->pstate &= ~(regs->pstate & PSR_BTYPE_MASK);
> > > > >
> > > > > Likewise:
> > > > >
> > > > > regs->pstate &= ~PSR_BTYPE_MASK;
> > > > >
> > > > > ... though I don't understand why that would matter to syscalls, nor how
> > > > > those bits could ever be set given we had to execute an SVC to get here.
> > > > >
> > > > > What am I missing?
> > > >
> > > > The behaviour is counterintuivite here.  The architecture guarantees to
> > > > preserve BTYPE for traps, faults and asynchronous exceptions, but for a
> > > > synchronous execption from normal architectural execution of an
> > > > exception-generating instruction (SVC/HVC/SMC) the architecture leaves
> > > > it IMP DEF whether BTYPE is preserved or zeroed in SPSR.
> > >
> > > I'm still missing something here. IIUC were BTYPE was non-zero, we
> > > should take the BTI trap before executing the SVC/HVC/SMC, right?
> > >
> > > Otherwise, it would be possible to erroneously branch to an SVC/HVC/SMC,
> > > which would logically violate the BTI protection.
> >
> > Only if the SVC (etc.) is in a BTI guarded page.  Otherwise, we could
> > have legitimately branched to the SVC insn directly and BTYPE would
> > be nonzero, but no trap would occur.
>
> I agree that would be the case immediately before we execute the SVC,
> but I think there's a subtlety here w.r.t. what exactly happens as an
> SVC is executed.
>
> My understanding was that even for unguarded pages, the execution of any
> (non branch/eret) instruction would zero PSTATE.BTYPE.
>
> For SVC it's not clear to me whether generating the SVC exception is
> considered to be an effect of completing the execution of an SVC,
> whether it's considered as preempting the execution of the SVC, or
> whether that's IMPLEMENTATION DEFINED.
>
> Consequently it's not clear to me whether or not executing an SVC clears
> PSTATE.BTYPE before the act of taking the exception samples PSTATE. I
> would hope that it does, as this would be in keeping with the way the
> ELR is updated.

OTOH, the wording calls this case out quite explicitly.  It seems odd to
do that if the more general wording applies.

I'll take another look and request clarficiation.

> I think that we should try to clarify that before we commit ourselves to
> the most painful interpretation here. Especially as similar would apply
> to HVC and SMC, and I strongly suspect firmware in general is unlikely
> to fix up the PSTATE.BTYPE of a caller.
>
> > We should still logically zero BTYPE across SVC in that case, because
> > the SVC may itself branch:  a signal could be delivered on return and
> > we want the prevailing BTYPE then to be 0 for capture in the signal
> > frame.  Doing this zeroing in signal delivery because if the signal
> > is not delivered in SVE then a nonzero BTYPE might be live, and we
> > must then restore it properly on sigreturn.
>
> I'm not sure I follow this.
>
> If we deliver a signal, the kernel generates a pristine PSTATE for the
> signal handler, and the interrupted context doesn't matter.
>
> Saving/restoring the state of the interrupted context is identical to
> returning without delivering the signal, and we'd have a problem
> regardless.

My test looks garbled... since the point I was making was tangential, I
don't elaborate it for now.

> > As you observe, this scenario should be impossible if the SVC insn
> > is in a guarded page, unless userspace does something foolhardy like
> > catching the SIGILL and fudging BTYPE or the return address.
>
> I think userspace gets to pick up the pieces in this case. Much like
> signal delivery, it would need to generate a sensible PSTATE itself.

Agreed, there is no way to hide this kind of thing from userspace code
that messes with the signal frame -- so we shouldn't try.

> [...]
>
> > (Now I come to think of it I also need to look at rseq etc., which is
> > another magic kernel-mediated branch mechanism.)

Meh.

Cheers
---Dave
IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
