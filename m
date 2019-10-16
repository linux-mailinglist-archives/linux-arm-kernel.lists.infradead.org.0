Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FD0D8F09
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cstcs13Gp/X5drwXmVDe6iFGY6C/u7fA3n+194ouuQY=; b=ghsIPptKg3Yrfq
	1RH1uoRo3tSqcg0rFMUKSiwpcIayyXVvp9oE9/SxzRGe6KSSguia+JRdL5b9kwXhzPHJt7sJUD+St
	JPJ5ccd0BHjYNORKHtRkruJTbi1arutfYmXo/xV04ASYZ/Lb+3FMgzD+RciV6RVIZOULJlXJNcjhk
	ZA7y2m47iq7HaORcSzjRh2JfjQKFU/envnuB4ZXDcJfAYtb/Uam1UUjl0kLm/782uZ1uNhvH/ZMEN
	H7rBk5wJi7HUo1tislHO/1iZWgLQ/HveE8nx26dimgU5pbZDhdeIfSbTATqjAXJR4F4iTpdX6QYzl
	sgzWpXcHIQYrsuDs2cHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhEZ-0007gj-2t; Wed, 16 Oct 2019 11:12:51 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhEQ-0007ds-RR
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:12:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id v24so23564441ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 04:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v71FlkQ6J0UpJP7xXEoyiSKAD0pF3wX4jouOoO7MnLU=;
 b=p2VwOvllbg/0/Neh5/P7m4vAWBzv1dXkn+WNCkRcqrMNWDx9pfbHIa1twG4R8nWXjf
 X0M7OXDXTJjEo6uAH35h6Pb+KV8ArvF5+d3HYtX/xO1AsS0HaJJlRtU8llEBmLpfkGwX
 qoYLlT9L7uvJ/T+E+qUzOdI6FY45brr2Bv6PTnSoZJ71z9Vvwf01D5P/l9RmTXc+IC2N
 lbO6S9Db5rrGVTg5iZLHpv5cQ7fUNfoslwR10po8ClfKUicmkFsBs9TTsTHq9Kkd+uc3
 NlHHMouM3yK4d/F+R4Mow1+AUxpLJFyFS0nNGhD2SjvgZwuSNWd09Ebc9nuNkfqJfYao
 beIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v71FlkQ6J0UpJP7xXEoyiSKAD0pF3wX4jouOoO7MnLU=;
 b=il2vq3/9Pv+cdVZWWc9fEXjRtP+6hsIutxIdzZjQLMj0qGWUPTlvgcPokIcsZJDud1
 PScy0664reNHs6UQg36dY9nK3ym/Sr7kJno+PLRAHLwmBAqMW8XA1GjHbE+IBSfjyx/n
 qJIiFdihJVidOBhl3AdO3ilJT16I3OXXnlRfOSWPzOl0SK4dO9LgG2a1/C6xraovdHqY
 tNLkeZzZ6ci6av3amuVnWrvofL95TlrMGjrVArxyR4kiz84SUgUVyDF95ksq8N8lmLTK
 gQrETULOf24IgQL7wt42l3LKzH97aL0g4DJPnfSYYv1sU4/NJyWdIcJqhF4tYTgo7C1m
 HAHA==
X-Gm-Message-State: APjAAAX2paATbiGBbEi9HztBDgDFHkAuBbTRuoG0MAN7JLi42IIx+hhY
 oSj6NuIDivwt2/IUkQH6Ybkpgd3SbuSyvmwyytp+Fg==
X-Google-Smtp-Source: APXvYqy4lzrmB+aQANagIA9pI4peUp9E83YYX2I1eb8nCIhO/KTMZcmTe+F/iRjlb9lEwc7ZwWZU9GViug9WdVdMM3s=
X-Received: by 2002:a2e:481a:: with SMTP id v26mr18093137lja.41.1571224358312; 
 Wed, 16 Oct 2019 04:12:38 -0700 (PDT)
MIME-Version: 1.0
References: <20191004122923.22674-1-amelie.delaunay@st.com>
 <CACRpkda6CyYCt-s-VkaK856Jt3TxQg+HVDz-5Ww9T9KNHHAjaQ@mail.gmail.com>
 <8eb2090a-e50e-2e4f-982b-073ad24e553c@st.com>
In-Reply-To: <8eb2090a-e50e-2e4f-982b-073ad24e553c@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 13:12:25 +0200
Message-ID: <CACRpkda1H+fUidZG3wccM-YCyk_Ya9gRb8s-JV35qWvEBOKWPQ@mail.gmail.com>
Subject: Re: [PATCH 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
To: Amelie DELAUNAY <amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_041242_895934_CF9710E5 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 4:53 PM Amelie DELAUNAY <amelie.delaunay@st.com> wrote:
> On 10/5/19 6:49 PM, Linus Walleij wrote:
> > On Fri, Oct 4, 2019 at 2:29 PM Amelie Delaunay <amelie.delaunay@st.com>

> >> +       pctl->irq_chip.irq_request_resources = stmfx_gpio_irq_request_resources;
> >> +       pctl->irq_chip.irq_release_resources = stmfx_gpio_irq_release_resources;
> >
> > What about just adding
> >
> > pctl->irq_chip.irq_enable and do stmfx_gpio_direction_input()
> > in that callback instead? gpiolib will helpfully wrap it.
>
> Thanks for pointing that out to me.
>
> I can't use .irq_enable because of I2C transfer to set gpio direction
> (scheduling while atomic BUG occurs in this case). Indeed, .irq_enable
> is called under raw_spin_lock_irqsave in __setup_irq() while
> irq_request_resources is called before.
>
> I could apply gpio direction in stmfx_pinctrl_irq_bus_sync_unlock
> depending on pctl->irq_gpi_src[] (checking which one is set, to set
> input direction), but this will be applied each time a consumer requests
> a stmfx gpio irq.

Oh I get it, hm. I thought it would be covered by the sync_unlock()
but I guess not then.

> IMHO, keeping .irq_request/release_resources callbacks and using
> gpiochip_reqres_irq()/gpiochip_relres_irq() seems to be the best compromise.

OK let's go with that for now, please put in some comments as
to why this gets done there so we know when reading the
code.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
