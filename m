Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150791723DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:47:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XF+2AP0BrKbGYgZV6EHZu4jlNHJ7huPfaLUFIDegcJE=; b=G/l354H1n7/52Q
	QXKNJtB53zx3M3qzoSChh4baJ8jvMi05qzsI3EnUkHye6+mRF8/udfWbOEunmoytCla1nCTBhFiUy
	5CofzP4ZkltuPV31pWTxBxol/uUll6GM11P6V+oKw0Qxd2WXqqndxV1DmQXRNm5RPQ9T7q1fiCOlf
	emnT8eSTozrch8THlnVxKRLcWZPIJe9YRCjuYIzu658xtv9XuUWGY3hoQBVBtSxX8zeu339+KRsc4
	f/Cuh+qlmMOLsm/YHBS1METP5nsnds0WS2Nm80wssRQgrZY92mqHGkyvlYV9v0LOR1f0XU5439MTT
	fV8vXcdY5kXXLeVkmvYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MKB-0007xn-8E; Thu, 27 Feb 2020 16:47:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MJx-0007wx-Pb
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:47:35 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1EEAD246A9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582822053;
 bh=zFCtdq9lDibBY2R4Cfy+kdhBHuov31lyU99yd4eTIfQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=v32/0eP7CbEqQtuvt4rIkWhqyV8S9iTjwqJAYahDI7YyBOdnMB5YpKzDE1M6tZmoa
 CDdJV+PAsiLDwgwTQaYbE0c0u6ZNxLo27z5POKwkbyhpEJsqdaG8GzbYhHQjUO460r
 jRSJHlkqDcSl+/ldouHrCVgfjT8EDuiPrVA7wezw=
Received: by mail-wr1-f52.google.com with SMTP id j7so4214120wrp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 08:47:33 -0800 (PST)
X-Gm-Message-State: APjAAAVxRFr2/iLNwKxwB7TnOp2zj9K7R9MceCfuC5CQXGtFu9OKpyYh
 3u/WPZQUtYFu56VqDHouPdzjDs4xeqscXOnnPdfCow==
X-Google-Smtp-Source: APXvYqx3QudW1fMdO5KKlDSTNX1DTAxJpNB/3A3sJsXk14ObnAF1HGulI/nnOXQXMxmx8Jv8aP9tPPXYpnzDZEZlfHI=
X-Received: by 2002:adf:e742:: with SMTP id c2mr5654064wrn.262.1582822051488; 
 Thu, 27 Feb 2020 08:47:31 -0800 (PST)
MIME-Version: 1.0
References: <20200226165738.11201-1-ardb@kernel.org>
 <CACRpkdZ9WR7wEjgscAF=Pwy0=YwbNPjtH6BQWa5wfXW74Md4xQ@mail.gmail.com>
 <91023d8f118440439cf55847a6bc43c2@kernel.org>
In-Reply-To: <91023d8f118440439cf55847a6bc43c2@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 27 Feb 2020 17:47:19 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu_smwr3RDW=B8BQ8AG1+aOibFHwvoTSR=F2TxDguV2ELQ@mail.gmail.com>
Message-ID: <CAKv+Gu_smwr3RDW=B8BQ8AG1+aOibFHwvoTSR=F2TxDguV2ELQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_084733_861519_8A03D26A 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 27 Feb 2020 at 17:01, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-02-27 10:11, Linus Walleij wrote:
> > On Wed, Feb 26, 2020 at 5:57 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> >> So instead, switch to the by-VA cache maintenance that the
> >> architecture
> >> requires for v7 and later (and ARM1176, as a side effect).
> >>
> >> Changes since v3:
> >> - ensure that the region that is cleaned after self-relocation of the
> >> zImage
> >>   covers the appended DTB, if present
> >>
> >> Apologies to Linus, but due to this change, I decided not to take your
> >> Tested-by into account, and I would appreciate it if you could retest
> >> this version of the series? Thanks.
> >
> > No problem, I have tested it on the following:
> >
> > - ARMv7 Cortex A9 x 2 Qualcomm APQ8060 DragonBoard
> > - ARM PB11MPCore (4 x 1176)
>
> <pedant>
>
> The ARM11MPCore isn't a bunch of 1176s glued together. It is actually a
> very
> different CPU, designed by a different team.
>
> </pedant>
>

It still takes the same code path in the cache routines, afaict:
- the architecture field in the main id register == 0xf, so it uses
__armv7_mmu_cache_flush
- ID_MMFR1[19:16] == 0x2, so it does not take the 'hierarchical' code
path which is modified by these patches





> > - ARMv7 Ux500 Cortex A9 x 2
> >
> > The PB11MPCore is again the crucial board, if it work on that
> > board it works on anything, most of the time :D
>
> That I can only agree with! ;-)
>
>          M.
> --
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
