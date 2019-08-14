Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3347C8D7E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 18:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eEIzfRTFzCY8sEaYraQPaTu5COF0td2J3ZO6p3J+e4=; b=qIrczdp/MLG/Nq
	EoNTLFpme7sBQDX56/V4U3HaThAGQGU04gBXd19o1bFITf9z4NOadcYBtaWI9KC+3/cBvC9oLe5hh
	pxaEQERp6f+NUBHPxaKHOc+GpxFBRbtX2is4QMCwuetrMQhzQLe+1UQ/1TvIz7hu8F4AbkPV67SIS
	1cVrAjy3skEYFfon5d7GgBMOkcm4nce9cuRw26SfLSSlbUf3O/oeuieDqRc2SRV9Wtu04l74am9UJ
	LZXRzAbNgvcfkueDvPpDpoiaQ5oPoaG0u4MF0CfYmaNeUBGMFWt+9Uc/QqudFy3GMub8hyYQYRvwW
	/J8HUb91mPX6Ulcmnn0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxvze-0006Lz-Cf; Wed, 14 Aug 2019 16:19:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxvzR-0006Lf-SD
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 16:19:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D42C92083B;
 Wed, 14 Aug 2019 16:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565799549;
 bh=Ns27KoVB7fWJmJ/83nGdUmBSCoi4rF+AeVKTdL7mpUA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dls/GSsn582m/y3/W8D9dNzWWp3De3XD/KqCpquTWLigKEGSt5kyPWQAhJ93UZjzO
 kQ3u/bO6h1iXGXV9t8J2iiFT82/FUJ6ofLSULcb/pEj/nhbTFOL6WfSZtKpFRUIDki
 QBBevpvGD2cL44x3yY0FDAIH9zrf9emJAGzIyagA=
Date: Wed, 14 Aug 2019 17:19:04 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/efi: Move variable assignments after SECTIONS
Message-ID: <20190814161904.55jgaxnhd4ujyh2h@willie-the-truck>
References: <201908131602.6E858DEC@keescook>
 <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9fEAG3CqmORyO2X_Uqse09nnXEQiB1kTL-xBqLWsy8Xg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_091909_944546_81A2C967 
X-CRM114-Status: GOOD (  16.30  )
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
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
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

On Wed, Aug 14, 2019 at 07:14:42PM +0300, Ard Biesheuvel wrote:
> On Wed, 14 Aug 2019 at 02:04, Kees Cook <keescook@chromium.org> wrote:
> >
> > It seems that LLVM's linker does not correctly handle variable assignments
> > involving section positions that are updated during the SECTIONS
> > parsing. Commit aa69fb62bea1 ("arm64/efi: Mark __efistub_stext_offset as
> > an absolute symbol explicitly") ran into this too, but found a different
> > workaround.
> >
> > However, this was not enough, as other variables were also miscalculated
> > which manifested as boot failures under UEFI where __efistub__end was
> > not taking the correct _end value (they should be the same):
> >
> > $ ld.lld -EL -maarch64elf --no-undefined -X -shared \
> >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> >         -o vmlinux.lld -T poc.lds --whole-archive vmlinux.o && \
> >   readelf -Ws vmlinux.lld | egrep '\b(__efistub_|)_end\b'
> > 368272: ffff000002218000     0 NOTYPE  LOCAL  HIDDEN    38 __efistub__end
> > 368322: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT   38 _end
> >
> > $ aarch64-linux-gnu-ld.bfd -EL -maarch64elf --no-undefined -X -shared \
> >         -Bsymbolic -z notext -z norelro --no-apply-dynamic-relocs \
> >         -o vmlinux.bfd -T poc.lds --whole-archive vmlinux.o && \
> >   readelf -Ws vmlinux.bfd | egrep '\b(__efistub_|)_end\b'
> > 338124: ffff000012318000     0 NOTYPE  LOCAL  DEFAULT  ABS __efistub__end
> > 383812: ffff000012318000     0 NOTYPE  GLOBAL DEFAULT 15325 _end
> >
> > To work around this, all of the __efistub_-prefixed variable assignments
> > need to be moved after the linker script's SECTIONS entry. As it turns
> > out, this also solves the problem fixed in commit aa69fb62bea1, so those
> > changes are reverted here.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/634
> > Link: https://bugs.llvm.org/show_bug.cgi?id=42990
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Although it is slightly disappointing that we need to work around this
> kind of bugs when adding support for a new toolchain, I don't see
> anything wrong with this patch, so
> 
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Yup, it's gross, but I'll queue it with your ack.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
