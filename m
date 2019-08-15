Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C6B8EA1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:22:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMOIzkTkSt5HD3Kr6zNvwT7NVlygiQZAO2bPsy3jQ7Q=; b=SC8ojR6liAqAQT
	cQzJn+ZOeRhvjDcG5HvGMp9EMLIH7ypgXcZ4kpOi5aNXJWB4UOcj/i31IjiKAMhSXb4+fbjgsnQUN
	ea25oS5pGv18HoaloJEAwHYhWtv7wxubCHlWBeb74eqmkFpBBtUmmyGAE27EZ8N3Z6ywiqC8FMEiV
	c1LmbE8D2Qg8G4rS7sOyLIQyy3yFtC753lRzCL6mwsvxHqMokvEJdJNbbk66SxfawaDdHGlhqYS3B
	viHZP5L8+2Hj4JcCdlN5ho+arACxfuM29uW9eFNaXCgn6jsOGsOdd15PuHAYOAmUHoFFNtKNn6YFF
	BaaXi1nnKmwzQjJAtFQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDpH-0003nx-Pt; Thu, 15 Aug 2019 11:21:52 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDp4-0003na-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:21:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id g67so971768wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 04:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s6nyfuCopJj2adR1qGDzlfll057Ee/X+g7GhOaBeG3Y=;
 b=Zfp4bJrFLKmvateXnLFVB2aOO8rcYNC8IVlalgbJeNQAEqD8iTrcbBQnIc3TCFFvKU
 gz0cIBhKKNZ2eg85AGi26Ik2uvmFMjD7VVCe821PvIAdePTFw4zbbUKUyaraYFYja3+w
 IGdf7EzY3kTvizpaxvUHgouBuDZbiGVPDlCsVdB8crkRNOc8kIfER2GZyTuisBsrfiai
 zvifycBlWYn83kMvX3Iu4cZIy7Dm7C56IIBlJz8auqrmWtpC9wtq4anjdsVhVNQ1mAmF
 Fe7WAlnbWE4s7GhCCUoB/yGJtd79DhkuSoOC7soSlEMbOnfa1jUCVdxX9ab2W3GR1oJU
 QMUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s6nyfuCopJj2adR1qGDzlfll057Ee/X+g7GhOaBeG3Y=;
 b=mfRmjUAMUmcfPHSg1RE9I2GqddBpFZw/q9OV0hUY24CX15ZmyYH6no9M5E1aZbcgmL
 0yDj50XTYkaCt1HP0tiVmd4xLVirsszbgBmBlJHL0rJpLQk5XWhlbRD9xNEJYEifIu5T
 df6An5jmUkjiHSg8bQsn0YjrfYF6aRCP8G7hUveO4CDlUhU5eSEAoz+jsbsnMRRj2M9v
 TpYyHU7GNzqLUjd0JuWil1kEwoR0yfosoNu8kbp640wRMuEtYkpLL31o+GK/qCtngviu
 snDjkpbrIeuQufCnHc2rhsHToqensfYRolFer15xmDXsKvv5CuUTCGs19j69OjvLE2X/
 O2eQ==
X-Gm-Message-State: APjAAAWpo4ScO4x816KFacImNgcxoDBcpMbO2IEu6rMhG/Rep3gYLTHY
 Zcb7HYgJ7gsoJc2IxksdIlns6K99UkkFAyaFKA8DjCQaOjIhYw==
X-Google-Smtp-Source: APXvYqw1rtSrgYPyYY8MZcpgO33hubNWpERUaWBsa1dSN+iGC41sb/bhxCxRhQEDV3IhCoI1bBifQ3BVlst6RDBEmsU=
X-Received: by 2002:a1c:4b15:: with SMTP id y21mr2298289wma.53.1565868097096; 
 Thu, 15 Aug 2019 04:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAJrUJt_HV+8MCGxv4=bq97JFiKqPtgN4ntfei0TmxGhDT-bCQg@mail.gmail.com>
 <20190815110308.GA22153@lakrids.cambridge.arm.com>
In-Reply-To: <20190815110308.GA22153@lakrids.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 15 Aug 2019 14:21:26 +0300
Message-ID: <CAKv+Gu-OoFZRy_fv1z3GmTH3rp=TKviO7rEeFXwqqiWzbgJf3A@mail.gmail.com>
Subject: Re: arm64/efistub boot error with CONFIG_GCC_PLUGIN_STACKLEAK
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_042138_935210_43481C01 
X-CRM114-Status: GOOD (  16.47  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, skodde <skodde@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 14:03, Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Thu, Aug 15, 2019 at 05:56:27AM -0400, skodde wrote:
> > Hi,
> >
> > I've enabled CONFIG_GCC_PLUGIN_STACKLEAK on 5.2.8 for an arm64
> > macchiatobin board and I get the following error when loading the
> > kernel (using grub-efi on top of edk ii):
> >
> > EFI stub: Booting Linux Kernel...
> > EFI stub: ERROR: efi_get_random_bytes() failed
> > EFI stub: ERROR: Failed to relocate kernel
> >
> > The kernel boots fine with that option disabled, but strangely
> > presents the same error when disabling only CONFIG_RANDOMIZE_BASE.
>
> That shouldn't be possible, given the IS_ENABLED(CONFIG_RANDOMIZE_BASE)
> guard around the efi_get_random_bytes() call, so something sounds wrong.
>
> Are you certain that you're running the same kernel Image that you
> rebuilt?
>
> Ard, do you reckon it would be worth adding the UTS_RELEASE and
> UTS_VERSION to the " Booting Linux Kernel..." string? It would make
> debugging that potential issue easier.
>

Use of the UTS_xxx macros already triggers an annoying number of
object rebuilds every time you change anything entirely unrelated in
your kernel sources, so I'd prefer to avoid this tbh.

> > Let me know if I can provide more info or do some tests.
>
> Maybe there's a problem with stale objects. If you're not doing so
> already, could you try a clean build with CONFIG_RANDOMIZE_BASE
> deselected?
>

Also, can you try booting with the nokaslr command line option added?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
