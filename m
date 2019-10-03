Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2F4C9994
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm+6xkpQZZ8sqDjCtiH9MS3BwW56qZeNqzNflZnduWE=; b=VzgDVlRZqexBBo
	hNIwhwcuWiQX5Dv7vPG34gt2CoxgW8eI+m42Rs1T4AMUjFp2uWd4E9qVoChqElgqdOOuSBzMioT8h
	KRGGCz+XEimHJO1HxEwDZisYqKW7kyfzFTg9aHlZXMqfXbahwqrrqiHl+au9iI/CL0azJ6c7v6HtB
	tg425tFiuQH8Hq4D/+Kl9H2W522VNsUx8SfT58tEPdtAkQgOre7GueflFo/acfTfFY6iSqyx7MpEP
	L05pVTj+gZpZELSdAlNxKUZOPK2Wz3+otK52O5iVqtU9UIBUV5TfRr46zuTSDvyI/6ymZTyypfIw5
	ssu+JOlu8Dw4teF2twqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwCg-0004qd-So; Thu, 03 Oct 2019 08:11:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwCW-0004pi-UB
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:11:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id y23so1602448lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 01:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YZavFxLBzGEeyG9QWkLSKjn8gSqENhIGofh7Iddum7w=;
 b=vs5jTZo2SJ1QezACbFB+MYWl6lzIcQJDbU3KafKeM1cG5GfhiBzYm7ycjiGVhEvy5b
 W5KjFnuzBUIDutLjtYBLAeeOfvjjDNNlPy7qI+5XsJx/uTKxfK8ZJdM5CVr7vVZ8bfFF
 taOIN/8x8fLJI8JOBi/iD2GSCusTzhP1j+JKxmu+VUYJjevgDn7FtEyh56laYh8VBVnT
 Fcj/IbpdyPZGOkYQxx2LBM2c87ZL5vlXvasAqVzmAwo6wAxNbDoz6eqYOtMjz6IfYB16
 DEeLUKaIUGvpxvkbRWRUStHDhv/h97ja7D6vAgWwGj5hvwug9Ueh6Zak4AdU7lC28wrC
 6Jlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YZavFxLBzGEeyG9QWkLSKjn8gSqENhIGofh7Iddum7w=;
 b=Vr0KSjahmtOFf7DGY4y8BvPoHikAbsd9zDJpmwTzOOUF/OQFphDJ5JVi59krOr48CL
 CxIsml8/1WGTPTqzwfPFxGZRiwHFiIFkjLEHySrAO5YjWeZD4K0+tHlNh/ExMkWp2wtl
 GRo+KCLPfiib18t0VjB+4jFBMW5n/k56aiR7lsFnHLSuDg+xrFRumSVMD5fb4iS8jnEN
 QW9nfk16bFurCF/vZR8efocmLDHA8h3mV74u5uLKGJlqJkkmqyYArev99WYy7UMrdQ8t
 41Qntcovdg6WgSZXbIxRAknLfWCjV0DckiSY27yzUxl+QrA077pyO7wgHC2Oi+tkxm8X
 IJ8A==
X-Gm-Message-State: APjAAAUtOP5JM65paTCPf3Sh1PLBluo8cao0THcvLEb04XQ5LbJ19R3w
 dVsO6W01Q07WRsb8OdhS8bPas/8EpVJER9S5tOYlMQ==
X-Google-Smtp-Source: APXvYqyyIBjvuD6lRw79lIY6+d2agVW7esb+jyStei9FEmReZAWYVbSNWa9Dw2DroFLkIXlHmm2vvNdX0lW+VJjmvOY=
X-Received: by 2002:a2e:63da:: with SMTP id s87mr5167256lje.79.1570090263168; 
 Thu, 03 Oct 2019 01:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190918113657.25998-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20190918113657.25998-1-alexandre.belloni@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 3 Oct 2019 10:10:51 +0200
Message-ID: <CACRpkdaWtppOpbGb4Fj8cpgUkVw7ncyjiN1E1ytxUF3Zp_CfUA@mail.gmail.com>
Subject: Re: [PATCH v3] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_011104_976243_0EBE4716 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu Beznea <Claudiu.Beznea@microchip.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 1:37 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:

> Implement .get_multiple and .set_multiple to allow reading or setting
> multiple pins simultaneously. Pins in the same bank will all be switched at
> the same time, improving synchronization and performances.
>
> Keep the driver future proof by allowing its use on 64bits platforms if
> they ever appear with this IP and we end up with a mismatch between
> ATMEL_PIO_NPINS_PER_BANK and BITS_PER_LONG.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> ---
>
> Changes in v3:
>  - Add ack from ludovic
>  - add comment and amend commit message to explain the ifdefd

Patch applied, sorry for the delay, merge window and stuff.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
