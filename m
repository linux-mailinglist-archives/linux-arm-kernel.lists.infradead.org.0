Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164BDDCCEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:36:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRLNK+mcuqaZCKXd7YDFEVFCYguuFhEI9fmyEArbTyQ=; b=MrkpnyB/5Yw+Pt
	w7i8HZpuwhV2D8qBiqSKmrN9Y4xuvybcMMzaClViyMOEd75JWZ6zrDX43O929uAi2KYHx91+RPyjE
	+fSfVKZkRX/uimJvRnd+d8CbFFTIpUgOPV9yw7JIPeTi3zeTB1ec5yWbXtKH6pJ9uXDkD2/qg1d+4
	GqpA4M5OsGvI6+XW5Ykuof8BmnGXdBAZQf5p1ADrU3oNWfjFtacgSgW27V7ecy7WUGyqHHo2EHZ1J
	RZGWa/l3RLFu6K4FH2kEiqTpd1haP3LZ/Bz/DDvOj8Il7shjnKEjqHeG3KoBRwjRs+ldXE6d+7v3p
	ODYneu1xu1bpomCdNFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWAd-0003Vq-W7; Fri, 18 Oct 2019 17:36:12 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWAU-0003VO-Mo
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:36:03 +0000
Received: by mail-vk1-xa44.google.com with SMTP id 70so1545582vkz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=X/WE+Ltkav02W5Zb5upG5+z14WBcxmzY6UajsHAAkG8=;
 b=rqUeUBF2GjWBXilazZj9859Wfei7InxGqjTwVagtcsCAMDedJITzk/dHkG81u/5B25
 Gan6lZGpmCBzOPsFbOcLdMfJHcanUI3ep3+QI28fjn1kEs0jS+efCiF08LN3Uhod55ul
 o8MP7rP7XrPgS4JSx27FU21kQ12QN3Wjs/CPcWCMbRpii0kbteuK5/OL7iTAWeDLTvWA
 jsB/YzyHAUd/9ZRrx4gkDsHmik9l/UDkv60LU9h8R7oCv8bO6FmJh0SKGXfbqcmhOOuj
 TsDMzO/cgJUDzggj3lyoH43dj6kglYl7LaJ+KzJCv+UJh/CE9CVwdjB4QV3MViu23LeS
 hq6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X/WE+Ltkav02W5Zb5upG5+z14WBcxmzY6UajsHAAkG8=;
 b=q/MuqR6/ylqVoc4zKV4CI/6FaxgPR5UK8jIM+tiNC8j0UqFhRFSkhnuDZrwBnFh84b
 v2tG5IUEAl7YUEyENLme/mIPxucmSXozDf1louMaq7w5OnPnCRbbMHUkTNrCkds5zN/6
 mh57QHiHqonoNL3lgvKzovvSovnvgG6Nuko3KSp4R6BnAfbvtPS7CN1hG2HperxH7SpT
 NFLT5t79s9mbILTyYvIZWUWX8z9+KBwaj4zzdeJE6jJR1yfB39k8k1aMtX9WdXXXkYLx
 1D+BkscK9Ny1Y/lqouo9+Gxv4axmQTt20Q5cioghUHl0ozWpEyu59OPLNgehl4GnFD27
 ar9w==
X-Gm-Message-State: APjAAAXSpx5tC4YxlJdRbgsrgaaA0U2kcCuF/U27RmFHliE7ium34L7y
 2ftop27AssKaPMRf2/Pr0FJ39pz3px7oSjVjJqC4Xw==
X-Google-Smtp-Source: APXvYqyF6j/BTFaba8M4VvcJmblj6dt3v+IOFiO9LsV/Gfg5OdquXzqLTFgu5d+0ejdtz8qWcSto/Fr46l8MKCQgdZE=
X-Received: by 2002:a1f:a8c8:: with SMTP id r191mr6141200vke.35.1571420160894; 
 Fri, 18 Oct 2019 10:36:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-19-samitolvanen@google.com>
 <CAG48ez2Z8=0__eoQ+Ekp=EApawZXR4ec_xd2TVPQExLoyMwtRQ@mail.gmail.com>
 <20191018172309.GB18838@lakrids.cambridge.arm.com>
In-Reply-To: <20191018172309.GB18838@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:35:49 -0700
Message-ID: <CABCJKue27Aba_MJqB68Bh282zyL=LSQSBXV5TAb-NfsOAqJRnQ@mail.gmail.com>
Subject: Re: [PATCH 18/18] arm64: implement Shadow Call Stack
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_103602_766909_4597B08E 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:23 AM Mark Rutland <mark.rutland@arm.com> wrote:
> I think scs_save() would better live in assembly in cpu_switch_to(),
> where we switch the stack and current. It shouldn't matter whether
> scs_load() is inlined or not, since the x18 value _should_ be invariant
> from the PoV of the task.

Note that there's also a call to scs_save in cpu_die, because the
current task's shadow stack pointer is only stored in x18 and we don't
want to lose it.

> We just need to add a TSK_TI_SCS to asm-offsets.c, and then insert a
> single LDR at the end:
>
>         mov     sp, x9
>         msr     sp_el0, x1
> #ifdef CONFIG_SHADOW_CALL_STACK
>         ldr     x18, [x1, TSK_TI_SCS]
> #endif
>         ret

TSK_TI_SCS is already defined, so yes, we could move this to
cpu_switch_to. I would still prefer to have the overflow check that's
in scs_thread_switch though.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
