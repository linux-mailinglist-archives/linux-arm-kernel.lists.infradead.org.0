Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894BA96F46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 04:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifO6Gi4bNL0vkVngablP8riktQv7IzoxIPM3uK6qDpY=; b=K0p2nhM/W7fRrx
	Iev2xtFwk0eJW2FBiYXwz7Jddrm6+dUdroA8uAmzkcLn2NqM/P0yeYFDtqQk54XsXbRsIsVqDNRwW
	NBsjDVA6e7PX74IG6TpKFObJ8OEVKfmKVJLIslr7bvxB+UN8amArxHuRrbqUDyaUJdqRuEIwwUTLL
	75A5jZ+Rco6TcMa9qaQJM+JkK+N4My6Tm8MRbjYReM++bvLrO7IUGiWCU2ihIse+nmE4b1MeQVwms
	aCMLY64xgekOKkSj/gyq6AOS1PT3fO8Gjws5rqMILoprj/pvWRM9CRUOFjqbCq+8wqtovGn/zpxiG
	mkHLbUIB0dIDMAXW2J+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0G6l-00074M-Va; Wed, 21 Aug 2019 02:12:20 +0000
Received: from mail-eopbgr750042.outbound.protection.outlook.com
 ([40.107.75.42] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0G6Z-0006gj-Gh
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 02:12:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WfQxWzkrQ9a3kCUoWn+0J3VKdZDIzDyQMmb2UOQvmXM/c4ZHkSInNbo2/nohe4WySylR1DBIuGw8j9HL5gLP9LvLxEMizY36G8D/0LFJ1gwkGIRKu7dOGm/Jell1LVkljSQrhoqRirMlyNwUJpJejaTw+AroBWOsYj9QAnrz7y1+JlzCNqpzCviJooOO6mBisrmq4LJu4Gu6WswGR2wNBJ9vlp4zQW7j4WtBf4UBVoMEcfZzMBIVcJnA/mn8K96Ls7MUUCcRz3DBrcqZfoRcjFqvYt2KMP8tgw9zUnLNGKGJryTFyBigdqXvhMgV0BGEzWUJl4rwA0BhcLcRcs3Brw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3RorcnFfdXc2/ULBNmxJLH5vZRJ1K+toKtfdNRY1d0=;
 b=SzYe/2ArIEYO3TrdwU8GMmedWRQUMSGiURoDwRwOb3KKwgA7Vv+ipV7r0g9AW+1i5JOLRMMQdfBAOllM/7gARG0Y5OWKnupydAAsrB25Zkmb8jsnqEtXi+ZTRp9J4rL+F6shJQuTHzF2XzRYq9EmfQJg1i2yg9TBgWZS1VEhDCW7ZH3bKhLv66JqA8RnIPN4BiYKFKQvqf3/7jOwbDydjEN79DSMnx7Na7SMiyVFejPLYfTyG9nuwaJBPiUnWXOb7PV/bILe+qaBqgD/l8ONX5rzXHxJ3090c3CvvKZuSe0VOtzfuLDGiq5LAlKqcV+GpakAk9Kz02i1OVbx5C5I3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N3RorcnFfdXc2/ULBNmxJLH5vZRJ1K+toKtfdNRY1d0=;
 b=MuS4Nt7b92nV//or1bQ+xpdb3ec5yjoxAmMJYm4XwGwWAYZlUBSulKH49qsQsP3swKwcrKGH0EHPxQ+SqvCQ6sDW077dVxEYtUHGNeCx+PKj90u0sY81QJBIF3IOUe3SP5CgFC5TAir98ND+YOgqRdQjjKJG/1lYUqPMm2doXb8=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3574.namprd03.prod.outlook.com (52.135.213.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Wed, 21 Aug 2019 02:12:05 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Wed, 21 Aug 2019
 02:12:05 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Miroslav Benes <mbenes@suse.cz>
Subject: Re: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Topic: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Index: AQHVVoEOXDxpF53mfUS1paE9VVhs/acDxgEAgAEViQA=
Date: Wed, 21 Aug 2019 02:12:05 +0000
Message-ID: <20190821100058.029d95b3@xhacker.debian>
References: <20190819191530.0f47b9b1@xhacker.debian>
 <20190819191622.57050fdf@xhacker.debian>
 <alpine.LSU.2.21.1908201118190.9536@pobox.suse.cz>
In-Reply-To: <alpine.LSU.2.21.1908201118190.9536@pobox.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR03CA0002.apcprd03.prod.outlook.com
 (2603:1096:404:14::14) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50281fca-b525-4160-48c8-08d725dcf641
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB3574; 
x-ms-traffictypediagnostic: BYAPR03MB3574:
x-microsoft-antispam-prvs: <BYAPR03MB357441CD3FA477F09F354BC5EDAA0@BYAPR03MB3574.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(376002)(366004)(396003)(39860400002)(189003)(199004)(478600001)(76176011)(102836004)(14454004)(53936002)(316002)(7736002)(1076003)(25786009)(446003)(11346002)(2906002)(476003)(4326008)(486006)(26005)(54906003)(52116002)(6246003)(99286004)(86362001)(386003)(6506007)(305945005)(186003)(6916009)(66946007)(8936002)(8676002)(66446008)(5660300002)(64756008)(71200400001)(256004)(14444005)(66556008)(66476007)(71190400001)(6116002)(66066001)(3846002)(6486002)(229853002)(50226002)(6512007)(9686003)(6436002)(81156014)(81166006)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3574;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: CV8ttSeUxNwImmcfhvJwiPOZxLG2rWrgJO5dBesExTUtDQI+Asg2z/wISac7iMv+2hQRGxQxrnGK6Xv+dQ0S/3bmmBmU4mhPg3HjJB/pKS5aW48q1ZywGxChyLFkaY3RTOh5SEAzqS+xI3UtoTv01ru/bkjApTJ1nJ50I06KTDyKrstoqWZZiWGWVGFB1SWWtoiSqDsUOnysRvEbjiGTCS0N5UF8xQclFGrP2oBZ23kd0E0R4oZ9ssb+ZGo3oHYNo1lWzg4OD9FAVGJUdakIybO9MCphcSftM1I8R3r0Tn5QzHcOXRJyKypeBt0JQcmIyuYINH80DhLU9jXu7fXV7GTrnRRS1XigrkQ6icQgxBsFEYWfpXv3kiu2hx26MT7JU/jtaTz9K5m81VyzRdSeEtv5LuAz+KB9sO/Jb+1XLRs=
x-ms-exchange-transport-forked: True
Content-ID: <6E12DB1E21DCBD47AB4258F4A704CA94@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50281fca-b525-4160-48c8-08d725dcf641
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 02:12:05.1630 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ewsVf0QNEPwYjQAON+15gR58Hcrb6h7qlLsoL4Zd8oNBP8d4qEsJjQSrZg5fj1pOewUsvY2KS4MEIJ7k2mzVNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3574
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_191207_569041_BBC56DDD 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Torsten Duwe <duwe@suse.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 20 Aug 2019 11:27:38 +0200 (CEST) Miroslav Benes <mbenes@suse.cz> wrote:
> 
> 
> Hi,
> 
> On Mon, 19 Aug 2019, Jisheng Zhang wrote:
> 
> > On some arch, the FTRACE_WITH_REGS is implemented with gcc's
> >  -fpatchable-function-entry (=2), gcc adds 2 NOPs at the beginning
> > of each function, so this makes the MCOUNT_ADDR useless. In ftrace
> > common framework, MCOUNT_ADDR is mostly used to "init" the nop, so
> > let's introcude ftrace_call_init().
> >
> > Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > ---
> >  include/linux/ftrace.h | 1 +
> >  kernel/trace/ftrace.c  | 4 ++++
> >  2 files changed, 5 insertions(+)
> >
> > diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> > index 8a8cb3c401b2..8175ffb671f0 100644
> > --- a/include/linux/ftrace.h
> > +++ b/include/linux/ftrace.h
> > @@ -458,6 +458,7 @@ extern void ftrace_regs_caller(void);
> >  extern void ftrace_call(void);
> >  extern void ftrace_regs_call(void);
> >  extern void mcount_call(void);
> > +extern int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec);
> >
> >  void ftrace_modify_all_code(int command);
> >
> > diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> > index eca34503f178..9df5a66a6811 100644
> > --- a/kernel/trace/ftrace.c
> > +++ b/kernel/trace/ftrace.c
> > @@ -2500,7 +2500,11 @@ ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
> >       if (unlikely(ftrace_disabled))
> >               return 0;
> >
> > +#ifdef MCOUNT_ADDR
> >       ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> > +#else
> > +     ret = ftrace_call_init(mod, rec);
> > +#endif
> >       if (ret) {
> >               ftrace_bug_type = FTRACE_BUG_INIT;
> >               ftrace_bug(ret, rec);  
> 
> I may be missing something, but the patch does not seem to be complete.
> There is no ftrace_call_init() implemented. MCOUNT_ADDR is still defined,
> so it does not change much. I don't think it is what Mark had in his mind.
> 

Yes, except arm64, MCOUNT_ADDR is still defined in other arch. If we want
to remove MCOUNT_ADDR from all arch, I will cook patches for this purpose.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
