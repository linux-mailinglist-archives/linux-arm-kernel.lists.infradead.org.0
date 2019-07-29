Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED1F799E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 22:25:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ikm0kcHk6mcsvZTCh6tYkb5BQ30NTPEVc/GL1m08c9k=; b=bvL3K1bupbOixU
	d0VdEb3r23SWwq6f3Fxzpyw8xz3oqOtZIbVLEiw26wnAQtsJ/CkfzOYOuRJ58sZYQCbuXVoRvUdAU
	WMERkg3FmsaCa5BSf5GStUnMKi8f91TuafROV42tGtQriyeZpGAoyBShJulGqUtvSmGGx8v4qH24t
	EqcWmRGMcPTrSp6wezpmgLM/Nl/omtMxF9aUgQgeytBZCyeyI9O/LbYd6SZvv9I0iNYMloWrhNaBd
	ECeb0WTufzltW5pdPrbZ3iUMOohNa1cVx6I3scKW9NAGs8dgQMeKwv8RlGxxKwnxGbx7eV8sXWKOg
	KMuKXy1Bb/lWDd4YH3AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCCj-0003ce-04; Mon, 29 Jul 2019 20:25:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCCS-0003cI-EV
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 20:24:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so54646493wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 13:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:sender:in-reply-to:references:from:date:message-id
 :subject:to:cc;
 bh=R+VD6VEIEi7tCL1bsoquMaD4L7zvvZdE5nzH5R64hEs=;
 b=Iuz7L/Nf3iOvfqbCl+c2oWCdUS/FXB4wo6Se1dKpxlhSUn3HO8Z6BpAjjnTlzWGLzJ
 VcFyPubpOxZpKyjkcepvhW1uaE4/fnGKBlCVk+x4USItIR69Ez/sRuUooFg5Jy4Fh6Qw
 ZdQ1qzp4bscWz2L2Va5stXbn8uAXnjyWieJNcX4OkqF8OZ0hiAbwIN+rfw075ARBNrKs
 V01TOeSfcYvX1iDUU2ksq0WNm7PZcGw+Pf0Ap6JKQgbe5Sj8N/ueLzluUfCbagrVAG1U
 oLqavkWz2R3V4xaYUos4SrTYg6RwfVQUaSaBXc284GnVh5WYRIvtN26xxH35+vlP80nX
 eQjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
 :date:message-id:subject:to:cc;
 bh=R+VD6VEIEi7tCL1bsoquMaD4L7zvvZdE5nzH5R64hEs=;
 b=DL2F/Ub7zZ58nc3PJ5j+d6ykd9pVV/7XxBWD2Fpouh4ntIZcgoO5vgy54GdtygWqOl
 nwuwUAb4mE9wUeGd4oQ3v0bWtvFeoeI99+lPMz0o9KX8A6BtyfPEolKRRhIpoWJyOkds
 AzUwqo6DAEVUiCuJQpSYEVY/+OstX/BhFGgOucfROLWBwzmYjbdc7njSaj815afFsSw+
 +VxEbNgZRHG2G2qg5jPl068gxG+XtdyMW34feOxBa4EcK4/e3S5XpVSHcN2uLlPsf3q8
 6NjDnKW0sYYPzcqczuihZ1Zu+duLnFUmvX8nAEEwyT7zJiy6aaz/GenqKqIgKDgA3jHX
 cULQ==
X-Gm-Message-State: APjAAAVuZTT1xHO+Q/kIH9hrXSAr2st0UjcoYParvj5zmgEaDYK0cVcO
 I2KpuKmDepgBLozDrC1O2uGqYrYGgSq6XTm1Dm8=
X-Google-Smtp-Source: APXvYqzsoo/xomC5blIQjit1D0jWR0YQJc+ZJ/W7NKYP+WeUbpHEOSLNiYlXzMwYoL0Isaq56IiAFEWdUn1HvQ+Xcpc=
X-Received: by 2002:a05:600c:20ca:: with SMTP id
 y10mr68237058wmm.72.1564431890417; 
 Mon, 29 Jul 2019 13:24:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:528f:0:0:0:0:0 with HTTP; Mon, 29 Jul 2019 13:24:49
 -0700 (PDT)
In-Reply-To: <20190626135422.eebzw2nosygkzhy3@verge.net.au>
References: <20190626135422.eebzw2nosygkzhy3@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jul 2019 22:24:49 +0200
X-Google-Sender-Auth: EklHGoQCjm5Qgr8rms6d0WGaz6U
Message-ID: <CAMuHMdXk8Toz7QhzJ_KJ3Ybu2Gt5NnYXmpNVEc3V_ADY+c_fKg@mail.gmail.com>
Subject: Re: [Announce] Renesas SoC Co-Maintainer
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_132452_485105_5F82CED3 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <arm@kernel.org>,
 Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Wed, Jun 26, 2019 at 3:54 PM Simon Horman <horms@verge.net.au> wrote:
> at the end of the v5.3 upstream kernel development cycle I will be stepping
> down from my role as Renesas SoC maintainer. And starting with the v5.4
> development cycle Geert Uytterhoeven will be taking over this role.
>
> I'd like to take a moment to thank everyone for the support that they have
> shown to me over the years. And for the contributions of many to allow
> the upstream kernel to support a wide range of features on a wide range
> of 32 and 64bit ARM based Renesas SoCs out of the box.
>
> Lastly, I'd like to wish Geert all the best in his new role.

Thank you very much for your hard work and dedication!
I'll do my very best to keep continuing your good work!

I've just sent a patch to update MAINTAINERS.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
