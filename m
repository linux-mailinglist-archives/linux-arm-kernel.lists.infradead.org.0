Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B62953E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 03:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+1OmYIg9hNYzchHiKfRfLrdxAm7WCLXzhjXny/KxgY=; b=X5lMZgCkVe6g+m
	PLtttbfYVmy+xqJskeKCStxtxKXQehU2WTLErV2YdjhDY/2af886IsPM8IXck0Cl8OkIFNsXCeKRB
	Zs8v+aUqQ21UL+fq+lRSv7cz9jD5Q2mlBmQy3Sj6NV/uxqwI12dO9To4GbujQBBD8IOs7QcjXUavF
	h9m56PnYXmD5u9YYYcbQzLI+WFYf26k/mSzDxfnquCwti2d0H10DjJb717JRkHM7G03BOOQt/QZip
	TfImeknX+QsEkMJmLMy3S7AWZlQvWBZZ1ilvZiRIlIujNvKalHjWAsqR4+MBHWNgG0fYLfuZEEP9R
	+tzBgTX3rfT8dPTsznZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hztO4-0005lr-Ei; Tue, 20 Aug 2019 01:56:40 +0000
Received: from mail-by2nam05on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe52::60b]
 helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hztNq-0005l6-8k
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 01:56:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vk38Odj5qInHOviNZpK1wBd10zHr/qvIE+Uma6e7w3fUikoEIW0wQP0wEFCKe01Mf8ZvvcfTlP6r037Z/XA5/9XUrP75u4cN5jkcuKUI1Is+vADr+twacpnxp4btx6WV4APcKNEb4aYwJMSOnUH+mptoD1wh1U53FJOzB7La9PPhnTB5q668FzkS+lzh59nWPchNXBMY3bRoqLFwswqSBs8KiK3jl9thEjkc3idZjfq9GPhsC+6E4Kc058IaqxTE29EyDl/KwPFR/ebx8wHi27f0AyWcmMBGuh8BaT/1ZfSIicV3a8Td5NUaf6qCirVcnqP7wysT/6H6t+xRwj79EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g2MATPfSP8THj1xuoWNFuGlXfMpsF7oeT1vB4j0bu8s=;
 b=RBFCvC9DdN9vQociXREQKi0kt1t3urItUpXcNHkrWDsXrfFuMAQsB6tJA+wS7cSqLiKkgk0ONr4FSCUTA4CXcTFavgRrGAHLaJTvCL0o2ozWwiBqN9rar1jXsMqJLzcA/xsGcT5fdL38+wyUDvyLErX7dyTxxWRWiB7Mvm8BI0VACZmzAHDds9RTQOveGdisG/5P5KFLtpx6dlqi/MnTgFTPWAUAMC7Wg67xvtTIHZ0P5AO3Ks+M6YxduCoK5PF7ETbIwZ5+RD/UPP9Q9sWcyQlCui1EOAL8iqGe91dAhDFCztm6I/KVR/K/Ea5EqfjOglN9hGcElfIhfG6VxdUrZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g2MATPfSP8THj1xuoWNFuGlXfMpsF7oeT1vB4j0bu8s=;
 b=D+2Z0hiCiCcSAynR/rL64GBN1i12VvhF7KjruZCVzlze6y9LpRhDH9qQak243t2BqWCNReEY1e/XGm08CSS58d9FZBL3dAEJRUy7r6nrpMs2DCOUUxzGU+8SoBtn3SFAenQ9EJJydg9oyeSwm5bPsjVPnAwBBv+6X9llEa+aPCs=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4102.namprd03.prod.outlook.com (20.177.184.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 01:56:23 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 01:56:23 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH 3/4] kprobes: move kprobe_ftrace_handler() from x86 and
 make it weak
Thread-Topic: [PATCH 3/4] kprobes: move kprobe_ftrace_handler() from x86 and
 make it weak
Thread-Index: AQHVVoJ3Rba7zgg07UOxNWPFwAx1QKcDKYSAgAAbSoA=
Date: Tue, 20 Aug 2019 01:56:23 +0000
Message-ID: <20190820094515.323b0c75@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192628.5f550074@xhacker.debian>
 <20190820090735.a55e7d0b685adecf68fdb55b@kernel.org>
In-Reply-To: <20190820090735.a55e7d0b685adecf68fdb55b@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR0101CA0040.apcprd01.prod.exchangelabs.com
 (2603:1096:404:8000::26) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5636b3a8-187a-4567-5a0d-08d725119aa7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4102; 
x-ms-traffictypediagnostic: BYAPR03MB4102:
x-microsoft-antispam-prvs: <BYAPR03MB41026769236AE81C4D005CF9EDAB0@BYAPR03MB4102.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(376002)(366004)(39850400004)(189003)(199004)(486006)(8936002)(6486002)(7416002)(66066001)(54906003)(7736002)(316002)(305945005)(8676002)(86362001)(81166006)(81156014)(6116002)(6916009)(11346002)(50226002)(3846002)(71200400001)(71190400001)(4326008)(476003)(446003)(99286004)(256004)(14444005)(14454004)(2906002)(102836004)(52116002)(66946007)(6246003)(26005)(53936002)(1076003)(9686003)(6512007)(64756008)(76176011)(66476007)(66556008)(66446008)(229853002)(478600001)(25786009)(186003)(386003)(6506007)(6436002)(5660300002)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4102;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mJukGuhjplPD9fZInEfs4pUOH8JS/vw8fO1vQnKoi4J2B+2mnhUXW0ZdLpQED9DriG+rwBdnT/XlaEj5JTOeEHoZaDtemAA/uLh3SZZQewrHL9xznX7OI0AwqD1Xk3YE2PbQ8QXAcBbutrvyXMtJkDAr2d1sSwTdF5BjanOUs8r6aSGOs5go5tQCMWh/BVgkqQS9lio/kX0Ej4qV4GJYHHPxwbkFI85EEQ/JRqhduvPiMqTDNSRg7ZztVA5ij5VjcOCR7xzEIBioteHHJQj47G0MzSL5vB2JpMdCQ6SpCuE7QV4wBU61Km28C02DeJShwElppaed9eyzzHnxLBYX++g7DnW3qQpyTE0ZgZB385//MtpbMQylTnQRAjdTMrKIPLUw2swCZ1L2a84xkylJObGtqEvQUQiklCRW3BJU1qc=
x-ms-exchange-transport-forked: True
Content-ID: <4927522ADCDC1F4096E473DF64A16AEE@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5636b3a8-187a-4567-5a0d-08d725119aa7
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 01:56:23.7234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oZPC+fCIAxkc+UJCnArRbpAWg5aJgTSJiACkBZC4prGurvYh1kXMm7+VWFWDP6MsPl+Eh70cGObqcf32pp5rwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_185626_312875_7C2548BA 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Steven Rostedt <rostedt@goodmis.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>, "David S.
 Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 09:07:35 +0900 Masami Hiramatsu  wrote:

> 
> 
> Hi Jisheng,

Hi,

> 
> On Mon, 19 Aug 2019 11:37:32 +0000
> Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> 
> > This code could be reused. So move it from x86 to common code.  
> 
> Yes, it can be among some arch, but at first, please make your
> architecture implementation. After making sure that is enough
> stable, we will optimize (consolidate) the code.

Got it. I will duplicate the function firstly then make the consolidation
as a TODO.

> 
> For example,
> > -             /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> > -             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));  
> 
> This may depend on arch implementation of kprobes.

Indeed, for arm64, would be as simple as s/ip/pc. 

Thanks

> 
> Could you make a copy and update comments on arm64?
> 
> Thank you,
> 
> >
> > Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> > ---
> >  arch/x86/kernel/kprobes/ftrace.c | 44 --------------------------------
> >  kernel/kprobes.c                 | 44 ++++++++++++++++++++++++++++++++
> >  2 files changed, 44 insertions(+), 44 deletions(-)
> >
> > diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
> > index c2ad0b9259ca..91ae1e3e65f7 100644
> > --- a/arch/x86/kernel/kprobes/ftrace.c
> > +++ b/arch/x86/kernel/kprobes/ftrace.c
> > @@ -12,50 +12,6 @@
> >
> >  #include "common.h"
> >
> > -/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> > -void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> > -                        struct ftrace_ops *ops, struct pt_regs *regs)
> > -{
> > -     struct kprobe *p;
> > -     struct kprobe_ctlblk *kcb;
> > -
> > -     /* Preempt is disabled by ftrace */
> > -     p = get_kprobe((kprobe_opcode_t *)ip);
> > -     if (unlikely(!p) || kprobe_disabled(p))
> > -             return;
> > -
> > -     kcb = get_kprobe_ctlblk();
> > -     if (kprobe_running()) {
> > -             kprobes_inc_nmissed_count(p);
> > -     } else {
> > -             unsigned long orig_ip = instruction_pointer(regs);
> > -             /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> > -             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> > -
> > -             __this_cpu_write(current_kprobe, p);
> > -             kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> > -             if (!p->pre_handler || !p->pre_handler(p, regs)) {
> > -                     /*
> > -                      * Emulate singlestep (and also recover regs->ip)
> > -                      * as if there is a 5byte nop
> > -                      */
> > -                     instruction_pointer_set(regs,
> > -                             (unsigned long)p->addr + MCOUNT_INSN_SIZE);
> > -                     if (unlikely(p->post_handler)) {
> > -                             kcb->kprobe_status = KPROBE_HIT_SSDONE;
> > -                             p->post_handler(p, regs, 0);
> > -                     }
> > -                     instruction_pointer_set(regs, orig_ip);
> > -             }
> > -             /*
> > -              * If pre_handler returns !0, it changes regs->ip. We have to
> > -              * skip emulating post_handler.
> > -              */
> > -             __this_cpu_write(current_kprobe, NULL);
> > -     }
> > -}
> > -NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> > -
> >  int arch_prepare_kprobe_ftrace(struct kprobe *p)
> >  {
> >       p->ainsn.insn = NULL;
> > diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> > index f8400753a8a9..479148ee1822 100644
> > --- a/kernel/kprobes.c
> > +++ b/kernel/kprobes.c
> > @@ -960,6 +960,50 @@ static struct kprobe *alloc_aggr_kprobe(struct kprobe *p)
> >  #endif /* CONFIG_OPTPROBES */
> >
> >  #ifdef CONFIG_KPROBES_ON_FTRACE
> > +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> > +void __weak kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> > +                               struct ftrace_ops *ops, struct pt_regs *regs)
> > +{
> > +     struct kprobe *p;
> > +     struct kprobe_ctlblk *kcb;
> > +
> > +     /* Preempt is disabled by ftrace */
> > +     p = get_kprobe((kprobe_opcode_t *)ip);
> > +     if (unlikely(!p) || kprobe_disabled(p))
> > +             return;
> > +
> > +     kcb = get_kprobe_ctlblk();
> > +     if (kprobe_running()) {
> > +             kprobes_inc_nmissed_count(p);
> > +     } else {
> > +             unsigned long orig_ip = instruction_pointer(regs);
> > +             /* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> > +             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> > +
> > +             __this_cpu_write(current_kprobe, p);
> > +             kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> > +             if (!p->pre_handler || !p->pre_handler(p, regs)) {
> > +                     /*
> > +                      * Emulate singlestep (and also recover regs->ip)
> > +                      * as if there is a 5byte nop
> > +                      */
> > +                     instruction_pointer_set(regs,
> > +                             (unsigned long)p->addr + MCOUNT_INSN_SIZE);
> > +                     if (unlikely(p->post_handler)) {
> > +                             kcb->kprobe_status = KPROBE_HIT_SSDONE;
> > +                             p->post_handler(p, regs, 0);
> > +                     }
> > +                     instruction_pointer_set(regs, orig_ip);
> > +             }
> > +             /*
> > +              * If pre_handler returns !0, it changes regs->ip. We have to
> > +              * skip emulating post_handler.
> > +              */
> > +             __this_cpu_write(current_kprobe, NULL);
> > +     }
> > +}
> > +NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> > +
> >  static struct ftrace_ops kprobe_ftrace_ops __read_mostly = {
> >       .func = kprobe_ftrace_handler,
> >       .flags = FTRACE_OPS_FL_SAVE_REGS | FTRACE_OPS_FL_IPMODIFY,
> > --
> > 2.23.0.rc1
> >  
> 
> 
> --
> Masami Hiramatsu <mhiramat@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
