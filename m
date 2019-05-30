Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A6C30545
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DA0Tw3FnRGqAWO1MAdFKps4ekca+Zr0RDc9E7fu0EM=; b=eDRSKEN76/XI5P
	9C0XrCwIqnCO1yYGpWYCZWhn4396qHmfbpEVLJIXY4oZuBdPyzzZo15IxpIXlCtRb33r3AN3nP5mO
	y6VArAgvzdXEzr1MG6WsrTLYQyCTbwG1mghfkG9krr16mbD6GW0+zq2+ucnFNsvJmiguhmWyjy5Bf
	YdvK9pap4aKnVova/M3Ha017b9avBPN94lKdk4i+74ax+fpF1a3YYg1DxAJd3TiyQ+cmHkcyX2ync
	Lc0sK3c63Q5zgna7pj67JRmHXj23TVunDLWAp5Glz8jD9NrNB//RwD4jbKOsC0x0oigitJXEoRX4Y
	8y0ktlVHOE1FObX+D/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWUDp-0004s0-9n; Thu, 30 May 2019 23:12:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWUDg-0004rC-Ki
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:12:25 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so4899126wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C5TAa3mAzwLnTUs90m43rAvPZouLNZzcNbzmtj7Kzpw=;
 b=u6+JuzK/TCEMfLKrC5GBr7gfb0TMTZnk8Bm2HyGFbIbmPiDkoNsoD5MZyx8VDyZtDJ
 XEHYv3SNrlIJhtNREHAQzinWbwINEZmQbl+l32WjRoKvysMILccoSa85D65YFDufY612
 x+gBl8eo3krVFqBM5b0BwgPLclUj4dFCfjXOt2SBKxxsolAHKZ6rH/KuUIid5PnYPDL3
 RZM7zD9hhuvDtGy5GdcX9uVyEBziTjXsSPUG1wDva+0hDQOgJ5FHfGFYPUU5C93nSopY
 wWcSzU5hWuIqigzNEEXpEM5rsdt7zYI/ow8AvD8P7kWn+4gpPb4x0dzcLPAG6PTgg/PV
 abnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C5TAa3mAzwLnTUs90m43rAvPZouLNZzcNbzmtj7Kzpw=;
 b=ueV950zQvIvqsL3OrthYnWMG+XyKWyhSjPvzwCuolGurPWg8T7BrTDjvvxKoK9j8MI
 Citmu08vc8rJbjjC9f66hnmmZZVN7mRUiJugN9XW665D+w8oUpXj/SQGUyjeUeyWTRKT
 F8gIXkEVKXKylXz4NSS9aCd8EJLzs0PGiM8+5UQ+v/FEKqTaRaOUC/s7uKkaDKScWY3p
 NfpAHo16oLLRecGXCe18suGbBjHRUgFq8kNVvijj3FDkrnqDnysUjV1oTHO807zwuNgT
 D/b6gYoiBjTI2wgujvs7f6rCt/Mq6umHGjElZ/DPl3KSPVFecssWPqfjNJhAp31yBOCz
 zaNg==
X-Gm-Message-State: APjAAAUR/ITiAIMolgU4jNQWerCJnJJ+fKVU1UZCsMmgilO0ydAX4eXf
 ZX9j86bz4buG7rbFCl+WmoIMaEPuChUwnJjVfMRcSw==
X-Google-Smtp-Source: APXvYqx1NeyN4W8Fq+DXvc3fCOC9uziuHg69l1K6URUyVyUIGdgMwD6SLlSCPZX+iYzV7lLQlNHYM1c7d/WsphCpWgk=
X-Received: by 2002:a1c:3b41:: with SMTP id i62mr3601073wma.155.1559257937573; 
 Thu, 30 May 2019 16:12:17 -0700 (PDT)
MIME-Version: 1.0
References: <CANA+-vBHL9a9fXDWxALXXuJk6r8ObZZjhrGp-p5JUnfOThEV5g@mail.gmail.com>
 <CAKwvOd=W35EwxS+g46tZVfhO9gDVH=g8oMhhHkZ+DHUqiYq7CQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=W35EwxS+g46tZVfhO9gDVH=g8oMhhHkZ+DHUqiYq7CQ@mail.gmail.com>
From: Ian Rogers <irogers@google.com>
Date: Thu, 30 May 2019 16:12:05 -0700
Message-ID: <CAP-5=fUQQAEcZQ4KXAa8pLQFnD0nrN42faYGY2NPAziguTnwKg@mail.gmail.com>
Subject: Re: CONFIG_FRAME_POINTER support for Clang
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_161224_707060_7B7EADCB 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tri Vo <trong@android.com>, Russell King <linux@armlinux.org.uk>,
 Stefan Agner <stefan@agner.ch>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Matthias Kaehlcke <mka@chromium.org>, Manoj Gupta <manojgupta@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Would it be practical to use __builtin_return_address for the caller's PC?

Thanks,
Ian

On Thu, May 30, 2019 at 3:58 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Some more lists/people
>
> On Thu, May 30, 2019 at 3:56 PM Tri Vo <trong@android.com> wrote:
> >
> > Hello Russell,
> >
> > I'm trying to implement support for CONFIG_FRAME_POINTER when building Linux
> > with Clang compiler.
> >
> > Currently, CONFIG_FRAME_POINTER relies on function prologue that is emitted by
> > GCC using -mapcs flag. However, APCS is obsolete and Clang doesn't support it.
> >
> > So in order to accommodate Clang-emitted frame layout, I'm thinking of
> > providing Clang-specific implementation of code that relies on frame pointer,
> > most notably in these files:
> >         lib/backtrace.S
> >         arch/arm/kernel/stacktrace.c
> >         arch/arm/net/bpf_jit_32.c
> >
> > This will likely involve putting "#ifdef CC_IS_CLANG" statements in the source
> > code. Is that OK?
> >
> > Another caveat is that Clang implementation of backtracing won't be able to
> > dump saved registers or dump precise pc value of the caller, because IIUC that
> > information is derived from APCS's fixed prologue.
> >
> > What do you think about this approach?
> >
> > Thanks,
> > Tri
>
>
>
> --
> Thanks,
> ~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
