Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFC2A9C9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cz4yLqiLDtJCaKe83fgkqd3kzTxA4S5uKEiZN1Vtutk=; b=tc+85pXQzo2o7D
	tURNFagxt5fZg3KsLqB0Q7B6MCORO1uEhvqihlLdyUKnpBjKbsfbu+xr1NvEOWtHNgFgb98HoykSZ
	IOcQJGoXttAwWQAID65y9AoLQH4cr5gw3DxJeW3jhjWSaF8eQlL+Hv6tggx1HLkGDC9O/rBqeN2dg
	PW4qG4Cwy99q1I4/WO5bPQJO443LH1g34U4Ep+4ahDhNSVjN8lptk2JgwMOqAin5QgN28ZS7ttLRs
	PDq2k5uLtkVLBM2kZh9CrH4iqYQf2zpM0Z1XyytDPzCn6Rlzi2bfmIch99hpqLWZbxGtIGSDuPy5/
	763dyRTdI1pg19aBBYjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mov-0004JJ-Pk; Thu, 05 Sep 2019 08:08:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5moc-0004Iu-Ji
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 08:08:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id k1so896982pls.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 01:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p4cc3HD6wCgRlnUtcn0OOHFmBZxcsFw0lbNwPOQXaMs=;
 b=ldqIJr7rYiw3PfQqdQzuOi7dClRQkPVHQ78j0B22mJIViZA3bBPXpqOgqQfRYw477s
 HSy1oDmzKI7o2tp87ZoXVsuCMMg1FTgRrNOA125vjse2m5crWv6rqwXnRW/56VJ3R5Gl
 5lbkaq+trdJvu3B3FD95traiLrl5n0Frg1kDdyfgETxTIwvuH7fJ3Xbi+9rw6I0LpPyh
 9dEC67LHeKADIOu3uUCU5Ja1B30P0AB6ewmQ72l5j0LBBBQ7bK0tBlz8PBniTjaLAE0E
 RQEM8MjW7Get5PgLg3Azvc4wbNxm1078ev2AKbDiNFD7yruPq+HkHQUu0Q7SgZ/te7KX
 y1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p4cc3HD6wCgRlnUtcn0OOHFmBZxcsFw0lbNwPOQXaMs=;
 b=CNfb5DFlcwp5rC3FDeVsYFWGw3aA1q9VbZqcRW0qAI3ob0F4S+ScN3B06AUpJZGt7x
 hQJanwhYuilMHib8jGQdujJH313BMDIEdxZWLG+L8RsPBqMAf7bZgfmKbqZGA24BsXVl
 Zzn5tkoZx4zUzaYsdqcERWIrNJSV/5kzAar3NRBrrtTmipe2V3mu/6fti74RAJYJjurq
 rQC71eP1ZL/scSDOikwJ0iIQz92euQ+n9V6Hs4iXZNjEJOQOlfvSnhANlBLS0EXhOF6S
 9EL6+UEBJevNcFXmYA9PawHGdT4wFutDq5FjtVuqhTD4UUS9xVwu+GH+jtzretUuJYmH
 YQiw==
X-Gm-Message-State: APjAAAXzfoYI9qlrgiLzjA+XOLy6CO52Sds9xfrqXfuNJrd+OL8FqiHI
 hsSf7XByEh7SSLAGbHJlgM49WWl+vWg+fFhe+a+pXcTyyjc=
X-Google-Smtp-Source: APXvYqwWrgyUGsctjbz9xkNUlborGLECclh7l27G2fO9h6X4J9/miCFZcTmLyyj7sm/bNj1c3Gs23ePhQy3qAsUB81A=
X-Received: by 2002:a17:902:9348:: with SMTP id
 g8mr2103599plp.18.1567670905658; 
 Thu, 05 Sep 2019 01:08:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <CAHp75Vd_6Rpt5=BjzV8YFCiFP7qsRrYHHo7+=gWwnZH-zT9jNw@mail.gmail.com>
 <dd62da5f10c06fae1823bf8338c2acc83fe40a40.camel@gmail.com>
In-Reply-To: <dd62da5f10c06fae1823bf8338c2acc83fe40a40.camel@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 5 Sep 2019 11:08:13 +0300
Message-ID: <CAHp75VfbjRfCOzo2+95aiGDcmEUOAqUORY4epK+REJ=Y57XFFQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_010826_684200_B1F1FDC1 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 2:17 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:
> On Wed, 2019-09-04 at 19:27 +0300, Andy Shevchenko wrote:
> > On Wed, Sep 4, 2019 at 9:14 AM Rashmica Gupta <rashmica.g@gmail.com>
> > wrote:

> > > -       banks = gpio->config->nr_gpios >> 5;
> > > +       banks = (gpio->config->nr_gpios >> 5) + 1;
> >
> > Shouldn't be rather DIV_ROUND_UP(nr_gpios, sizeof(u32)) ?
>
> I agree that DIV_ROUND_UP is the right thing to use here, but wouldn't
> it be DIV_ROUND_UP(nr_gpios, 32)?

Right. Either this or BITS_PER_TYPE(u32).

> > >         gpio->dcache = devm_kcalloc(&pdev->dev,
> > >                                     banks, sizeof(u32),
> > > GFP_KERNEL);

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
