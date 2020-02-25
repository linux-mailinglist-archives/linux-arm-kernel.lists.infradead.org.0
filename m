Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448DC16F11C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 22:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UkflalzgOr3Bv4uCMlQoFclZwbYzapR/5+EjXjwO9I=; b=FK3HNENgtlU5Qz
	e7GES+Pdykvn5XNWrMsgHdB2VgwAJAcvf2TsyuolN2132yx7w38XCEZjrkWZw2OAWeqSOTqGXioe1
	NCJntAg2qJpg+qrT1bixg0c4as4GdnQZ13kJZGnf3rDy/aW4k96xvSmpVv2iad7PIQKVfslk/BxTT
	b2CnSM0mw/C+On2tNgZao0y1A95mgND1lvvPpVT5pCFjjOWV90ClkL706i41L8LuLso4x9I6jXFe6
	zb9ycuFLZ1bp/cv88GLYYdwR+q3buYD4CtZReGSWefA1MJXvjR7Y6k2otcoqIo86dAcgHelel9kKD
	k0ymqOxEjnCMEQig0MdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hic-0007qi-Ng; Tue, 25 Feb 2020 21:26:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hiT-0007q6-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 21:26:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id z5so276234lfd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 13:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aofyHzaDTN0lQyvXH5K7/Dsq6NCi7oRX0/IGVa1FXi4=;
 b=uueMW7BOmqE0QQOS1mbvF7IU74dsu1owWz+9+1VZfJibjcicp9C18dm3HxlrUdZmRs
 dArUgOAdxWfas3S0DJH4qNTUg599vjDAdrSmgJaQnZ8OV9Lc/SoO9RSgXv8zWkx7a/pV
 FdUpI89WhBjGp05ZdUQhAzXKiQQKvHyX46w08laYEQ7lqvELHXtLMp4gkdXwoz6xpHPB
 pjGZvzCG82zwpYToB3DiLPdt+zH3QuXCLMnkDZtvjMqlf4d5u710j6woA2/SReNXj5di
 TlRoNXsWvKfSpn3E/838ngPcl7ddAGAiBs8yp9MyROObOwLrjabqeLdJBuQK6758BZUJ
 tyig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aofyHzaDTN0lQyvXH5K7/Dsq6NCi7oRX0/IGVa1FXi4=;
 b=Meu6h3IUeTIy9JiBReHfkUdXQzesVI9XaS/hz4VO4pBSr7V3Jk8+IR0Yrav57vszlK
 wsTQhkilcmSexqEJJrYAsuNwY9uSWD8gbp0XrxFe24jVN6uByrMoLjsB4uRqm7G6qFi9
 ER0G3GVAyNlfriZ6MBkhEV3DT6rhpdtJ/zV7VM4/1raTH0oveW0pQui+432cQOVAAXKM
 FCLofaATrKpmdTDqbk4GLpY2LsLHilZZY2GWGisN+zlcbER3T55i4/Gvl6tdUh9kzqEy
 BwmDZ2dj2qzslJ4ujtPt//8xsx+O3gbaPByvNECEdzrCEheKOmS7UNqimj6UzSb5oeBZ
 hNtQ==
X-Gm-Message-State: APjAAAUGYgjq2OXpHCnxJ1ZBzdRC12+eytDeJo90KbnX4fxOZLWkg2Ml
 44w9pc+JH2T748x+eE7qfdmllENLlfu4+uyzbwdjPRkLrYw=
X-Google-Smtp-Source: APXvYqz/1gJiL8Y4EWaD1mX1Yw2qmsSfjoZtbQUJRWIbo1atsLY4gyHZEXUZoN8OKlAQW72JOeE9fvGcYJlHD2YWjkQ=
X-Received: by 2002:ac2:44a5:: with SMTP id c5mr424248lfm.4.1582665967222;
 Tue, 25 Feb 2020 13:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20200224121733.2202-1-ardb@kernel.org>
 <CACRpkda5VFzMHE483MPj86VN7uU7w4bNibY=ZeLUHyED=JD7Cw@mail.gmail.com>
 <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
In-Reply-To: <CAKv+Gu8MOZHFLw-Of5yK15Q1z9gpOmdQNmYF405XRAkeiCoXDw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Feb 2020 22:25:55 +0100
Message-ID: <CACRpkda1er-gahEAAFLJHimSKo8YwXXTmJAn=0ff9fGdgA0ciQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] ARM: decompressor: use by-VA cache maintenance for
 v7 cores
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_132609_420861_AD1988B8 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Nicolas Pitre <nico@fluxnic.net>,
 Tony Lindgren <tony@atomide.com>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 6:18 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> On Tue, 25 Feb 2020 at 16:48, Linus Walleij <linus.walleij@linaro.org> wrote:

> > I took this v3 patch set for a ride on some ARMv7 and ARMv6
> > (hardware) boards using zImage:s so the compressed path
> > should be exercised:
> >
> > - Ux500 (ARMv7 Cortex A9 x 2) works like a charm
> > - RealView PB11MPCore (ARM1176 x 4 MPCore) works like a charm
> >
> > Tested-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > I can do more thorough tests with more boards if needed.
>
> Thanks Linus. Do you happen to have any boards that boot with appended DTB?

Oh, both of these use appended DTB so it's definitely working.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
