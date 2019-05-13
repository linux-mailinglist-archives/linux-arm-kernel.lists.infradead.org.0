Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D961B02A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxW7Hwvzs5hTF+EeNRM4VeHnvPVTX6RYDlktsbv5P2g=; b=FJAymVEjJ4tLSh
	09ztsC0Lcy3sYLG7JyGoBYSG0vE+mZQRyc+LOiYJtihZ0aPcnrCuN4bRAA99d4kQDIsRt+MeuTHo/
	cmuE00zqmdTNx270cUHCEjx5HqeVkkYhckenE9EUQeE0uXnbSz/ZGVxsiRlaYEjgkc8GZ1nQQRUrs
	w0EzstKx6gz6jtJNw6gHWwqehD0dJzFYqrCE2gc0tMg0VJtG0jh4NusTbGfzsR2PNyvppZWAwK2Hl
	BUOGo3kzyje1Hh16BpZONIEMtPBJmgwyc3m0no8CFj8pjnx59YhtnAjoaRfpbf9oaoOg1VktraQK4
	Bu4HhmMpphodhrBQXCsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4Ke-0000va-KO; Mon, 13 May 2019 06:21:04 +0000
Received: from mail-vs1-f66.google.com ([209.85.217.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4KY-0000v4-3B
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 06:20:59 +0000
Received: by mail-vs1-f66.google.com with SMTP id q13so2425969vso.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 23:20:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4z6TOqQd7xpUAzupjuOesaFbYODxlU8r51j/bIYSpok=;
 b=eh3qaM8of/SltWFrTho5OiCysORWryMDKZ6w+o/0gXHBn2q/eNsgY92IelYqWHo1At
 AlgaC2mkik9Scd8+ibMnTzYgTW2+HkXmANq3AQfqspbyUOIaQlgIbQ3Wr5nEzZD0eHaT
 Xj5mpvp1/6iGAO1JCxYOUNYmH/jb5pN53QoRUm+MBIavEWzij0FK1pX2qoDJvCKKz5HO
 /AW6uwalqhUj9pWzRnYQ7JpNZKJ+Pat9WK0+iR0uP1fYOBB80kxn2zY1seD9VOci3TVj
 SqHlW4XCp7p5ggjX9yEoxHHEKVmXEBdlWpDCYvJCuCH77h5ScIyJ4+AwSAQIhSspkQqY
 kCYg==
X-Gm-Message-State: APjAAAXcr2vO6eZjhbOuUqmN9r/XKQ80pXGhczUwhGM3NNyjxplDdpjy
 FWk9F2VVvTSZLDNRhx09JrJu6HMD5lwRwRX2ho8=
X-Google-Smtp-Source: APXvYqxIAjBs3bKYcwXUWTPBFDzX+ggIz6zeo1JRjSWp3eQ1BVWFfT1xGSTKey2SXbg2CaCuuovHzHUjRzlkEAHRzZ8=
X-Received: by 2002:a67:7c93:: with SMTP id x141mr5085007vsc.96.1557728456522; 
 Sun, 12 May 2019 23:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190512114105.41792-1-yuehaibing@huawei.com>
In-Reply-To: <20190512114105.41792-1-yuehaibing@huawei.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 May 2019 08:20:45 +0200
Message-ID: <CAMuHMdVEEuvNLQeMGuuK9vp+w8AA2dHe8UnJ1XfPzUFarLQdTA@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: remove unused variables
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_232058_131652_C349136B 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 1:48 PM YueHaibing <yuehaibing@huawei.com> wrote:
> Fix gcc warnings:
>
> arch/arm/mm/init.c: In function 'mem_init':
> arch/arm/mm/init.c:456:13: warning: unused variable 'itcm_end' [-Wunused-variable]
>   extern u32 itcm_end;
>              ^
> arch/arm/mm/init.c:455:13: warning: unused variable 'dtcm_end' [-Wunused-variable]
>   extern u32 dtcm_end;
>              ^
>
> They are not used any more since
> commit 1c31d4e96b8c ("ARM: 8820/1: mm: Stop printing the virtual memory layout")

Thanks! Sorry for missing that.

> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
