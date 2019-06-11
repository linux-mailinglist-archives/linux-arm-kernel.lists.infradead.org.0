Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D65D3C509
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njD7tS/hnKb4Ryv3aWcF/Gg+NOjXQFk+fP5qgsza6r4=; b=VSwFwOjylEfQib
	VCdvt0BUMuPQUOCYKamR0OVyX8ag+UdBLIMbFB2ZmBmipSTnCGT5FjuMKy135mL+TKr2MGriGzK87
	79oxpwBNjvUrbbFW6HdR1wGqEMum9UJ1hVR+3EJ+fRHEQ1wMqPN7124/03CNTO7gLDUJ54h/MEibe
	LlnWjRh1A1jQwnAyBRk4W01HQa9cUFMiFubmu6hazYsKUh+RuuOnKGoIX1b24CJSyVNghyDXKzdUJ
	Q/4YKcp1S2qHqPTAjJ1HFfJdr6Wh25mRhgJBKMDa1xVnXmWf49ejSla13xvGNznbqOV7JBMfZxpqp
	GEvr/DjZyaEN3h/c/gjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habDW-0000bE-4L; Tue, 11 Jun 2019 07:29:14 +0000
Received: from mail-lj1-f195.google.com ([209.85.208.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habDJ-0000ax-8z
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:29:02 +0000
Received: by mail-lj1-f195.google.com with SMTP id i21so10519895ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 00:28:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+qQxowJeqY3KFWPkAqW9qTz+OnPyYaz50V/Z40z445I=;
 b=EE5Myu/6JUxjv5JrMsJoYr9ITip99to9sq+UEDlYPjomZBTDUFTkg2xZg1HjOY3f8U
 axNyWY/nQKakZRdx9q9bqi3BN/wMhqhcpTZoDoJeMhLm32hGjiNBxItKk02JtgMBPRh/
 guGJPHUBmN7ZmHGxHz26xkUzN7al+Q1s7gGraqHeJPYyHks6BqU+xKu157cYc8t2ZaIQ
 5LJ3Y0CyOLcN6oteWAq9USwjOPtIX3cOpJBkvX6sifj+9VVCyz8wbkyYn6WvWR0KHdnZ
 BwmjujgSoiZWYqYSc13AD7YSO9qcM81YG/Zqg1vguHboWsrWHq0nkzwR9cCIptyV4djl
 kaYA==
X-Gm-Message-State: APjAAAUU+tRHpxlkGmOPHsLrvt5NvbLAN8YcRwCS0bpPa2QyAYz6GUQ2
 +0JFmcqqDCwBZGNpccgeTQVKKuRBcA1BX4RHU3c=
X-Google-Smtp-Source: APXvYqwl//COK6VAlDz+OaqINMyfLIcABhY3fcmF1MnwSLcZODlYmrWF1zGD3XzPKgJbeXQZs7fhEkevw+pJgQPDoD0=
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr14579341lji.133.1560238138001; 
 Tue, 11 Jun 2019 00:28:58 -0700 (PDT)
MIME-Version: 1.0
References: <87imtc6b79.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87imtc6b79.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 11 Jun 2019 09:28:45 +0200
Message-ID: <CAMuHMdV_pWzX8XH0kxF_=37x4HmZH+CqKWTynwHXFLwBaJMXJw@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: remove unused dtcm_end / itcm_end
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002901_319830_2A290076 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kees Cook <keescook@chromium.org>,
 Linux-ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Morimoto-san,

On Tue, Jun 11, 2019 at 7:43 AM Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
>
> commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual
> memory layout") removed last user of dtcm_end / itcm_end.
> There is no user of these, let's remove.
>
> Fixes: commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch, but this is a duplicate of
"[PATCH] ARM: mm: remove unused variables"
https://lore.kernel.org/lkml/20190512114105.41792-1-yuehaibing@huawei.com/

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
