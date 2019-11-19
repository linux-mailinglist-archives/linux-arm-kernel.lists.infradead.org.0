Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5060C10196E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 07:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g78JWL8CfYVLjhvs/Tx2nHdbgth1IFp7FBaVO1IHF4M=; b=DMIuABs6NzNZV9ufwdPqLVQQrC
	ag4u34BXnleJnycZO/xodIM+3Zbx3A9QsK5tSdVx049IX15Rwg7hZCIE+BMY2HMq9ivTu3vCSlmOl
	FQnqDrEFg4Zjr3NipPjBYX1lK/Cw+mHePcRWM/Ep37PtBxkkzTioFXvqaGRkdyCiYfuCcRl2QrBLl
	vF93FPKT266bniuYBwChaNc/NfaQMzByST4zsOqxVZhZY2qVSEZtNAUX79kp07o3ev2EWvHXnYVpK
	eaLdrMGHY6YAsJM77dYSPXSwDYK/xubt9bbBoWb0q6yOoN86QprFgxYbWw9oYS3+5QGdo/lZiM6h8
	LlQFIQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWx4X-000477-3u; Tue, 19 Nov 2019 06:33:09 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWx4M-00045a-F3; Tue, 19 Nov 2019 06:33:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id k13so21864809ioa.9;
 Mon, 18 Nov 2019 22:32:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=NXaQYQk0g4GZrnX0H+C5/sQj56d3X20l4tE5DHhQOrA=;
 b=sifSK6MU7G+EcqYvJSuSa2S3hMP9SB6t7e29d7KHAyYYgBX4YqD7x0RtWHSqj7x64T
 UCnhKrr5Oiz+XULwu7eB1ZzOI6VyeAHiAbd+ovtLWxxuyjZjQERBAwrzjvdoMJrtvL2X
 OuCAUcEOqMXV21HuTt3LYU4PJ7a9/zwV0cPSFw8iKelRg6k0kRED6h1IpqHOT34kW5Dv
 V+F06IQt2Mi5Kauqgd6BFTTPOuzVSntsEr/Hz/LVi2r7g9MduWF7OaGr1l12AxH8Pw4y
 IkHXTj8+xHCrm+IKudRyf5hLWkkP4WKgN+znsqikOz7kNlhe0ebhtZo0RHJwK0BSQojS
 kitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NXaQYQk0g4GZrnX0H+C5/sQj56d3X20l4tE5DHhQOrA=;
 b=R6ySLPJnfMdMcypNV6xtDfyHVVAC4+BIz68j+6VFk3A9zQb506PyphwTV4zPGoqo0c
 VhuSVbvx5wJPpjXlzeQoTCIrmUxjvCINuu0EnKFxSKjyuTbjOaww/Kz+PLE2bk3euS/X
 QehizwPJQNqhE2wLDnj4AA3uJbH8VZeI6F3ooUUdDzVwcl7ErNc6cmmPwejOiG0jUtyc
 cPZ9A1WKnQ4Qf2KIKsg4r+xeukKGY0YrOg77q13Gxa2lPZPfNu+yHWQN+iI/7WGqT3z8
 sHwxPJSi8LyU5iusJXqujyQBrXGDjuXJ2Fb5lUZd34Ldedfkk8V61thnnsYC2JjhMoWw
 pbig==
X-Gm-Message-State: APjAAAVSiE0z2xzbcEHBxa9c4i/QJqvEpZx8/KY0x129IM3upXzMKCx8
 HGe7s8/PtsVJWt6mT1jM8iXYFJI/fPfybDHwCFE=
X-Google-Smtp-Source: APXvYqxsiN2r32tu6Vr3FT387ecd9RsbnxXZTJSYF8E4DcxZPX/OBCeKQumlgww/wRDUDEfuWrt3IfZaSkRqJ6CTjKM=
X-Received: by 2002:a02:b48:: with SMTP id 69mr17013960jad.25.1574145177173;
 Mon, 18 Nov 2019 22:32:57 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
 <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
 <20191115015959.GI22427@linaro.org>
In-Reply-To: <20191115015959.GI22427@linaro.org>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 19 Nov 2019 12:02:46 +0530
Message-ID: <CAJ2QiJJOSspLKRh+jRB_o0o9nmeAsiFKzxGJ8R0pYPRM4iptmw@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, 
 Boris Petkov <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, 
 Jonathan Corbet <corbet@lwn.net>, James Morse <james.morse@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
 Dave Anderson <anderson@redhat.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_223258_505215_912E15EE 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Akashi,

On Fri, Nov 15, 2019 at 7:29 AM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:
>
> Bhupesh,
>
> On Fri, Nov 15, 2019 at 01:24:17AM +0530, Bhupesh Sharma wrote:
> > Hi Akashi,
> >
> > On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
> > <takahiro.akashi@linaro.org> wrote:
> > >
> > > Hi Bhupesh,
> > >
> > > Do you have a corresponding patch for userspace tools,
> > > including crash util and/or makedumpfile?
> > > Otherwise, we can't verify that a generated core file is
> > > correctly handled.
> >
> > Sure. I am still working on the crash-utility related changes, but you
> > can find the makedumpfile changes I posted a couple of days ago here
> > (see [0]) and the github link for the makedumpfile changes can be seen
> > via [1].
> >
> > I will post the crash-util changes shortly as well.
> > Thanks for having a look at the same.
>
> Thank you.
> I have tested my kdump patch with a hacked version of crash
> where VA_BITS_ACTUAL is calculated from tcr_el1_t1sz in vmcoreinfo.
>

I also did hack to calculate VA_BITS_ACTUAL is calculated from
tcr_el1_t1sz in vmcoreinfo. Now i am getting error same as mentioned
by you in other thread last month.
https://www.mail-archive.com/crash-utility@redhat.com/msg07385.html

how this error was overcome?

I am using
 - crashkernel: https://github.com/crash-utility/crash.git  commit:
babd7ae62d4e8fd6f93fd30b88040d9376522aa3
and
 - Linux: git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
commit: af42d3466bdc8f39806b26f593604fdc54140bcb

--pk

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
