Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F789581F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 09:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WV3IeM325o96PuFcA1A6VkYaab4rtsr3DqSSV+w7Nko=; b=XLtnzoXIL2GzOP
	wELSLU2Co7vB5XeRKtaxbVWeigOGAZbcTgTRFY3/XihRpCbNR0CKyFl4BCn92Nubz5H4U27gPxXoH
	CqxHN2dzq/t4QOwYVwdmp+VPJhZ60UNEnRDxbUpVPLuLoihMoiGiJDue5zax0uyfz6WEbRJUQXjRO
	+LK5VVKYPembLFlzbMg6pMPv4SxSF9hOYjDb85en8mhh2RiWf64ZnoGD4/x9JYlblqzEdGtqcRAtk
	auT6IL4pKuNNrosXkpSl3RtVdZXqJw9BQl05ggnBpNodS6PM5yuFUUXHnC36U2OHJmFU32o0eWsgJ
	HOatekiaW8iTHCf/t1pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzyPC-0002n7-Dh; Tue, 20 Aug 2019 07:18:10 +0000
Received: from mail-eopbgr770078.outbound.protection.outlook.com
 ([40.107.77.78] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzyOy-0002mi-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 07:17:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9HCbh4nCM3U15oI9PiJA1YBdJI6WUF56MZfZHlz5do9cokpdtDm633aL0TVEwz0uKocyG4I/8iCp0dxnHZpMLw5SBTgA8hTNDrIpgY1YZMA3/fyadEje5aZH7kFHdyT8oD5pD9z3quiLjKBEo99VBUZ6zq4sHx3UAJRmpub1MK7Y5ILUB4UB/m8RGLam4YzfCl1irkti1isb/YrksgBH2OdY84HmhZC2UWbzf08mxUP59K9qc+IJUEAdM1pOKhYcr+mPgy+VI6HEvPtZ6XdgZz42PfGyGU8q6LsZg0kx1s1+GTrEiDI4LRfMbtcMdtpGFm/0+tCn0bo8IJ26FEWVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUIFyNo8RtxWtNODWPrIq8DH/ZNyE7aAtboMiJXAXBc=;
 b=Em2Lqrnj7OQayzFxUsJNLVpqHF98mWZcsJIDJQ8Grnob1xvMqb76UGmNRAnHVPg0oxYTygdh6zJldAEF9uyQvOZPGkias3uegADoVUbztxsK1mS1+vCkhNbTJSAGbX+XvM3DpV6dVzp6Mf4sYs5Qh7YYTMK8apBi1R/GhJlCYMW5OuKmZmOqjYchw8aM6eo/9GtVyHFWS3VV/SXoDj5aHMgHyqugRLekOSMnyygBSn4IxYIOBde+iCvzTOZqVbwJ1bR41QfeRMwZnH7PhZuQekdpsHv2iXgyWbba1HrBZ+NFEfr2l5tnc2EWtS+oI5jFkSzsVy3euooCpjfedqC74A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUIFyNo8RtxWtNODWPrIq8DH/ZNyE7aAtboMiJXAXBc=;
 b=Owwe2nWazd4a/ToPIdCRjRKT7h+2zjM6RlPQyXk4XNdMVBtoc8qosZD+dU9hqfY3X3t+PQaeg37/l5i2Oj67woXgGQtUWgUwP04U9fCpXtJP78Q3MrNQmYWfPG0Dgyb2Yk/5fZPtL+jy2YZnfgl7pT+SMZ/bKDUAyIQ/9sNbmGI=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4840.namprd03.prod.outlook.com (20.179.93.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 07:17:54 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::a517:3578:67bf:6c88%7]) with mapi id 15.20.2157.022; Tue, 20 Aug 2019
 07:17:54 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Jonathan Corbet
 <corbet@lwn.net>, Will Deacon <will@kernel.org>, Thomas Gleixner
 <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
 <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, "x86@kernel.org"
 <x86@kernel.org>, "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>, Anil S
 Keshavamurthy <anil.s.keshavamurthy@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: implement KPROBES_ON_FTRACE
Thread-Topic: [PATCH v2 3/3] arm64: implement KPROBES_ON_FTRACE
Thread-Index: AQHVVwrs2GkuQiZ2DEOebbYaYVI7i6cDnZIA
Date: Tue, 20 Aug 2019 07:17:53 +0000
Message-ID: <20190820150646.1e4ae6ba@xhacker.debian>
References: <20190820113928.1971900c@xhacker.debian>
 <20190820114314.685a3239@xhacker.debian>
In-Reply-To: <20190820114314.685a3239@xhacker.debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TY1PR01CA0160.jpnprd01.prod.outlook.com (2603:1096:402::12)
 To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 342785ac-8539-4a21-64c5-08d7253e8473
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4840; 
x-ms-traffictypediagnostic: BYAPR03MB4840:
x-microsoft-antispam-prvs: <BYAPR03MB48401D9BC240FD4042F0C05DEDAB0@BYAPR03MB4840.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(39860400002)(366004)(346002)(136003)(189003)(199004)(446003)(11346002)(66446008)(66476007)(66946007)(66556008)(7416002)(14444005)(256004)(110136005)(71200400001)(71190400001)(186003)(8676002)(229853002)(2906002)(6486002)(25786009)(6116002)(64756008)(476003)(3846002)(2501003)(81166006)(81156014)(6246003)(316002)(8936002)(52116002)(26005)(5660300002)(486006)(6512007)(9686003)(1076003)(76176011)(14454004)(53936002)(54906003)(478600001)(6436002)(305945005)(7736002)(66066001)(4326008)(99286004)(86362001)(386003)(6506007)(50226002)(102836004)(921003)(1121003)(39210200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4840;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: C+Rp1ztQLbVWqkGi++e/CJz9v5qkj8Zovy/xQPkk9eiXY4fUO26Hidq4cNc78xLgBgNgCZUwAPlKIYHlR18mufwkiqIdg6wgZSNr7AJq8SWbYxBueLMeZ2LLXoykFkKy5yYFKqtJsBnmHvEwmlpuzWvJWhmffxyFNXmdXECVl3BrSwT04s9lb3o2vRSnFzgEUtnDD9ghBH07NnF2OJ0GupEIrhKip4g3uklagPhl0t+0z28G2eNQ70KbMehNa8ln7Sa/BtjV35OYm1iP/OCpwUq9GISqUD9fb6d682yulaguddhchPneeUSnlmqOE+oZtSGxyLdBvghAJsD4fFDxEfFmaBNzaSIL0F2E4FbMgpn8Wo6Udkd/0lWzE1Bu7ORzLOz1CNe6id7Wcz1qYjhwWJWHu2T4BmnNw2YgEDU09h4=
x-ms-exchange-transport-forked: True
Content-ID: <5782F46120ED1740A66C12C3DE43243A@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 342785ac-8539-4a21-64c5-08d7253e8473
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 07:17:53.9647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GfJO4CNNkEH99o7OCz1M2uoHla8vkTROrSOu/ZSO7pp/hrPFBt0CGNgWpdW4o6IqMAriZRuq88c17ICAGFALMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_001756_475296_A0BD5FA8 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.78 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 03:54:20 +0000 Jisheng Zhang wrote:

> 
> 
> KPROBES_ON_FTRACE avoids much of the overhead with regular kprobes as it
> eliminates the need for a trap, as well as the need to emulate or
> single-step instructions.
> 
> This patch implements KPROBES_ON_FTRACE for arm64.
> 
> Tested on berlin arm64 platform.

some performance numbers may be interesting.

HW: Berlin arm64 platform, cpufreq is forced to 800MHZ
SW: getppid syscall micro-benchmark, source code is put at the end of this email.

A. Not probed. 
B. Probed at __arm64_sys_getppid w/ non-operation probe functions, w/o KPROBES_ON_FTRACE
C. Probed at __arm64_sys_getppid w/ non-operation probe functions, w/ KPROBES_ON_FTRACE

A: 1905 ns/call
B: 5833 ns/call
C: 2169 ns/call

The overhead of kprobes is 5833 - 1905 = 3928 ns/call
The overhead of kprobes w/ KPROBES_ON_FTRACE is 2169 - 1905 = 264 ns/call

As can be seen, KPROBES_ON_FTRACE significantly reduce the overhead of kprobes.

Thanks

<---8---
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <unistd.h>

int main (int argc, char *argv[])
{
	struct timeval tv;
	unsigned long count;
	struct rusage usage;

	for (count = 0; count < 10000000; count++)
		getppid();
	getrusage(RUSAGE_SELF, &usage);
	tv = usage.ru_stime;
	tv.tv_sec += usage.ru_utime.tv_sec;
	tv.tv_usec += usage.ru_utime.tv_usec;
	fprintf(stderr, "getppid was called %u times: %d nsec per call\n",
	       count, (tv.tv_sec*1000*1000 + tv.tv_usec)/(count/1000));

	return 0;
}

> 
> ~ # mount -t debugfs debugfs /sys/kernel/debug/
> ~ # cd /sys/kernel/debug/
> /sys/kernel/debug # echo 'p _do_fork' > tracing/kprobe_events
> 
> before the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009fe28  k  _do_fork+0x0    [DISABLED]
> 
> after the patch:
> 
> /sys/kernel/debug # cat kprobes/list
> ffffff801009ff54  k  _do_fork+0x4    [DISABLED][FTRACE]
> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  .../debug/kprobes-on-ftrace/arch-support.txt  |  2 +-
>  arch/arm64/Kconfig                            |  1 +
>  arch/arm64/kernel/probes/Makefile             |  1 +
>  arch/arm64/kernel/probes/ftrace.c             | 60 +++++++++++++++++++
>  4 files changed, 63 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/kernel/probes/ftrace.c
> 
> diff --git a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> index 68f266944d5f..e8358a38981c 100644
> --- a/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> +++ b/Documentation/features/debug/kprobes-on-ftrace/arch-support.txt
> @@ -9,7 +9,7 @@
>      |       alpha: | TODO |
>      |         arc: | TODO |
>      |         arm: | TODO |
> -    |       arm64: | TODO |
> +    |       arm64: |  ok  |
>      |         c6x: | TODO |
>      |        csky: | TODO |
>      |       h8300: | TODO |
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 663392d1eae2..928700f15e23 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -167,6 +167,7 @@ config ARM64
>         select HAVE_STACKPROTECTOR
>         select HAVE_SYSCALL_TRACEPOINTS
>         select HAVE_KPROBES
> +       select HAVE_KPROBES_ON_FTRACE
>         select HAVE_KRETPROBES
>         select HAVE_GENERIC_VDSO
>         select IOMMU_DMA if IOMMU_SUPPORT
> diff --git a/arch/arm64/kernel/probes/Makefile b/arch/arm64/kernel/probes/Makefile
> index 8e4be92e25b1..4020cfc66564 100644
> --- a/arch/arm64/kernel/probes/Makefile
> +++ b/arch/arm64/kernel/probes/Makefile
> @@ -4,3 +4,4 @@ obj-$(CONFIG_KPROBES)           += kprobes.o decode-insn.o      \
>                                    simulate-insn.o
>  obj-$(CONFIG_UPROBES)          += uprobes.o decode-insn.o      \
>                                    simulate-insn.o
> +obj-$(CONFIG_KPROBES_ON_FTRACE)        += ftrace.o
> diff --git a/arch/arm64/kernel/probes/ftrace.c b/arch/arm64/kernel/probes/ftrace.c
> new file mode 100644
> index 000000000000..52901ffff570
> --- /dev/null
> +++ b/arch/arm64/kernel/probes/ftrace.c
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Dynamic Ftrace based Kprobes Optimization
> + *
> + * Copyright (C) Hitachi Ltd., 2012
> + * Copyright (C) 2019 Jisheng Zhang <jszhang@kernel.org>
> + *                   Synaptics Incorporated
> + */
> +
> +#include <linux/kprobes.h>
> +
> +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> +void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> +                          struct ftrace_ops *ops, struct pt_regs *regs)
> +{
> +       struct kprobe *p;
> +       struct kprobe_ctlblk *kcb;
> +
> +       /* Preempt is disabled by ftrace */
> +       p = get_kprobe((kprobe_opcode_t *)ip);
> +       if (unlikely(!p) || kprobe_disabled(p))
> +               return;
> +
> +       kcb = get_kprobe_ctlblk();
> +       if (kprobe_running()) {
> +               kprobes_inc_nmissed_count(p);
> +       } else {
> +               unsigned long orig_ip = instruction_pointer(regs);
> +               /* Kprobe handler expects regs->pc = pc + 1 as breakpoint hit */
> +               instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> +
> +               __this_cpu_write(current_kprobe, p);
> +               kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> +               if (!p->pre_handler || !p->pre_handler(p, regs)) {
> +                       /*
> +                        * Emulate singlestep (and also recover regs->pc)
> +                        * as if there is a nop
> +                        */
> +                       instruction_pointer_set(regs,
> +                               (unsigned long)p->addr + MCOUNT_INSN_SIZE);
> +                       if (unlikely(p->post_handler)) {
> +                               kcb->kprobe_status = KPROBE_HIT_SSDONE;
> +                               p->post_handler(p, regs, 0);
> +                       }
> +                       instruction_pointer_set(regs, orig_ip);
> +               }
> +               /*
> +                * If pre_handler returns !0, it changes regs->pc. We have to
> +                * skip emulating post_handler.
> +                */
> +               __this_cpu_write(current_kprobe, NULL);
> +       }
> +}
> +NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> +
> +int arch_prepare_kprobe_ftrace(struct kprobe *p)
> +{
> +       p->ainsn.api.insn = NULL;
> +       return 0;
> +}
> --
> 2.23.0.rc1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
