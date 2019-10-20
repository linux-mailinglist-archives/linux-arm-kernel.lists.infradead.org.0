Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AABDE0D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 00:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AB6tu42IMPUDICJ95sV9G7Ah9I2sw9htjG8F9PJLO+M=; b=rTjTdMvWzLBhxT
	hW8XhRAY3E7tLkphNTdb6NmzSuFY/TfiKA7sDxr15ueQXPpB/rnNNPsnu2bljlaoQA1/s3iU9t4L0
	dmICSfKXP6AiUwyqHu1Ysw9P85fISd80tFX9Y45T77VvfsDoi5txXd4R/jQvwRXSQGCv+RX7PBxHl
	RdCW/fdKZlSjjI8ue/zzms40/0QY4HMAfAXbmtoMXcTPyZytU0QPsV8iRnzFB3h5zcNrNkYdgi54D
	/xCwxR2D9RvdB49+TE5csyF2cJ0/AuMDymM9fs7S/FhgA7Yz0VTCjIuOMt/miaa+XSTU5Zaj6mltj
	nMTml520yyPG4IUv5HAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMJRx-0006Jd-B8; Sun, 20 Oct 2019 22:13:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMJRc-0005yq-Lc
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 22:13:02 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96C48222CD
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 22:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571609579;
 bh=Bj6TMw73TeyNuW745jBR36LTFG28G62Y2RhDJWbn4wI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FRoTaGZXEKhnt9Rb6IoiDJVJEHLgZDccBz3pezFv9eLPf+LifiuBS7qNd37ytofN/
 AOQoDeNgpg7fbN7cHZm2yJC820o7PHaB8ll9LvE+7vztA/747QyQ/dZDPqddoR2y9a
 HFD4JeSqLjnmkIR4vifOJ1qWdCvXZUfJxUR5GmWI=
Received: by mail-wm1-f53.google.com with SMTP id r19so11148791wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 15:12:59 -0700 (PDT)
X-Gm-Message-State: APjAAAXppU3MPqsJEH7OXWaQpUe6WntsIiQPnQnKL/Td14OsOgrhdejE
 RTjFu52a1C2zTsV2Lajv6IvbgbAAMuuhfP5xAPQBHQ==
X-Google-Smtp-Source: APXvYqzMQ1Ze2hicw5XWHD67VMC7zJog1FHKMEmLDyh4ecdsNSYrUq/3HwKGfn5UAcczdDu2eqPXZy7UkPB8fZDR+yU=
X-Received: by 2002:a1c:a556:: with SMTP id o83mr17574912wme.0.1571609577995; 
 Sun, 20 Oct 2019 15:12:57 -0700 (PDT)
MIME-Version: 1.0
References: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
 <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
 <CAAhV-H6VkW5-hMOrzAQeyHT4pYGExZR6eTRbPHSPK50GAkigCw@mail.gmail.com>
 <alpine.DEB.2.21.1910191156240.2098@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1910191156240.2098@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Sun, 20 Oct 2019 15:12:44 -0700
X-Gmail-Original-Message-ID: <CALCETrXik5bzj-jQyHgqkzXqhYVJzedyD6WqBS+m+zmzKzCcDQ@mail.gmail.com>
Message-ID: <CALCETrXik5bzj-jQyHgqkzXqhYVJzedyD6WqBS+m+zmzKzCcDQ@mail.gmail.com>
Subject: Re: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_151300_822212_A96211ED 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 3:01 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Sat, 19 Oct 2019, Huacai Chen wrote:
> > On Fri, Oct 18, 2019 at 11:15 AM Andy Lutomirski <luto@kernel.org> wrote:
> > >
> > > On Thu, Oct 17, 2019 at 7:57 PM Huacai Chen <chenhc@lemote.com> wrote:
> > > >
> > > > In do_hres(), we currently use whether the return value of __arch_get_
> > > > hw_counter() is negtive to indicate fallback, but this is not a good
> > > > idea. Because:
> > > >
> > > > 1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
> > > > 2, For a 64bit counter, a "negtive" value of counter is actually valid.
> > >
> > > s/negtive/negative
> > >
> > > What's the actual bug?  Is it that MIPS is returning 0 but the check
> > > is < 0?  Sounds like MIPS should get fixed.
> > My original bug is what Vincenzo said, MIPS has a boot failure if no
> > valid clock_mode, and surely MIPS need to fix. However, when I try to
> > fix it, I found that clock_getres() has another problem, because
> > __cvdso_clock_getres_common() get vd[CS_HRES_COARSE].hrtimer_res, but
> > hrtimer_res is set in update_vdso_data() which relies on
> > __arch_use_vsyscall().
>
> __arch_use_vsyscall() is a pointless exercise TBH. The VDSO data should be
> updated unconditionally so all the trivial interfaces like time() and
> getres() just work independently of the functions which depend on the
> underlying clocksource.
>
> This functions have a fallback operation already:
>
> Let __arch_get_hw_counter() return U64_MAX and the syscall fallback is
> invoked.
>

My thought was that __arch_get_hw_counter() could return last-1 to
indicate failure, which would allow the two checks to be folded into
one check.  Or we could continue to use U64_MAX and rely on the fact
that (s64)U64_MAX < 0, not worry about the cycle counter overflowing,
and letting cycles < last catch it.

(And we should change it to return s64 at some point regardless -- all
the math is signed, so the underlying types should be too IMO.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
