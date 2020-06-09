Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4166C1F32F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 06:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9K5rRV+Buo27mPq+xjtFLsYikFJnZ8AtNOX/AOKniEY=; b=ODMkb8QmPfVSfm
	uGjO2bGArpsKla6vi884AAiYwRwwFuIxDdNVmiXhefo/8CK34c7A4PPrpzUQrd6CsVMiUgwnj670I
	jOVa381sQ6EYUI9zEN7zS7qbuEbwlY3Kug4Kvuv2mtm2Qx2sDD63H+eXsSQlaXT7jDm3ausRiHf0D
	F7c9O8EwIfIVvjw2NBtTyLsIQwSo4Os+53ktgzV5FE5zKHS9FWH87LjA8dyRtGGKxU/Yqnalo2+F+
	xsluWCxUmlDEIueiq2QSFWFUBkFAm1ceVq0nYLMixnSH2jHfuZPp3y6ZhlRFCHrMPHxsdu1Zop1i+
	cPhSKNL72lrFdYNmKoKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiVk0-0000Bm-Rj; Tue, 09 Jun 2020 04:20:00 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiVjt-0000B1-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 04:19:55 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jiVjf-005c4C-1Q; Tue, 09 Jun 2020 04:19:39 +0000
Date: Tue, 9 Jun 2020 05:19:39 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Nicolas Pitre <nico@fluxnic.net>
Subject: Re: [PULL REQUEST v2] FDPIC ELF support for ARM
Message-ID: <20200609041939.GQ23230@ZenIV.linux.org.uk>
References: <nycvar.YSQ.7.76.1708292307400.2606@knanqh.ubzr>
 <20200608224725.GH1605@shell.armlinux.org.uk>
 <nycvar.YSQ.7.77.849.2006082137050.1353413@knanqh.ubzr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.77.849.2006082137050.1353413@knanqh.ubzr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_211953_361852_684D7063 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 11:48:27PM -0400, Nicolas Pitre wrote:

> I suspect riscv will end up in the same situation when they upstream 
> their fdpic support.

FWIW, one thing that needs to be done is switching fdpic to use
of regset, a-la normal elf coredumps on the same arm.  I really want
to kill the sodding elf_core_copy_task_fpregs(), dump_fpu(),
etc.

Right now that crap is used by
	elf coredump on alpha c6x csky h8300 m68k microblaze nds32 um unicore32
	fdpic coredump on arm sh/nommu and c6x

Out of those only alpha, m68k, microblaze, um and unicore32 lack
regset - everything else (including all users of fdpic) have working ones.
And it's not at all hard to add the damn thing to those 5 architectures,
killing quite bit of code in binfmt_elf.c, as well as in arch/*

Note, BTW, that fdpic coredumps on arm currently have fucked FPU
for all but the main thread - arm has
int dump_fpu (struct pt_regs *regs, struct user_fp *fp)
{
        struct thread_info *thread = current_thread_info();
        int used_math = thread->used_cp[1] | thread->used_cp[2];

        if (used_math)
                memcpy(fp, &thread->fpstate.soft, sizeof (*fp));

        return used_math != 0;
}  
which obviously duplicates the contents of FP registers of the coredumping
thread into the NT_PRFPREG section for each thread...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
