Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF6491FA003
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 21:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRPEnZw1wTRwZadNe9iPMtithHr8WMU5wKh+8V/kSIU=; b=Nfj2U70d+As1Hf
	wvbpImG2mnUdUGtVRJ+NwG/nH6ZyJ1uM+oNpFbkXnxIJItPMsXJLiZ70shE4LyLoKzmrjEVylaCOb
	kDkFPfAUWB166utkoxMgYbNsqirCvKiCntlzgYq4miA/yGxN29wkLf1fH/EYCq0y7twhZsvr9bLkR
	mv2/TcejI9SCuSWtAv7H+DNvl33WEk9kkPyzUW0AYfAeOGmiqTLdI+Ilb+16J7DGx0I1aKldgUojW
	hOhBqO5dH8BRBLAI+t/VagKZAhP3FIvVL1m7Cap3HCNAYy8WS+GHC2HFttkBw/+oAS1fCKHj+rrPc
	ewHpAToM33dY6KvbcdeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkuWr-0006VU-ON; Mon, 15 Jun 2020 19:12:21 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkuWe-0006UY-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 19:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592248326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gBDypd72AayeylkkdmJfk3R+s+aCIKax33JorcXAteU=;
 b=i0BT9v86eW9nAfEKq1lwiS4q09jzBFHgb/B8Ff+/jJNMHdiPH/A6DCxqlUW8FNXUC0MIsI
 pb8IoqZNjxxKYr4TS6pj5r2NwyrR/R3xbUN/IhHh4KZ65T0xxtdIOijWOuBJZQF/FlDq05
 rdCBxyZMOsQ5Lzh/Z35Ate8dhqzjlA4=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-HE26UbPKPZ6zSFsnAS-B1g-1; Mon, 15 Jun 2020 15:11:51 -0400
X-MC-Unique: HE26UbPKPZ6zSFsnAS-B1g-1
Received: by mail-qv1-f69.google.com with SMTP id x16so13786755qvp.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 12:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gBDypd72AayeylkkdmJfk3R+s+aCIKax33JorcXAteU=;
 b=qXQ05/Ehny0G5cC84CwF/xHlSYcRlyTMswPOo9uHIALeOgSvfVifPEJIgc48mBAsNf
 rWaKrlwOqQ8jhc8ubPkMN0RaBf0WfDe3zePjNVKopwqgIyj/NjEPRUNT3KdtPuODua10
 ohpf9hMNS6KGws8fy7beIv1ZzPdtztz+ruaaUzAPaN4vslk6L13cVeGAbYxhQ4JbO5Lh
 pwAjEKLwCxrISQMeNzmMSP+JJH9SY/g4qOv+u8agRe9KJu1USfHu2EuCN6ifrrv/ZTAS
 x1cGzSFiztTQzHcWzJHBUMBCWFYX8kDqKel+Dtm5iIdvIWXy1eLURnGSu1OvqTRmlU7r
 icFg==
X-Gm-Message-State: AOAM531tWXt+8NswbMWnSNzxLinOS8+RGOXd1+QK07WDsVN1pmnPt7nl
 176vHYM6qU1HfcWvIu7tW6Tto8vH1i/1snGYJLHOJEEi0cup9eNwRgOA5SUOGmeuz7TuFTl4/qE
 YsCxGXIyBv4f46nM7/NrDRy9rtlA1Y5Ls3OY21KfS0KXk7KrhL88=
X-Received: by 2002:a0c:e254:: with SMTP id x20mr25376411qvl.153.1592248310809; 
 Mon, 15 Jun 2020 12:11:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwj+hvBQAKPt+byrNt/W/RfLxG8oA1B0DgJCFqfYRYBqVFrGbuH2lT9c3kQXLnUlruGJeek3QiU4rpm8VmJsTc=
X-Received: by 2002:a0c:e254:: with SMTP id x20mr25376377qvl.153.1592248310457; 
 Mon, 15 Jun 2020 12:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <CACi5LpMKSNz=_OQWmEQ2kaswbjAONjn2pXQiu=jCA=wMt3wGCQ@mail.gmail.com>
In-Reply-To: <CACi5LpMKSNz=_OQWmEQ2kaswbjAONjn2pXQiu=jCA=wMt3wGCQ@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 16 Jun 2020 00:41:37 +0530
Message-ID: <CACi5LpNYtAFq6PYjsYArViz+gzuh5-_CKZLBqo826oWhERrx8A@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, x86@kernel.org, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_121208_938449_1C7343CA 
X-CRM114-Status: GOOD (  30.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 John Donnelly <john.p.donnelly@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Steve Capper <steve.capper@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linuxppc-dev@lists.ozlabs.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Scott Branden <scott.branden@broadcom.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, James Morse <james.morse@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Amit Kachhap <amit.kachhap@arm.com>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Dave Anderson <anderson@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Paul Mackerras <paulus@samba.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Catalin, Will,

On Tue, Jun 2, 2020 at 10:54 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hello,
>
> On Thu, May 14, 2020 at 12:22 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Apologies for the delayed update. Its been quite some time since I
> > posted the last version (v5), but I have been really caught up in some
> > other critical issues.
> >
> > Changes since v5:
> > ----------------
> > - v5 can be viewed here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/024055.html
> > - Addressed review comments from James Morse and Boris.
> > - Added Tested-by received from John on v5 patchset.
> > - Rebased against arm64 (for-next/ptr-auth) branch which has Amit's
> >   patchset for ARMv8.3-A Pointer Authentication feature vmcoreinfo
> >   applied.
> >
> > Changes since v4:
> > ----------------
> > - v4 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
> > - Addressed comments from Dave and added patches for documenting
> >   new variables appended to vmcoreinfo documentation.
> > - Added testing report shared by Akashi for PATCH 2/5.
> >
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> > - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
> >   instead of PTRS_PER_PGD.
> > - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
> >   'Documentation/arm64/memory.rst'
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> > - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
> >   ifdef sections, as suggested by Kazu.
> > - Updated vmcoreinfo documentation to add description about
> >   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent out as a single patch which can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> >
> > - v2 breaks the single patch into two independent patches:
> >   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
> >   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> >
> > This patchset primarily fixes the regression reported in user-space
> > utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> > with the availability of 52-bit address space feature in underlying
> > kernel. These regressions have been reported both on CPUs which don't
> > support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> > and also on prototype platforms (like ARMv8 FVP simulator model) which
> > support ARMv8.2 extensions and are running newer kernels.
> >
> > The reason for these regressions is that right now user-space tools
> > have no direct access to these values (since these are not exported
> > from the kernel) and hence need to rely on a best-guess method of
> > determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> > by underlying kernel.
> >
> > Exporting these values via vmcoreinfo will help user-land in such cases.
> > In addition, as per suggestion from makedumpfile maintainer (Kazu),
> > it makes more sense to append 'MAX_PHYSMEM_BITS' to
> > vmcoreinfo in the core code itself rather than in arm64 arch-specific
> > code, so that the user-space code for other archs can also benefit from
> > this addition to the vmcoreinfo and use it as a standard way of
> > determining 'SECTIONS_SHIFT' value in user-land.
> >
> > Cc: Boris Petkov <bp@alien8.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Dave Anderson <anderson@redhat.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: scott.branden@broadcom.com
> > Cc: Amit Kachhap <amit.kachhap@arm.com>
> > Cc: x86@kernel.org
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-doc@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (2):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >
> >  Documentation/admin-guide/kdump/vmcoreinfo.rst | 16 ++++++++++++++++
> >  arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
> >  arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
> >  kernel/crash_core.c                            |  1 +
> >  4 files changed, 28 insertions(+)
>
> Ping. @James Morse , Others
>
> Please share if you have some comments regarding this patchset.

Ping. I think we have two Tested-by available from Oracle and Marvell
folks on this patchset and no further review-comments.
Can you please help review/pick this patchset via the arm64 tree?

User-space utilities like makedumpfile and crash have been broken
since 52-bit VA addressing was enabled on arm64 kernel, so distros are
obliged to carry downstream-only fixes for these user-space utilities
to make them work with the kernel which support 52-bit VA addressing
on arm64.

Thanks,
Bhupesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
