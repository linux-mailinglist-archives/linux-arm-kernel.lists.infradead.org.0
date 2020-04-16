Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0EC1ACF68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BF4epCNlSBclxCo91v3+C/6fLJTzQHZGhKuXPvdho4k=; b=KJKg9vsLF0/0Yz
	x5fN7TWxi+lcBT6iw4dJKHXRl8bjwzycKOkWsF9w0Yxzmjp59k2C02irSHEdThZWUZQRbblHLJLHx
	pXvPhRRgS1jGGpJqu7IxuU6NxJGJHD9/swu4twxhSI+xFr6v0vm7VniXIp7XamvlvCxTAcg9GZZCr
	e93nYbSzrcr2vjncdFH45/gEL4jJpUeyxA+yT4qdnlwHZywJCx/dnZWbQK+GNktWEYocNbrUrFioH
	C/iMghS/1Etjh0KmCPGWetYE45k2M7eyScRsbynYD3VM4I0ZkZihSaS6LU7UHUdDpSynMLu8jI+LH
	iPgpYl9qJV6cpAzgimhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP90k-0001CZ-4v; Thu, 16 Apr 2020 18:13:14 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP90X-0001BJ-JQ; Thu, 16 Apr 2020 18:13:02 +0000
Received: by mail-ej1-x644.google.com with SMTP id n4so1979862ejs.11;
 Thu, 16 Apr 2020 11:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3BujPtYkPgE5qbv/kcmnLou5PuLayVpEmjsVIPVlZ6c=;
 b=MI3PIN03g9mte9tt/J80yvDslXb3w5cZmZDi6gm4zlUVzFOR9lZnuarDbb8wWGmYJm
 NKMmuKGIWz9Nz2eRwTDCAUTxmweTc9el3ER8sG3w1TZGBshbNfx0vMTldgm65Cdlll78
 WZ0BOuepmKQy15b9XnY3Qdn8gQLvqy1E4Q2orei2X8a6KbkHoOcwwOtIxXnDlFnjGLph
 WJlmU9GbCvAa/WFA3EY+gzuUHVqwVyMe8Qx3igEX0O4wX4MUu293I9QfiuaXqLadpIhX
 KsQFZRC2lLEBWh/0JvCD2aW0+aa7shBCg2fiEqcRiFN3SmaW39m+JikfaII+EJxJHEzA
 2dnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3BujPtYkPgE5qbv/kcmnLou5PuLayVpEmjsVIPVlZ6c=;
 b=udvIhBgb8HWPHVdniJdM6NHR4CQbQRhoqwpWNngJQPwREmxAMA/pji+F41FkE1LnPj
 yIeR6W6Aknjq1+jeCBALTX4kPdbOJ31musI/cStqGibJZgS96rW9MdYtrHIGo0evADyR
 5C/GBGLfQ2UH11V8mHUBwB3FRXzL+yQHy33PgVH5mej1uV+UWH8esjxloD7FUU7Wst79
 Bdu/fHpmPrwwFwrwZed3v2L8hCOd53O1LMWD+taBdd1n8JE2QT2RSCNZEGtxZsXSOg93
 F7Pc6jyPxBuZly99hDZtoVt2l0I1pucucWA6rrV1tfexYuT0oUS3CgiPRuyJaxG3Wlx9
 zY0Q==
X-Gm-Message-State: AGi0PuYfvuoEpbhpD+YOWO3mXkHokd1z0gTlQrfz4AY1PVkgxiB7cH2p
 NVE70t2VLBfhBTKXy8vogvvxGbG8BazGSUS7daU=
X-Google-Smtp-Source: APiQypIkLNljPlUdohCkcdi0muKk9NtkNh8bkA9dgBVjbBN/j84bykCU96fEtuK2GZpJZGQwXkyrDlqZd1lfhqCqzrA=
X-Received: by 2002:a17:906:2962:: with SMTP id
 x2mr10118232ejd.233.1587060779605; 
 Thu, 16 Apr 2020 11:12:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200414200017.226136-1-martin.blumenstingl@googlemail.com>
 <20200414200017.226136-3-martin.blumenstingl@googlemail.com>
 <1ja73bbtqt.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1ja73bbtqt.fsf@starbuckisacylon.baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 16 Apr 2020 20:12:48 +0200
Message-ID: <CAFBinCAtSPTHfbr5KGNFFg3eo_d2p2q59fQfMXu+XkOb8WVrDQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] clk: meson: meson8b: Fix the polarity of the RESET_N
 lines
To: Jerome Brunet <jbrunet@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_111301_640845_62EF70B7 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerome,

On Thu, Apr 16, 2020 at 12:38 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
[...]
> >
> >       if (id >= ARRAY_SIZE(meson8b_clk_reset_bits))
> >               return -EINVAL;
> >
> >       reset = &meson8b_clk_reset_bits[id];
> >
> > +     if (assert == reset->active_low)
> > +             value = 0;
> > +     else
> > +             value = BIT(reset->bit_idx);
>
> if (assert ^ reset->active_low)
>         value = BIT(reset->bit_idx);
I can do that, but I prefer "!=" over "^" because the result is
expected to be a bool (and because I'm not used to reading "^" for
logical comparisons)
will this work for you as well?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
