Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18317A9738
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 01:34:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSIyfVCn21Pv5ZTzqllJoDyhXGkmPGwYM/pv5YH2XOI=; b=jvjhs4F72kLXDG
	Ixy+6O1EPYlllIPNjiglNLtSNJiD+qQ+Pb9/PEN9CvXxyq1o+h+ZCNTUrHNcH9kKUlovZbpfcc1kV
	VUi1xe0qXVQVxUoi3QOpeES2OVtZrV3lQotShXLN4XpWSw/Pyic/q+cLSlPRkV2eau5/VQbgB4gP4
	giRIMS6QWd1KwRLW8xddROIOquP53J8vokd6F17eIvxlbL0Ej78MlrLICg3AFyKtJRnwZrh1lWcLq
	Es1bNhzG2C82aQ0Ug2wmTnywHCJhhgJHu0OPO+PW5WjvWhMg2iyHIp3XjFhVW45JQ0aYLL6BIGshk
	juKzRwFJkkGjUkbOW+Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5enA-0004wF-6C; Wed, 04 Sep 2019 23:34:24 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5en2-0004vw-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 23:34:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id y1so326445plp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 16:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=zEfGTR202P+nwSsU1qSBd5C7kGsRpjPGHZxgayed3co=;
 b=bgNGAHlojCAsmb10/j/F4VrV1/7ILP14DPCXfjdhzRir4IZQWwkF6Hg4EJKc2JLDzb
 cgpVtDjEzBNDrKQEIvw55Uam/IjHauVNHZMcV702fkUgEYcFZJ5n7g+9MY1zHi6vMF5E
 jUoJ3GvvFLZsZvdxgYyVI6Y2u4EjUgciFSQFZoVkEKzXHD2HaVmayQYgfXwEYGHD7bM8
 OVDp35v2L0+znwSHmDf4ljqbUB1Q52eIcyj3phJ28h4Znsr2pSYzjgqvNimEHF0RPZtl
 wH7Hd7K0vzSVh+vDM4bSH9SifMeSZaYfZ2e2C7CVJZQiwHPRvvms4cxoSe18y8QKWV3/
 LE0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=zEfGTR202P+nwSsU1qSBd5C7kGsRpjPGHZxgayed3co=;
 b=gSST24PE96O21berl9bJvSQ9peKyJY/C8wG2lTE6D365S3t9+uKH9HsWvn9n+MXr7Q
 gPGrlgwk7Pn3voJPT8mRndIJthMJbqH/vArhrr3if1bXq1vP2EvRTKillshA0Y5KsFmV
 SRwrHiVoyf/tLD12ztviVzJ2mfHuQUXdMD4DK3ydiey5cYTxEJ+9BCXyMvV2OD8S5VB2
 Cw7WBmcXPmjC+JeslqeAnZKtrv6DxPKvIobTtsylBta/Q9gDBDQoB44KQkoOS1u6vamq
 0lyjFluhX7QJ64tEnLyjyyyhMZcHDFG79CeCCzvdRkROYt0NbBI18uEhsw4HtumZZ1CV
 wBRg==
X-Gm-Message-State: APjAAAXl5okyJxUuuzBxxyHg+bR5nONaelvlXeMK6jqdTtV5sOLTPBcs
 nCFmxpMpfyLNE7CJd1Po44E=
X-Google-Smtp-Source: APXvYqw3odHmU1fPWW8sZtm0x+bGwW0rkNDvCptjLNdQshanr2Coj2SEZMCxGSIfz+2XD+ZWxq8Gvg==
X-Received: by 2002:a17:902:a415:: with SMTP id
 p21mr261987plq.319.1567640055590; 
 Wed, 04 Sep 2019 16:34:15 -0700 (PDT)
Received: from rashmica.ozlabs.ibm.com ([122.99.82.10])
 by smtp.googlemail.com with ESMTPSA id c138sm179277pfc.80.2019.09.04.16.34.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Sep 2019 16:34:14 -0700 (PDT)
Message-ID: <1ca6ffddd2452e218ef19ea84ac6c6277e1a9725.camel@gmail.com>
Subject: Re: [PATCH 3/4] gpio: Add in ast2600 details to Aspeed driver
From: Rashmica Gupta <rashmica.g@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 05 Sep 2019 09:34:10 +1000
In-Reply-To: <CAHp75Ve0zEkuD-75aZ6FU+A=DvX8NvVvY3n9p_pYDyfa76sxoQ@mail.gmail.com>
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <20190904061245.30770-3-rashmica.g@gmail.com>
 <CAHp75Ve0zEkuD-75aZ6FU+A=DvX8NvVvY3n9p_pYDyfa76sxoQ@mail.gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_163416_292569_F67DA8BC 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rashmica.g[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 2019-09-04 at 19:30 +0300, Andy Shevchenko wrote:
> On Wed, Sep 4, 2019 at 9:14 AM Rashmica Gupta <rashmica.g@gmail.com>
> wrote:
> > The ast2600 has two gpio controllers, one for 3.6V GPIOS and one
> > for 1.8V GPIOS.
> > 
> > Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>
> > -       for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
> > +       banks = (gpio->config->nr_gpios >> 5) + 1;
> 
> Same comment as per the other patch.
> 
> > +       for (i = 0; i < banks; i++) {
> > +static const struct aspeed_bank_props ast2600_bank_props[] = {
> > +       /*     input      output   */
> > +       {5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
> > +       {6, 0xffff0000,  0x0fff0000}, /* Y/Z */
> 
> Perhaps GENMASK() for all values?

Perhaps this and your other comments below would be best addressed in
an additional cleanup patch? This patch follows the formatting of the
existing code and it's not very clean to differ from that or to change
the formatting of the current code in this patch.


> 
> > +       { },
> 
> Comma is not needed here.
> 
> > +};
> > +
> > +static const struct aspeed_gpio_config ast2600_config =
> > +       /* 208 3.6V GPIOs */
> > +       { .nr_gpios = 208, .props = ast2600_bank_props, };
> 
> Seems curly braces missed their places.
> 
> > +static const struct aspeed_bank_props ast2600_1_8v_bank_props[] =
> > {
> > +       /*     input      output   */
> > +       {1, 0x0000000f,  0x0000000f}, /* E */
> 
> GENMASK()?
> 
> > +       { },
> 
> No comma.
> 
> > +};
> > +static const struct aspeed_gpio_config ast2600_1_8v_config =
> > +       /* 36 1.8V GPIOs */
> > +       { .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };
> 
> Location of the curly braces?
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
