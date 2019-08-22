Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6DB991F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 13:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN0mffpGPC1dG4+vz6LNlz/A08ojdatPysnx6A0ZFMA=; b=h4GEIYcCjJWIYr
	5ZjiK1pKX4tw4lvBhlBgJidP7yd8EAVbv6mUl0zZFhdPQzk6OVH3O2VDBJZaM6siSuXlrJ6UFCVt+
	0uVg7OgB/9++qMTTz4POWYNV4dvCrrMooMORb7lAfzwSlHnwjvHZSwGQVBbl6YHbC0vCiFDe+UN46
	M9nxqEhLd4aqQyP/9RRYFqhbKF4jQXkrnGFyaeN3I1x6jdx/Rm+6CAVxzfK4AI1mnNBLDC+OPfjL+
	cJs5U2ncq7OQUAilduXi5lvrJBPYl9/8PZ6MhAjVqPXpIXvizxEV1kKrvPZ3VOnm8ljafEcsYb/9H
	mWtvSj7Ujyo6tfmJgyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0l90-0001ny-Im; Thu, 22 Aug 2019 11:20:43 +0000
Received: from mail-co1nam03on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe48::62c]
 helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0l8l-0001n6-Gm
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 11:20:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSie2yFhrKxsQBS82un72NyjFtjsfTXQLDw7BJCUOxB53AbuXPtG6XJVmMGdieiZHLlLgF5RsHkhcX0hLsjmWsP0Mgow7RaXZn1N3yVSnftpGJ9WUVL0TI1rD9W/v4XYef5+UAAYfKr8o4qfwa8couVhSTRqg5lHbqfqwOr03IdrAlCd2taV//+m0pO6pL8IQRrLeVNMc9zVZpwYRtiTqGitQEYTzguNRR6Mx42CTLQqX61RS1Sh89HPsc2REb0T2UqrOi8bkRU9eSbD4668+YpNWUQOGf3CvD2W0LCPBZILUXaMlCYQan5s8aSRGB1ljujxZcHG3zPd+vb+TM0VwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SbThQbwCwAYLzzSN79xzBe2aE4WPn9IHTeZqK5S7LpY=;
 b=D4WFA7q3SM6Wryip8GLcvr6yq/XvgjyHbuQP44OFYNHDnRgZWGm6hunvsl50nEmMfrn82yrIakEeVAR3YSVY+GDT0vnpAxPxQgl182qiyopD6QXLV0yjy85zbfmG8soY3Obnno592DNXb8RzI3nlVKKKb8vgxyAT3vbCue/sXWNYWO2xRPutip2hONbjIfY1S4kkp+yKaDw0X6xLgkBgfYNNreJZs2So7yCaYNopuPP9CldyBKByBiHxZSlhcwktY5oV4CjUj75UGXsnJrqyaD+IQPdTSiS3WYQ/wpR5hpOhKQ51ifcVArtSCXlsKlvoF4UyECgljSUnjTMwjawZ/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SbThQbwCwAYLzzSN79xzBe2aE4WPn9IHTeZqK5S7LpY=;
 b=VHLAcuJGPqloTFeGnBz0ZhkpPlgO1C8NbS7YoMNUXNeUy4srl/+58lmOMd/rCpHOR2Egu562xFcIkd4/yKE1Wazuu9w4OdnuNO8UeusBxcOb/S7xy81ZXhqmyKIUwZCUmczujCSmmFVHwPYVwnQ4BJG1tsiCpezjZmtq3S2tiyY=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4055.namprd03.prod.outlook.com (20.177.127.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Thu, 22 Aug 2019 11:20:23 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 11:20:23 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>
Subject: Re: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVWJwGDRorz/HiOUajlPa5ER0qaKcGu4YAgACzXwD//4bGgIAAiSIA//+EBAA=
Date: Thu, 22 Aug 2019 11:20:23 +0000
Message-ID: <20190822190908.4077b309@xhacker.debian>
References: <20190822113421.52920377@xhacker.debian>
 <1566456155.27ojwy97ss.naveen@linux.ibm.com>
 <20190822173558.63de3fc4@xhacker.debian>
 <1566468150.x8u1577wgh.naveen@linux.ibm.com>
 <20190822183254.1bb5576d@xhacker.debian>
In-Reply-To: <20190822183254.1bb5576d@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0175.jpnprd01.prod.outlook.com (2603:1096:402::27)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a4dc030-9e59-4524-276e-08d726f2b9c1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB4055; 
x-ms-traffictypediagnostic: BYAPR03MB4055:
x-microsoft-antispam-prvs: <BYAPR03MB4055001EE3149AC684AD1BAFEDA50@BYAPR03MB4055.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(396003)(39850400004)(199004)(189003)(66446008)(1076003)(6506007)(25786009)(476003)(8676002)(71200400001)(71190400001)(486006)(81156014)(2906002)(229853002)(66066001)(11346002)(6246003)(66946007)(4326008)(66556008)(3846002)(6116002)(5660300002)(446003)(256004)(6916009)(50226002)(7416002)(86362001)(316002)(6436002)(186003)(66476007)(54906003)(6486002)(14454004)(478600001)(99286004)(76176011)(386003)(8936002)(64756008)(26005)(9686003)(7736002)(102836004)(14444005)(81166006)(6512007)(52116002)(53936002)(305945005)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4055;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 01MPfUdq0be+0+VtMu1OnxL7wFuTBsKMhKxU7OFwQ02p630kS1k4u73SDh83TIsVsV/xGwcqRYbf6Gm4ap8lfQIH5WFmyrwYuG9cL8pql/04rKFqp3v0Kauyx1Td4apbGRTb9jWobbbRVcbY3nCZUI9eK46zrOa79fyXI8FtRISvKehy3f897D9AlkSm8+usIF6bxCVFmVNniU0uh40aXtA1ul6jG28zgYJBTKB0IN/U1mEK30wuJ1rIrR94IgzgKBqcvwRKIOnmqldf1t30E7Hj97Jffo++5AVZJtuIoFVtmTCB1Py2GeSbNYmqP8s0KKcSFi+LweMjcI4K8z3LgQ6ZuRlA7RfcSDkVE1N2vCc0ZW+mmsTu5xJy98omE/dSIoLFrVy8eviSljVX7j7SqN6AUO76pw2NSnsWCGQ//eg=
x-ms-exchange-transport-forked: True
Content-ID: <43A80990B83F7F4A8A9E3E713F4FE368@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a4dc030-9e59-4524-276e-08d726f2b9c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 11:20:23.9107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwLbMzQYeOyNBUzUf+HNif5KGaWFvbRfRCTEnIiiPC2k2fPwiJH3g+ZOCZVhQr1HzSXv6tbP2VbrDne/70jBEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_042027_560591_B508EB51 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi,

On Thu, 22 Aug 2019 18:32:54 +0800
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> On Thu, 22 Aug 2019 15:52:05 +0530
> "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:
> 
> > 
> > 
> > Jisheng Zhang wrote:  
> > > Hi,
> > >
> > > On Thu, 22 Aug 2019 12:23:58 +0530
> > > "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:    
> > >> Jisheng Zhang wrote:    
> > ...  
> > >> > +/* Ftrace callback handler for kprobes -- called under preepmt
> > >> > disabed */
> > >> > +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> > >> > +                        struct ftrace_ops *ops, struct pt_regs *regs)
> > >> > +{
> > >> > +     struct kprobe *p;
> > >> > +     struct kprobe_ctlblk *kcb;
> > >> > +
> > >> > +     /* Preempt is disabled by ftrace */
> > >> > +     p = get_kprobe((kprobe_opcode_t *)ip);
> > >> > +     if (unlikely(!p) || kprobe_disabled(p))
> > >> > +             return;
> > >> > +
> > >> > +     kcb = get_kprobe_ctlblk();
> > >> > +     if (kprobe_running()) {
> > >> > +             kprobes_inc_nmissed_count(p);
> > >> > +     } else {
> > >> > +             unsigned long orig_ip = instruction_pointer(regs);
> > >> > +             /* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
> > >> > +             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));    
> > >>
> > >> Just want to make sure that you've confirmed that this is what happens
> > >> with a regular trap/brk based kprobe on ARM64. The reason for setting
> > >> the instruction pointer here is to ensure that it is set to the same
> > >> value as would be set if there was a trap/brk instruction at the ftrace
> > >> location. This ensures that the kprobe pre handler sees the same value
> > >> regardless.    
> > >
> > > Due to the arm64's DYNAMIC_FTRACE_WITH_REGS implementation, the code itself
> > > is correct. But this doesn't look like "there was a trap instruction at
> > > the ftrace location".
> > >
> > > W/O KPROBE_ON_FTRACE:
> > >
> > > foo:
> > > 00    insA
> > > 04    insB
> > > 08    insC
> > >
> > > kprobe's pre_handler() will see pc points to 00.    
> > 
> > In this case, the probe will be placed at foo+0x00, so pre_handler()
> > seeing that address in pt_regs is correct behavior - as long as arm64
> > 'brk' instruction causes an exception with the instruction pointer set  
> 
> Yep, confirmed with regular trap/brk based kprobes, I do see PC set to
> the "brk" instruction.
> 
> > *to* the 'brk' instruction. This is similar to how powerpc 'trap' works.
> > However, x86 'int3' causes an exception *after* execution of the
> > instruction.  
> 
> Got it. I understand where's the comment "expects regs->pc = pc + 1" from.
> 
> >   
> > >
> > > W/ KPROBE_ON_FTRACE:
> > >
> > > foo:
> > > 00    lr saver
> > > 04    nop     // will be modified to ftrace call ins when KPROBE is armed
> > > 08    insA
> > > 0c    insB    
> > 
> > In this case, if user asks for a probe to be placed at 'foo', we will
> > choose foo+0x04 and from that point on, the behavior should reflect that
> > a kprobe was placed at foo+0x04. In particular, the pre_handler() should
> > see foo+0x04 in pt_regs. The post_handler() would then see foo+0x08.
> >   
> > >
> > > later, kprobe_ftrace_handler() will see pc points to 04, so pc + 4 will
> > > point to 08 the same as the one w/o KPROBE_ON_FTRACE.    
> > 
> > I didn't mean to compare regular trap/brk based kprobes with
> > KPROBES_ON_FTRACE. The only important aspect is that the handlers see
> > consistent pt_regs in both cases, depending on where the kprobe was
> > placed. Choosing a different address/offset to place a kprobe during its
> > registration is an orthogonal aspect.  
> 
> Indeed, previously, I want to let the PC point to the same instruction, it
> seems I misunderstood the "consistent" meaning.
> 
> >   
> > >
> > > It seems I need to fix the comment.    
> > 
> > Given your explanation above, I think you can simply drop the first
> > adjustment to the instruction pointer before the pre handler invocation.

Just send out v5. But the first adjustment is modified as
instruction_pointer_set(regs, ip);

Because in entry of kprobe_ftrace_handler() pc/ip(the first parameter) points
to foo+0x4, while regs->pc points to foo+0x8. Based on your previous
explanation, I think we should instruction_pointer_set(regs, ip) to let the
pre_handler see foo+0x4

Thanks a lot for your help

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
