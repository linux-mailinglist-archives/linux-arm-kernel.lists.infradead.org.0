Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21587EE791
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:43:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szD025SSb51PSz2tR/SV0RxFoBePtpko6kT8cGaEsFs=; b=EhyL8cBUuXD+D0
	h5A09ZMSHhO39wthkpmor8cjUX08CePP9M/U9XbZgAHRix4t/VTXCWW6BNlcqULTYcUPI76snzdv4
	4g09u+k2xogpfNCpboydcCshuOiOFYWoDYdm/zoKhzH1ZOryuwv3LdGxQnVsqKnOZhRyuGLJvVIk+
	k0F1NbE3Bf+VaTCbX8LSd55V4V0u91LolA7+tvzJ//2R21e6QEBUxvFYlQq3it9uux8YDKd8JsfVS
	Jg985aKj4ZTfiR92Mr8nZda6v0FPeKor6XDYZOsRmNffvQkt2hJ5Uu9enYWR40+/gV6WGeve6r13v
	XsqnKZSPYu/6OXeZX/Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhKC-0006XJ-3L; Mon, 04 Nov 2019 18:43:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhJz-0006UI-Ip
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:43:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id 29so623632pgm.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 10:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cyveooZxsbFfSYt42gpZZRf9Ppul5ahlN5Luw1xLEm4=;
 b=FO4ChYOqG1oNRDV8SFJM1O6g1rKgs4mD1S0mwnjOEy5e6gznsdmb5Jbzut8qZl6Npe
 nqbw1ZRdW9fKLWI5Fl5LwloHqCuMW7rAUEVfq0trD5a+642EDknbaeqZIRAT5A62TOuR
 nIucVLMqEbDF1rT+VQ24c/BaY4GgmhPZAGiq+fG8zGyDtzg2xmJu/a8ZacMBFkjSqeEd
 rqbgql8j3pybZYsun81OVSIhtsL3ptEH0Zd2G0xjPuoDh0Cx1vRULjqZYELe6VPVwPlG
 Yd7sLRbWek0Zz+j+/3c8/eyRXvV9+bz1a+94RsFKowibI+XSM/pcD6UMqaoe5Z4qqPnh
 LYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cyveooZxsbFfSYt42gpZZRf9Ppul5ahlN5Luw1xLEm4=;
 b=FvXJ7UeSHZXuNTs0oRrk/dlnps8uRCYSTmH2dxw5eiW4K2pqm+YBoPj9sxHda8GicH
 y0wY7WfNhEsJGegoGKDtZk/JjqYK4QLJVm2h8+kRVev0jEzA/aomCnCdlOyrhusvVm9v
 jMwRX/3nyATp/2Q/9xolytnZlWXbJNUqKJuQhWCa9OP+o0ByEMV5Ix26J7JLT+xldeE5
 zPk6TFShEFOdovluLxl4YqLejEc3xlljQciZYDQYTXHXgfiu03n6mL54wsB1RAwK1WIG
 CC8nB69HLqHwWP+WLYrG5yMRyJEw2nibTaLCvWNdHsH8HJG8jJnjKxk8zubOyIraEuAA
 VxMQ==
X-Gm-Message-State: APjAAAU1FFUY3jqFLAZaYCdohEzhGf+0D1hT0C+Gha+41k6/c2HOdHP7
 pHK4BsuuaYra/gk/QEKvs5ibWO5zVltN/ZWX7ZRUdg==
X-Google-Smtp-Source: APXvYqzuga0pKYHVfkPxXV2Lqd6Ui/1l1fMs3gogk5Nnz/GzfH+hGl3UgXjsw4DiCvAlC8VU05yqiG01ckGdVV3QW3g=
X-Received: by 2002:a63:d70e:: with SMTP id d14mr31076676pgg.10.1572893000068; 
 Mon, 04 Nov 2019 10:43:20 -0800 (PST)
MIME-Version: 1.0
References: <20191030174429.248697-1-ndesaulniers@google.com>
 <fa4e28a9a16c54319916be005159e250@agner.ch>
In-Reply-To: <fa4e28a9a16c54319916be005159e250@agner.ch>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 4 Nov 2019 10:43:08 -0800
Message-ID: <CAKwvOd==f801+AfJWwrO3tbSRoizCa2HV7pViOqedJbipN9nOw@mail.gmail.com>
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section directive
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_104323_640577_29FA4F68 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Richard Fontana <rfontana@redhat.com>,
 afzal mohammed <afzal.mohd.ma@gmail.com>, Fangrui Song <maskray@google.com>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Allison Randal <allison@lohutok.net>, Dave Martin <Dave.Martin@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Jian Cai <jiancai@google.com>,
 Peter Smith <peter.smith@linaro.org>, Roy Franz <rfranz@marvell.com>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sonny Rao <sonnyrao@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Enrico Weigelt <info@metux.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 2:05 PM Stefan Agner <stefan@agner.ch> wrote:
>
> Hi Nick,
>
> On 2019-10-30 18:44, Nick Desaulniers wrote:
> > It looks like a section directive was using "Solaris style" to declare
> > the section flags. Replace this with the GNU style so that Clang's
> > integrated assembler can assemble this directive.
> >
> > The modified instances were identified via:
> > $ ag \\.section | grep \#

Submitted: https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=8933/1

>
> I actually have the *very same* patch on my tree, just did not cleanup
> the commit message and submit :-(

Send in those patches!

>
> Anyways, this looks good to me:
>
> Reviewed-by: Stefan Agner <stefan@agner.ch>


Thanks all for those reviews.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
