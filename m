Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ADE1C1343
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 15:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrcemVDoHEw5/rDX9hl+7QwBxiM1byc/PJSBq5u7iBI=; b=asGzXLbPBl7yBO
	dQkyl0jBMKgGzHZjo0tMMzM5CdCRwGZX3i/XMY6To+DbrH3yyzRkndomeF6DEBOlk1J5J7QBoj73b
	u53RJijRk7LHKTjGM/vDEVVnwZy+2unMghK+E8o7UNOxAtYwTY5MIkTVUAT5oaEh8tbrrxbS+Dkdz
	bVVDdUVmrU6qrFoeZhPwAP7529gaIY6aPRZ9/xp/W5Juv5YzAIxcIHAweEKO4vHRuQnFJNtS7sHm3
	DqD+kbVwmRrDPge/b6O5rZ58uBpI3yslz7gbZbgwT2Yf45xUKT7R7UXzUnFzA3BzxC9STC2HbrC/S
	FBefwDeZXijBwrAXc5fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVme-0000HI-Rn; Fri, 01 May 2020 13:32:52 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVmW-0000Gt-H0
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 13:32:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t40so2346109pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 06:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eXZUCfdK7gY+Kv1hYGPVu4uc+SR+yxwik4zzcFw4aa4=;
 b=jy9nd5+8sIX4f67XLtJU1Ddc2S7xNmy0kmwE4u2l/biJGftOorp9LiZnPJqgqOqxpD
 MVOF+gGbJ8ESScoLQJqUwnl1QmhCxlN3A0NTpar+HqR1kb6Z6/B1Hdw2tgn3HsxiNTHd
 llkmOe547clbhmtHU5qt7cWhkNthcT99c8qyYROUE0bqjI+wJv/Y3dIxGa8tHKZzzPax
 hN/p1T6pH/YyQjNRJzkrYUFkwaXvABudC6P2hZ5Bbc6j1W0I2lpRALAzt1PC0bvr84EA
 STiy+EAQCVDzmwnW9RCuCgFgxOC3WWWjnhAVnTxEkzwA9+DTRCD99FtWPz+nYhwEv3A8
 0PZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eXZUCfdK7gY+Kv1hYGPVu4uc+SR+yxwik4zzcFw4aa4=;
 b=gNdE5URqvcTue4vLOhNWP3lpZgJFevw7QIteH5vq5mI+qH845Y5sS+UH2eeGx9IGlb
 EKg6AVoXaVIPRTL9yVx61wT0BY/6vbTs12+x1Q0nxTebGQ/sZ1bpHabQv/5acUekaiCj
 wFhNvs7Y5N3/fRN/o/L6ORVCBDF1uBBlBfMvYIRTd8Yt/MPnyKt+blm7x+YeX57MUg6m
 D2AWwr+D6KkyG3P9PRDm8Hb7i1uoENoJDE89MYIyTdfxBGPO4vHUMZci9s4BOg6rIxOZ
 jywfkBxxIW8hP0NqU20k4ZvQSzcQ9w5FHg97oq5BaaQfnaE08ChlNL+zFmyrq7LGLqM3
 6u/w==
X-Gm-Message-State: AGi0PuZIrYLHMcqUmmEY/qkIFcwQ/kap7qWprsXz4ddsrLMUtXYHCYwE
 h1Wc+NfeppLgT9le7BY7aVYRmrT3pozGNvm0C60=
X-Google-Smtp-Source: APiQypI8YEF8TTFE0Xwx5h22aMqoXNhDREmgnyQi2I4fBaKHdsodV0zVauc4cwXsBohGC996GmyF9VbvXUF28vo6jqw=
X-Received: by 2002:a17:902:9306:: with SMTP id
 bc6mr4487958plb.255.1588339963862; 
 Fri, 01 May 2020 06:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1588112714.git.syednwaris@gmail.com>
 <80745504d15c87aa1da0d4be3c16d1279f48615b.1588112716.git.syednwaris@gmail.com>
 <20200429102114.GF185537@smile.fi.intel.com> <20200430161514.GA7107@syed>
 <20200430163855.GU185537@smile.fi.intel.com> <20200430233227.GA15963@icarus>
In-Reply-To: <20200430233227.GA15963@icarus>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 1 May 2020 16:32:32 +0300
Message-ID: <CAHp75VfCC_E9uB1eq2EVK_nLe=Oo1zqO=Dmm8kX6y-9YoosDqA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] gpio: xilinx: Utilize for_each_set_clump macro
To: William Breathitt Gray <vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_063244_589397_235CF1AC 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Syed Nayyar Waris <syednwaris@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 1, 2020 at 2:38 AM William Breathitt Gray
<vilhelm.gray@gmail.com> wrote:
> On Thu, Apr 30, 2020 at 07:38:55PM +0300, Andy Shevchenko wrote:
> > On Thu, Apr 30, 2020 at 09:45:14PM +0530, Syed Nayyar Waris wrote:
> > > On Wed, Apr 29, 2020 at 01:21:14PM +0300, Andy Shevchenko wrote:
> > > > On Wed, Apr 29, 2020 at 04:39:47AM +0530, Syed Nayyar Waris wrote:
> >
> > ...
> >
> > > > > +       const unsigned long state_size = BITS_PER_TYPE(*state);
> > > >
> > > > This '*state' is unneeded complication, use BITS_PER_U32.
> > > >
> > > > > +#define TOTAL_BITS BITS_PER_TYPE(chip->gpio_state)
> > > >
> > > > This macro makes code uglier, besides the fact of absence of #undef.
> > > > And also see above.
> > >
> > > Thank you for your review comments. Just want to clarify, you want
> > >  a new macro to be created - 'BITS_PER_U32' ?
> >
> > It's already there (read bits.h).
>
> I'm having trouble finding the BITS_PER_U32 macro; are you thinking of
> BITS_PER_LONG?

Oh, my bad. I messed above with BITS_TO_U32() which is not what we want here.

> I don't think there are any cases where u32 is not 32
> bits wide, so perhaps it'll be better to just hardcode 32 directly in
> the code here to make it easier to read.

Yes, would work!

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
