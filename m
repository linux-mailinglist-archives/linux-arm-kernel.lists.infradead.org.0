Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8366612A6D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 10:01:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjJ1Pq/CdoF8zATJ98Uy+HdVcbg+zETccjvU7Y7XUsI=; b=ftUiJoEi7ANias
	iMv6ZE8ERdhpCvwuGWKVyLEtFDQ34NDLzJ8IopU4Q55J4KpILTWtSjhTYyMV9FN/i9s/V4ogxAiEB
	F4yPLoHlh+SEl7EmVFgxN55Qeag0afKsB2Z3czp+yeKVLMA4g4J/nTPYMY8xY5FEpIM8r8+ZP5vui
	0IUh2SencTu6zS0OYiPYkDWm7SEvYQemmJHsJ2mRTTxGgHkPst3OH90eQY7d43nxrNLSvJUO84jFX
	8fR7qRlNb8AMsKOuD6W6xPC1MLUv3JWATA53cqviFAHnqbXSp5OG5UyXSajgc4kGYic2RDhaL3rw0
	eCL3hOurWfavdEDVqlAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik2Xi-0007Kv-Lj; Wed, 25 Dec 2019 09:01:22 +0000
Received: from mail-eopbgr770083.outbound.protection.outlook.com
 ([40.107.77.83] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik2XX-0007KY-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 09:01:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3zxawMjH5WUMAWk4rOK77/AgMzNVY3UtomXXL6kHRFCe2HMADr4aj2oJUzuKW9pZvZj0xqPyIOYpQ6kbJy0bcKUYL+DJ7GdwOLSUYYBttmHvnTtZ5t7ZoGoH+DxXp4Zntox2W5gPkGJS8cK3g0KYkBP2UahLa4Hgh8nG4fYdw2FsYMukmavPvYgj7z1SbtgsgV5HVZPekxi/4mxGR7ea5wgmsvxOMnnvOmeogxWgq35IxdAYtYwybmV3FXYqw+rntFe2KlNsia7HvF7iZdAnBx/hhtmwIHIIffDOJ44F4xfD61qPamzODlcuN5lFGOmpnuVCwkmZspKk73e/Rin/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIecDeN/1pWOYcMjD0Ti9hcdfLByd5i2Vb3hLaDsifM=;
 b=Qa14SQyxchx0Sr/UnksOPm67gb69hYBqZGDmzpm3YvdQcvGcHW8sxY9qZogbzrXthJGsjvrrL11Z96ghQd/ZVsXUsHMi6TVIaAyt9zg7d/6CDhSojIsMbeeT2/1ZD/7RJ+w0sDjFxuGIEYzMdQZCTcF272dJUF8oWEO6MHL6p8BEO1FTS0BxBfKZ9UlOJRJFR7WCVsY3fwa7o3wMG2oWJhxSAntUSsDJCeXDFHatFKzV59Pah4o8T+BgrwFGlBkNFV4W3wrRuEBM1/yIl5pPx0RHEE0/ehYuWti1RYS/1JB++dhW7BfsiG01Abv+ds0rYJXOxoHSP1GkVH3jCMYLjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fIecDeN/1pWOYcMjD0Ti9hcdfLByd5i2Vb3hLaDsifM=;
 b=DD4rNfM4uMyJEfF4S+yx6coigPu42cB9/LdWq6eUxVLCCovPhvJQv+/j+21G0oMg/0RRS9bcXN4HD4NRwlZZrs0s8uUNpBYHG63VkVDBPxUt41EAkyMI4Ksc1616C6C4EkmPq3kMeGM0IqKX3hwWdbsOjK6r7MkjuoiHGJvgV4g=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.93.213) by
 BYAPR03MB4278.namprd03.prod.outlook.com (20.177.127.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.17; Wed, 25 Dec 2019 09:01:06 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::708d:91cc:79a7:9b9a%6]) with mapi id 15.20.2559.017; Wed, 25 Dec 2019
 09:01:06 +0000
Received: from xhacker.debian (124.74.246.114) by
 TY2PR01CA0028.jpnprd01.prod.outlook.com (2603:1096:404:ce::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Wed, 25 Dec 2019 09:01:03 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v6] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVtWtmR90OKS0v9Um1jpVbBvlnOKe/4n0AgAd5EwCAAb3+AIABe0eA
Date: Wed, 25 Dec 2019 09:01:06 +0000
Message-ID: <20191225164605.559f4dbb@xhacker.debian>
References: <20191218140622.57bbaca5@xhacker.debian>
 <20191218222550.51f0b681de7bbab7e49b09a9@kernel.org>
 <20191223153300.30281a93@xhacker.debian>
 <20191224190916.2e47478445fb179e88f60cc3@kernel.org>
In-Reply-To: <20191224190916.2e47478445fb179e88f60cc3@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY2PR01CA0028.jpnprd01.prod.outlook.com
 (2603:1096:404:ce::16) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:139::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3190c22f-5e51-4595-9ff9-08d78918f9bf
x-ms-traffictypediagnostic: BYAPR03MB4278:
x-microsoft-antispam-prvs: <BYAPR03MB42786C688987A901EC0F7F25ED280@BYAPR03MB4278.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02622CEF0A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(396003)(39850400004)(136003)(189003)(199004)(16526019)(316002)(7696005)(8936002)(6916009)(8676002)(81166006)(81156014)(4326008)(2906002)(52116002)(966005)(26005)(478600001)(186003)(6506007)(1076003)(71200400001)(86362001)(7416002)(66476007)(54906003)(66556008)(64756008)(66946007)(66446008)(956004)(5660300002)(55016002)(9686003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4278;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MCw5fNyw2XrMJdMFiNRXKqbOSyU2XQDo31OaBjTD9R8lRMHirl3mWJeeyXshvImx+bOXiRNhwwb05xLpAZFM0fxYh7zBB49yN1YMwmgSDlHtV9i9g1SDmADgZnIsHd8t7EZD6rUVWCoSt5B0oAqUKZPJNRwacytmNJXghbyT3KVzcH8phqmKD0/P+P+pXYy8YluXJ5Maw0HymXL4L6XFZwudpdAeTpddRXpcQ7FXxrkXhRL4ETfS/5Jec6hn7/eIoOu1hpi+yWD8om2OsOznqTEb4yp0WYXIcrF30THFM5QbY2upwr9z4OukFrkn7OdYFs4LdM77efFIY0226JQ28ptWsqRoTB5XREWiQKTsALVuon7CO0LbWTjS4vWFhhjXmUyE2zOd29gUH4bqKu/JP/PLsCZp48vsnIWBK0IlHt5OXx5I5deyxW5CBtETzkTB/A9echxXlFbxmO2DQYceQi2Vq0ZCSXzxP6KDJH0R7pYG4xL6QUuA77Qs0uTSpLm96IXX2DgVCyYjDoQ7qSVV7n+dfLLSEqLSDyRROtwT5Kg=
x-ms-exchange-transport-forked: True
Content-ID: <61DF09A3DC40AB469F1A241979E79A4C@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3190c22f-5e51-4595-9ff9-08d78918f9bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Dec 2019 09:01:06.1678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rAxMDH+oyLe/tLmWQhFMva7yIrmANLaEpD0c9qjsYDqyk6pJEQf+mdj9t7PNnZtO9hAv7UDlV7Gh7SpYyTHNtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4278
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_010111_369076_790FCA11 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "naveen.n.rao@linux.vnet.ibm.com" <naveen.n.rao@linux.vnet.ibm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 24 Dec 2019 19:09:16 +0900 Masami Hiramatsu wrote:

> 
> Hi Jisheng,
> 
> On Mon, 23 Dec 2019 07:47:24 +0000
> Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> 
> > Hi Masami,
> >
> > On Wed, 18 Dec 2019 22:25:50 +0900 Masami Hiramatsu wrote:
> >
> >  
> > >
> > >
> > > On Wed, 18 Dec 2019 06:21:35 +0000
> > > Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:
> > >  
> > > > KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> > > > eliminates the need for a trap, as well as the need to emulate or
> > > > single-step instructions.
> > > >
> > > > Tested on berlin arm64 platform.
> > > >
> > > > ~ # mount -t debugfs debugfs /sys/kernel/debug/
> > > > ~ # cd /sys/kernel/debug/
> > > > /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> > > >
> > > > before the patch:
> > > >
> > > > /sys/kernel/debug # cat kprobes/list
> > > > ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> > > >
> > > > after the patch:
> > > >
> > > > /sys/kernel/debug # cat kprobes/list
> > > > ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]  
> > >
> > > BTW, it seems this automatically changes the offset without
> > > user's intention or any warnings. How would you manage if the user
> > > pass a new probe on _do_fork+0x4?  
> >
> > In current implementation, two probes at the same address _do_fork+0x4  
> 
> OK, that is my point.
> 
> > > IOW, it is still the question who really wants to probe on
> > > the _do_fork+"0", if kprobes modifies it automatically,
> > > no one can do that anymore.
> > > This can be happen if the user want to record LR or SP value
> > > at the function call for debug. If kprobe always modifies it,
> > > we will lose the way to do it.  
> >
> > arm64's DYNAMIC_FTRACE_WITH_REGS implementation makes use of GCC
> > -fpatchable-function-entry=2 option to insert two nops. When the function
> > is traced, the first nop will be modified to the LR saver, then the
> > second nop to "bl <ftrace-entry>", commit 3b23e4991fb6("
> > arm64: implement ftrace with regs") explains the mechanism.  
> 
> So both of the instruction at func+0 and func+4 are replaced.
> 
> > So on arm64(in fact any arch makes use of -fpatchable-function-entry will
> > behave similarly), when DYNAMIC_FTRACE_WITH_REGS is enabled, the ftrace location
> > is always on the first 4 bytes offset.
> >
> > I think when users want to register a kprobe on _do_fork+0, what he really want
> > is to kprobe on the patched(by -fpatchable-function-entry)_do_fork+4  
> 
> OK, in this case, kprobe should treat the first 2 instructions as a
> single virtual instruction. This means,
> 
>  - kprobes can probe func+0, but not func+4 if the function is ftraced.
>     (-EILSEQ must be returned)
>  - both debugfs/kprobes/list and tracefs/kprobe_events should show the
>    probed address as func+0. Not func+4.
> 
> Then, user can use kprobes as if there is one big (8-byte) instruction
> at the entry of the function. Since probing on func+4 is rejected and
> the call-site LR/SP is restored in ftrace, there should be no
> contradiction. It should work as if we put a breakpoint on the func + 0.

From https://lkml.org/lkml/2019/6/18/648, Naveen tried to allow probing on
any ftrace address, is it acceptable on arm64 as well? I will post patches
for this purpose.

Thanks for your review

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
