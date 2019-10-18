Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A0FDCC36
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:05:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6++HtvWSqB/to6rFAz6S75ArjbN5L+tMgJPrMS0Sv4=; b=lDa/8lAw8Tow68
	lVeQievXfFjnZeJXb6BdfZt/bf2kPHTHz4pSRTcJ7m+uTUh/e6TVtFrf4HPy42o1cPCT706bvEKGJ
	Mu2NgO0MJ+V1BmTBKbnx011LQfqsarxaAM5C8OW/d2CQl9T6oDNZ2GfOfi0B+DuEeJ4rnDfJUUyna
	rzEo2yV8smf/STZGD6Voo9Q6jfd8/Isy9VWuAUuVYQC+Tv0gNNhwnh18T2Od3g7Ni3j6zfoYlyOiZ
	3uwdLYUbdYujdgKre+WDziqZ8QSOdrqsrT4h9FwttPbitr2Wp+SQdnXabF81fYHYBqvfbCRhMXFt3
	iUrK5l809zMJhPfGTHvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLVh9-0001tG-KO; Fri, 18 Oct 2019 17:05:43 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLVh0-0001sF-P2
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:05:36 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z14so4470856vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x6GpsgHPaenSyC5p+IrYQknWia4lKY0B5Vf4l4gdQSw=;
 b=pru8Y7xsWSIdqZR1UXLglz64NrdFImykv1hpXma1k378qh9GF0SPliCcyZB8vMX7gE
 X3PfTswubuOthM8DCa4MKuMqqB1ZfOPHIhuEN9TMHd7OTZoscSb0DkIwcKzx/zVRsRzZ
 QpVsX696Og4ZxdvD3yeFj/AnBmqkJaxHpcBabDgxa1/06jnOKR4SPg62RTTmmQ52t+8S
 vOzXu4T6IK5JJ+sLrpw1VPCRku6gZS08n7Kckhw2KqDpdWTQICKrAUvwcmSbe2WDexT6
 KcVKUWL1M2hSYKLv2USJ9PsVEnaLnEqc22VydBFXRMPGh4AiAOA8mz7cgBZHgxDEDolP
 r6Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x6GpsgHPaenSyC5p+IrYQknWia4lKY0B5Vf4l4gdQSw=;
 b=S6h2azcH0TuL+i6a3GKp8zrSDXQueFUH6Xrtxvh0cTO0ArXzY7CmXyfO8wUuwa83+N
 CQckCvg+4j41P86WqNnKn7bpeq15P3JimYW3JW+vRnjfl59OxQuHWN2hCFvE4a8rrV1h
 gKsRLEU46zrUrWrQ9+c1yqci65IeWOO7yCAjB0KN/DDlmD+lCCr9G5mnx48tUtVVNYbe
 PzdTBHEuHvhi0chjwEEUHUnkMSbvhHpjZjSiRYmMy8TPtgh91g02s5TuJfJvvU9yn9ov
 x9lkL6CKck2WI7ci5pFGsG7+uLanQbBWFiQY/JbF8pPTbgkMdpVvE9o8cAAmPcEldf+U
 LcVg==
X-Gm-Message-State: APjAAAVYH+C1eLzAtnUJzQoYJRZXnoDC1J6B1eziGZCOeirS2dogKaoX
 f1KEFG/iGUGJoQhdg5nxjExAR0d2MInBer8YvnSSvg==
X-Google-Smtp-Source: APXvYqwYzSrQhNESR2odZjGb7CA2wtjkk8PIj6W3+g28TbncpOPsZUdRhuZ5AejLhrFJsW3Q8+X1IzSvMoqY0M2m7JA=
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr6159173vsq.15.1571418330160;
 Fri, 18 Oct 2019 10:05:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-14-samitolvanen@google.com>
 <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
In-Reply-To: <CAKwvOd=7g2zbGpL41KC=VgapTYYd7-XqFxf+WQUyHVVJSMq=5A@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:05:18 -0700
Message-ID: <CABCJKud7bJOQqyve9=niSP62H0WTrCk5ZAmAcD2-KR=vf_gn0Q@mail.gmail.com>
Subject: Re: [PATCH 13/18] arm64: preserve x18 when CPU is suspended
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_100534_843291_41AFF7B1 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 9:49 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
> > index fdabf40a83c8..9a8bd4bc8549 100644
> > --- a/arch/arm64/mm/proc.S
> > +++ b/arch/arm64/mm/proc.S
> > @@ -73,6 +73,9 @@ alternative_endif
> >         stp     x8, x9, [x0, #48]
> >         stp     x10, x11, [x0, #64]
> >         stp     x12, x13, [x0, #80]
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +       stp     x18, xzr, [x0, #96]
>
> Could this be a str/ldr of just x18 rather than stp/ldp of x18 +
> garbage?  Maybe there's no real cost difference, or some kind of
> alignment invariant?

Sure, this can be changed to str/ldr. I don't think there's a
noticeable difference in cost.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
