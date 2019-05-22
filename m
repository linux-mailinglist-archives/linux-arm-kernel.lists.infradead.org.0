Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A761425EA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0jkY/v27P+0SUTue/WXuPZ2bY/WLOGkt3YCsgPC7D4=; b=tfpqcjua5l+Xma
	0zOUlqbXCbxb0J+ADHIRyfsZZfN3T7fOi0nBDkN2uOjdTucd4of/GjGWtxKwKuIwP9hYgxpEw7DsI
	iB66NXIfLvAZGK0hdCW0jidqroMeMhf90rq7JFfRdLOkbZKEr7byYJdv6m8nefFkRnOCQdCmDQ9en
	7MeNM43iL7VhTkXUFwZK0XTbQQoQYyK+epdaoOG/eTRGLdvQG+dNSm6sahI5Hn/GWR/Aigf9CszoC
	5wDmBdwlWILOlWOI/jGvb9W4mqJLwQ8x25wwK09On4B8ejSASgr0Xdhx66U+urf+JBztfAcdqMs3H
	aJ7JdX284rzL4hJKCNOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLZX-00076P-9G; Wed, 22 May 2019 07:21:59 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLZQ-00075v-3x
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:21:53 +0000
Received: by mail-vs1-f65.google.com with SMTP id w19so791841vsw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X+htciVyJCEETZZh8S6dmdJOka2sEukH39ojlwyB7Oo=;
 b=GpJDcgnOYA7G3dbDzuvYZDXFzN8yxoA4+4a7+EZeqXrRdp4vWpy6BXjkcG69y9Urvx
 /wwvQoiGDolQ9bnqdEhTWqoXJO9+5MFe/Xu/RlvW441bzGWsVAhj0nAb/6OOwETnPtrG
 64BrcOXD8s6jhVHIM5LvcXDpsmtaDj5cdNNxURGjU9j6UPosSPeicfy/7DuBZcEBl3Hg
 6iGfACkPy+2o2JregwQKbpszA7501fGBnytUZYR25GeRPZzZ6G4W6Kmy3Or7WQLnq017
 xVH2pxwZ6MPAqhi1NXZg8segrl3SBC+1HAU8X7wI/gIlPaVPVc/f6JEG1J1C3lbij6b7
 X5Bw==
X-Gm-Message-State: APjAAAW5y+Lt6jymojeyBxyhrORvrQUXHvBKvIco+iq6bYS10EUejuRu
 Em7D1jAkFe9tjpSvTWobJu06Pyqk5Lnq9FYc/As=
X-Google-Smtp-Source: APXvYqyQWgSr/qxroftXFiBMDk9QtVTkDfbjkkGC0tsQ+POzeNBI2O6cxaSDGVpEMoedTLvddEa+4B3wqd+csUnkUxA=
X-Received: by 2002:a67:f303:: with SMTP id p3mr31460348vsf.166.1558509710862; 
 Wed, 22 May 2019 00:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190521183417.GA121164@gmail.com>
 <20190521184622.37202-1-ebiggers@kernel.org>
In-Reply-To: <20190521184622.37202-1-ebiggers@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 May 2019 09:21:38 +0200
Message-ID: <CAMuHMdVgryYRq7XJ6a_80DNO3fuO363tC_1Tdonr2GcTFO1fUw@mail.gmail.com>
Subject: Re: [PATCH] crypto: jitterentropy - change back to module_init()
To: Eric Biggers <ebiggers@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_002152_156935_561559B8 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 8:46 PM Eric Biggers <ebiggers@kernel.org> wrote:
> From: Eric Biggers <ebiggers@google.com>
>
> "jitterentropy_rng" doesn't have any other implementations, nor is it
> tested by the crypto self-tests.  So it was unnecessary to change it to
> subsys_initcall.  Also it depends on the main clocksource being
> initialized, which may happen after subsys_initcall, causing this error:
>
>     jitterentropy: Initialization failed with host not compliant with requirements: 2
>
> Change it back to module_init().
>
> Fixes: c4741b230597 ("crypto: run initcalls for generic implementations earlier")
> Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
