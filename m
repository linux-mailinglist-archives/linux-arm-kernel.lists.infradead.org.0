Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 177E248979
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aae5ftb0OSqO0JgHm4/T9S5iqa4knO9wSYa3Nf4eD8w=; b=HBu6bN+C6jo0pd
	VoTULuFKoU9JBFO3i9DP2gYsdhXd2jgULexb4hMJmbwR1FCFfoHumBQA9MjEZN6OK6cEWK5KI6wev
	bsoWqrzhcpTMezbQlAsT4teYeuL3panaPN+u0ceNa4XEKqdTHTWUXfaonK1IAlTIk1PDdjudyHqcu
	e4+qQwKHt45nDSoWZRCl4CP5NqHbQU7T6ZC2aVbRMyTxulLLigA039oEi89lEXaRFamlvm9XMCpFq
	8561tnO3lm5nYu1k24UbXwJUjH/8yR8LuJF+X20Nd9Wm2QI2pBjJBJ4z/FLtNYv9buWOTxIEoqnc0
	GUy0sV74h2UdO6dYcMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuxL-0008Mi-KS; Mon, 17 Jun 2019 16:58:07 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcux6-0008LF-IB
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:57:53 +0000
Received: by mail-vs1-xe42.google.com with SMTP id l20so6588820vsp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=retltkRYeaxJ6adF3YGzOCqdGSJ+TnMcYlKByHm/5DU=;
 b=HM9XZcRH7jNoUwKtDn/wkkMYYyg9wr6zjYQcvYAYvWF5M1tzrgs41DdFiwwTgvt1O5
 KjOS0GHXaKxXHbuqb3yaHFY6s5m+GgG8jbRV5AKURRu+BUwOFgp4r3kAue00v9koQG1w
 A3M5l+cF/ibNvE8yJCY4E6+A4Wcv9UTKgrtukbJgSFBngoBXKyC/nUsbJSqEshzxgU7v
 OjkzG8cTM1db0z9+CHPRCzJf6yJOwQUirXZIKRWYCQ5D1XOdgX6CDWUq7ZrKtG2PzpGN
 +3DiSEl9lQXDncbHpzuwreL+mokGyGGK7aL+x6DR/HBeGpJarIMjtc91XuMaEVI3t0qt
 MUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=retltkRYeaxJ6adF3YGzOCqdGSJ+TnMcYlKByHm/5DU=;
 b=lOCHVU8EkK0LUNxrJXoKGWclPvbyV7uQ0sSCg7BHjlgazRUhKELmftqQeb4mVM9ziQ
 gHW9fpv+ouwhsPGK+OBp92/JFJP34ApB+fBK7jqq6MHOOAIA8f+1YFr0lFJhfc5GKqv5
 1XJ+w62CWVdqLJX+Sn86MeLTuAHQJLvfdFewMMO4V01NB22+RvmDtyDOQYHGv/H2HuhB
 jEn9RZn9yU4oZQsxKEg3CpKyla9n2qz6g4slV2zI43BXWTrvHOsf+1J1/A8m/aCKwfk0
 fdX60tYAfAy+pr6srY16W/MleB+kg7KFbk0eaYTr+I0loGjqUXcWO0U06xzt+j+ZVde5
 NCLQ==
X-Gm-Message-State: APjAAAXQJm/eSYE36/WrYlBP5EkpOyNJ3cvF4kqoBSHlVC7mbSCR9vNY
 Lg65fvUfSFOx+X/gUYc6UNRmi7dU28VlXEkFSulGyQ==
X-Google-Smtp-Source: APXvYqzrhGSVJ7DV/F7d51q9N5ZE/3Gdj+PUpdVhrLQtXpA774FgTPlA9JMz0E4zBMsomoYTx9It+Pl+lwBwRCw5EpI=
X-Received: by 2002:a67:de99:: with SMTP id r25mr60881073vsk.215.1560790668543; 
 Mon, 17 Jun 2019 09:57:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
 <a7a2933bea5fe57e504891b7eec7e9432e5e1c1a.1560339705.git.andreyknvl@google.com>
 <20190617135636.GC1367@arrakis.emea.arm.com>
In-Reply-To: <20190617135636.GC1367@arrakis.emea.arm.com>
From: Evgenii Stepanov <eugenis@google.com>
Date: Mon, 17 Jun 2019 09:57:36 -0700
Message-ID: <CAFKCwrjJ+0ijNKa3ioOP7xa91QmZU0NhkO=tNC-Q_ThC69vTug@mail.gmail.com>
Subject: Re: [PATCH v17 03/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_095752_609434_C638BCB7 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
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

On Mon, Jun 17, 2019 at 6:56 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Jun 12, 2019 at 01:43:20PM +0200, Andrey Konovalov wrote:
> > From: Catalin Marinas <catalin.marinas@arm.com>
> >
> > It is not desirable to relax the ABI to allow tagged user addresses into
> > the kernel indiscriminately. This patch introduces a prctl() interface
> > for enabling or disabling the tagged ABI with a global sysctl control
> > for preventing applications from enabling the relaxed ABI (meant for
> > testing user-space prctl() return error checking without reconfiguring
> > the kernel). The ABI properties are inherited by threads of the same
> > application and fork()'ed children but cleared on execve().
> >
> > The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
> > MTE-specific settings like imprecise vs precise exceptions.
> >
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
>
> A question for the user-space folk: if an application opts in to this
> ABI, would you want the sigcontext.fault_address and/or siginfo.si_addr
> to contain the tag? We currently clear it early in the arm64 entry.S but
> we could find a way to pass it down if needed.

For HWASan this would not be useful because we instrument memory
accesses with explicit checks anyway. For MTE, on the other hand, it
would be very convenient to know the fault address tag without
disassembling the code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
