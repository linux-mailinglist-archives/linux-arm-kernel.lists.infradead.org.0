Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 359EC948FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 17:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAKyNaPea9MGpZrtf+dyxkD1kOF+aLgUHqPa5K8Y2PU=; b=fTt6yR2ha7nyXO
	JJkn6uH9hK/OGNqlJcgIltqZKUp4wYxsj2vDeZDoNiQLuRbqDrs2Wjl4LXU68+XNRLihku3AEUc97
	uXVhXhWqM06hg2Ej0pPwe2Y7acvii53ssn9JZ97PT3CaXxiiVyPim4nTUSJLUNPYNuZaSgdPu1nDF
	OFqmu9exS8/Xd0bVW3Le+fETCcPlFVfN5fX7fxKF1sX6s4TOsGtzwtLeiEe4s5xX7e6Jwnbz94Ox6
	56XqJWZC2GcAs0F74m15meQwjp1UUDc+7T+PR1A6C5pkEVn++oHSk2/MexWR+gvgSL+I3vW+DB3r8
	auIOv3ola6V4voMgrZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzjtd-00041e-4o; Mon, 19 Aug 2019 15:48:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzjtW-00040z-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 15:48:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id i18so1435327pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 08:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZA8BuBvs/hbur5A2af1dfs7zv3Ei9mj0dJpknoIQZUk=;
 b=PZ0HD3Y2zeoBC2zq5xuE6l3mXjwan01XY4nhIVdOCwkGN+nwuKAXafYOLL1EcyeH6L
 guxT7lPZIguUFZz8+wh65JBURxJpLGAkfzG8A4uKNyblf1WUlIar4sSkLUZlLedc7l8b
 Kkifxp4sdWxzXyg1r6oIp0pGHz3JRXUbvzxL88zaZDD3rbw9QZOH2O8jylbRgCyFULyn
 wKS2Wl26+PuJ2MiEsDh0j3wJSSTGRF9csTjf/IM4s15buWx2GvmeIyTAk5en+TK7/LRz
 2LEWmnUgk8vMJCOoTOgvmeVN8Uy8gvIfiQNNMQg5e614Buy5U209kXTc52yI4yRoRBcD
 ip6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZA8BuBvs/hbur5A2af1dfs7zv3Ei9mj0dJpknoIQZUk=;
 b=PPgDvJiY9mkE+j48cJy1M2Ug8TaFyRX0N3TLVxSBNOhJfsaeBrxdrf53PlAof04Z8l
 dUvN0o6xv61zm0kpSqdJLuI0NbgRR/q8D9Yx2Wkcagaj8QpsGSg9/Wyf5ruflkcvVqK6
 S2aKCQiorn53vFyhanWnzGY3s38vqwYIu7HXB/F0T+yl6h6aNHGUKU3m1rMjEtX84oTn
 7DN72HVU/S+oQtNgSnJhoZsSg9tE/owQZc/cr6nZLcHOgByQaLUXduBioT4StlV/lelp
 q2tPzzD2ZWjie1TfiC+cLpU6RpGhUE8mVZwbFkosFKzqQXs4NCqMIBr5VLzQb11NAIVj
 zDWA==
X-Gm-Message-State: APjAAAWhxbOnfvmfEqTpIxfBkIgXswtvOznQaMAWFSLsfTLhXsjYwCgM
 Umlfz7TzSPVJQJ9+a6ad26maFFADgRY3rZoyR5laKarRj7E0DQ==
X-Google-Smtp-Source: APXvYqwo1Y//ODybWVzSFI9UN2sBOGCtICrz2FP1xF+itsQOS80vSVdDi/mfEKruFfUtKA1F2Hx+OmLOBRNDL+KKy/0=
X-Received: by 2002:a63:c442:: with SMTP id m2mr72019pgg.286.1566229708817;
 Mon, 19 Aug 2019 08:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190815154403.16473-1-catalin.marinas@arm.com>
 <20190815154403.16473-6-catalin.marinas@arm.com>
In-Reply-To: <20190815154403.16473-6-catalin.marinas@arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 17:48:17 +0200
Message-ID: <CAAeHK+xxsMkt=pU+ChfMYLQU4TqeL0c-f4PdN_KLG7sq6yKX2w@mail.gmail.com>
Subject: Re: [PATCH v8 5/5] arm64: Relax
 Documentation/arm64/tagged-pointers.rst
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_084830_201622_1524D9CB 
X-CRM114-Status: GOOD (  20.68  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Dave P Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 5:44 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> On AArch64 the TCR_EL1.TBI0 bit is set by default, allowing userspace
> (EL0) to perform memory accesses through 64-bit pointers with a non-zero
> top byte. However, such pointers were not allowed at the user-kernel
> syscall ABI boundary.
>
> With the Tagged Address ABI patchset, it is now possible to pass tagged
> pointers to the syscalls. Relax the requirements described in
> tagged-pointers.rst to be compliant with the behaviours guaranteed by
> the AArch64 Tagged Address ABI.
>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Andrey Konovalov <andreyknvl@google.com>
> Cc: Szabolcs Nagy <szabolcs.nagy@arm.com>
> Cc: Kevin Brodsky <kevin.brodsky@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Andrey Konovalov <andreyknvl@google.com>

> ---
>  Documentation/arm64/tagged-pointers.rst | 23 ++++++++++++++++-------
>  1 file changed, 16 insertions(+), 7 deletions(-)
>
> diff --git a/Documentation/arm64/tagged-pointers.rst b/Documentation/arm64/tagged-pointers.rst
> index 2acdec3ebbeb..fd5306019e91 100644
> --- a/Documentation/arm64/tagged-pointers.rst
> +++ b/Documentation/arm64/tagged-pointers.rst
> @@ -20,7 +20,9 @@ Passing tagged addresses to the kernel
>  --------------------------------------
>
>  All interpretation of userspace memory addresses by the kernel assumes
> -an address tag of 0x00.
> +an address tag of 0x00, unless the application enables the AArch64
> +Tagged Address ABI explicitly
> +(Documentation/arm64/tagged-address-abi.rst).
>
>  This includes, but is not limited to, addresses found in:
>
> @@ -33,13 +35,15 @@ This includes, but is not limited to, addresses found in:
>   - the frame pointer (x29) and frame records, e.g. when interpreting
>     them to generate a backtrace or call graph.
>
> -Using non-zero address tags in any of these locations may result in an
> -error code being returned, a (fatal) signal being raised, or other modes
> -of failure.
> +Using non-zero address tags in any of these locations when the
> +userspace application did not enable the AArch64 Tagged Address ABI may
> +result in an error code being returned, a (fatal) signal being raised,
> +or other modes of failure.
>
> -For these reasons, passing non-zero address tags to the kernel via
> -system calls is forbidden, and using a non-zero address tag for sp is
> -strongly discouraged.
> +For these reasons, when the AArch64 Tagged Address ABI is disabled,
> +passing non-zero address tags to the kernel via system calls is
> +forbidden, and using a non-zero address tag for sp is strongly
> +discouraged.
>
>  Programs maintaining a frame pointer and frame records that use non-zero
>  address tags may suffer impaired or inaccurate debug and profiling
> @@ -59,6 +63,11 @@ be preserved.
>  The architecture prevents the use of a tagged PC, so the upper byte will
>  be set to a sign-extension of bit 55 on exception return.
>
> +This behaviour is maintained when the AArch64 Tagged Address ABI is
> +enabled. In addition, with the exceptions above, the kernel will
> +preserve any non-zero tags passed by the user via syscalls and stored in
> +kernel data structures (e.g. set_robust_list(), sigaltstack()).
> +
>
>  Other considerations
>  --------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
