Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A852AA86A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuwuRv21ZOIge0B8AIFZ9RNkqrnnI0qHGIe2eBz05+E=; b=TP9wX2tGYF/Hgd
	slCjetxUkDiIhWdhOlemNphXz9sPLJMOHuV0slPCtDz6SDQbQZS7kOdSCT/jMt/WTiyPjR1zJY4Iw
	jqkfeqEGP1gfJhKVqH76yqPoRR9nUGy10yQSDDyL+EPx2r/DaYUREfq9izaCTlIvowp9yUoP22GHm
	JNmbjiFIbErMgee2c53WuINYIjOSNrtLiBs1at51bwAb6ZQGo/wMFd5kq9Gppob00JWB4CRBJcKIw
	XrJ29se7RFEbCLILgaihlImyZH0/qJIvsCGDpkqLpFOxM6q5ZXYxSaAScXUdSN9tElGZjr02vIf0n
	omLb8t/pd5aCyLchlg/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YB3-0001zv-Jw; Wed, 04 Sep 2019 16:30:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YAn-0001zZ-7A
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:30:22 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so7023586pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0Bk5FCrmIebdNTJxqeSp5asp911jjtdI8aFxkaoSkUA=;
 b=Z7MJE3qJHR8e1zg4M/OzjRMI8uXwVNEOcJS7BGFiaDV6mFALldUUSXDzH7MDyjvIPC
 N3ORyV1v0tHe0bs85LwIt8W3EDERZ9+ixgYiqYntooIRtWwd0cs7l/fnCUltEybL5LnU
 AxSYEpWniZ9Vc9HG6/XZyqZTO3u9wlVyUmwU9p7BU8s7K7YCcQ2O8/SGOBjo4uPyS6zx
 nsN0/ojOMkS3Jj2Vk7LwCMkBQY3EvHhBSKnV2G+lZMK7koE2fAZwP+wc19x3joGmOyTQ
 d/eDjlbD1Ea+xJ4ZG3I1n6BpTMlO0Ow++2Hu03dK+pWgvMIOwmtd/bC/EWjXYZh9p51n
 BSiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Bk5FCrmIebdNTJxqeSp5asp911jjtdI8aFxkaoSkUA=;
 b=se9uKpoWUQoFjKuvearEXeTbVjNxht8xT3u3FGzoO3C/72rQfMvF18OqEZdeEKaxgq
 QKeQDbjSSjwbEj0EFaP/3qFJKdI69lX7xs9Ofg/D1a0lCutdGXr0NhmXZU2pRVu7+VK0
 UJoQHbYqOHF3BEwLsyvIwNO6+5lZtyt7W47DqB78nCYLGyS0et9GqLAmIQOHVi5NZrIQ
 2BZ5w9pb8k23BInWfUMjaW8SNoMcw1HiMYAaDsGPyPUgMNkHPdR1mf6Pceb9RVM0YrYp
 gEqVupwuAO3wvrQRFMASJzXZaN+TPI0bzxxLdJ1XjypZtyinlAcmNF3a0XG+nKXQeuwR
 DivQ==
X-Gm-Message-State: APjAAAUpwWWxtNfgdP1rDQzw0kfcEkinla2HpUdXYkLCoi1/Zu/7BC1r
 AlyIOMXDvIq8o6cy6Qugo461Xv22iyoxsHOrpXXBTEAP
X-Google-Smtp-Source: APXvYqwfTMyky+gr506dU7vA5RQA2gAYCn+ZMYC+IVVNtVkdvfPY6ix3mRDrBzSvrtUGH0BfnF3ha8tgX/jGZ72bAxY=
X-Received: by 2002:a17:90a:19c4:: with SMTP id 4mr5998093pjj.20.1567614620706; 
 Wed, 04 Sep 2019 09:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
 <20190904061245.30770-3-rashmica.g@gmail.com>
In-Reply-To: <20190904061245.30770-3-rashmica.g@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 4 Sep 2019 19:30:09 +0300
Message-ID: <CAHp75Ve0zEkuD-75aZ6FU+A=DvX8NvVvY3n9p_pYDyfa76sxoQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: Add in ast2600 details to Aspeed driver
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_093021_265619_D5BF6586 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
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

On Wed, Sep 4, 2019 at 9:14 AM Rashmica Gupta <rashmica.g@gmail.com> wrote:
>
> The ast2600 has two gpio controllers, one for 3.6V GPIOS and one for 1.8V GPIOS.
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

> -       for (i = 0; i < ARRAY_SIZE(aspeed_gpio_banks); i++) {
> +       banks = (gpio->config->nr_gpios >> 5) + 1;

Same comment as per the other patch.

> +       for (i = 0; i < banks; i++) {

> +static const struct aspeed_bank_props ast2600_bank_props[] = {
> +       /*     input      output   */
> +       {5, 0xffffffff,  0x0000ffff}, /* U/V/W/X */
> +       {6, 0xffff0000,  0x0fff0000}, /* Y/Z */

Perhaps GENMASK() for all values?

> +       { },

Comma is not needed here.

> +};
> +
> +static const struct aspeed_gpio_config ast2600_config =
> +       /* 208 3.6V GPIOs */

> +       { .nr_gpios = 208, .props = ast2600_bank_props, };

Seems curly braces missed their places.

> +static const struct aspeed_bank_props ast2600_1_8v_bank_props[] = {
> +       /*     input      output   */
> +       {1, 0x0000000f,  0x0000000f}, /* E */

GENMASK()?

> +       { },

No comma.

> +};

> +static const struct aspeed_gpio_config ast2600_1_8v_config =
> +       /* 36 1.8V GPIOs */
> +       { .nr_gpios = 36, .props = ast2600_1_8v_bank_props, };

Location of the curly braces?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
