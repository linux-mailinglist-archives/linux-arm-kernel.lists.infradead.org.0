Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AE63D0F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/uBmxxeHeBwZ7jGlxvClQeBZcsEIrYQqRmty2ERqENE=; b=JdDdWqZeKsr8Sg
	YJTsHHidmcUiMAQaMkMrzB4mVNreA8sK+PZIqyPqkpriFzD/yCzO+KFQp4WVdEXldntqQ+WrcJ4er
	BdYCKvn5u4xaDJOQP1l38FVk+jaLeoUsTMzDxWA79Axg1qUaI0vBi+F2bhZLYnSJVKGOjR3WA7bpn
	h0C8TQh8Vwx7Q7i7EZUr0l/8Q6mUX07WFlPrpn1HuRzdbseeoqPi0Et2877CnvGH/WcuQTCoB0+ZB
	MnaWAwb+g+ONy0wmfu73wOgUZEGflSUPjIr2JEC6R7pPBQuHZRTWrTluo3NUjRrsjXyq/pTnBiqSU
	WZuchrd27acvZwziMhBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haioa-00055S-V3; Tue, 11 Jun 2019 15:36:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haioK-00054n-09
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:35:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so7151213pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 08:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8h42m3mke7DA8ejB89qFnTkC5cX+aLshhHC5jTwYOa4=;
 b=sLMq+bA6sOUYAuoQSdZze7aS/o01HRJh37fgBzOaTlULVRlgN1Pzky0WnEt9ggPhRi
 JH1qa8PI3fUsxopnA8vxXjk80emL0gwgHoi/kN+wCfZhW7CtGG3mN+/yxVY59EUBa1rS
 M4cxQ83xr93VSRZJzwzbUXprtAi+dT3meCk3L8KOZ/xZDFb/kZqFJzv63133Zz0lw9er
 v1LYil8+krDw44YMHLuvpYAB34RsEpHwQbuoHBJWYMzgMu6DfV6usjm0aFv9/2YjnuNW
 tz3JzLRCLMzdWSO9grr5tL4TPlHUr6KXqW3Th206n5IMIeoSFDjvZhgTeHCUKYHlgpUu
 bTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8h42m3mke7DA8ejB89qFnTkC5cX+aLshhHC5jTwYOa4=;
 b=ktyqVbKGFRsSMpO0QJ8REvmejOVYL89ppZK1kswDmTsiqfBoh1E03OxTXjS+h4pIol
 zy9Y93tU+3JwUGd5osTMp7Ln4EmvjaWfvyp2BilRmUCGE6B9s1jfBCuRGswCtK4GBb/h
 vOBK68fgjF4pCCLqlFV3aMY9hoqetiOMcndDgJQNidQfek7kdtmBKGH8LhqxZ1cYZN/z
 T3+FTXAiSDQfSGgYZqIx88pgjttX5tp/mswpXdAQfQf6Qhq8BbsQlsyEIWzdZX3uKg1C
 26JGrpMMv146KvSUaScQBDcbBxmPbob1Zsvd3fG6pPWr8BiNvFl6iO2p6oKISJRTvCt9
 oTzg==
X-Gm-Message-State: APjAAAW/sdPUxan62K7/dmrIGGOsqnIvagW7Ehy1VKUVdVBszCixg4U2
 KZP/kC6Vh9hXwhbBKTnYZlp7WlvX4wESOKNZ0GqOEA==
X-Google-Smtp-Source: APXvYqwVttVVtet3fqIi0VnES8Ilb/p6V60nSXc7x8WFpoZ7Ynv9ahn+wWxWGukqfJnR2JBKBovfx92r2kGjPnyP20Q=
X-Received: by 2002:a63:1919:: with SMTP id z25mr21205093pgl.440.1560267342622; 
 Tue, 11 Jun 2019 08:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <045a94326401693e015bf80c444a4d946a5c68ed.1559580831.git.andreyknvl@google.com>
 <20190610142824.GB10165@c02tf0j2hf1t.cambridge.arm.com>
In-Reply-To: <20190610142824.GB10165@c02tf0j2hf1t.cambridge.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 11 Jun 2019 17:35:31 +0200
Message-ID: <CAAeHK+zBDB6i+iEw+TJY14gZeccvWeOBEaU+otn1F+jzDLaRpA@mail.gmail.com>
Subject: Re: [PATCH v16 05/16] arm64: untag user pointers passed to memory
 syscalls
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_083544_063015_329ABFAF 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 4:28 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 03, 2019 at 06:55:07PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > This patch allows tagged pointers to be passed to the following memory
> > syscalls: get_mempolicy, madvise, mbind, mincore, mlock, mlock2, mprotect,
> > mremap, msync, munlock.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
>
> I would add in the commit log (and possibly in the code with a comment)
> that mremap() and mmap() do not currently accept tagged hint addresses.
> Architectures may interpret the hint tag as a background colour for the
> corresponding vma. With this:

I'll change the commit log. Where do you you think I should put this
comment? Before mmap and mremap definitions in mm/?

Thanks!

>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
