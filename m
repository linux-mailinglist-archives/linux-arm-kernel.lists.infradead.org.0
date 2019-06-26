Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EBD566CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:32:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WA3u2z43TkxilCMrq0yrprFFSGcXk5dzPfrEHVI56M=; b=fafGVSRzS8QvNq
	tgRN+7Lw4p1EjJrOHTdc9A4GspzgHC98rYpdIn6ZfrADtGZGVRpLEjiRPkaBwld4oOfs6QgV4dYdB
	+MFP+IeNFeYAv8b6rImDoIhfHSFYXlr0nrgTNwSc88oHK1Q6yCpczFi+REirKb3igxJWRbvXXQTZx
	BhL0D9BM1gyCLjpsZ7EMW0Z27EshImzoKogdJufImiwnAOAfF5WgcaubtzQOU0BFgBI/iCZ8BW4xP
	SzbGS3TRgx2yjV365MBHqaGGyzdJ/0/kijMRz++G5mYMpjG7oxcx0XmsB6fVmwlGgm79eht+8796t
	TMz7EafiJE8ZbK6vAVRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5E3-00087t-Cv; Wed, 26 Jun 2019 10:32:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5Ds-00086l-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:32:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42C052133F;
 Wed, 26 Jun 2019 10:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561545134;
 bh=4CKHa1A8vrfykHgGSNll1KY4BiJQ+KUGJASQX4F/EWU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0PEH7is8D1pTrioeduFf6lwQeETXQ2mQc3c4x7Mq/OqaWrCUuYjPsKLrDap/zZVF/
 3GghfjxVZg5/fg1F4VISO5tbJjV4uVeEY6+wc6+zuJoexqYensgcVDExl2PqPAsiB7
 HNyx+hw9BNHRNL7gPj3SxG0lY05Gambd1He339TA=
Date: Wed, 26 Jun 2019 11:32:10 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/efi: Mark __efistub_stext_offset as an absolute
 symbol explicitly
Message-ID: <20190626103209.foq3bheaxzrqoeem@willie-the-truck>
References: <20190626042017.54773-1-natechancellor@gmail.com>
 <CAKv+Gu85xLD+-CqwgNQtC3Hr9z2R5bm5th8_zd_jMSzA3JE8og@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu85xLD+-CqwgNQtC3Hr9z2R5bm5th8_zd_jMSzA3JE8og@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_033216_596696_1B385C47 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Jun 26, 2019 at 09:07:00AM +0200, Ard Biesheuvel wrote:
> On Wed, 26 Jun 2019 at 06:20, Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > After r363059 and r363928 in LLVM, a build using ld.lld as the linker
> > with CONFIG_RANDOMIZE_BASE enabled fails like so:
> >
> > ld.lld: error: relocation R_AARCH64_ABS32 cannot be used against symbol
> > __efistub_stext_offset; recompile with -fPIC
> >
> > Fangrui and Peter figured out that ld.lld is incorrectly considering
> > __efistub_stext_offset as a relative symbol because of the order in
> > which symbols are evaluated. _text is treated as an absolute symbol
> > and stext is a relative symbol, making __efistub_stext_offset a
> > relative symbol.
> >
> > Adding ABSOLUTE will force ld.lld to evalute this expression in the
> > right context and does not change ld.bfd's behavior. ld.lld will
> > need to be fixed but the developers do not see a quick or simple fix
> > without some research (see the linked issue for further explanation).
> > Add this simple workaround so that ld.lld can continue to link kernels.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/561
> > Link: https://github.com/llvm/llvm-project/commit/025a815d75d2356f2944136269aa5874721ec236
> > Link: https://github.com/llvm/llvm-project/commit/249fde85832c33f8b06c6b4ac65d1c4b96d23b83
> > Debugged-by: Fangrui Song <maskray@google.com>
> > Debugged-by: Peter Smith <peter.smith@linaro.org>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Thanks. I'll pick this up and add the link to the Clang issue as a comment
in the header.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
