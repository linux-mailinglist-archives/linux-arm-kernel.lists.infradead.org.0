Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7434F30A61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 10:35:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMConZaerTZCyJXK/PD7Jbe0FEuVsutxRhKaxzIsPPg=; b=ETL0/X7XXn3+SB
	rgRMj28ETSZZVCVVhl3OHNqj5x7E1oWNmhsMN26dgJEJyyTR8GuiQHCBv+8IlWS4wht37qwhFJ4r+
	8D1jQq9W5EwKc4vULFnndd7YCOBhCaxdGX98xMdNl+y4iLVFJglBKU+Vn7EFctl4VQOddzvwJTaG0
	y3zEOhecTuJgrYkt9CcKPy66MkiI0smvFe/MvMXlwKvUnwDTFmzKQ5FtNi+XLdzr2bKWKIYBLOt/3
	9b9t9i589ijS94rJh/qECe6EprBcmsHIBdRr/qO9EeWuE4/GclMTLQldlWIF7fjlMC+hWcB/tXHuM
	XltKUyr6GTIQrG55e8ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWd0X-0003b2-07; Fri, 31 May 2019 08:35:25 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWd0P-0003aH-JE
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 08:35:18 +0000
Received: by mail-qt1-f196.google.com with SMTP id s57so10397370qte.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 01:35:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6IAGTJ1uN3QgaPB0JEyQM4jANte20b3cD0wECnCP0+4=;
 b=PGmgpu2asaR3CmUYQUCTynY+STnZjLvx/z/2Sc9ONCVks+pgmVtBmgLJeCfrUw053E
 Qy1OJlcPt8JUZBuTCIHKgYQwESAylw4deymXyBbc5Pu/PLKXc/y1HBQW0g4OZ+3gA0TC
 cDULkeaN6DrDj73LQtXhC03xoeUInaJbClR52S5jhG2IFAtwrTT0w7dm4qOuQcRIeSwa
 /uWmeKZ90rpB2NO2BcIzN22J/8eDbKAVNw28OeFa2HvwxoBFXYMvNFMftZE0BA9I92Ac
 9oLEOHE1uwf53aVeCdC1v9n07IIzns74aV/2sMo1GBHsjE9ZhRRrHhxfBIElriwv5JbB
 5qgQ==
X-Gm-Message-State: APjAAAUjH3BTtw8gYEJhLvD8uaHOuKDOD+wTa05vwzftsbDJ+N5DeWsU
 nECidHbKclUrfULTQ/3cEEGemODisc4Bm4zSnWlsXcCpTSs=
X-Google-Smtp-Source: APXvYqwJnDx5Tq81xAUY+isfpEB8HE2a5+TeAN3eO+1/XlqybT+dn9X3SVzRZ6Qq/cvLrjWF8XAcIqH+slSq4FlW4JU=
X-Received: by 2002:aed:2bc1:: with SMTP id e59mr7134581qtd.7.1559291715239;
 Fri, 31 May 2019 01:35:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-18-vincenzo.frascino@arm.com>
In-Reply-To: <20190530141531.43462-18-vincenzo.frascino@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 31 May 2019 10:34:59 +0200
Message-ID: <CAK8P3a29QXCP8nw7po06GeYEGvJ_y2GxjAvswFk3=Y6YCjbdDg@mail.gmail.com>
Subject: Re: [PATCH v6 17/19] mips: Add support for generic vDSO
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_013517_636949_FD873499 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 4:16 PM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:

> --- a/arch/mips/vdso/vdso.lds.S
> +++ b/arch/mips/vdso/vdso.lds.S
> @@ -99,6 +99,10 @@ VERSION
>         global:
>                 __vdso_clock_gettime;
>                 __vdso_gettimeofday;
> +               __vdso_clock_getres;
> +#if _MIPS_SIM != _MIPS_SIM_ABI64
> +               __vdso_clock_gettime64;
> +#endif
>  #endif
>         local: *;
>         };

Same comment as for the corresponding arm change: I'd leave the ABI
changes to a separate patch, and probably not add __vdso_clock_getres
at all.

Also, you seem to have a typo here:

> +notrace int __vdso_clock_gettime_time64(clockid_t clock,
> +                                struct __kernel_timespec *ts)
> +{
> +       return __cvdso_clock_gettime(clock, ts);
> +}

This should be __vdso_clock_gettime64, not __vdso_clock_gettime_time64 I think.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
