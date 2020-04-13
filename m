Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04EA1A6A32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zO+yRWivO7zwLIDCT4ZVIdeGl75BTvX3KATJ/50Bm0g=; b=l+H2WrMwXKw57z
	12L9VheP5B+b3VQ5dggynlwq5h/07f53Fwuz9divwRw89wAIcBEVdz3Jh9B22HYLZpm8DcCkWIOlm
	+FnUV04CRp/yVLsr44CiA2V6CAcypthl2a6+HZuJisxAsTWXXbEg28rpuygOLE6vjLgI/7E7PWhL5
	SLFddkkgTxwbqnJ5RBxn57DJbrfng+SV185X81TaJxPtIvBn9iOxPG7tbcANLpmOHycmiAZiYE9vA
	JD59oz7H1wH5TKfFnaGOVaC821LVObsx0pYsgEQbB/iD9xAglJBEJpGYB1R3+jVzUdeaJfqH6Ekj3
	8cIbaH/A5IPAPpYZBBgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO2Fu-0006zc-GW; Mon, 13 Apr 2020 16:48:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO2Fo-0006zH-IA
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:48:13 +0000
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3261520735
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 16:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586796492;
 bh=QF8Agpk1zRz9RjwLFjyl66kAjdopMGsM1h0d6AWC4HQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LGRHhEFIsv1L3ls40IRXyC+gH8mC9sClUsWlwxXcg9f3G/lOexIRapY8WYUUwqgEj
 qHhmqLq9a7KWUrd7UgOC2WTLAAfb9MNxmCm3YxVxnu49cDj0qfOoSkThvMssxqYp6S
 BrcwYjissIZbrstRJBz6pLHxY4qRVYT09PxRprwc=
Received: by mail-io1-f48.google.com with SMTP id i19so9962693ioh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 09:48:12 -0700 (PDT)
X-Gm-Message-State: AGi0PuZEFsVPj134fMOTQoh/YDBVW4Bl4jfYwFdJtUEfNUktC2TwznAU
 Mh3OB95xVW881Ig3kQBy1I4vv/OcpoiS9Usf89Y=
X-Google-Smtp-Source: APiQypKDCgIHmJiLmAtZys6y806W3RG2Xj5RcWWNymWBjmvmeFp4reUd+h4M6TGLbtHbkDIkn4MIPYlvAqEsrYK2zK0=
X-Received: by 2002:a6b:ef03:: with SMTP id k3mr5868156ioh.203.1586796491493; 
 Mon, 13 Apr 2020 09:48:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200413162135.14955-1-ardb@kernel.org>
 <20200413164130.GP25745@shell.armlinux.org.uk>
In-Reply-To: <20200413164130.GP25745@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 13 Apr 2020 18:47:59 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF7wwDq72N9=E9DFGs8yDqz=27-aAVC1-UuRStD70AVOQ@mail.gmail.com>
Message-ID: <CAMj1kXF7wwDq72N9=E9DFGs8yDqz=27-aAVC1-UuRStD70AVOQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] ARM: simplify handover from UEFI to decompressor
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_094812_613679_A06CD0E0 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-efi <linux-efi@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 at 18:41, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Mon, Apr 13, 2020 at 06:21:30PM +0200, Ard Biesheuvel wrote:
> > The EFI stub in the ARM kernel runs in the context of the firmware, which
> > means it runs with the caches and MMU on. Currently, we relocate the zImage
> > so it appears in the first 128 MiB, disable the MMU and caches and invoke
> > the decompressor via its ordinary entry point. However, since we can pass
> > the base of DRAM directly, there is no need to relocate the zImage, which
> > also means there is no need to disable and re-enable the caches and create
> > new page tables etc.
> >
> > This simplification is implemented by patch #5. Patches #1 - #4 are
> > prerequisite changes to permit the decompressor to execute from the
> > offset chosen by the UEFI firmware.
>
> Why?  The decompressor is already fully relocatable, so this doesn't
> explain why all these changes breaking up the single place where data
> is stored into multiple smaller pieces, making the code more complex
> is really necessary.  To me, this seems ot be change for change sake.
>

Please refer to patch #3 for the explanation. The EFI stub will no
longer enter the decompressor startup code at the top, but jump
straight to the 'wont_overwrite' label. Most of the contents of LC0
are never used before that point, so its load can easily be deferred
until afterwards. If you look carefully, you'll notice that that by
itself simplifies the code, because we no longer need to stack/unstack
those registers either. So I would argue that reducing the liveness
scope of r0, r2, r3, r11 and r12, and deferring their initialization
to the point where their values are actually needed is an improvement
in itself, regardless of whether the EFI stub simplification in patch
#5 depends on it or not.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
