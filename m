Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132E3173756
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 13:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LaFyzcdxcFQevDfUlqc43VYz5qAF8rSrPOJ/k5m7bWU=; b=q1El2+eqdka/ri
	gtipyoVSUAdzDA6I4xrKJXvdM8C9nAG7L9VntA4YdqLZzPsMLt8TZVyHRP5+9PJlFJzMZDd3TKrF3
	0bDd8hS0gkH3zWI9Hfx0vrUWU+zIPpK9WaRbCWB1ugeAg0ssgHzgjNADlWV8qJpg9Wen3BDxrt4lj
	bPArqWRnfDsb5lILgTh39n9H0uFL4XqlCiGZbcmCWOwHUi7q5ybIZ6TDXYHpbmBBpwS4QOLC1qc72
	Dxl3kzLOtSAR+5YQbQXY1e7ln53ZvpL9tXKzpk4scjn2Mc1UGKbW1EwW1IxNGjmEXlxHUWeGfBe5I
	BCl948/wuP0kjGI7zcuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7exe-0006zQ-FA; Fri, 28 Feb 2020 12:41:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7exS-0006z1-0I
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 12:41:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so2791563wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 04:41:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XBS4xJeronFByco7hvqXXCJEpIN3x2l+h2xMS+Qu5VY=;
 b=H32BlYxSp7yeOYKrV+18Kq0+YS+hSAOrzWo3T6WyqnHTkd0LkP8qZjWhS1n5//SwFO
 7yqusqGjdG8VA3A/7qaHEYn0+6hAzJjGiZP0lNj1456ePdSkYU7BMpxhz6GoBcLHXIwK
 gOzyaCW0Xns5tOdyob4OhuPjbYcfHcOq8e2QURnGhwq0UeBw+sOpJ/73uaprMNuuTXF2
 iLn1W4nYHLZRS1rRnPYzYVj4gQhwMs+x+nlNaP6uYErNFT5JWSv4K6IuZx8CbGFP59Z9
 7CKW+egRaz8fyaTmNtvzCa3R7Hm0PSt6mS5JhRgXArF0qCOJnOgLCizqVEszVt+wk5Y1
 gojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XBS4xJeronFByco7hvqXXCJEpIN3x2l+h2xMS+Qu5VY=;
 b=C6LaLFbaBQvvqdQdCHmuq+9ZexJtI8CfBINHhdvsatFroJx/896chV51F1K6OBstYt
 FnFGa0GMLGNx3YeKIrPHiCEcc5ezy0oruk661Y0fzl3ViSVDTUgJylQ8W6B/5iJCVbbf
 0TE/1gCzsAs+nkGCISLHbVnMQUEAEO8EQo6KzECOheSqjkff5ZJAvRMeK7Gz2nF8W45c
 XNIJfRyor8d4c+HWc1oq5jSdLJHAlEhR2lC55L2p3C7YK5DKT9qUnS8QMrMU6kvwOmVd
 XMOCdv42Lk590kQoPRCKa3u0dR5nOYBIzFaN12oWFGbKEMQKNZKIJwMPNFci4RTYPJgB
 hbXA==
X-Gm-Message-State: APjAAAX3y0rcw51OMOQ1qnmjE+JpyECPrSfBTZfRFtwbgrSI+4f0bVoA
 AbaMKvtKDCNhzLFT71LYrYNTNzQRg7tD9K1QBbaumQ==
X-Google-Smtp-Source: APXvYqycHr5BpR7YsHapDHRDF5PvvknfNJGfaHFydphDQrJgW+V3mYRdB8mumbWLaqIy7fTmjqZ4VZ0ui5GjrBMPKsg=
X-Received: by 2002:adf:f84a:: with SMTP id d10mr4811332wrq.208.1582893691834; 
 Fri, 28 Feb 2020 04:41:31 -0800 (PST)
MIME-Version: 1.0
References: <20200218195842.34156-1-broonie@kernel.org>
 <20200218195842.34156-13-broonie@kernel.org>
In-Reply-To: <20200218195842.34156-13-broonie@kernel.org>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 28 Feb 2020 13:41:21 +0100
Message-ID: <CAKv+Gu9Bt93hCaOUrgtfYWp+BU4gheVf2Y==PXVyMZcCssRLQg@mail.gmail.com>
Subject: Re: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_044134_108120_AC41F6E3 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 kvmarm <kvmarm@lists.cs.columbia.edu>, James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Tue, 18 Feb 2020 at 21:02, Mark Brown <broonie@kernel.org> wrote:
>
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the core kernel code to
> the new macros.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/cpu-reset.S                 |  4 +-
>  arch/arm64/kernel/efi-entry.S                 |  4 +-
>  arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
>  arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
>  arch/arm64/kernel/hibernate-asm.S             | 16 +++----
>  arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
>  arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
>  arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
>  arch/arm64/kernel/relocate_kernel.S           |  4 +-
>  arch/arm64/kernel/sleep.S                     | 12 ++---
>  arch/arm64/kernel/smccc-call.S                |  8 ++--
>  11 files changed, 70 insertions(+), 70 deletions(-)
>
...
> diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
> index 304d5b02ca67..de6ced92950e 100644
> --- a/arch/arm64/kernel/efi-entry.S
> +++ b/arch/arm64/kernel/efi-entry.S
> @@ -25,7 +25,7 @@
>          * we want to be. The kernel image wants to be placed at TEXT_OFFSET
>          * from start of RAM.
>          */
> -ENTRY(entry)
> +SYM_CODE_START(entry)
>         /*
>          * Create a stack frame to save FP/LR with extra space
>          * for image_addr variable passed to efi_entry().
> @@ -117,4 +117,4 @@ efi_load_fail:
>         ret
>
>  entry_end:
> -ENDPROC(entry)
> +SYM_CODE_END(entry)

This hunk is going to conflict badly with the EFI tree. I will
incorporate this change for v5.7, so could you please just drop it
from this patch?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
