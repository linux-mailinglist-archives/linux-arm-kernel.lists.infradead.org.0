Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E552A1F32C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 05:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1H0uGdLJtZIiYwEcSP8o8PWN0DPUEFMLz6SxXKCrVi8=; b=OEbZisSq2oXuBv
	On0leoazghEhBCS3EpAe0GervpUbA2xizu/ClA0x2Gtyhf3NOhH3ZImanX5ESRXdA/FAuQ5BSLmH+
	LTCX6CGUKtqBC8VzLnDA75NfvUpksIe3Jf0In5N31vPVmqcKsyTOk7p+N/bE2G5iSwtA026igB/qx
	USsLJChLb6QePBMp0MBodDWWPNyXrFmsTLp9bpQwaliCRQvh0fqsRC+/UU//cHDFbIlg7D03Lm030
	V5QasxWzfA5rNiz5+7CdMO16HHShF95OfqDEPaBhofIetpvTxUxoCfMtik3VqV26i0gAQOFCtzzQI
	7dzMbsVojCi6RFp7P3Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiVFo-00088h-Mg; Tue, 09 Jun 2020 03:48:48 +0000
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiVFf-00087U-Vg
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 03:48:42 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 1635ACF379;
 Mon,  8 Jun 2020 23:48:34 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=5OlcDNR2vfGU+JrC8EWDrHoCx/I=; b=pO45yD
 8jmq2UleM9UARvxOQvgpeza94m7pRrJ8xpRu16zpb9AAnFXFy7WfwSOQp1mGz0cI
 pux6kQmg7NFrbmIl8FDvFlLxQqgd3kMoZtRDTXMasNgmTdVpK74SUzkZR6vYuYUu
 vcyjvLwCe9u/snugU65MOu8JhP4zX6FZJDToE=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 0CD75CF378;
 Mon,  8 Jun 2020 23:48:34 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=S36lGtH9wvh9hu50dKmXkxhiESqwO9+qA0lKzbKsET0=;
 b=DKJ9+WGFQ/mZWMHmh2mBPCjezWR3O1klH1PEwGdl3boXkKJVm4rCVR6JTxNlNYvBiUtocbX2BrpVc36EJo9RhCtmPoy3KEElwAgv4XpUbveMFdKg3skogD7Z/Uc1hk61VtW0rOUUYOmpjhvYlGFIOHQJMt/TcGTXf3kaX7Pl8yc=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id C3AA2CF376;
 Mon,  8 Jun 2020 23:48:30 -0400 (EDT)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id BC4672DA0C08;
 Mon,  8 Jun 2020 23:48:27 -0400 (EDT)
Date: Mon, 8 Jun 2020 23:48:27 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PULL REQUEST v2] FDPIC ELF support for ARM
In-Reply-To: <20200608224725.GH1605@shell.armlinux.org.uk>
Message-ID: <nycvar.YSQ.7.77.849.2006082137050.1353413@knanqh.ubzr>
References: <nycvar.YSQ.7.76.1708292307400.2606@knanqh.ubzr>
 <20200608224725.GH1605@shell.armlinux.org.uk>
MIME-Version: 1.0
X-Pobox-Relay-ID: 15A8B93E-AA04-11EA-8448-8D86F504CC47-78420484!pb-smtp21.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_204840_086764_EEDF7617 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Howells <dhowells@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Jun 2020, Russell King - ARM Linux admin wrote:

> Nico,
> 
> Al Viro has identified this in include/uapi/linux/elfcore.h:
> 
>         elf_gregset_t pr_reg;   /* GP registers */
> #ifdef CONFIG_BINFMT_ELF_FDPIC
>         /* When using FDPIC, the loadmap addresses need to be communicated
>          * to GDB in order for GDB to do the necessary relocations.  The
>          * fields (below) used to communicate this information are placed
>          * immediately after ``pr_reg'', so that the loadmap addresses may
>          * be viewed as part of the register set if so desired.
>          */
>         unsigned long pr_exec_fdpic_loadmap;
>         unsigned long pr_interp_fdpic_loadmap;
> #endif
>         int pr_fpvalid;         /* True if math co-processor being used.  */
> 
> which means if CONFIG_BINFMT_ELF_FDPIC is enabled for a target that
> also uses ELF, then the ELF coredump format breaks.

Damn... indeed.

> David Howells says this evening:
> 
> 23:42 < dhowells> you weren't meant to use ELF and ELF_FDPIC both
> 
> So, we now have a problem; your code has done something that was never
> intended to be permitted, and there are configurations where the kernel
> breaks the user API.  This only affects ARM as this is the only arch
> that was silly enough to allow ELF and ELF_FDPIC.

Well... of course it could also be silly to run gdb on ELF_FDPIC-only 
systems as such systems are expected to have highly constrained 
resources.

So a typical use case would consist in developing ELF_FDPIC binaries on 
a regular ELF host (handy as they can be tested natively) and possibly 
using gdb on them. So IMHO not having foreseen simultaneous usage of ELF 
and ELF_FDPIC here is rather unfortunate.

I suspect riscv will end up in the same situation when they upstream 
their fdpic support.

Admitedly I'm not a huge gdb user and didn't look closely at the 
existing coredump interface details when I enabled ELF_FDPIC on ARM. 
This is all generic architecture-independent code so it ought to "just 
work", right?

So here's how I think this could be "fixed". This is not ideal. The 
fdpic support in Arm gdb would have to cope, but I doubt this is going 
to affect a lot of people without the knowledge to figure things out. If 
someone has a better idea/suggestion please say so.

diff --git a/fs/binfmt_elf_fdpic.c b/fs/binfmt_elf_fdpic.c
index 240f666635..3005a97fe1 100644
--- a/fs/binfmt_elf_fdpic.c
+++ b/fs/binfmt_elf_fdpic.c
@@ -1339,7 +1339,7 @@ static inline void fill_note(struct memelfnote *note, const char *name, int type
  * fill up all the fields in prstatus from the given task struct, except
  * registers which need to be filled up separately.
  */
-static void fill_prstatus(struct elf_prstatus *prstatus,
+static void fill_prstatus(struct elf_fdpic_prstatus *prstatus,
 			  struct task_struct *p, long signr)
 {
 	prstatus->pr_info.si_signo = prstatus->pr_cursig = signr;
@@ -1422,7 +1422,7 @@ static int fill_psinfo(struct elf_prpsinfo *psinfo, struct task_struct *p,
 struct elf_thread_status
 {
 	struct list_head list;
-	struct elf_prstatus prstatus;	/* NT_PRSTATUS */
+	struct elf_fdpic_prstatus prstatus;	/* NT_PRSTATUS */
 	elf_fpregset_t fpu;		/* NT_PRFPREG */
 	struct task_struct *thread;
 #ifdef ELF_CORE_COPY_XFPREGS
@@ -1557,7 +1557,7 @@ static int elf_fdpic_core_dump(struct coredump_params *cprm)
 	loff_t offset = 0, dataoff;
 	int numnote;
 	struct memelfnote *notes = NULL;
-	struct elf_prstatus *prstatus = NULL;	/* NT_PRSTATUS */
+	struct elf_fdpic_prstatus *prstatus = NULL;	/* NT_PRSTATUS */
 	struct elf_prpsinfo *psinfo = NULL;	/* NT_PRPSINFO */
  	LIST_HEAD(thread_list);
  	struct list_head *t;
diff --git a/include/uapi/linux/elfcore.h b/include/uapi/linux/elfcore.h
index baf0356230..501658a007 100644
--- a/include/uapi/linux/elfcore.h
+++ b/include/uapi/linux/elfcore.h
@@ -61,8 +61,27 @@ struct elf_prstatus
 	long	pr_instr;		/* Current instruction */
 #endif
 	elf_gregset_t pr_reg;	/* GP registers */
+	int pr_fpvalid;		/* True if math co-processor being used.  */
+};
+
 #ifdef CONFIG_BINFMT_ELF_FDPIC
-	/* When using FDPIC, the loadmap addresses need to be communicated
+struct elf_fdpic_prstatus
+{
+	struct elf_siginfo pr_info;	/* Info associated with signal */
+	short	pr_cursig;		/* Current signal */
+	unsigned long pr_sigpend;	/* Set of pending signals */
+	unsigned long pr_sighold;	/* Set of held signals */
+	pid_t	pr_pid;
+	pid_t	pr_ppid;
+	pid_t	pr_pgrp;
+	pid_t	pr_sid;
+	struct __kernel_old_timeval pr_utime;	/* User time */
+	struct __kernel_old_timeval pr_stime;	/* System time */
+	struct __kernel_old_timeval pr_cutime;	/* Cumulative user time */
+	struct __kernel_old_timeval pr_cstime;	/* Cumulative system time */
+	elf_gregset_t pr_reg;	/* GP registers */
+	/*
+	 * When using FDPIC, the loadmap addresses need to be communicated
 	 * to GDB in order for GDB to do the necessary relocations.  The
 	 * fields (below) used to communicate this information are placed
 	 * immediately after ``pr_reg'', so that the loadmap addresses may
@@ -70,9 +89,9 @@ struct elf_prstatus
 	 */
 	unsigned long pr_exec_fdpic_loadmap;
 	unsigned long pr_interp_fdpic_loadmap;
-#endif
 	int pr_fpvalid;		/* True if math co-processor being used.  */
 };
+#endif
 
 #define ELF_PRARGSZ	(80)	/* Number of chars for args */
 
@@ -92,7 +111,18 @@ struct elf_prpsinfo
 };
 
 #ifndef __KERNEL__
+#if defined(CONFIG_BINFMT_ELF_FDPIC) && \
+    (defined(CONFIG_SUPERH32) || defined(CONFIG_C6X))
+/*
+ * This is to be backward compatible with those architectures that
+ * traditionally don't have both ELF and ELF_FDPIC configured at the same
+ * time and that expect prstatus_t to contain pr_exec_fdpic_loadmap and
+ * pr_exec_fdpic_loadmap.
+ */
+typedef struct elf_fdpic_prstatus prstatus_t;
+#else
 typedef struct elf_prstatus prstatus_t;
+#endif
 typedef struct elf_prpsinfo prpsinfo_t;
 #define PRARGSZ ELF_PRARGSZ 
 #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
