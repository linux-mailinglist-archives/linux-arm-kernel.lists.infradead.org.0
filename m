Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402B95813B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8YH/Owmu0LvksphguSj6Aqtz7NjgP1jNrd6CMzja8o=; b=sIn2xTk+ETQZRz
	gTGZhPC1h2+/cIovdhKTuW4lRMJjooFtvrlVG0tPZEFlDmMaGxML7vf+ABbhoRZW1V4IxjfNZAFI3
	tLERlpFSZFe1izdBOFPt5CZ7YbO9e98E2v0wU6ddjHWfWxGgpKaNFhy4/Hatx3XGnA2+yT3PzytNO
	2dFlM0J7Jvc1ufrc6+VngIifGVM7jbWWmsCelAKVO/K1r+WKs+eK8hQETDweueOHx17wBba4Z6nhv
	RinyNS43hng61EMb9NGboZ78fEEMG8ab36nktsQPkfifkO6wvlqL9dLDWEzF8rJ0BMuyNabkIsWP6
	qrSDO8dFXVHxLQSwJEeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSN8-00072h-Vm; Thu, 27 Jun 2019 11:15:22 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSMy-00071H-I4
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:15:13 +0000
Received: by mail-lj1-x242.google.com with SMTP id h10so1944470ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5TqvPz8DpORGx1+vi8ExXWSK0FXpNg/HXwHTY32b52w=;
 b=Oh8LTD8m7IDgDorBBc7V+VvCco9ShEfKtubYx65x1T5UADxUHneIwXm5D34fbeGt8A
 ixjCx/VH3pF/bQ6ZHMg9PHCQmjkpCAiXVk/t5qsh/Qqm5tx9SPGzVhjOT8gQTzjQQrfi
 lAGtQ9fEG9oF9K1v8oeREAXC0uuw/SL0BJN950l/xiDxO5+wGYpYmT+5VPl0QUp7nSue
 aAMKG7ngQmAlBgnfr7IMamGqNGSDVnT6ZsHyoFmoAYfgNHCqJ4qfQ4AxjZkWYV30/+vx
 p6K15ZkS7XsSbBvwsLCURk/PDZbWbvX4UVyTadC7wxBwmODusUKB4z9LZEZdJG1mVlPF
 JTEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5TqvPz8DpORGx1+vi8ExXWSK0FXpNg/HXwHTY32b52w=;
 b=NNXgAAMZzYwrbq6ZbSN1xr2E6pxVd738kfvosV94uAx4FK8KrrJYSs/DDUKXi3/LpI
 0j8hrenS58ntX5RJHK71pNdDPviotctifaaq7lcjc52C+8uV788FuGO0vPLUJ8UUbzMN
 hr7CBSfT9nBy3vxoU9YWNpHanXnI7m+oCwhFQ7JA//Wb2KtWRTeGYFZp46Pkv8IiqxPr
 EGtTm4a+8HL/buB+23AdtmUASijYG79Jv4LwmAhEhyVcNErZGCKD4dB9l8pn+oy6sQSf
 qSltYtVNbe7asWF0QtYoYBk8pRhlDXIafa6h22qlHuFeIZARQQcaIuqq0dblvDqd4+T6
 qY7w==
X-Gm-Message-State: APjAAAXcn7BK4hj8lXfNp6B2TQt98v/UxyVpGMHUhBD7CeIgenOXZpOV
 7KO6fwKnxRSDUfETKHGaxERd8Gtkz+kdPiHjlq4R0Q==
X-Google-Smtp-Source: APXvYqyVA9C7Y1iH92FooDzDgEr3HQuytpfeJym/aOuE5hBX0/swTw0Rz9L0rgrDIJ1qob4Es/otbtAluqfU9XSMIXs=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr2303238ljm.180.1561634109728; 
 Thu, 27 Jun 2019 04:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-4-brgl@bgdev.pl>
In-Reply-To: <20190625163434.13620-4-brgl@bgdev.pl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2019 12:14:58 +0100
Message-ID: <CACRpkdZm35HOxBqDN0dfAyiMPFAPOguPrzuPUwS14kZM-VJV4A@mail.gmail.com>
Subject: Re: [PATCH 03/12] backlight: gpio: pull the non-pdata device probing
 code into probe()
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_041512_602985_B6181772 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 5:34 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> There's no good reason to have the generic probing code in a separate
> routine. This function is short and is inlined by the compiler anyway.
> Move it into probe under the pdata-specific part.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
