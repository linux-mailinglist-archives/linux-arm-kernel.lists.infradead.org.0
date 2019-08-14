Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6EA8D82B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jtxq3z3zWTbcCUvmzCvnM83eOLhbUeBjnqAT4ob7mOk=; b=qBhummjgvR0YU9
	i4anWGdGxH+OrYqPVJfi8Rq3dHekdPNTYcwfFSsPRON3bzmgqVfv+yBalzO+5jl6uC+goBjyP967o
	hKAuFxF5gixsAtlZSb++PJZs8bwFXpmUmhHzf6x0VewSCz7omdtb9Pvm9efh91PEL3BCMV6Nno6zm
	lAIgArzFTKH/UMIlhIuh1C72fpOOvKNthlJYYWNXFf/sZebqUgnHksBX7yE6yWAI6OL+zLfonzPoY
	0/k1bJ2PM45RUokfoWUvB5D4SR3/eCvJasN+20lU8eoPXeptXOdKXCmitVQZ6ey4LSjgHy/Ude7zM
	D9H+jqxkCUejIKR0AnDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwFH-0004FW-CZ; Wed, 14 Aug 2019 16:35:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwF7-0004F4-27
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:35:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id c81so4880671pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 09:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sgLlHTTuUxU1TwC5AIX4GAGBSYyQo1G2RL+k215Pzxc=;
 b=DYvtsrHoh73ChIryiTu79IhXFnVOAtXr5wkwZiRRnzDdis6DamABae4iW6mpD/Fb/6
 yPGE0qFEUwZOAzpMocMUZV/qSweQ0rHQufN3k5O8RCl9t/lmPwqMziy5+ghKCB7aTm0a
 i7ooEZZpP9E075iTqWpM83ggynQh3YHQjwLcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sgLlHTTuUxU1TwC5AIX4GAGBSYyQo1G2RL+k215Pzxc=;
 b=TcLz08KIpnUVLWTiV6wPTThYU37XgWt6GGheDvBV2NDi+yhCjgIll/S1mLAdoSeyVG
 X43zIm1HoPIrCckSEBGCCCb2chprRrB1HpEvzSBUEQAEDwVY3tWQvxDNWSDIn76O5YBP
 BEoR2n0nU/1HE+V2vlkTnrW2Aqhj3tboGAqYlLWV5VxJPsQ47JyZ2I31OjqWTjrDI72T
 R+jaURygBQdF2+pvlP+k6yCNEc2VdcP1HK4WgQ2X1gUJiGPKRC9oU2pFluqt3hcesPxd
 N+A+ogtec7ycpBVtcd6jaMgFfNevnIwiLz8kimBkRFr3S/lWa3lNCx2FKJ40UEr3IQCU
 YF4A==
X-Gm-Message-State: APjAAAUpVapPuy5HWkC4VimS1E8h43vSfq3l4X37i/HHxo3MqwGdYmu5
 dkkFPuVzy4MrBuwf/JuwA7sPvg==
X-Google-Smtp-Source: APXvYqycw/abNQyrJ20WHTvnYMXT+MiGHrimEtScjwcWEsjxA1Y1OxrMod0D7w4jf+K0gJ5a4ygZ9w==
X-Received: by 2002:a65:49cc:: with SMTP id t12mr57952pgs.83.1565800519967;
 Wed, 14 Aug 2019 09:35:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 3sm261591pfg.186.2019.08.14.09.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 14 Aug 2019 09:35:19 -0700 (PDT)
Date: Wed, 14 Aug 2019 09:35:18 -0700
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <201908140934.C3F1F7151E@keescook>
References: <201908131602.6E858DEC@keescook>
 <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
 <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_093521_129631_649BF70E 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Fangrui Song <maskray@google.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Peter Smith <peter.smith@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 05:19:04PM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 07:14:42PM +0300, Ard Biesheuvel wrote:
> > On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > It seems that LLVM's linker does not correctly handle variable assignments
> > > involving section positions that are updated during the SECTIONS
> > > parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> > > an absolute symbol explicitly") ran into this too, but found a different
> > > workaround.
> > >
> > > However, this was not enough, as other variables were also miscalculated
> > > which manifested as boot failures under UEFI where __efistub__end was
> > > not taking the correct _end value (they should be the same):
> > >
> > > $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
> > >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> > >         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
> > >   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> > > 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> > > 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
> > >
> > > $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
> > >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> > >         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
> > >   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> > > 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> > > 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
> > >
> > > To work around this, all of the __efistub_-prefixed variable assignments
> > > need to be moved after the linker script's SECTIONS entry. As it turns
> > > out, this also solves the problem fixed in commit aa69fb62bea1, so those
> > > changes are reverted here.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/634
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > 
> > Although it is slightly disappointing that we need to work around this
> > kind of bugs when adding support for a new toolchain, I don't see
> > anything wrong with this patch, so
> > 
> > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Yup, it's gross, but I'll queue it with your ack.

Thanks, and agreed. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
