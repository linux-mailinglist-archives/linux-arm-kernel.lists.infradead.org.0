Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE20DCD25
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 19:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mt7lp/tydnJ0ZNvVrMHkDtTHTgn5l1poY5VFi6HDBfE=; b=PXRAn/nfFWRBzF
	yU/2vFOQh3agbxMBLIi7+rw9ozAhNo6vtityVppAtyMKJVYrNjg33UuPGVWJKBQ0PyQCosproN+FR
	kaCjJ+89HgymtkjihXPsFI0JNb87UTsEmxUGHlFvyYTrGlrnwhghqTwfFP3EGAzk5mn6DiT8feSLx
	mVyRjX3Q7ITt7sv/rljQkiJyRckGkWpu7BRDXXl3qcOuzruTqcG3YPZZq5DCk2YeCpTyTk3jVEA7o
	Mc/BkfmMn8VDMYZz1i2ZFgJiQMOGRcQLPMtgh1c/fR3p4Jcp9pF2kXsSRcapEK0e2TYNUs3WdIOEd
	hhwe8oOyP9p711Zah6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWUD-0003Vy-Vr; Fri, 18 Oct 2019 17:56:25 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWU5-0003V5-A8
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 17:56:18 +0000
Received: by mail-vk1-xa44.google.com with SMTP id s21so1564002vkm.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 10:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aIsMVriT4AZEDHIxtRQpfA6TPy6WxstpPPQy/ZvUwbM=;
 b=olkgjhwOKrpksh8vSJf+BJb84VfRZZ5qdUP2pzmiiZqrTACZC/i9cIiYRJgmne3ziR
 ko66mflPJkhk5jRiXb4zXEhdS1luvFe71S6s42yUYccUIDR8gcNMfCwXyOIkQ0Gko0RV
 9DDeaxIiSdr21FNjzVaFcXZqf9tjWZCrcL3qRov3yEgYNBhQlxpD7Y0HCFIxH9vXebne
 d7Vy0l+kXyB43SqiIgm7oTgLYpW6N+mFXKF9Zj9op9b/+csye2MIB4a6S4IXkCsA5zcb
 Kzwwm71iR1gVBxrHRBPCIqcw4pJfaGoi5yVhy4PX7/KiLlr7HDA6C7r7OOtLcEsTVBPf
 YuXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aIsMVriT4AZEDHIxtRQpfA6TPy6WxstpPPQy/ZvUwbM=;
 b=r0zHydUIT1nGJ9yi+2mgEb3Q+V5+xXOgtOCCHZzJ/l0Tw22hKUeZQn2FT46P7SpgKT
 b7Z2N+91SJ8bBQ3uma6RXi+aoYVeR3RKabjwJAPt3hJExR7VPyR08BL8sJ+SxJ6YK+CX
 CC3n4mpzJrmRbxE7i4s4nF8ouCO+YbUwaqf+Ey/9gQoUaLFN4MvylX1dKKw4anx+gbb9
 OWmkgxmuHyHdB14AkfA0zxDp+nkML7It9Tog2Ws5zXnDueOTUCB/WMjP/Re6VWAWNGIW
 AHK2MhUGjbBCVdOJbSKrQSJgDikqBLESeqeyir7BgfdiYr8klp9jb2Jj5hAcJx8QKEgn
 sbMw==
X-Gm-Message-State: APjAAAWoveaK5XPgZRVujUUkZVUpSg7iSx7ADkNYOxDyrNYwMoo2s3wU
 slqtsE3ytaCzOwL3mqe48VoVYQsH7O43wgVrWQFMbA==
X-Google-Smtp-Source: APXvYqyC2iv6T46643JVohCL0ZO6S+yxoXkbTD3puL0IDt0JZj5qGElfVp/07Oy94Ct1iZ+6cOvAdXJjbpJUq0GhLYM=
X-Received: by 2002:a1f:b202:: with SMTP id b2mr6023283vkf.59.1571421375752;
 Fri, 18 Oct 2019 10:56:15 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191018161033.261971-7-samitolvanen@google.com>
 <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
In-Reply-To: <CAG48ez30P_Af-cTui2sv-YVUY5DdA1DXHdMmAW1+KpvjEPWUOA@mail.gmail.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 18 Oct 2019 10:56:04 -0700
Message-ID: <CABCJKuf7KsgkzqHGMAVjyS5Zo_ix8a2d6vsRT6OGSUgVLuJ70g@mail.gmail.com>
Subject: Re: [PATCH 06/18] add support for Clang's Shadow Call Stack (SCS)
To: Jann Horn <jannh@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_105617_377032_77EBEE04 
X-CRM114-Status: GOOD (  12.97  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 10:42 AM Jann Horn <jannh@google.com> wrote:
> (As I mentioned in the other thread, the security documentation there
> doesn't fit the kernel usecase.)

True. I'll add a note about it here too.

> Without CONFIG_SHADOW_CALL_STACK_VMAP, after 128 small stack frames,
> you overflow into random physmap memory even if the main stack is
> vmapped... I guess you can't get around that without making the SCS
> instrumentation more verbose. :/

That's correct. In our testing, 128 stack frames is nearly twice the
maximum amount that's been used (on an arm64 device), and for many use
cases, allocating a full page is simply too costly despite the
advantages.

> Could you maybe change things so that independent of whether you have
> vmapped SCS or slab-allocated SCS, the scs_corrupted() check looks at
> offset 1024-8 (where it currently is for the slab-allocated case)?
> That way, code won't suddenly stop working when you disable
> CONFIG_SHADOW_CALL_STACK_VMAP; and especially if you use
> CONFIG_SHADOW_CALL_STACK_VMAP for development and testing but disable
> it in production, that would be annoying.

Yes, that's a great idea. I'll change this in v2.

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
