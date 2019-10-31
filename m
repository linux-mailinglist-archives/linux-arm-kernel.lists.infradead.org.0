Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABABEEB471
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:06:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6f8KlcUGhecBqlEPPX/bXE4v33DqJmCODH7l6YNcHKU=; b=g7/sSWR2xiF+Ry
	22pLSjJN9T3abqtvRtUf1oaArYYf9ONkow04yJ2v1sDMwHmOVyYdnJh3Pjuegl+1tYTBVjVD+aOub
	2FoSbzyV0bNLF3junqolsfu3eCJEQoXUGN+7cDN+mfc529PCL4+ocSHljKfTSXJgi2iGbWE6dlFgx
	dd1y9RExFXXz9VYve5VmQM3PpkVnjligHUYkjShE6Q32mWknRjO+b8iNl3K3qBI1WXPH19oQTfXJw
	O10yZQ4zeoMjFtOskxD9Eu1YWm6FDDYH3Zv8Wlfwb5jMRnoe2FwHAfak52sPXaBE4JEsyntrYTcC3
	lfH+r6qg/hwW2Ty1m9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCyB-00070M-OV; Thu, 31 Oct 2019 16:06:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCy2-0006zl-53
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:06:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id x5so6475606wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mtw8gry9UInmh6FRRDRHonyhNHYRE971HEweUmtkTmo=;
 b=gj62YVFGKI1Od7DT9OMd7w9nuouT6YqTYLVJsZtBHxp0ca+8d72FS+eglpD4iSofgn
 RFSL8Eq3TDwhxXAWYcA8AGKiCN+DSz1QNvX0gm1ElYhhqATd4uLZ1zAIiXTpmKFjBpOS
 X7Gx6C6UhFuWGre4uZYTrlNMOlvn/0bkrZO1gV8QWIz1tBIWNU5hXGUbkLa2kzvxcaOA
 oK95E3J7PYOxZjGo1WTAClw+NTBoGtGsQE43lMslLk1p7W4JhH3uvdHo09vzUuD7S5qi
 WR5zCFNGv5RcebxpCJsJoo004NilnqV3nQfRmnH0Qg4jBz4hLmhqFCmv9/hW6T1U7f0m
 bqyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mtw8gry9UInmh6FRRDRHonyhNHYRE971HEweUmtkTmo=;
 b=pbFUitP+8SsIqcThEtW+G3uC03uRLMZrtcRMRmEgyaTY1zpYlR98HCCW2R8NidUFYf
 rOml6Ej50gfKU/HFIyhr6zKEN8Kts/2UrtwoWePNL1/VvcEBdRo6NxMttLQjJ4vcDF9n
 HigY2jDNhFg3sBNna/TOhBtTNUqokV0GoJ33x8fiZjR3ZSRANUCixWlwLSA+Fa+Q1AEk
 8ZrPGCDLU1rVEOdsCrz6YFJDiEPLmBaCpwpsREq21eXn8J9IlJ0fXVc0IrQgfcqb/6e+
 UU8BQxYM7OPaiqnWKHipwbyuUDq9L9EOftEKbzhgdA2qRYjBqSePjzlt/QGj5K7Bldu+
 rmZA==
X-Gm-Message-State: APjAAAWg+raUFvjATKME8dKs/kY+rivjxi2oQrqPjdgso9tN0LK7yc8E
 GvgXRL6qg9cO9azJTP3cGPz6bwC/sJwZImd212tNSA==
X-Google-Smtp-Source: APXvYqxiQaoLkddREByagoODpNsr1Vq16yfCBnVvhSguNZ8AxZmsRLmpFc/igAKKeoanOe8BvpU+hZC6W47eIjYgr/8=
X-Received: by 2002:a7b:c925:: with SMTP id h5mr5375949wml.61.1572537992270;
 Thu, 31 Oct 2019 09:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191031112610.GA26059@willie-the-truck>
 <0152ac71-1295-a302-7810-f9767f7bbd78@huawei.com>
 <20191031124217.GE26059@willie-the-truck>
 <a074ae3a-273f-5be2-7e4d-267e6103a094@huawei.com>
In-Reply-To: <a074ae3a-273f-5be2-7e4d-267e6103a094@huawei.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 31 Oct 2019 17:06:20 +0100
Message-ID: <CAKv+Gu__OL-Kveczhs5MUCpr5rK5bZXESEuv-X+DAm7=AV9Jtg@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] E0PD support
To: John Garry <john.garry@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_090634_223960_3A7327D0 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019 at 15:14, John Garry <john.garry@huawei.com> wrote:
>
> On 31/10/2019 12:42, Will Deacon wrote:
> > On Thu, Oct 31, 2019 at 12:13:35PM +0000, John Garry wrote:
> >> On 31/10/2019 11:26, Will Deacon wrote:
> >>> On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
> >>>> This series adds support for E0PD. We enable E0PD unconditionally where
> >>>> present on systems where all the CPUs in the system support E0PD and
> >>>> change to not enabling KPTI by default on systems where we have enabled
> >>>> E0PD. It also converts the runtime checks for use of non-global mappings
> >>>> into a variable.
> >>>
> >>> Although I welcome the simplification introduced by this patch set, I'm
> >>> worried that we might be removing a significant optimisation to KASLR
> >>> boot-time on machines with large memory. John reported issues with this
> >>> in the past, so I'm looping him in in case he has a chance to test this
> >>> (branch here [1]). Of course, I could just be missing something since
> >>> this code was really subtle to begin with.
> >>
> >> I booted our D05 and D06 boards with that branch and did not experience the
> >> pauses which we reported some time ago.
> >
> > Hmm. So I annotated the code locally and I see that we do rewrite swapper
> > in this case, so I'm surprised you're not seeing the performance issue
> > you ran into with this before. Have you got KASLR enabled and are you
> > passing a non-zero seed?
>
> Just to confirm: yes and no (both boards pump out "EFI_RNG_PROTOCOL
> unavailable, no randomness supplied")
>

That is explained by the fact that we now use kaslr_offset() to decide
whether KASLR is enabled or not, while before, having the config
option set was sufficient to take the KASLR code path.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
