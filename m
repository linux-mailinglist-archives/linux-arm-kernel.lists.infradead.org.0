Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF88863EB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 02:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8q7JpC0YZnKH4Jgk3+ArqG4I6Bd4UlhlUjHk3QsZDfM=; b=uH7RB14OV+kSzK
	O6bJJVhvZuvD953ncdcJHETY4zRT3ql/U5TtyqJSQTg0796kUfSdtU2/OXHmSJ3mPSpGzsDEB+Sh4
	t4b/xNNg3CfuFx2+/P+XAZjMV+krUV8vP8SkGwXcp0WoQoW+dskZ+pxxaCsoBYv9Xdkk7FzeFk50h
	+CTuZo3slz1BCoujdY9NlsnZBKnHZ5OvfAxSkMLdEgiOUyHiI0RtAjto903ZjUZULTc/I9MVDt8q6
	0Znau4LVe7K725CrrK/NKH52UCcp9n+BaURjLXgM1QwBYaVTPvo85b9ggN/CulU4WNVdyahWvIXtY
	a2xQ6gyH3fTxjfhYrQgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl0q4-0001qw-EB; Wed, 10 Jul 2019 00:52:04 +0000
Received: from mail-eopbgr780125.outbound.protection.outlook.com
 ([40.107.78.125] helo=NAM03-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl0pq-0001qT-Ss
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 00:51:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/V8qq8PcUyUzN3oeR2AWvs2EVdqbpns6QTeyy8uaYE=;
 b=m4VommuXZD5Rp01D0G52i2O2rj7Mbg8qObWTHtYMilXfs0l6InlbGrVHzkrb6TT9taWVUD8FOOHtF1vN56M+mOw1y7wcOozl7hRxPq+Sb80FyYe+phWlytziopwMeMXU7GW08bfm8XqSDfqRKYX8sIeXdH60SJGOSd/VcbmCAhU=
Received: from BYAPR01MB3975.prod.exchangelabs.com (52.135.201.14) by
 BYAPR01MB4790.prod.exchangelabs.com (20.177.226.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Wed, 10 Jul 2019 00:51:47 +0000
Received: from BYAPR01MB3975.prod.exchangelabs.com
 ([fe80::a81b:f1e7:a31f:d464]) by BYAPR01MB3975.prod.exchangelabs.com
 ([fe80::a81b:f1e7:a31f:d464%6]) with mapi id 15.20.2052.020; Wed, 10 Jul 2019
 00:51:46 +0000
From: Tyler Baicar OS <baicar@os.amperecomputing.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register
 check to SEA handling
Thread-Topic: [PATCH RFC 2/4] arm64: mm: Add RAS extension system register
 check to SEA handling
Thread-Index: AQHVMPZvV84yhcAYOk+DNBn1Cdw2C6bAhfiAgAKLP64=
Date: Wed, 10 Jul 2019 00:51:46 +0000
Message-ID: <BYAPR01MB39754DFAF8130743448FDEC6E3F00@BYAPR01MB3975.prod.exchangelabs.com>
References: <1562086280-5351-1-git-send-email-baicar@os.amperecomputing.com>
 <1562086280-5351-3-git-send-email-baicar@os.amperecomputing.com>,
 <df262b97-eda2-0556-d6ef-532a0d697131@arm.com>
In-Reply-To: <df262b97-eda2-0556-d6ef-532a0d697131@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=baicar@os.amperecomputing.com; 
x-originating-ip: [107.15.51.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25ea764d-2bad-4627-5263-08d704d0c91b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR01MB4790; 
x-ms-traffictypediagnostic: BYAPR01MB4790:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR01MB4790376A84B638F1C85378B7E3F00@BYAPR01MB4790.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0094E3478A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39830400003)(346002)(376002)(366004)(396003)(189003)(199004)(8676002)(7736002)(54906003)(81166006)(25786009)(8936002)(14454004)(14444005)(486006)(478600001)(186003)(102836004)(81156014)(11346002)(4326008)(966005)(3846002)(305945005)(446003)(68736007)(53546011)(99286004)(76176011)(6916009)(6436002)(6246003)(476003)(26005)(2906002)(7696005)(256004)(6116002)(316002)(66946007)(74316002)(91956017)(86362001)(52536014)(64756008)(71200400001)(9686003)(71190400001)(76116006)(66476007)(66446008)(33656002)(66066001)(7416002)(55016002)(53936002)(229853002)(6506007)(6306002)(5660300002)(66556008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR01MB4790;
 H:BYAPR01MB3975.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: os.amperecomputing.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fuXocvV0pWjEYBY40KX1ca3xre+GTKWzh4K20ho3PAsOCf1w6at7aBxLrmQBp7S+HPzCVIQcHj5LeMYT6jyg9Ow2ohYr0Z6FPYF4EpSAd3LquHO526RPojFh2SisZKdpONGjabaPuVF5zgi0Kb29y9wrTZyfLjxleQmtPCu7J9RZAmb+cP0SDY32fihTDglAPRBZitSFgQcyUk/7Icwwf8KFD8w7eYJHLKp8vaiSUrdZStVP1jkKIux4PuM4OQfyHiG4QrRi3+s2NqlQD40KQYotqyj+XlFJLUWXhG3TYCJ85IYodm53TP/1GquvuScuLo683t4+RwH05HXDXuLscFJ8q2nXUpN6WcKB1DL926DtQpVokkQjFjiX3NSW3EwxT72YBG7Z7bYHWftDvZI215IOx44tKQPT2eEzvQppKuw=
MIME-Version: 1.0
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25ea764d-2bad-4627-5263-08d704d0c91b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2019 00:51:46.8664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Baicar@os.amperecomputing.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB4790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_175150_938707_8EE70BC2 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.78.125 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Matteo.Carlini@arm.com" <Matteo.Carlini@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "tony.luck@intel.com" <tony.luck@intel.com>, "bp@alien8.de" <bp@alien8.de>,
 "guohanjun@huawei.com" <guohanjun@huawei.com>,
 "Andrew.Murray@arm.com" <Andrew.Murray@arm.com>,
 Open Source Submission <patches@amperecomputing.com>,
 "lenb@kernel.org" <lenb@kernel.org>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 10:10 AM James Morse <james.morse@arm.com> wrote:
> On 02/07/2019 17:51, Tyler Baicar OS wrote:
> > On systems that support the ARM RAS extension, synchronous external
> > abort syndrome information could be captured in the core's RAS extension
> > system registers. So, when handling SEAs check the RAS system registers
> > for error syndrome information.
>
> > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > index 2d11501..76b42ca 100644
> > --- a/arch/arm64/mm/fault.c
> > +++ b/arch/arm64/mm/fault.c
> > @@ -37,6 +37,7 @@
> >  #include <asm/pgtable.h>
> >  #include <asm/tlbflush.h>
> >  #include <asm/traps.h>
> > +#include <asm/ras.h>
> > 
> >  struct fault_info {
> >       int     (*fn)(unsigned long addr, unsigned int esr,
> > @@ -632,6 +633,8 @@ static int do_sea(unsigned long addr, unsigned int esr, struct pt_regs *regs)
> > 
> >       inf = esr_to_fault_info(esr);
> > 
> > +     arch_arm_ras_report_error();
> > +
> >       /*
> >        * Return value ignored as we rely on signal merging.
> >        * Future patches will make this more robust.
> >
>
> If we interrupted a preemptible context, do_sea() is preemptible too... This means we
> can't know if we're still running on the same CPU as the one that took the external-abort.
> (until this series, it hasn't mattered).
>
> Fixing this means cramming something into entry.S's el1_da, as this may unmask interrupts
> before calling do_mem_abort(). But its going to be ugly because some of do_mem_abort()s
> ESR values need to be preemptible because they sleep, e.g. page-faults calling
> handle_mm_fault().
> For do_sea(), do_exit() will 'fix' the preempt count if we kill the thread, but if we
> don't, it still needs to be balanced. Doing all this in assembly is going to be unreadable!
>
> Mark Rutland has a series to move the entry assembly into C [0]. Based on that that it
> should be possible for the new el1_abort() to spot a Synchronous-External-Abort ESR, and
> wrap the do_mem_abort() with preempt enable/disable, before inheriting the flags. (which
> for synchronous exceptions, I think we should always do)
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git/log/?h=arm64/entry-deasm

Hey James,

Good catch! I didn't think the synchronous route was preemptible.

I wasn't seeing this issue when testing this on emulation, but I was able to
test and prove the issue on a Neoverse N1 SDP:

root@genericarmv8:~# echo 0x100000000 > /proc/cached_read
[   42.985622] Reading from address 0x100000000
[   42.989893] WARNING: CPU: 0 PID: 2812 at /home/tyler/neoverse/arm-reference-
platforms/linux/arch/arm64/kernel/cpufeature.c:1940 this_cpu_has_cap+0x68/0x78
[..]
[   43.119083] Call trace:
[   43.121515]  this_cpu_has_cap+0x68/0x78
[   43.125338]  do_sea+0x34/0x70
[   43.128292]  do_mem_abort+0x3c/0x98
[   43.131765]  el1_da+0x20/0x94
[   43.134722]  cached_read+0x30/0x68
[   43.138112]  simple_attr_write+0xbc/0x128
[   43.142109]  proc_reg_write+0x60/0xa8
[   43.145757]  __vfs_write+0x18/0x40
[   43.149145]  vfs_write+0xa4/0x1b8
[   43.152445]  ksys_write+0x64/0xe0
[   43.155746]  __arm64_sys_write+0x14/0x20
[   43.159654]  el0_svc_common.constprop.0+0xa8/0x100
[   43.164430]  el0_svc_handler+0x28/0x78
[   43.168165]  el0_svc+0x8/0xc
[   43.171031] ---[ end trace 2c27619659261a1d ]---
[   43.175647] Internal error: synchronous external abort: 96000410 [#1]
PREEMPT SMP
[..]

That warning is because it's preemptible:

if (!WARN_ON(preemptible()) && n < ARM64_NCAPS) {

I'll pull Mark's series in and add the preempt enable/disable around the call
to do_mem_abort() in el1_abort() and test that out!

Thanks,
Tyler
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
