Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35768553A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhrsjBU+qaXEHSB76SY2kXqtUj7ZXG0eE9ACMZQHW64=; b=JKQKOlTAIW6zXn
	iA11ioj60FVaJO8hDqNCvnNd9tSybCShTQDzWR+u+CwJJJweFIhDamSbqi2XYfLQvHgxmyWdcrPUw
	toYX36+vDOuxoZFoE3gRmK2JlkDbD76q7RUQhdF/gsekWMz4ylIQBXT+sf3DvHdFhVl+BxCXzE3+s
	jp+wOC3RarGXiz8404WYPAOD8UsnLNUsvF27rJbGsNwWq62TNcCFxDf5v9Y7xqfxly57YiatJxnHo
	Uk0adLx3KPqJLybc0DhbFw0tudzOnp08kErd1itM0dcRIt20jTTdKdVCzLgmlb2q6fNA0mlhLzm3h
	cxeyTgAJsNk4SnWXmnpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnbH-0004GT-HG; Tue, 25 Jun 2019 15:43:15 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnb4-0004FN-RT
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:43:04 +0000
Received: by mail-io1-xd41.google.com with SMTP id e5so1247675iok.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0F3/IGgCCwnd7hMlU99ncUwqiOLR40qKHSq5IP68Mzc=;
 b=H9QY044uJRljFFwHucCOhLc4TlUNtF2kHhYxC7nwwj7+e/tHCH4wBUIrhXlWTyiEPu
 PemUAXZSYwJZtlfHJffVKvEOyXZqKhI/6jkT+ttlb2ujT+zSE9te3oFPz9WcsfrzevMg
 w7ExozMJAmIxfzxm3rh1o8NUDYrCpAyma1xsD7D8kUP4QTmKwdDZ1rrftq0x9sDAC8+b
 HTRVZlWxj4GDLZ3IWSfyUMSyqULhoSvLKmAzYgpKskjXpAuW/uK49oAWdRpxHsKfnYyd
 7fcMfy+qWWNQBnrF9892tr5yKgaPtSiWUPxKnOFQLCmEU/QWVaBSGGuyKR9hVMIQk3xk
 Z+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0F3/IGgCCwnd7hMlU99ncUwqiOLR40qKHSq5IP68Mzc=;
 b=IaxNCd+OOnxCHzgFU9ync2H2IDwnXzaRGshs6lRVRHPLH6TKMJzm2KjAWp6yD9etuG
 l9U/LjYbhy2G6MSOZ203cTvQIThWyV3j4qtUrpiKGKcEKiEeOa9yhT1Rk5e8kFsx2Ud1
 klXBL+3dM524MUUonErIPT8K7Fx3F54EMhTYt4igsf+z+txM8CyRDL+6G32xYCEBZTnu
 +enIn0vW4j1GPLheAD5KzSAfHp32/SxoeAcBt6SK4mOmZ3EGzNIV6/hVX0cQRSuosxoN
 nzAru/dLBYCA0j0GmyCSlulcrQZc5ATImV+LpUQ8C/fNdgUmcS9IE20OF1jQ8YdpBl94
 nQmQ==
X-Gm-Message-State: APjAAAW3Kk/RMeAZ4nXNbOLLp7owd2G8VGRFGbYou6riAjcyocpbSzlE
 EFP0F/5J07hhgahI6EpJP6VjmEGS8/EVbUUBv0MvVw==
X-Google-Smtp-Source: APXvYqy1qg6l/v3w03fmOhhQuCJSIudrOjihUXD9r63wnYGsNHvJNpIBunHfZ0/IXmQPkzvMdLJ6JBNlh80SSu06+Us=
X-Received: by 2002:a02:5a89:: with SMTP id
 v131mr25486364jaa.130.1561477380793; 
 Tue, 25 Jun 2019 08:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
 <20190624095749.wasjfrgcda7ygdr5@willie-the-truck>
 <CAKv+Gu8G2GQGxmcAAy1XQ5gkN-2fJSWAKCQQm9T4skYdh5cT3Q@mail.gmail.com>
 <20190625153918.GA53763@arrakis.emea.arm.com>
In-Reply-To: <20190625153918.GA53763@arrakis.emea.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 25 Jun 2019 17:42:49 +0200
Message-ID: <CAKv+Gu8Kz8fN-xKoEqPBiKWaEza6wUkbGxbKPPZxe14QzYLbJQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_084302_903642_23D60B63 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Olof Johansson <olof@lixom.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@google.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 17:39, Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 24, 2019 at 12:06:18PM +0200, Ard Biesheuvel wrote:
> > On Mon, 24 Jun 2019 at 11:57, Will Deacon <will@kernel.org> wrote:
> > > Thanks for having a look. It could be that we've fixed the issue Catalin was
> > > running into in the past -- he was going to see if the problem persists with
> > > mainline, since it was frequent enough that it was causing us to ignore the
> > > results from our testing infrastructure when RANDOMIZE_BASE=y.
> >
> > I had no idea this was the case. I can look into it if we are still
> > seeing failures.
>
> I've seen the panic below with 5.2-rc1, defconfig + RANDOMIZE_BASE=y in
> a guest on TX2. It takes a few tries to trigger just with kaslr,
> enabling lots of other DEBUG_* options makes the failures more
> deterministic. I can't really say it's kaslr's fault here, only that I
> used to consistently get it in this configuration. For some reason, I
> can no longer reproduce it on arm64 for-next/core (or maybe it just
> takes more tries and my script doesn't catch this).
>
> The fault is in the ip_tables module, the __this_cpu_read in
> xt_write_recseq_begin() inlined in ipt_do_table(). The disassembled
> sequence in my build:
>
> 0000000000000188 <ipt_do_table>:
> ...
>      258:       d538d080        mrs     x0, tpidr_el1
>      25c:       aa1303f9        mov     x25, x19
>      260:       b8606b34        ldr     w20, [x25, x0]
>

This was fixed recently by

arm64/kernel: kaslr: reduce module randomization range to 2 GB

(and arm64/module: deal with ambiguity in PRELxx relocation ranges to
some extent)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
