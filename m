Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D77A195E9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:27:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyhAlas3ynSAtvbH4n5fYiq4bBQxoMmKA0UkRww7xTU=; b=jby4AQizLuI7gf
	cdyuEMjRXXtS1Uq503yq93pUksGdAQPSUbZXOXUSafuU+B63CfLHadb8+jdR4cIvfmpAp8jOhQtwF
	x41znlXE5gq9hFGsEubvFCTRrA3u72q5qGMdPWOlcDGZKrVmoTb+aABVPvhQMtNlK/4SZa9RmOVRI
	LBCGzPJgjWnYMNwvvLaQUpJuiQXIZXm1/akeiEfYhn1mvrNjgGhonI+S/cekGHkV7DPHLrzsv+2RF
	TG1g2G5cItN3lddIDozFSzaPmr0ork6tFeOXUQVq0xdf4ltMmpbYxqjmDTHQZZOI0v/buS/p8VBUF
	HJL4uDy+COE5z+BvmoKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHudG-00054E-NT; Fri, 27 Mar 2020 19:27:06 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHud6-00052V-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:26:57 +0000
Received: by mail-wm1-x342.google.com with SMTP id e9so1733471wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 12:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iFwQwvEQwbItT1yCyvSU22lEGaXX1HTuX2BclV11uB8=;
 b=Sk+YrsdaDk/GH9ye+zHrzWEPfbwYlO8bST2FGTn71bFdaZizmD02crtcRBdZFfQb57
 PhMqwzmJ255yR2DM6X9QuJq49QXSBXi12xgo33kPzGci5vcBE0XdYs1USwJ6TskkopnW
 x0btbYcusonMQMErdA5pcQboB3/vaBdH8RZpZ2VVe0eRrEX+M3aMjYghR11wHDN6qLaE
 Tb2Hh9EiBwOJ1fP4sO1MQKCwgOLCOQung+PZcfAeaaToLGyExxsAR09ChlVsJ18W0XvE
 kRK6mFu8q7ueAjhAKhz+Ao6t+D6c9uDzKJXx+7M2I8iCUKHNpsElOfIUEXsTZcXgKV8n
 uhWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iFwQwvEQwbItT1yCyvSU22lEGaXX1HTuX2BclV11uB8=;
 b=ZW5WowjJPuhPoKxpq0UEsEUQgUF6kAicxEEmH7uOMgsLc6N2wM8OPSTpOyX0cjrnXw
 F54nDWQHrPQrFp4TMaUALcddyuLDEY0+g1QFKJU7r5uJ/sLWLk45ZE8G4saz96q3xbfC
 HSMeRY4R6xKZy1Uzwv+ZqjrpXRAey77PA2tmtV4V0IA2uamLf8c+U1/XPtlz5T2pFTT7
 NuZyDwfuKJQ67o+3P1KOoYzeCoPhDtzCpzIoR+u6zKaVp8LYqsxdiOPaNAI8pYEU9VNd
 8GUX6HOEU7hBHVrqiSXyp5Xn/RxMOyY5fOM+IiudZKVaubmCkpP4tGiJIqK/z9tGrnD5
 YHXQ==
X-Gm-Message-State: ANhLgQ0c90Hnorf2EPLXdIPU6wjHs1D6dAj19q9TMA07o39BOhd6i+Y5
 NXFYlWXIcdmk+BYav1VxCaVWVSkOcoT2etOHHzNCpQ==
X-Google-Smtp-Source: ADFU+vuGmWxJjJqYk272d7dQpYnuRQcIiS+M1bEQrQ0Sh1rAQcQGmLCXSZBh0yUYpLc9NrwQ2+SJWhQGpXEms8o4Ep4=
X-Received: by 2002:a7b:c764:: with SMTP id x4mr178982wmk.39.1585337211425;
 Fri, 27 Mar 2020 12:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200312171755.177743-1-pcc@google.com>
 <20200325174001.234803-1-pcc@google.com>
 <20200326164538.GC26987@mbp> <20200327075655.GA32241@willie-the-truck>
 <20200327113859.GA18117@mbp>
In-Reply-To: <20200327113859.GA18117@mbp>
From: Peter Collingbourne <pcc@google.com>
Date: Fri, 27 Mar 2020 12:26:38 -0700
Message-ID: <CAMn1gO6r-5JKPzWBz7abDxCZLGD9-sR5XLayxezLRkMMQEz3hg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Expose original FAR_EL1 value in sigcontext
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122656_262754_00FC776A 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kostya Serebryany <kcc@google.com>,
 Evgenii Stepanov <eugenis@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 4:39 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Fri, Mar 27, 2020 at 07:56:56AM +0000, Will Deacon wrote:
> > On Thu, Mar 26, 2020 at 04:45:39PM +0000, Catalin Marinas wrote:
> > > On Wed, Mar 25, 2020 at 10:40:01AM -0700, Peter Collingbourne wrote:
> > > > The kernel currently clears the tag bits (i.e. bits 56-63) in the fault
> > > > address exposed via siginfo.si_addr and sigcontext.fault_address. However,
> > > > the tag bits may be needed by tools in order to accurately diagnose
> > > > memory errors, such as HWASan [1] or future tools based on the Memory
> > > > Tagging Extension (MTE).
> > > >
> > > > We should not stop clearing these bits in the existing fault address
> > > > fields, because there may be existing userspace applications that are
> > > > expecting the tag bits to be cleared. Instead, create a far_context in
> > > > sigcontext (similar to the existing esr_context), and store the original
> > > > value of FAR_EL1 (including the tag bits) there.
> > > >
> > > > [1] http://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html
> > > >
> > > > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > >
> > > The patch looks fine. However, I wouldn't queue it for 5.7, it's too
> > > close to the merging window and I'd like it to sit in linux-next for a
> > > bit. Unless there are other comments, it looks fine to me for -rc8.
> >
> > You mean 5.8?
>
> Yes.
>
> > I'm also a bit surprised not to see a docs update, given that
> > we talk about the general lack of tags in siginfo_t towards the end of
> > Documentation/arm64/tagged-pointers.rst
>
> Good point. It's worth adding this to the tagged-pointers.rst document
> since the only use of the raw FAR_EL1 is for tagged pointers.

In v3 I've added a paragraph about far_context after the paragraph
that talks about siginfo.

Unless I'm mistaken it looks like that paragraph is only really
talking about the fault address (there aren't any other user address
fields in siginfo on arm64 as far as I can tell), so I reworded it so
that my new paragraph follows on from it (and clarified that
sigcontext.fault_address doesn't have the tag either).

Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
