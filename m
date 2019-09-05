Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A44A9D0F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FS3qudRCZlI9pJMNGag7pfw7EvoIpEJa4YIIpJqIP/M=; b=tPgBt7Ymres5rp
	3FBgE6PpKZ+tOlFJLXi6fvEo8Cn3WkQBRzRvssVD+n85+PvvDZ9vyDhevTA15ytOqyHHRmGY5VRI+
	vI5fKgzIDrxii3l2qNnBAXIe9r9GQ9d8DBnmrM45fVcEVmgbArvCzGrzolTEVxrG5MR/3H5egeHaN
	yKJYcVVwFkPygKCLl6GA4cxlDCmaqY+FGBBnyNuHxS8t3HoFuZJjbWH+LZvL3092y+odkEyPqyIwW
	disSGNTNwOR+3nIlkIK7YmZ+ZkhLctRLGF9yFzJPiT/LrWWbyh/Kgir8TT0GnQOFnH0FXVROHOsTw
	IKlJxbD8wXR4YmhMpyvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nCI-00080m-1h; Thu, 05 Sep 2019 08:32:54 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nC0-000802-Pb
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:32:38 +0000
Received: by mail-ot1-x343.google.com with SMTP id c10so1321944otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUJk2VTTKC0wN6jcWEhzpQ/cQIMP1HgLM9BleCNY2Mw=;
 b=SuUO2rWqXxXye2UAWa4boZ3MzkhHr1kMRk7hmUEtE/4bTQV09kjQ2Gt0bFfY7jy6Lt
 c/CjUw2y9YZz9PjKOs6ZgbSgAXpr3lfgbrZhxp8su0NVKaaOMe7fOQf9SZi2zc8BBVTM
 vjAL1pS5Xu1dHCg9bPgZfdi6mFDx1NCGTK+hXYe3E1ZoqqhGTi0uwK3Eh55yEdKRDMrB
 +j8i+7EukUgFy0S0lYE0Ohx3Lbh0CpKcUd0dpxx4Ipz7+Vswg0Yj+axiv9QclP7v7FjA
 amXguy+dq916U5xwXOBLDwDqSA0gCjgbyzNwIXY+K6fJFuk0FIByxBUQ0PKhskTuw7/p
 1rnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUJk2VTTKC0wN6jcWEhzpQ/cQIMP1HgLM9BleCNY2Mw=;
 b=DKXemtVKEkdXvxDwKo2UnmaYZ68DJeoUpRHHs8hl3VO9Aaaqem9gjhUBxTnbu2KM2W
 gGT5cwN21X1pTqj0F33eAHDD3ctjL9eXSedUiguXLXChGAm/CVL/er1EpTdE4eIChjwL
 ICrkkF+qiJDqJL1nYqSt+GOZyKc20Pljfn/Fs4GxPEFjzqdwJSNoaPxXWYWQjKR4tkfY
 aBRFf5hhPJfH6Rzd7y6nB1NiihmoPxArdzlpjaZ2ccnaXn4CLMq0Z+k5OfvsFo0KdU4p
 1b8hMrDYGclat6zLtPdWWHIIA2aKaOyJwBEHYt8fKLTlDUXp5XMC+mPIBhDz3wVuarjo
 gpmQ==
X-Gm-Message-State: APjAAAURHOfD/SPab4RMEBss6/TmpWyR4nJmO17D2Ll9WM199yTZtCEK
 nLN3TCaIbE8DLbLT0EHqiKCavZuHoUSomIURhA6JYQ==
X-Google-Smtp-Source: APXvYqxC/UAKb7Op1KmsNyTq+/IpTxOo5OnutBYZc/cmcRUJsuSxQX8Ry7sggo5iBT79J9DEW/77PHzMJ2XoCR/yJsY=
X-Received: by 2002:a9d:65cb:: with SMTP id z11mr714847oth.232.1567672355504; 
 Thu, 05 Sep 2019 01:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190904180736.29009-1-xypron.glpk@gmx.de>
 <86r24vrwyh.wl-maz@kernel.org>
 <CAFEAcA-mc6cLmRGdGNOBR0PC1f_VBjvTdAL6xYtKjApx3NoPgQ@mail.gmail.com>
 <20190905082503.GB4320@e113682-lin.lund.arm.com>
In-Reply-To: <20190905082503.GB4320@e113682-lin.lund.arm.com>
From: Peter Maydell <peter.maydell@linaro.org>
Date: Thu, 5 Sep 2019 09:32:23 +0100
Message-ID: <CAFEAcA-3ne3Z0dwz9C9kJmk36_AdNJRuqgB1jzFJ0WUB2NT_iQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] KVM: inject data abort if instruction cannot be
 decoded
To: Christoffer Dall <christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_013236_842032_A0A41AFA 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Daniel_P_=2E_Berrang=C3=A9?= <berrange@redhat.com>,
 Marc Zyngier <maz@kernel.org>,
 lkml - Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, kvmarm@lists.cs.columbia.edu,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Sep 2019 at 09:25, Christoffer Dall <christoffer.dall@arm.com> wrote:
>
> On Thu, Sep 05, 2019 at 09:16:54AM +0100, Peter Maydell wrote:
> > This is true, but the problem is that barfing out to userspace
> > makes it harder to debug the guest because it means that
> > the VM is immediately destroyed, whereas AIUI if we
> > inject some kind of exception then (assuming you're set up
> > to do kernel-debug via gdbstub) you can actually examine
> > the offending guest code with a debugger because at least
> > your VM is still around to inspect...
> >
>
> Is it really going to be easier to debug a guest that sees behavior
> which may not be architecturally correct?  For example, seeing a data
> abort on an access to an MMIO region because the guest used a strange
> instruction?

Yeah, a data abort is not ideal. You could UNDEF the insn, which
probably is more likely to result in getting control in the
debugger I suppose.

As for whether it's going to be easier to debug, for the
user who reported this in the first place it certainly was.
(Consider even a simple Linux guest not under a debugger --
if we UNDEF the insn the guest kernel will print a helpful
backtrace so you can tell where the problem is; at the moment
we just print a register dump from the host kernel, which is a
lot less informative.)

> I appreaciate that the current way we handle this is confusing and has
> led many people down a rabbit hole, so we should do better.
>
> Would a better approach not be to return to userspace saying, "we can't
> handle this in the kernel, you decide", without printing the dubious
> kernel error message.

Printing the message in the kernel is the best clue we give
the user at the moment that they've run into this problem;
I would be wary of removing it (even if we decide to also
do something else).

> Then user space could suspend the VM and print a
> lenghty explanation of all the possible problems there could be, or
> re-inject something back into the guest, or whatever, for a particular
> environment.

In theory I guess so. In practice that's not what userspace
currently in the wild does, and injecting an exception from
userspace is a bit awkward (I dunno if kvmtool does it,
QEMU only needs to in really obscure circumstances and
was buggy in how it tried to do it until very recently)...

thanks
-- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
