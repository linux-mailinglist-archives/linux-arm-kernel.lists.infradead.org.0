Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A375861E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DFkl6SqowKvqO3kqYUCEYyGNXnSNrqDYT+opBHb460=; b=ukDOjX28BBCLI1
	r3cKohWhLNtZbHeHDOM4+KnaJQXB4rExkpyvX3sa/wzVHc2ORPhRY9YdPdbhH+x4NsZ+YD08e/Pgm
	iGhBCuZ3p6Vg1yKXnGVb5BpdyH6mnjZ+fttbRFdvRSu4KpscJhi7RVKpchn79UcsNAd5ug/a92BfF
	6ONZPaegkS+P2BH1qn+JLd0DYOT1ZXKbgALnbsMSBm0Zcvv6tlwmddHuC64vSk5vXks9GYIXAFns3
	4WjIvK0JCZkmJyeVdBySNJ79WdBXdo67JmeYFecmw97+hGLe75EIOP6PpEG1umwYZS+Aasmcl8M8p
	8NfnM3v1U4S2qRQGmueQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWWQ-0006bl-BR; Thu, 27 Jun 2019 15:41:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWPq-0007dw-Sr
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:34:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id w196so1884613oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 08:34:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oFbMfBYeaLKlhTqvQGiwOcE96tiMpSTCWtMG1/gEUaY=;
 b=sFQFdPTBt45mbNX/EJp+MYI9EOjhc+3GpqVeMMZ7DUUq1USkgksjdi6K18v2+3RIFb
 41/1rGAHOQmKbA7NjUkBc5POWmOIKR8Y4KCwdKcjsS6nI0RswCrcA7dVw+pG1A/ZS0Oj
 RMDMoh8dHC1NqkBeUCEMx+cLdPaXL9u69PMhQZjrl2YKHjI/I7MF/dQIwLw005jQNavt
 ZQUuoPiT51Gr+qYeadAqy6Avt3fYU4A3CAUCGaOH4Y/1OoSlSmHOgixVhCM86jc0HXfB
 ua/znHm3n4g2JuYdezDY8iAux+vAeu5Qkmop4AXvOLVwFR2Br1NirAv7cOEHL+QRpNX9
 XXsA==
X-Gm-Message-State: APjAAAUQBDWI2BBsUAl6mYrJB6f366OWDb+SCJe6b2yB8euIUfXj/KIo
 57HJIbSZUvaBCD48mdNun6dOcr+/zA8xsttjCjLmaDp4
X-Google-Smtp-Source: APXvYqyBJFVgH2hPYgiDr4NuGy+Mt3H0uRDFop6WEKLlnnxAIFRJogNDd05ZjfKmohuv2LqyQ036224+I/XwGTJaZqA=
X-Received: by 2002:aca:338a:: with SMTP id z132mr2753780oiz.54.1561649665440; 
 Thu, 27 Jun 2019 08:34:25 -0700 (PDT)
MIME-Version: 1.0
References: <35dca44e929f49c7a00125bf18c3455198d4e18e.1561648504.git.leonard.crestez@nxp.com>
In-Reply-To: <35dca44e929f49c7a00125bf18c3455198d4e18e.1561648504.git.leonard.crestez@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Jun 2019 17:34:14 +0200
Message-ID: <CAMuHMdWCJW_=9r1QndJeydFGaOAAe0pZrcC0xiAnY+iH8atENA@mail.gmail.com>
Subject: Re: [PATCH] clk: Add clk_min/max_rate entries in debugfs
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_083427_071029_D69F8352 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Thu, Jun 27, 2019 at 5:22 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
> Add two files to expose min/max clk rates as determined by
> clk_core_get_boundaries, taking all consumer requests into account.
>
> This information does not appear to be otherwise exposed to userspace.
>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Thanks for your patch!

> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -3031,10 +3031,34 @@ static int clk_duty_cycle_show(struct seq_file *s, void *data)
>
>         return 0;
>  }
>  DEFINE_SHOW_ATTRIBUTE(clk_duty_cycle);
>
> +static int clk_min_rate_show(struct seq_file *s, void *data)
> +{
> +       struct clk_core *core = s->private;
> +       unsigned long min_rate, max_rate;
> +
> +       clk_core_get_boundaries(core, &min_rate, &max_rate);

Probably you should clk_prepare_lock() first?

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
