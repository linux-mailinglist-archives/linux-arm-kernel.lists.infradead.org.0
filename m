Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2974490E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 22:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ec3NoC1vX3AK1J2TofR9GjgLMPONgBYggrMkRpoNe8=; b=MRSICqaUrgVpfz
	IDJbZA/K8C6ySWrnRo/J/7p6BlvqO2CXCLSZlswGDRRcAg18YUwCOiQxOcTWGarUsgNRl5yQESqT3
	Eyn4WTR6Iw8pFswoxKGGuET8diUKicEmIJ4B2PckIh6aSQLPHtFSce/Lr+lI4J2Jk3rr9lrxwwuDV
	5LOaUQ6/g9PYQaw/uu0Qj8QeQ58swlIt2r4vipkulwoHxqfAaRSKh7VEyLBLQwZrpLkssCgL75HOy
	lLd5f6z8WVbKlWd6H2+dkzg2ijAdLTV6MKxwqwyVTyDuFwT2cjkYhUP/jAxKzpk+2gxFpz/M2UIs/
	gLAuQGxmvISa+BavXdAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxvQ-0005uY-6J; Mon, 17 Jun 2019 20:08:20 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxvE-0005u2-Gf
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 20:08:10 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5HK4rm4013750; Mon, 17 Jun 2019 13:07:58 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=pfpt0818;
 bh=lB2ChPV5iZU/6F/eZDYPHUyKbwiTw7SG/AnU3EJxhIo=;
 b=s7qYn4YmeVXDGioMbgkqww7pvz3ZEqHPNWnWicaVbd0HQMSPbDjkIrM0L5K5d4jsw3z0
 iWvn3mkq5Oy+i8ykMmsRqbbdu5/k3jKthMEMEhOe38OMOWsMZOZtylmLOZ8ziABpRaKd
 4Oic2JbAPnr9SD+p5MML30bta60OhufOHqbRo0c7HKnjs6HGJtIQQVcCl93T08n1GZ7N
 axuKQ0Ojfy2m+DXBeAhCvlDTsxJcDPQ6Fw06IiTbhotcPg28SX6E+PX5T99DX8L8akfL
 Zni2RkSHpOEhAPLZurX1lTSqK8hCp6IhWTghRrfpaBf/Hk8sARGh0kZzLtcR1AOstl+w 6Q== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0a-0016f401.pphosted.com with ESMTP id 2t68rpabhs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Mon, 17 Jun 2019 13:07:58 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Mon, 17 Jun
 2019 13:07:57 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.59) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Mon, 17 Jun 2019 13:07:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lB2ChPV5iZU/6F/eZDYPHUyKbwiTw7SG/AnU3EJxhIo=;
 b=kQIzGHjOjM3QGqHO+BRiO/5LQ0xNra4ePkAHtn2Tj93787Wj+x7I9wLO3F8VYs0YUwr7ymGFLluPHjG+lunYAH7FEjE7Zp4Mry76emnVCfytV7jvphAjkumHWCBxMwMRQQYv89JAc00dhk4oP2s9BcxdZcEKfGuDGqzbxx2/DGA=
Received: from BN8PR18MB2788.namprd18.prod.outlook.com (20.179.73.220) by
 BN8PR18MB2964.namprd18.prod.outlook.com (20.179.76.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.13; Mon, 17 Jun 2019 20:07:55 +0000
Received: from BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149]) by BN8PR18MB2788.namprd18.prod.outlook.com
 ([fe80::99e5:34a8:2f99:3149%7]) with mapi id 15.20.1987.014; Mon, 17 Jun 2019
 20:07:55 +0000
From: Jayachandran Chandrasekharan Nair <jnair@marvell.com>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [RFC] Disable lockref on arm64
Thread-Topic: [RFC] Disable lockref on arm64
Thread-Index: AQHVJUhZrbOg/WOpcE2VXDha9giiEQ==
Date: Mon, 17 Jun 2019 20:07:54 +0000
Message-ID: <20190617200750.GB5565@dc5-eodlnx05.marvell.com>
References: <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
 <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
 <201906161429.BCE1083@keescook>
 <CAKv+Gu_8ibO4D01DZv6KjL2GnvKuVBVnt=doxkN0w=4utJ7NvQ@mail.gmail.com>
 <20190617172620.GK30800@fuggles.cambridge.arm.com>
In-Reply-To: <20190617172620.GK30800@fuggles.cambridge.arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0038.namprd07.prod.outlook.com
 (2603:10b6:a03:60::15) To BN8PR18MB2788.namprd18.prod.outlook.com
 (2603:10b6:408:77::28)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1d673804-847e-43ee-54ce-08d6f35f7bf7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN8PR18MB2964; 
x-ms-traffictypediagnostic: BN8PR18MB2964:
x-microsoft-antispam-prvs: <BN8PR18MB296414DA2FC72AED9A1A2F73A6EB0@BN8PR18MB2964.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0071BFA85B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(346002)(136003)(396003)(199004)(189003)(31014005)(26005)(478600001)(6436002)(4326008)(25786009)(386003)(6506007)(8676002)(54906003)(186003)(5660300002)(76176011)(6916009)(305945005)(102836004)(14454004)(52116002)(66066001)(7736002)(6246003)(81166006)(81156014)(8936002)(71200400001)(2906002)(256004)(99286004)(486006)(6512007)(14444005)(73956011)(229853002)(6486002)(446003)(53936002)(66946007)(476003)(316002)(66476007)(71190400001)(64756008)(66446008)(66556008)(86362001)(6116002)(3846002)(1076003)(33656002)(11346002)(68736007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR18MB2964;
 H:BN8PR18MB2788.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KCfO7UM9cVPwJjwnlk3kWCKDvPaMT39AzDBWL+yMWpSjywHaruQkbbm1s9kmV3QX06cnmlDFFfOmvjgM2+4TyIlmwSSQrq2r9firDF8/ZAdpNccgFELfWUbUFHVvDbVcZ1TJ9O/JNQKW7in8XRbAnA92dTXvY+99Z1a0NQ9HBrDKL9VIZgpcyhXeRS2CS8cexhn6QwMouM5E05x+YDjJp6xkec3vWzKv6HdFSMHgxuH6QEwvPQn6icqb7d6/zusMqRWE0I3tLSwkXXPNAi8Y3nryNCTBaEInUBveaYK0neVRzuRYS/JeFD+HkfYelb0c2T8py0Ut5jq7sTCli82PqWFgVsTeK+QFz5O2TlMFwQ6SsHqWvzeXYyMJ1zfutwrc1ja0YrPnWxgQVQaqyFt9JLZcvOpYS2Z+E1QSebslvYI=
Content-ID: <A5DBFAE6E51B474A8578B81FC61E1FDC@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d673804-847e-43ee-54ce-08d6f35f7bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2019 20:07:54.9211 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jnair@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR18MB2964
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-17_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_130808_719967_93387F95 
X-CRM114-Status: GOOD (  31.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 06:26:20PM +0100, Will Deacon wrote:
> On Mon, Jun 17, 2019 at 01:33:19PM +0200, Ard Biesheuvel wrote:
> > On Sun, 16 Jun 2019 at 23:31, Kees Cook <keescook@chromium.org> wrote:
> > > On Sat, Jun 15, 2019 at 04:18:21PM +0200, Ard Biesheuvel wrote:
> > > > Yes, I am using the same saturation point as x86. In this example, I
> > > > am not entirely sure I understand why it matters, though: the atomics
> > > > guarantee that the write by CPU2 fails if CPU1 changed the value in
> > > > the mean time, regardless of which value it wrote.
> > > >
> > > > I think the concern is more related to the likelihood of another CPU
> > > > doing something nasty between the moment that the refcount overflows
> > > > and the moment that the handler pins it at INT_MIN/2, e.g.,
> > > >
> > > > > CPU 1                   CPU 2
> > > > > inc()
> > > > >   load INT_MAX
> > > > >   about to overflow?
> > > > >   yes
> > > > >
> > > > >   set to 0
> > > > >                          <insert exploit here>
> > > > >   set to INT_MIN/2
> > >
> > > Ah, gotcha, but the "set to 0" is really "set to INT_MAX+1" (not zero)
> > > if you're using the same saturation.
> > >
> > 
> > Of course. So there is no issue here: whatever manipulations are
> > racing with the overflow handler can never result in the counter to
> > unsaturate.
> > 
> > And actually, moving the checks before the stores is not as trivial as
> > I thought, E.g., for the LSE refcount_add case, we have
> > 
> >         "       ldadd           %w[i], w30, %[cval]\n"                  \
> >         "       adds            %w[i], %w[i], w30\n"                    \
> >         REFCOUNT_PRE_CHECK_ ## pre (w30))                               \
> >         REFCOUNT_POST_CHECK_ ## post                                    \
> > 
> > and changing this into load/test/store defeats the purpose of using
> > the LSE atomics in the first place.
> > 
> > On my single core TX2, the comparative performance is as follows
> > 
> > Baseline: REFCOUNT_TIMING test using REFCOUNT_FULL (LSE cmpxchg)
> >       191057942484      cycles                    #    2.207 GHz
> >       148447589402      instructions              #    0.78  insn per
> > cycle
> > 
> >       86.568269904 seconds time elapsed
> > 
> > Upper bound: ATOMIC_TIMING
> >       116252672661      cycles                    #    2.207 GHz
> >        28089216452      instructions              #    0.24  insn per
> > cycle
> > 
> >       52.689793525 seconds time elapsed
> > 
> > REFCOUNT_TIMING test using LSE atomics
> >       127060259162      cycles                    #    2.207 GHz
> 
> Ok, so assuming JC's complaint is valid, then these numbers are compelling.

Let me try to point out the issues I see again, to make sure that we are
not talking just about micro-benchmarks.

That first issue: on arm64, REFCOUNT_FULL is 'select'-ed. There is
no option to go to the atomics implementation or a x86-like compromise
implementation, without patching the kernel. Currently we are stuck with
a function call for what has to be a single atomic instruction.

The second part is that REFCOUNT_FULL uses a unbounded CAS loop which is
problematic when the core count increases and when there is contention.
Upto to some level of contention, the CAS loop works fine. But when we
go to the order of a hundred CPUs this becomes an issue. The LDADD
series of atomics can be handled fairly well by hardware even with
heavy contention, but in case of CAS(or LDXR/STXR) loops, getting it
correct in hardware is much more difficult. There is nothing in the
arm64 ISA to manage this correctly. As discussed earlier in the thread,
WFE does not work, YIELD is troublesome, and there is no 'wait in low
power for exclusive access' hint instruction. This is not a TX2
specific issue.

The testcase I provided was not really a microbenchmark. That was a
simplified webserver testcase where multiple threads read a small file
in parallel. With Ubuntu configuration (apparmor enabled) and when
other things line up (I had made the file & dir non-writable), you
can see that refcount is the top function. I expect this kind of
situation to be more frequent as more subsystems move to refcount_t.

> In particular, my understanding of this thread is that your optimised
> implementation doesn't actually sacrifice any precision; it just changes
> the saturation behaviour in a way that has no material impact. Kees, is that
> right?
> 
> If so, I'm not against having this for arm64, with the premise that we can
> hide the REFCOUNT_FULL option entirely given that it would only serve to
> confuse if exposed.

Thanks for looking into this! From the discussion it seems likely
that we can get a version of Ard's patch in, which does not have CAS
loop in most cases.

JC

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
