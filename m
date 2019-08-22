Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F5399126
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:44:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iigFxoh661PJmDbCys69B7nJBrD48mmofBUMfuBoqXY=; b=MIxseXLn7Lh7O1
	ztQUugD67kRoJRwaPs0rzpNR6N66OTR/HDH+IIg7oLY2T+exqR/QOWVm6SOBcqsFmDxRE34RXluyA
	JGolJfRwVdJ2q2ynn7pVG5OpVZbPer2VWadT7dWL94BW71961yeuVk+LyQQMdhpFoJzJagJD00e3k
	em6XwhCs5PaAW6WD9JLEJOyLrJzjaroVUz9LQCJqmEohbv1Zdo1FmNF4kN98RFZ34NLWxy2c45q+b
	UIXoMoH85k1GSm9s/ea+r7YqodDjZetW+l291supeIhbX39P34x4uVzfB6+IG8Xmbm5qIgGd6bjSx
	DPBKmiXbHxjRF1TvhySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kZo-0006vC-Kd; Thu, 22 Aug 2019 10:44:20 +0000
Received: from mail-eopbgr740059.outbound.protection.outlook.com
 ([40.107.74.59] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kZb-0006ul-Um
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:44:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLX62PrtxtT6PaGTRH423mSSR9AhtSsmqvvId8xaKFOd8UDrjD0k+8uIUxuaqlNtkWz9f7yOMqILM/hm6/fFJ0aWhX/e2JtJN5KTr6Cw2fYcEmgBCe5JF+pQ3PYAPxB2Y0AS+D/rcP/hY6Y0UjKtaU3t7yzmi0WGWgPGjVYYQCU0UgpZPbL4LhrVFkTQfIFQx/fGuiYqvqhi8PZDcL4lMd/NlspugZuyKR9ZisuSWPJV/XByKFzlV8Sa6bgvZgA5po8M8zhTvOKddhB7Ie246bEYgAmCe1kr3IxPzlIBv/+Dxy+aD4bjcHsECurKPDAY4Je3O4leva/Rr+wRgSJx8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBxmssn2OKSXWcr+k/5rrNQfoK8KXpoqd1TaaRKg0PA=;
 b=Tq9TDgMap/Y1tCDzLLDM/VsNd1k/AkN2+xwa8LMLwpDQIoMAzPkJnvDwK0HZKIBxIMxD4fcj4jt1YYUE1OMTGe3zN53YtQrxcdzTHyhiIJCscyRW3gMZgbmpitvtHJKi/2npd0J0klJFmkkaMlIS2FImhgOUj/YpcNqpT34bGfh1vr+dwBcnfXG/388mOMRAAAZCYzRo54qUtWIkclQHMgSYpQySBNwbotsEbnIhanWEYzvNYpmT4zMLt93GOnl1twfeZH04FfQoDA07TW5vqQWgoGQubaJ2ELkiSBQUYqg5+zyiQDk6iUMnSUhnpB1xGaSaK/o9BTwkE6ScIqqDXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PBxmssn2OKSXWcr+k/5rrNQfoK8KXpoqd1TaaRKg0PA=;
 b=jd5+8VjUQvDFydKxtvsHvcgdE/4+g7ad97JMx0tlcPt8TFDNVmgCKiKHWDJqOjiTTAI1rvzRbZ72Y3W/tqaY6eG8CjZ9BwAFzM9FygViMP1HBfvibWDAgThKAuddKrKRGJf6aFFXAyzxobwjHaVCir92IkbNwzRoThZs3QcJpkY=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3624.namprd03.prod.outlook.com (52.135.213.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 10:44:04 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 10:44:04 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>
Subject: Re: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVWJwGDRorz/HiOUajlPa5ER0qaKcGu4YAgACzXwD//4bGgIAAAwYA
Date: Thu, 22 Aug 2019 10:44:03 +0000
Message-ID: <20190822183254.1bb5576d@xhacker.debian>
References: <20190822113421.52920377@xhacker.debian>
 <1566456155.27ojwy97ss.naveen@linux.ibm.com>
 <20190822173558.63de3fc4@xhacker.debian>
 <1566468150.x8u1577wgh.naveen@linux.ibm.com>
In-Reply-To: <1566468150.x8u1577wgh.naveen@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR06CA0041.apcprd06.prod.outlook.com
 (2603:1096:404:2e::29) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3e8b1e9-091b-4078-a527-08d726eda66e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB3624; 
x-ms-traffictypediagnostic: BYAPR03MB3624:
x-microsoft-antispam-prvs: <BYAPR03MB3624A58FE647EDC761C42A9BEDA50@BYAPR03MB3624.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(39850400004)(136003)(376002)(189003)(199004)(7736002)(26005)(386003)(6506007)(5660300002)(6916009)(86362001)(6436002)(6486002)(478600001)(53936002)(229853002)(4326008)(50226002)(54906003)(8936002)(52116002)(81166006)(8676002)(76176011)(2906002)(99286004)(81156014)(305945005)(25786009)(7416002)(102836004)(316002)(6246003)(476003)(14444005)(6116002)(11346002)(446003)(64756008)(66946007)(66476007)(486006)(256004)(66556008)(186003)(3846002)(66446008)(66066001)(1076003)(14454004)(6512007)(9686003)(71190400001)(71200400001)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3624;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cCdIEPXcWL/I/RaCRgBfDcedl/gErQmE8cgbu3UlsSLqd44O2YJAClmSzs6iksqjrw4hjo0LQHg+N1Lc/p8WjGlf2WILgLMqCIP67ggeGAKG57HngLD0PIKiXGpbWUWkHg0jzkM68iE6p09+HUf9Ss3w+FaNS3qp1CyWaM1vYUR8C2OOb0yA7ZCKqsukj5T8Q6xTk1LYvg5WLYXRvlf0g5jKqy2MEH7p9trbOldD6hkgmbJ7q5hwg13M+kwL3CLWlIvbOVatZDHRpZSKaNimtUjyllQVjr7qZFMBPNpQY3m/yEOqaIDaghnCfhFAifQT2VZ7v/Qr0QiE9VjVwYds98+CU/GKN8tSOgkiAlAj0x3JSNzDi4dla69pEyplcXiPjRoVZr3vi2b+sZDz42u5EpM2tjARDgymebfiDCSVOm0=
x-ms-exchange-transport-forked: True
Content-ID: <52D37053CF07584DA4A594C3BC219B1F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e8b1e9-091b-4078-a527-08d726eda66e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 10:44:03.9547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQ6hrPj454XE+NovC32VY3InAbwBh1VtPPr9pterPmeuhKdmgLWhpDDFOyPsld4BJITjjUNEDW3xJio9SBpcPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_034407_999411_FE21C791 
X-CRM114-Status: GOOD (  21.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.59 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 15:52:05 +0530
"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:

> 
> 
> Jisheng Zhang wrote:
> > Hi,
> >
> > On Thu, 22 Aug 2019 12:23:58 +0530
> > "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:  
> >> Jisheng Zhang wrote:  
> ...
> >> > +/* Ftrace callback handler for kprobes -- called under preepmt
> >> > disabed */
> >> > +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> >> > +                        struct ftrace_ops *ops, struct pt_regs *regs)
> >> > +{
> >> > +     struct kprobe *p;
> >> > +     struct kprobe_ctlblk *kcb;
> >> > +
> >> > +     /* Preempt is disabled by ftrace */
> >> > +     p = get_kprobe((kprobe_opcode_t *)ip);
> >> > +     if (unlikely(!p) || kprobe_disabled(p))
> >> > +             return;
> >> > +
> >> > +     kcb = get_kprobe_ctlblk();
> >> > +     if (kprobe_running()) {
> >> > +             kprobes_inc_nmissed_count(p);
> >> > +     } else {
> >> > +             unsigned long orig_ip = instruction_pointer(regs);
> >> > +             /* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
> >> > +             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));  
> >>
> >> Just want to make sure that you've confirmed that this is what happens
> >> with a regular trap/brk based kprobe on ARM64. The reason for setting
> >> the instruction pointer here is to ensure that it is set to the same
> >> value as would be set if there was a trap/brk instruction at the ftrace
> >> location. This ensures that the kprobe pre handler sees the same value
> >> regardless.  
> >
> > Due to the arm64's DYNAMIC_FTRACE_WITH_REGS implementation, the code itself
> > is correct. But this doesn't look like "there was a trap instruction at
> > the ftrace location".
> >
> > W/O KPROBE_ON_FTRACE:
> >
> > foo:
> > 00    insA
> > 04    insB
> > 08    insC
> >
> > kprobe's pre_handler() will see pc points to 00.  
> 
> In this case, the probe will be placed at foo+0x00, so pre_handler()
> seeing that address in pt_regs is correct behavior - as long as arm64
> 'brk' instruction causes an exception with the instruction pointer set

Yep, confirmed with regular trap/brk based kprobes, I do see PC set to
the "brk" instruction.

> *to* the 'brk' instruction. This is similar to how powerpc 'trap' works.
> However, x86 'int3' causes an exception *after* execution of the
> instruction.

Got it. I understand where's the comment "expects regs->pc = pc + 1" from.

> 
> >
> > W/ KPROBE_ON_FTRACE:
> >
> > foo:
> > 00    lr saver
> > 04    nop     // will be modified to ftrace call ins when KPROBE is armed
> > 08    insA
> > 0c    insB  
> 
> In this case, if user asks for a probe to be placed at 'foo', we will
> choose foo+0x04 and from that point on, the behavior should reflect that
> a kprobe was placed at foo+0x04. In particular, the pre_handler() should
> see foo+0x04 in pt_regs. The post_handler() would then see foo+0x08.
> 
> >
> > later, kprobe_ftrace_handler() will see pc points to 04, so pc + 4 will
> > point to 08 the same as the one w/o KPROBE_ON_FTRACE.  
> 
> I didn't mean to compare regular trap/brk based kprobes with
> KPROBES_ON_FTRACE. The only important aspect is that the handlers see
> consistent pt_regs in both cases, depending on where the kprobe was
> placed. Choosing a different address/offset to place a kprobe during its
> registration is an orthogonal aspect.

Indeed, previously, I want to let the PC point to the same instruction, it
seems I misunderstood the "consistent" meaning.

> 
> >
> > It seems I need to fix the comment.  
> 
> Given your explanation above, I think you can simply drop the first
> adjustment to the instruction pointer before the pre handler invocation.
> The rest of the code looks fine.
> 
> 

Yep, thanks a lot. Will send out a new version soon.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
