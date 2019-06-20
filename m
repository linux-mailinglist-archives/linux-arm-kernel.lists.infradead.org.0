Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0135E4C93B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 10:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=51jZb2l+o6G3ISAjM1G7b4bGiwCzdRSFsk+gMSrw4cY=; b=f91vBJ/NQDdALx
	HMoKdYEpwG+twwI5hEelWVXYvfE8EAv+lQJqrpPm+PCq0BYkcEz10yr7msQpvR6IQ4Ritm8ceWIgF
	Jck7c7YZCrDGJLVohwahcBkjcShW9+CU0tvs7u+UuaXRM3gCRAsl76+2uOwNI1tDrtpy2e+5pUJOo
	plW+fThh7vQ/Dr81bBLJ//vJZYhRcPAIzvcdiiYsqWgOv/dWj7r1BfKT23LNyJWCZMdvrRT/1hHYm
	xX7kdDQwnRmSL8OsQJiIPQUtwm6Mg5/HuBplMIRvfh65k49vkYn0FIdqMG1kH7V4fsmUuVrEkCi6f
	3FRHY8DO1AJIjlhqnefg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsGY-00011H-0W; Thu, 20 Jun 2019 08:17:54 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsGK-00010r-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 08:17:41 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so600401ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 01:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L4YztDUoEeZNSItpvBqXAMHzKgEhPW4KSrwgqWZNxZ0=;
 b=OBkhp4o3op8N2jgrTX4I/tH93sjhXYIrF0FFetZzSv5AC5XT2nhL0Kjz7jdLDHnSGI
 ArUBUXG3lrb4oqMsxfLQA0Aza0zz9fjxvKqUw7IW8o4VFBzy/sSIGS5DPEVQKynMo4Hq
 cc72AEowt4e+lj0UWxoRKW5uhJoH1TTTQOQlOB6s030MpuGnWMzevxg9fObiQFOMcUzv
 94xb/435Se3+UVm+a1r9qtsgPjAbQ2jsRiaKilMEVCsLHzp7GvyVifWDs/tg7HVxTkHp
 ngruAOTG+MemFJ5d7eYJAsLl9ylhIpBA+ip8zoTQTIVIdf+3ZqIKhak8k94Nh6iiqbku
 qG4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L4YztDUoEeZNSItpvBqXAMHzKgEhPW4KSrwgqWZNxZ0=;
 b=gMjc3cYVftdsOUc06I6YNc2zDh3BGKzL0cqeS2ty7+8Cw6ywqRuU6MdlB3x/FzSZMa
 HO/J1uyzwGNyNR4CjT5EQGOcdC13C7BYEbVabNCWv8clrDUmkqnImSnYk1iFMModHNew
 WY7uiuFolCjE+vfa1vEdxYJYooFUn7IK18Qj1wBeAqZpCGrEdxZ9JWPXJ1ggv2YV73Fn
 0Gv1fuBq4h0qXeaiBqJfnd/UCIZYG8wSlA8judTf+EJ1D/VxxH/CujHS4g5sUra6jLfm
 YgvGXRvuQpgeDaG9LVW9EqlB839tZWsCvf+CIunRdkn0gwZBmX3LQFGHgXne69S+VXTf
 0kRw==
X-Gm-Message-State: APjAAAW6HJCl06hL2i4G+PW7/z1VWEsJkymGtlzuOI7mHMTYfIvCYjR/
 j327Dpli3UshA6cxm/e1z4N2La7xKz8ernb89UgTYA==
X-Google-Smtp-Source: APXvYqxe4q2rYA/eK3CssvAan7/QclqCFivs0lgX+SqqohST3vQOcRkfXN2YktNNYJxfT76HM1HWD0WoW2I90qYqTFc=
X-Received: by 2002:a02:3308:: with SMTP id c8mr33710225jae.103.1561018658694; 
 Thu, 20 Jun 2019 01:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
In-Reply-To: <20190620074640.GA27228@brain-police>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 20 Jun 2019 10:17:25 +0200
Message-ID: <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_011740_346840_89CA691C 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 09:47, Will Deacon <will.deacon@arm.com> wrote:
>
> Hi Nick,
>
> On Wed, Jun 19, 2019 at 05:32:42PM -0700, Nick Desaulniers wrote:
> > Generated via:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make defconfig
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make menuconfig
> > <enable CONFIG_RANDOMIZE_BASE aka KASLR>
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make savedefconfig
> > $ mv defconfig arch/arm64/configs/defconfig
>
> Hmm, I'm in two minds about whether we want this on by default. On the plus
> side, it gets us extra testing coverage, although the /vast/ majority of
> firmware implementations I run into either don't pass a seed or don't
> provide a working EFI_RNG. Perhaps that's just a chicken-and-egg problem
> which can be solved if we shout loud enough when we fail to randomize; we'll
> also eventually be in a better position when CPUs start implementing the
> v8.5 RNG instructions (but don't hold your breath unless you have an
> unusually high lung capacity).
>

For testing coverage purposes, exercising the relocation machinery etc
even on no-kaslr boots would be beneficial imo. (The kernel is
relocated once for non-kaslr boots and twice for kaslr boots on kaslr
capable kernels)

> On the flip side, I worry that it could make debugging more difficult, but I
> don't know whether that's a genuine concern or not. I'm assuming you've
> debugged your fair share of crashes from KASLR-enabled kernels; how bad is
> it? (I'm thinking of the case where somebody mails you part of a panic log
> and a .config).
>

When you are debugging using GDB, it can get a bit tedious, since you
have to pass the offset when you load the symbols. However, in that
case, you can just pass 'nokaslr' unless you are debugging something
that is affected by the randomization.

For reading backtraces etc, nothing really changes, since we get
symbol+nnn/mmm entries (and the full panic log prints the KASLR offset
as well, in case it matters)

> Irrespective of the above, I know Catalin was running into issues with his
> automated tests where the kernel would die silently during early boot with
> some seeds.  That's a bit rubbish if it's still the case -- Catalin?
>

Yes, it would be good if we could fix that. In fact, I would argue
that having this change in would have increased the likelihood that
someone else would have spotted it and fixed it :-)

In fact, given how many Android phones are running this code: Nick,
can you check if there are any KASLR related kernel fixes that haven't
been upstreamed?

> Finally, I know that (K)ASLR can be a bit controversial amongst security
> folks, with some seeing it as purely a smoke-and-mirrors game with no
> tangible benefits other than making us feel better about ourselves. Is it
> still the case that it can be trivially bypassed, or do you see it actually
> preventing some attacks in production?
>
> Sorry for the barrage of questions, but I think enabling this one by default
> is quite a significant thing to do and probably deserves a bit of scrutiny
> beforehand.
>

I think it is mostly controversial among non-security folks, who think
that every mitigation by itself should be bullet proof. Security folks
tend to think more about how each layer reduces the attack surface,
hopefully resulting in a secure system when all layers are enabled.

So KASLR is known to be broken unless you enable KPTI as well, so that
is something we could take into account. I.e., mitigations that don't
reduce the attack surface at all are just pointless complexity, which
should obviously be avoided.

Another thing to note is that the runtime cost of KASLR is ~zero, with
the exception of the module PLTs. However, the latter could do with
some additional coverage as well, so in summary, I think enabling this
is a good thing. Otherwise, we could disable full module randomization
so that the module PLT code doesn't get used in practice.

Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
