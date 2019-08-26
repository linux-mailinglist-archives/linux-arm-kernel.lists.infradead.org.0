Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB259CD24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8gnzca2PqTGjr0AX8d0HZKgEpm2LZcE69xkHh50YUE=; b=pjvq5qdIg5hKWN
	hCpRrWLg/aZ6BZ+2Oy/F2BtQ7WxDac/xWj1BVF8nU6VE0n++71GOxv32SNBfxMO1F4TbxfcQnLHoY
	b8jd1XYTfTRHVVYu9F2bt19ZedOkbzG7VAuG/c/LSpiuAtoi56zUgls+0u5YO4OHAiCONJd0WtP4a
	HXJ1BXT/T4LSfly2W7PN+aNU51ea0NvOXdaS42JhYZvT4hJYKRYphMtiqngTiiou/bTpSpmiqfSjy
	kKwgOF0qyl8uE04KfnxE4pZSZRq8xiANSk9jVcjefb/R2mh7HTwc2y0krTeJU+hB16dP2CxuGniIi
	sKghMpi5z76ZwWa2mdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2C12-0007GE-Qk; Mon, 26 Aug 2019 10:14:24 +0000
Received: from mail-eopbgr740074.outbound.protection.outlook.com
 ([40.107.74.74] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2C0r-0007Fj-S4
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:14:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iYCUrGgnz5DE2Zdz+AVlR/zY0ydMLEtA6D+ztN4mqgbavYXg9cpEOGgIaju0EMaQJ2/WkGPVvqhzh6YueeYt0FKIjx68yFW34BXcwQZQLBgIHCcmRWHYIB05QEmtDe6nYMWC1+ldx9DDM7Wa9o45exPI9yO8Q+fajuwTL2jS0/DXsSKZnWCyWak/Nqf90JTRADLi5KGr2E7yl5V59cxBKr7antuDUBMYwBHpq9mfmQ/3veyW30bgy2e4U+MLLzxGIXQQwcaxCIc/bFZbEI69Y0N2EH/pNgQ0xsbKuPoh+ai8ZH8QZ//OWdCN0ngu/G+koEwpK8isODzmV14XIOV5FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7E22/aG3cujZsGum2p262tRAS7ut+vN1r/Sg0Tk7ac=;
 b=IRRxSRjR0+DqE1T4ZcnVoZv3sq7xhL5DDGHk/FpzqaezNj3aZ7h9+8pxuN05+bJpu+GGZ0Rsg8+bewremGhy5wZPAX0fVCM4/JVQQhN5D46ryzWKhtrtDQQE+jXfAV7n62YGHqIXA6Jwiz/85dTE0gwoNOZ+QkA5AcFwZ085g9qxgH0wShj/VJbkOfCuJ55i+2yLqCR6KfAdFh+PKoHBrfj9d09fts5q2VYlg9qxF3rYjeyclRGPthkPbH1SRnz6jTWpLgTZGhP2Yh3IWY4vAO7I7KHe0kWST/jWJV7zGaGTm2sGqLD899PlEVmF28YEWzrQl19PwxLMCwujGjr8vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X7E22/aG3cujZsGum2p262tRAS7ut+vN1r/Sg0Tk7ac=;
 b=Ge+dkpTCMDg2MjlrlVmfydpIEw0rVdSgbqHfGKDlDyAbrAdEpVe7RQZTBDzCfPaVmduLTit784KQcLQrmA2Lb06lcVnCtEVj1rotjk0+GhmZ3IqNtIfoPiDMMOqWvbtGHClEIAwHYoqBNZMeM6uTrZ2FD6yQLgPqpGYMdYT8pmM=
Received: from BYAPR03MB4773.namprd03.prod.outlook.com (20.179.92.152) by
 BYAPR03MB4344.namprd03.prod.outlook.com (20.178.48.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Mon, 26 Aug 2019 10:14:09 +0000
Received: from BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4]) by BYAPR03MB4773.namprd03.prod.outlook.com
 ([fe80::b050:60f8:d275:e9f4%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 10:14:09 +0000
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Miroslav Benes <mbenes@suse.cz>, Steven Rostedt <rostedt@goodmis.org>,
 Mark Rutland <mark.rutland@arm.com>, Torsten Duwe <duwe@suse.de>
Subject: Re: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Topic: [PATCH 1/3] ftrace: introdue ftrace_call_init
Thread-Index: AQHVVoEOXDxpF53mfUS1paE9VVhs/acDxgEAgAl31oA=
Date: Mon, 26 Aug 2019 10:14:09 +0000
Message-ID: <20190826180253.69f28971@xhacker.debian>
References: <20190819191530.0f47b9b1@xhacker.debian>
 <20190819191622.57050fdf@xhacker.debian>
 <alpine.LSU.2.21.1908201118190.9536@pobox.suse.cz>
In-Reply-To: <alpine.LSU.2.21.1908201118190.9536@pobox.suse.cz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [124.74.246.114]
x-clientproxiedby: TYAPR01CA0110.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::26) To BYAPR03MB4773.namprd03.prod.outlook.com
 (2603:10b6:a03:134::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jisheng.Zhang@synaptics.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c15f7290-5685-4f76-e208-08d72a0e2240
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BYAPR03MB4344; 
x-ms-traffictypediagnostic: BYAPR03MB4344:
x-microsoft-antispam-prvs: <BYAPR03MB434480D1DF5F53CA0B7B6F13EDA10@BYAPR03MB4344.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(396003)(39860400002)(346002)(366004)(189003)(199004)(53754006)(478600001)(54906003)(486006)(110136005)(66066001)(8936002)(8676002)(25786009)(50226002)(6246003)(71200400001)(71190400001)(186003)(6512007)(6116002)(3846002)(81156014)(53946003)(9686003)(316002)(66446008)(81166006)(52116002)(6506007)(4326008)(6436002)(386003)(66476007)(66556008)(86362001)(2906002)(66946007)(64756008)(76176011)(99286004)(476003)(26005)(53936002)(7736002)(14444005)(305945005)(256004)(102836004)(229853002)(6486002)(1076003)(30864003)(5660300002)(446003)(11346002)(14454004)(39210200001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR03MB4344;
 H:BYAPR03MB4773.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: synaptics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 896dCNKNdKNiyqKXZPri2u2vJt3Gu2liNzDGqEKM1AKOkjaxXcWSx6N1n6bduqlZ3oktJ3mkzqeyn0leD48K8XR+0fjYXF0F3h+g3Lemnp3SMtsihFya6YaADkod15N0Bo6GleI3boHhF4gSualTyieh1pqY1w0WvBO0VGJlU6Nw+9qdp2E3hj9qITvciClkUHy92/LscSDpJvvwrO8JlTe3AzvQy7D11hxe+CuO7YBH4ZRhe/XNMqWbPvC1WTyV6Xsv5GNfhli/d2JDsbhGKSCzJFpvcOXwiy2zaxNb7W4D3DzAUb/t9jvV+3vXvkYuJ7O/vFFoXk4fStkX6qmS1760YhgpkAMXjiaHVslmpPkVig/QBon1LhAqp7o6OVZUaJnZ8/IiAEQ6wawf40sS0LpDZRAEaE6dcXTcQHTGwlA=
x-ms-exchange-transport-forked: True
Content-ID: <26C7331E35F3A84AA67E44884BB87387@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c15f7290-5685-4f76-e208-08d72a0e2240
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 10:14:09.2048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SsMUNuHYte3cAvUOQ78w3wcX4EBadHMECN1szyGZoxh4MjiGIDM+LuJ+3r0tQnFbjUINt02aHWV166k9skSrqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_031414_128544_C2CF4857 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

On Tue, 20 Aug 2019 11:27:38 +0200 (CEST) Miroslav Benes wrote:

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

Here is patch to remove MCOUNT_ADDR from all arch, but I think it isn't
as good as current MCOUNT_ADDR. So how to remove the MCOUNT_ADDR depedency?
Could we

patch ftrace_make_nop to accept one more parameter? I.E 
int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
		unsigned long addr, bool init)


or


make "0" a special meaning to tell ftrace_make_nop to "init"?


Thanks


<---8

ftrace: introdue ftrace_call_init

On some arch, the FTRACE_WITH_REGS is implemented with gcc's
 -fpatchable-function-entry (=2), gcc adds 2 NOPs at the beginning
of each function, so this makes the MCOUNT_ADDR useless. In ftrace
common framework, MCOUNT_ADDR is mostly used to "init" the nop, so
let's introcude ftrace_call_init() and remove MCOUNT_ADDR.

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 arch/arm/include/asm/ftrace.h        |  1 -
 arch/arm/kernel/ftrace.c             |  5 +++++
 arch/arm64/include/asm/ftrace.h      |  1 -
 arch/arm64/kernel/ftrace.c           |  5 +++++
 arch/csky/kernel/ftrace.c            |  5 +++++
 arch/ia64/include/asm/ftrace.h       |  2 --
 arch/ia64/kernel/ftrace.c            |  5 +++++
 arch/microblaze/include/asm/ftrace.h |  1 -
 arch/microblaze/kernel/ftrace.c      |  5 +++++
 arch/mips/include/asm/ftrace.h       |  1 -
 arch/mips/kernel/ftrace.c            |  9 +++++++--
 arch/nds32/include/asm/ftrace.h      |  1 -
 arch/nds32/kernel/ftrace.c           |  5 +++++
 arch/parisc/include/asm/ftrace.h     |  1 -
 arch/parisc/kernel/ftrace.c          |  5 +++++
 arch/powerpc/include/asm/ftrace.h    |  1 -
 arch/powerpc/kernel/trace/ftrace.c   |  5 +++++
 arch/riscv/include/asm/ftrace.h      |  1 -
 arch/riscv/kernel/ftrace.c           |  5 +++++
 arch/s390/include/asm/ftrace.h       |  1 -
 arch/s390/kernel/ftrace.c            | 22 +++++++++++++++++-----
 arch/sh/include/asm/ftrace.h         |  2 --
 arch/sh/kernel/ftrace.c              |  5 +++++
 arch/sparc/include/asm/ftrace.h      |  1 -
 arch/sparc/kernel/ftrace.c           |  5 +++++
 arch/x86/include/asm/ftrace.h        |  1 -
 arch/x86/kernel/ftrace.c             | 28 +++++++++++++++-------------
 arch/xtensa/include/asm/ftrace.h     |  1 -
 include/linux/ftrace.h               |  1 +
 kernel/trace/ftrace.c                |  2 +-
 30 files changed, 96 insertions(+), 37 deletions(-)

diff --git a/arch/arm/include/asm/ftrace.h b/arch/arm/include/asm/ftrace.h
index 18b0197f2384..afb01ab7f956 100644
--- a/arch/arm/include/asm/ftrace.h
+++ b/arch/arm/include/asm/ftrace.h
@@ -7,7 +7,6 @@
 #endif
 
 #ifdef CONFIG_FUNCTION_TRACER
-#define MCOUNT_ADDR		((unsigned long)(__gnu_mcount_nc))
 #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
 
 #ifndef __ASSEMBLY__
diff --git a/arch/arm/kernel/ftrace.c b/arch/arm/kernel/ftrace.c
index bda949fd84e8..fd3547bb4bfa 100644
--- a/arch/arm/kernel/ftrace.c
+++ b/arch/arm/kernel/ftrace.c
@@ -172,6 +172,11 @@ int ftrace_make_nop(struct module *mod,
 	return ret;
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)__gnu_mcount_nc);
+}
+
 int __init ftrace_dyn_arch_init(void)
 {
 	return 0;
diff --git a/arch/arm64/include/asm/ftrace.h b/arch/arm64/include/asm/ftrace.h
index 5ab5200b2bdc..de6f35ef3825 100644
--- a/arch/arm64/include/asm/ftrace.h
+++ b/arch/arm64/include/asm/ftrace.h
@@ -11,7 +11,6 @@
 #include <asm/insn.h>
 
 #define HAVE_FUNCTION_GRAPH_FP_TEST
-#define MCOUNT_ADDR		((unsigned long)_mcount)
 #define MCOUNT_INSN_SIZE	AARCH64_INSN_SIZE
 
 #ifndef __ASSEMBLY__
diff --git a/arch/arm64/kernel/ftrace.c b/arch/arm64/kernel/ftrace.c
index 171773257974..8298b8a7d8f6 100644
--- a/arch/arm64/kernel/ftrace.c
+++ b/arch/arm64/kernel/ftrace.c
@@ -196,6 +196,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	return ftrace_modify_code(pc, old, new, validate);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 void arch_ftrace_update_code(int command)
 {
 	command |= FTRACE_MAY_SLEEP;
diff --git a/arch/csky/kernel/ftrace.c b/arch/csky/kernel/ftrace.c
index 44f4880179b7..c1fce15caaa4 100644
--- a/arch/csky/kernel/ftrace.c
+++ b/arch/csky/kernel/ftrace.c
@@ -122,6 +122,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	return ftrace_modify_code(rec->ip, addr, false, false);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 int ftrace_update_ftrace_func(ftrace_func_t func)
 {
 	int ret = ftrace_modify_code((unsigned long)&ftrace_call,
diff --git a/arch/ia64/include/asm/ftrace.h b/arch/ia64/include/asm/ftrace.h
index a07a8e575453..2aefd2098fc5 100644
--- a/arch/ia64/include/asm/ftrace.h
+++ b/arch/ia64/include/asm/ftrace.h
@@ -9,8 +9,6 @@
 extern void _mcount(unsigned long pfs, unsigned long r1, unsigned long b0, unsigned long r0);
 #define mcount _mcount
 
-/* In IA64, MCOUNT_ADDR is set in link time, so it's not a constant at compile time */
-#define MCOUNT_ADDR (((struct fnptr *)mcount)->ip)
 #define FTRACE_ADDR (((struct fnptr *)ftrace_caller)->ip)
 
 static inline unsigned long ftrace_call_adjust(unsigned long addr)
diff --git a/arch/ia64/kernel/ftrace.c b/arch/ia64/kernel/ftrace.c
index cee411e647ca..0cb2cbcea4fc 100644
--- a/arch/ia64/kernel/ftrace.c
+++ b/arch/ia64/kernel/ftrace.c
@@ -169,6 +169,11 @@ int ftrace_make_nop(struct module *mod,
 	return ftrace_modify_code(rec->ip, NULL, new, 0);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, ((struct fnptr *)mcount)->ip);
+}
+
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned long ip = rec->ip;
diff --git a/arch/microblaze/include/asm/ftrace.h b/arch/microblaze/include/asm/ftrace.h
index 5db7f4489f05..02d185ef22fe 100644
--- a/arch/microblaze/include/asm/ftrace.h
+++ b/arch/microblaze/include/asm/ftrace.h
@@ -4,7 +4,6 @@
 
 #ifdef CONFIG_FUNCTION_TRACER
 
-#define MCOUNT_ADDR		((unsigned long)(_mcount))
 #define MCOUNT_INSN_SIZE	8 /* sizeof mcount call */
 
 #ifndef __ASSEMBLY__
diff --git a/arch/microblaze/kernel/ftrace.c b/arch/microblaze/kernel/ftrace.c
index 224eea40e1ee..f3606e3cba94 100644
--- a/arch/microblaze/kernel/ftrace.c
+++ b/arch/microblaze/kernel/ftrace.c
@@ -149,6 +149,11 @@ int ftrace_make_nop(struct module *mod,
 	return ret;
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 /* I believe that first is called ftrace_make_nop before this function */
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
diff --git a/arch/mips/include/asm/ftrace.h b/arch/mips/include/asm/ftrace.h
index b463f2aa5a61..45b3f7064fcd 100644
--- a/arch/mips/include/asm/ftrace.h
+++ b/arch/mips/include/asm/ftrace.h
@@ -12,7 +12,6 @@
 
 #ifdef CONFIG_FUNCTION_TRACER
 
-#define MCOUNT_ADDR ((unsigned long)(_mcount))
 #define MCOUNT_INSN_SIZE 4		/* sizeof mcount call */
 
 #ifndef __ASSEMBLY__
diff --git a/arch/mips/kernel/ftrace.c b/arch/mips/kernel/ftrace.c
index 2625232bfe52..85de81985e6f 100644
--- a/arch/mips/kernel/ftrace.c
+++ b/arch/mips/kernel/ftrace.c
@@ -61,7 +61,7 @@ static inline void ftrace_dyn_arch_init_insns(void)
 	/* la v1, _mcount */
 	v1 = 3;
 	buf = (u32 *)&insn_la_mcount[0];
-	UASM_i_LA(&buf, v1, MCOUNT_ADDR);
+	UASM_i_LA(&buf, v1, (unsigned long)_mcount);
 
 	/* jal (ftrace_caller + 8), jump over the first two instruction */
 	buf = (u32 *)&insn_jal_ftrace_caller;
@@ -200,6 +200,11 @@ int ftrace_make_nop(struct module *mod,
 #endif
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned int new;
@@ -232,7 +237,7 @@ int __init ftrace_dyn_arch_init(void)
 	ftrace_dyn_arch_init_insns();
 
 	/* Remove "b ftrace_stub" to ensure ftrace_caller() is executed */
-	ftrace_modify_code(MCOUNT_ADDR, INSN_NOP);
+	ftrace_modify_code((unsigned long)_mcount, INSN_NOP);
 
 	return 0;
 }
diff --git a/arch/nds32/include/asm/ftrace.h b/arch/nds32/include/asm/ftrace.h
index 2f96cc96aa35..97263241249d 100644
--- a/arch/nds32/include/asm/ftrace.h
+++ b/arch/nds32/include/asm/ftrace.h
@@ -7,7 +7,6 @@
 
 #define HAVE_FUNCTION_GRAPH_FP_TEST
 
-#define MCOUNT_ADDR ((unsigned long)(_mcount))
 /* mcount call is composed of three instructions:
  * sethi + ori + jral
  */
diff --git a/arch/nds32/kernel/ftrace.c b/arch/nds32/kernel/ftrace.c
index fd2a54b8cd57..8f0c34f7bf5b 100644
--- a/arch/nds32/kernel/ftrace.c
+++ b/arch/nds32/kernel/ftrace.c
@@ -203,6 +203,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 
 	return ftrace_modify_code(pc, call_insn, nop_insn, true);
 }
+
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
 #endif /* CONFIG_DYNAMIC_FTRACE */
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
diff --git a/arch/parisc/include/asm/ftrace.h b/arch/parisc/include/asm/ftrace.h
index 958c0aa5dbb2..e0c7cc7958b8 100644
--- a/arch/parisc/include/asm/ftrace.h
+++ b/arch/parisc/include/asm/ftrace.h
@@ -5,7 +5,6 @@
 #ifndef __ASSEMBLY__
 extern void mcount(void);
 
-#define MCOUNT_ADDR		((unsigned long)mcount)
 #define MCOUNT_INSN_SIZE	4
 #define CC_USING_NOP_MCOUNT
 extern unsigned long sys_call_table[];
diff --git a/arch/parisc/kernel/ftrace.c b/arch/parisc/kernel/ftrace.c
index b6fb30f2e4bf..4c9d8d1e5262 100644
--- a/arch/parisc/kernel/ftrace.c
+++ b/arch/parisc/kernel/ftrace.c
@@ -186,4 +186,9 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 			      insn, sizeof(insn)-4);
 	return 0;
 }
+
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)mcount);
+}
 #endif
diff --git a/arch/powerpc/include/asm/ftrace.h b/arch/powerpc/include/asm/ftrace.h
index 3dfb80b86561..bac76b982d2c 100644
--- a/arch/powerpc/include/asm/ftrace.h
+++ b/arch/powerpc/include/asm/ftrace.h
@@ -5,7 +5,6 @@
 #include <asm/types.h>
 
 #ifdef CONFIG_FUNCTION_TRACER
-#define MCOUNT_ADDR		((unsigned long)(_mcount))
 #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
 
 #ifdef __ASSEMBLY__
diff --git a/arch/powerpc/kernel/trace/ftrace.c b/arch/powerpc/kernel/trace/ftrace.c
index be1ca98fce5c..728a357c51f0 100644
--- a/arch/powerpc/kernel/trace/ftrace.c
+++ b/arch/powerpc/kernel/trace/ftrace.c
@@ -472,6 +472,11 @@ int ftrace_make_nop(struct module *mod,
 #endif /* CONFIG_MODULES */
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 #ifdef CONFIG_MODULES
 #ifdef CONFIG_PPC64
 /*
diff --git a/arch/riscv/include/asm/ftrace.h b/arch/riscv/include/asm/ftrace.h
index c6dcc5291f97..5ca88b80de44 100644
--- a/arch/riscv/include/asm/ftrace.h
+++ b/arch/riscv/include/asm/ftrace.h
@@ -33,7 +33,6 @@ struct dyn_arch_ftrace {
  * both auipc and jalr at the same time.
  */
 
-#define MCOUNT_ADDR		((unsigned long)_mcount)
 #define JALR_SIGN_MASK		(0x00000800)
 #define JALR_OFFSET_MASK	(0x00000fff)
 #define AUIPC_OFFSET_MASK	(0xfffff000)
diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index b94d8db5ddcc..88fcdbf84ad8 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -88,6 +88,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	return __ftrace_modify_call(rec->ip, addr, false);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 int ftrace_update_ftrace_func(ftrace_func_t func)
 {
 	int ret = __ftrace_modify_call((unsigned long)&ftrace_call,
diff --git a/arch/s390/include/asm/ftrace.h b/arch/s390/include/asm/ftrace.h
index 68d362f8d6c1..e70717c37f68 100644
--- a/arch/s390/include/asm/ftrace.h
+++ b/arch/s390/include/asm/ftrace.h
@@ -30,7 +30,6 @@ extern unsigned long ftrace_plt;
 
 struct dyn_arch_ftrace { };
 
-#define MCOUNT_ADDR ((unsigned long)_mcount)
 #define FTRACE_ADDR ((unsigned long)ftrace_caller)
 
 #define KPROBE_ON_FTRACE_NOP	0
diff --git a/arch/s390/kernel/ftrace.c b/arch/s390/kernel/ftrace.c
index 1bb85f60c0dd..b74e35cc2262 100644
--- a/arch/s390/kernel/ftrace.c
+++ b/arch/s390/kernel/ftrace.c
@@ -110,11 +110,7 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 
 	if (probe_kernel_read(&old, (void *) rec->ip, sizeof(old)))
 		return -EFAULT;
-	if (addr == MCOUNT_ADDR) {
-		/* Initial code replacement */
-		ftrace_generate_orig_insn(&orig);
-		ftrace_generate_nop_insn(&new);
-	} else if (is_kprobe_on_ftrace(&old)) {
+	if (is_kprobe_on_ftrace(&old)) {
 		/*
 		 * If we find a breakpoint instruction, a kprobe has been
 		 * placed at the beginning of the function. We write the
@@ -136,6 +132,22 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec,
 	return 0;
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	struct ftrace_insn orig, new, old;
+
+	if (probe_kernel_read(&old, (void *) rec->ip, sizeof(old)))
+		return -EFAULT;
+	ftrace_generate_orig_insn(&orig);
+	ftrace_generate_nop_insn(&new);
+	/* Verify that the to be replaced code matches what we expect. */
+	if (memcmp(&orig, &old, sizeof(old)))
+		return -EINVAL;
+	s390_kernel_write((void *) rec->ip, &new, sizeof(new));
+
+	return 0;
+}
+
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
 	struct ftrace_insn orig, new, old;
diff --git a/arch/sh/include/asm/ftrace.h b/arch/sh/include/asm/ftrace.h
index b1c1dc0cc261..5a7890b7a0d2 100644
--- a/arch/sh/include/asm/ftrace.h
+++ b/arch/sh/include/asm/ftrace.h
@@ -10,8 +10,6 @@
 #ifndef __ASSEMBLY__
 extern void mcount(void);
 
-#define MCOUNT_ADDR		((unsigned long)(mcount))
-
 #ifdef CONFIG_DYNAMIC_FTRACE
 #define CALL_ADDR		((long)(ftrace_call))
 #define STUB_ADDR		((long)(ftrace_stub))
diff --git a/arch/sh/kernel/ftrace.c b/arch/sh/kernel/ftrace.c
index 1b04270e5460..f7a12102a93d 100644
--- a/arch/sh/kernel/ftrace.c
+++ b/arch/sh/kernel/ftrace.c
@@ -242,6 +242,11 @@ int ftrace_make_nop(struct module *mod,
 	return ftrace_modify_code(rec->ip, old, new);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)mcount);
+}
+
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned char *new, *old;
diff --git a/arch/sparc/include/asm/ftrace.h b/arch/sparc/include/asm/ftrace.h
index d3aa1a524431..a1eecda8976b 100644
--- a/arch/sparc/include/asm/ftrace.h
+++ b/arch/sparc/include/asm/ftrace.h
@@ -3,7 +3,6 @@
 #define _ASM_SPARC64_FTRACE
 
 #ifdef CONFIG_MCOUNT
-#define MCOUNT_ADDR		((unsigned long)(_mcount))
 #define MCOUNT_INSN_SIZE	4 /* sizeof mcount call */
 
 #ifndef __ASSEMBLY__
diff --git a/arch/sparc/kernel/ftrace.c b/arch/sparc/kernel/ftrace.c
index 684b84ce397f..7a16482fdd29 100644
--- a/arch/sparc/kernel/ftrace.c
+++ b/arch/sparc/kernel/ftrace.c
@@ -63,6 +63,11 @@ int ftrace_make_nop(struct module *mod, struct dyn_ftrace *rec, unsigned long ad
 	return ftrace_modify_code(ip, old, new);
 }
 
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
+{
+	return ftrace_make_nop(mod, rec, (unsigned long)_mcount);
+}
+
 int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
 {
 	unsigned long ip = rec->ip;
diff --git a/arch/x86/include/asm/ftrace.h b/arch/x86/include/asm/ftrace.h
index 287f1f7b2e52..58fe65fc5a63 100644
--- a/arch/x86/include/asm/ftrace.h
+++ b/arch/x86/include/asm/ftrace.h
@@ -6,7 +6,6 @@
 #ifndef CC_USING_FENTRY
 # error Compiler does not support fentry?
 #endif
-# define MCOUNT_ADDR		((unsigned long)(__fentry__))
 #define MCOUNT_INSN_SIZE	5 /* sizeof mcount call */
 
 #ifdef CONFIG_DYNAMIC_FTRACE
diff --git a/arch/x86/kernel/ftrace.c b/arch/x86/kernel/ftrace.c
index 024c3053dbba..3cdba006f848 100644
--- a/arch/x86/kernel/ftrace.c
+++ b/arch/x86/kernel/ftrace.c
@@ -149,26 +149,28 @@ ftrace_modify_code_direct(unsigned long ip, unsigned const char *old_code,
 	return 0;
 }
 
-int ftrace_make_nop(struct module *mod,
-		    struct dyn_ftrace *rec, unsigned long addr)
+/*
+ * On boot up, and when modules are loaded, the __fentry__
+ * is converted to a nop, and will never become __fentry__
+ * again. This code is either running before SMP (on boot up)
+ * or before the code will ever be executed (module load).
+ * We do not want to use the breakpoint version in this case,
+ * just modify the code directly.
+ */
+int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec)
 {
 	unsigned const char *new, *old;
 	unsigned long ip = rec->ip;
 
-	old = ftrace_call_replace(ip, addr);
+	old = ftrace_call_replace(ip, (unsigned long)__fentry__);
 	new = ftrace_nop_replace();
 
-	/*
-	 * On boot up, and when modules are loaded, the MCOUNT_ADDR
-	 * is converted to a nop, and will never become MCOUNT_ADDR
-	 * again. This code is either running before SMP (on boot up)
-	 * or before the code will ever be executed (module load).
-	 * We do not want to use the breakpoint version in this case,
-	 * just modify the code directly.
-	 */
-	if (addr == MCOUNT_ADDR)
-		return ftrace_modify_code_direct(rec->ip, old, new);
+	return ftrace_modify_code_direct(ip, old, new);
+}
 
+int ftrace_make_nop(struct module *mod,
+		    struct dyn_ftrace *rec, unsigned long addr)
+{
 	ftrace_expected = NULL;
 
 	/* Normal cases use add_brk_on_nop */
diff --git a/arch/xtensa/include/asm/ftrace.h b/arch/xtensa/include/asm/ftrace.h
index 6c6d9a9f185f..3ce2170291cd 100644
--- a/arch/xtensa/include/asm/ftrace.h
+++ b/arch/xtensa/include/asm/ftrace.h
@@ -28,7 +28,6 @@ extern unsigned long return_address(unsigned level);
 
 #ifdef CONFIG_FUNCTION_TRACER
 
-#define MCOUNT_ADDR ((unsigned long)(_mcount))
 #define MCOUNT_INSN_SIZE 3
 
 #ifndef __ASSEMBLY__
diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
index 8a8cb3c401b2..8175ffb671f0 100644
--- a/include/linux/ftrace.h
+++ b/include/linux/ftrace.h
@@ -458,6 +458,7 @@ extern void ftrace_regs_caller(void);
 extern void ftrace_call(void);
 extern void ftrace_regs_call(void);
 extern void mcount_call(void);
+extern int ftrace_call_init(struct module *mod, struct dyn_ftrace *rec);
 
 void ftrace_modify_all_code(int command);
 
diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
index eca34503f178..62ca6977e570 100644
--- a/kernel/trace/ftrace.c
+++ b/kernel/trace/ftrace.c
@@ -2500,7 +2500,7 @@ ftrace_code_disable(struct module *mod, struct dyn_ftrace *rec)
 	if (unlikely(ftrace_disabled))
 		return 0;
 
-	ret = ftrace_make_nop(mod, rec, MCOUNT_ADDR);
+	ret = ftrace_call_init(mod, rec);
 	if (ret) {
 		ftrace_bug_type = FTRACE_BUG_INIT;
 		ftrace_bug(ret, rec);
-- 
2.23.0.rc1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
