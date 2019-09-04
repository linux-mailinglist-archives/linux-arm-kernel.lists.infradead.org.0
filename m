Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A182FA869E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svJ7j3aanMoObjoZGsIkqBnTOcKBQdlEvJLAYjWMcwU=; b=APzFa3a49FbJWO
	8nXUHRRPU94e5mcY5MF45GVn86aJsrTzS5xBW4Da4Cx1z7xsu/OCyQYMctOeJAqLh9bp67iK/LM2h
	RG0xkmS7MgQWKAWdKu9TvOjvrqGPI6NIwF11gxZxpvYfeP+4wIaDIIr/ki18+i1nOswCrp8tCX3th
	Z1ECyHPELqcuBuadJFCKqbU0PCPUdysHIQAnew+CxgUW8h/Zy59jlxM4YWmzPyKOc+h275lfORPiz
	v1Nk6KyW7qAXfuqLg/C2UD5gKGpLv0T3O1t9W7UEc2Yj4NqSt9kO+51cJeHlJQ4lERiFPmpWKwTS/
	Qaq/4DIQJlSU+Kb5akfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Y8q-0000KX-Hc; Wed, 04 Sep 2019 16:28:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Y8H-00009b-9x
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:27:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so5711570pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 09:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h04RkzjT3hXLTqVi3hxMYt7+XgkxZzlEb0BXvzdW1Iw=;
 b=u96W3i3h8EyeOAeUHfKxUJeZZrPcR78dwH/TA9Q0gcEBy2fX0/RospEgR+NpW6qmL8
 x7Cw14anhZMC/3swXtc5wbpMZ+zCJqv4YzAVxVQuTkU+2IspzSnhZM3Gv5klXmNda5mw
 wVF9asAXOiNpj3HEIMkNLKBdRy6DO8xyWZEufSISyBoqV0U9AFhOxjXiRaF3BcQWN0kq
 zWWkmevlB+++8fGIjUZFmXsFgLzRrXmjtPLiUiaPDrwTQ3LzcfaJ7vq2GqaVRy5rrt5u
 b4hUoaq7bsGZDSpHsgo2hT8e70WUzAVYai9e+pS1NGd+erk4+IDj3tcPJyGAyEfYLupO
 Z28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h04RkzjT3hXLTqVi3hxMYt7+XgkxZzlEb0BXvzdW1Iw=;
 b=EhtyHK1Sd4hPs9RFMhx2V8HQnwgsjsmSrNDE6JbWmmbYbU9ORzLk866vo/09kdbaKv
 RXi/JzpGI23T+np00Kgj3Ege/RYReKBgkQCf1tlldYqui/0msmIeLhP2DJCcZWIjIuBO
 J2LXYR+KpqYn3Y+8iH4LMJWmE4oRVajPFcTi6gJI0op7A46b9Krd6dKAXDoFgY782nx2
 EvkvOnfWG13XgQp5Rmrjnd/BLGKGQu4PYYSpK0atpmoOdOaEzZqk9aAMCcAcLzSsUKA1
 c2OrCKENF5aS+0BbzUCqdtHi00dRCeAWxTJdE4BMmVvLW2ggNXvaHLR5liX+AaPsdRea
 rDIQ==
X-Gm-Message-State: APjAAAXscyNPnP3YrVjMeHdf9fhCUoNHmpTZ2Zs+K9jMUCHAMqG8gKYy
 C0smA1PPfqZbg/tFDQQUvsGeuPSwDulaYb1wk4Q=
X-Google-Smtp-Source: APXvYqzS8bxdeH8zm+j+hxb1ouuCS1ZUvEOMUS0WH79z6S5Qndoz6KZ4UIiuE9srzqOavs3O1cbyfUGHH5iUYCJJZFI=
X-Received: by 2002:aa7:93a8:: with SMTP id x8mr14577315pff.151.1567614464501; 
 Wed, 04 Sep 2019 09:27:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190904061245.30770-1-rashmica.g@gmail.com>
In-Reply-To: <20190904061245.30770-1-rashmica.g@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 4 Sep 2019 19:27:33 +0300
Message-ID: <CAHp75Vd_6Rpt5=BjzV8YFCiFP7qsRrYHHo7+=gWwnZH-zT9jNw@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio/aspeed: Fix incorrect number of banks
To: Rashmica Gupta <rashmica.g@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_092745_368365_495E3E7E 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
> Fixes: 361b79119a4b7 ('gpio: Add Aspeed driver')
>
> Signed-off-by: Rashmica Gupta <rashmica.g@gmail.com>

>         /* Allocate a cache of the output registers */
> -       banks = gpio->config->nr_gpios >> 5;
> +       banks = (gpio->config->nr_gpios >> 5) + 1;

Shouldn't be rather DIV_ROUND_UP(nr_gpios, sizeof(u32)) ?

>         gpio->dcache = devm_kcalloc(&pdev->dev,
>                                     banks, sizeof(u32), GFP_KERNEL);


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
