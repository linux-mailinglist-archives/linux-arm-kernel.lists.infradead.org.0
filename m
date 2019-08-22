Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2582F98FF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 11:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ldm1jghh2wr3qFbBG7PHKVeauJUFiQZwEWIL4P/NR4=; b=gbjTEBfyFubaDC
	Z0v7w+KqHQbaLSphSfMaM8nC9KF+O6K1PNPMNet32R0QZaJfXidnQjuJxKmTY5Tz5ICtr2DB8VRXj
	aMpJaIa+Vs2dsJNym3mws5xIWPoBZX4shXGo+7Mq73LQ96lsq6IR1IIqsEe1gcUQ8xOjvu82+whIL
	9P0dyjqMZSTtIuExgG3byvp6yEijVkSM9wHJ8LCahvLQ6H256HOzj41ssoOX2eVvuvqZbZaQPGKIA
	4fml6m6tFLInyd2hng5sfJ44D22GeXidVip3lUEATKTB/9r+9Yvh7/75Fu5J+plMgVun2t/HoJOd2
	nXcTf6tKQdKPbQJGz4Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0jgn-0000Ti-BJ; Thu, 22 Aug 2019 09:47:29 +0000
Received: from mail-eopbgr680048.outbound.protection.outlook.com
 ([40.107.68.48] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0jga-0000TN-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 09:47:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BRzZsvojYJEzn8t+CEn5CxOkNKZ8LjKVVxHBwRUFf242ZIzRJo/h0XJuzCVkf/1BKaOAz1M7KY1KXA083xChuomhEti2eFvA9tZUC2UtTGBQCekWi97kVIvZfkHdrLpfDEZjaA8zS7oNT+KSXxlg4SDkh61CEwmb7xytwhQUxUlSIPxW5ljI+CehizTgLf0kpz+FwC4Up8W+HakqzELBM4KrBO/qQRvy6vchBE8YyXreACvk5wfSZkDImtvE7SmJ3KGROwgBruZY9WqPJOSg5TzonVJkUX0EenRLeohM14/6hrYiLXlZxoerzfrJHO01tE5IRO5eVBWPMzKAXCOgww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iuJB/D9ZAYIC4/U+5sFDlnKf5jFkhlANnyJd94ODdTk=;
 b=QnCdQA2H0PTTXWU6ApcEWCEGndBd5KpfXstX8fGgHyEiEN4ox6jDpK0RLRaDAdEh0X0avG6fLZwVYQ4IQk8IKMYwSv8D7qqTmPTVDEEUlSXWJJgOUXl6TSOKpC2oxJ+XwqZxz5FPcIJZFBUu0NkBcZF1TZs4aVqhZzxRSIYVIzOmmxOrMIjhK0KWDDCQ+rHsl3RWaCzYa/k4lAcri/4xf/hHPwRC9IVBBXMqZz4Tvyp05oOnMpqOVWM76kvy7mfLY79A/dWp4w4p8soCGo1N7f0QMvp/LT8O/4KiKU8r23rl48SmqtDn+zu6MbpUl/iBV+Ak8QDq/gJHRhGsQpN1tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iuJB/D9ZAYIC4/U+5sFDlnKf5jFkhlANnyJd94ODdTk=;
 b=kgIIwDBioO3eIZVV20lcuSHjZ8h93L4BmJrRr/2aYrJDOcQudSjhK7OqOVck94GRdFbKLVv5CscINFHgvhiCb5G/NpuAXLfvDctLTwZcX5wVk3bKCXMR+PhlN8oIIWoFqd2UGJbIAggmSeSthSU9OwIv4WSZlkIhrBdxnrilC0Q=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB3606.namprd03.prod.outlook.com (52.135.213.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Thu, 22 Aug 2019 09:47:13 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2178.020; Thu, 22 Aug 2019
 09:47:13 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>
Subject: Re: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v4] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVWJwGDRorz/HiOUajlPa5ER0qaKcGu4YAgAAtQwA=
Date: Thu, 22 Aug 2019 09:47:13 +0000
Message-ID: <20190822173558.63de3fc4@xhacker.debian>
References: <20190822113421.52920377@xhacker.debian>
 <1566456155.27ojwy97ss.naveen@linux.ibm.com>
In-Reply-To: <1566456155.27ojwy97ss.naveen@linux.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0162.jpnprd01.prod.outlook.com (2603:1096:402::14)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c86dcc4b-a5c5-4285-68ac-08d726e5b5b1
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:BYAPR03MB3606; 
x-ms-traffictypediagnostic: BYAPR03MB3606:
x-microsoft-antispam-prvs: <BYAPR03MB36062B8D1A079519B6A4C197EDA50@BYAPR03MB3606.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01371B902F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(346002)(366004)(136003)(396003)(376002)(189003)(199004)(478600001)(14454004)(50226002)(7416002)(3846002)(6116002)(446003)(26005)(4326008)(186003)(25786009)(66446008)(66476007)(64756008)(66556008)(52116002)(66946007)(305945005)(6916009)(6246003)(53936002)(7736002)(102836004)(11346002)(486006)(229853002)(99286004)(386003)(6506007)(476003)(316002)(2906002)(71190400001)(1076003)(5660300002)(14444005)(256004)(86362001)(6436002)(76176011)(8936002)(6486002)(6512007)(81156014)(8676002)(54906003)(9686003)(66066001)(71200400001)(81166006)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB3606;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zGFL02ylg/+6vR4i9eNdVgXqglW/BIazKBhUfaMMdOSgWj8qVy9fNpvAGWBoUcpxG8oerVsS9MhPulojauKXtJLBMzGGcvst7p9txzVcBogFm3xXCJT/R0pn3UT9DJLbAh3dMxbogRk8OJdLhIWexi92ljStuBMqvCePZ9OKyfeZfOzbAEQc4YjV9VimaG9hCdcdepjtUODWPOhlxFqaySLPtZ1WMUQ3NOSv7MeeELklbHtaDA1n/gFXqluAAezefWeS03Jbw2+J26YKEuPJxu2BGyMvXKgq/F53tF7fsro2ko93HjTdWA9DHaE9XQEfZcahYrmL0t8c3G9i0zQPQJY2OFyyy+n6iLmp4kTpovrZYGFXI/nOszWt94HAYAbydLuhv85EHCfVyV/6TETPSGzx4WarVsQCK+nrhGEkYh4=
x-ms-exchange-transport-forked: True
Content-ID: <D08A975643B7AC41B1D6B870A7F5FB7F@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c86dcc4b-a5c5-4285-68ac-08d726e5b5b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 09:47:13.6052 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yp5GDMiuRrrS/I+HNgk5dsoW/+ONKEWylN1dgay/RVs1F1n/azXaBXOWCjVh8s7bGJo/bFl7m9oJsU2Dcnn65A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB3606
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_024716_666727_7B893E68 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.48 listed in list.dnswl.org]
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

On Thu, 22 Aug 2019 12:23:58 +0530
"Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com> wrote:


> 
> 
> Jisheng Zhang wrote:
> > KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> > eliminates the need for a trap, as well as the need to emulate or
> > single-step instructions.
> >
> > Tested on berlin arm64 platform.
> >
> > ~ # mount -t debugfs debugfs /sys/kernel/debug/
> > ~ # cd /sys/kernel/debug/
> > /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> >
> > before the patch:
> >
> > /sys/kernel/debug # cat kprobes/list
> > ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> >
> > after the patch:
> >
> > /sys/kernel/debug # cat kprobes/list
> > ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]
> >
> > Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>  
> 
> This looks good to me. Except for a small confirmation below:
> Reviewed-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> 
> 

<...>

> > +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> > +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> > +                        struct ftrace_ops *ops, struct pt_regs *regs)
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
> > +             /* Kprobe handler expects regs->pc = pc + 4 as breakpoint hit */
> > +             instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));  
> 
> Just want to make sure that you've confirmed that this is what happens
> with a regular trap/brk based kprobe on ARM64. The reason for setting
> the instruction pointer here is to ensure that it is set to the same
> value as would be set if there was a trap/brk instruction at the ftrace
> location. This ensures that the kprobe pre handler sees the same value
> regardless.

Due to the arm64's DYNAMIC_FTRACE_WITH_REGS implementation, the code itself
is correct. But this doesn't look like "there was a trap instruction at
the ftrace location".

W/O KPROBE_ON_FTRACE:

foo:
00	insA
04	insB
08	insC

kprobe's pre_handler() will see pc points to 00.

W/ KPROBE_ON_FTRACE:

foo:
00	lr saver
04	nop     // will be modified to ftrace call ins when KPROBE is armed
08	insA
0c	insB

later, kprobe_ftrace_handler() will see pc points to 04, so pc + 4 will
point to 08 the same as the one w/o KPROBE_ON_FTRACE.

It seems I need to fix the comment.

> 
> Further changes to the instruction pointer are to achieve the same
> effect for kprobe post handlers.
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
