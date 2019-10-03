Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 649C8C9984
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 10:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSrLb4cHmLuIz17GH9C0waT9c62U+GSQuggIlxSvHjM=; b=LUH65klAC9fqxb
	QdwNO4ie29NwshHdSXShs695kmjA+F5c7eozLlILQATm9Lh+ph8eQjavTXqILdsr2zFVecDm5FlV0
	QQ1ql2mi6+bM47brsbLz5Kl2Bc3AZhGt/QOjlaFoAwt+9Lv7C6HjoD9lH6GBq0FTlQ0jUgC/Pr5Iq
	uzgDkGXQohzeXNx1BabgWOy/jAkzNG5b56tNmo4nCGyOpVXnUWzrZN3sIY69sfPTy8ZmY1rQFk+De
	oHI4Yln0hSeIuaiia/qQkR7mvoONA0TYRVUDccElx1EjEUcya57U8fvwGO3+hxRFuQzQD8U22dyEU
	LrULAahSmaTUexqXdSbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwAk-000316-4n; Thu, 03 Oct 2019 08:09:14 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwAb-00030h-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 08:09:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id d17so1058967lfa.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 01:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FMrC6d21Lqn1wZBnE86G7d6SIcKdg0qKRD2HBEpYoyM=;
 b=tOEVT8IyAOa4ukUpUOX2W3pgVYBXAqF+Uh0q353e43wgEVXOASJDzb3XOTyqsvkXX4
 9l+p/334j6o3xBdZEskfPVUR61HZDUcndtpaqajbqadxQe9YEd4YrRJFdKGOk34IZfyP
 b4STYnDn34Z1guriLHjraRxH5XlbEimyPAkBdvtyepw6skGZMcLIXwHOq61ODRbdG7Ej
 xFvBaar2TSYoUysJdhELO8bWxwaqZ7TstflHKM/CYJ5oB31OLj2P1znBoybSt8nT5imN
 M2El6j8NPI1E9YU1d2XbYVefjC9bIVSMbujp6ESYp+h5ikUmyiCAuip1boQ5rpqiIMGt
 XLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FMrC6d21Lqn1wZBnE86G7d6SIcKdg0qKRD2HBEpYoyM=;
 b=mmd8GrF8W5NCUT0qBTDAbp2aRZkEvVh9m6xJZyCyxwqBftujy0WJYTS0t7XOAqJ5ZE
 ynNhuG1gQ8yXvNO+6n6G0B/rMvpuxcTJECX64dGziUnXnjRPmvu3Fn5m7IG0ZQW42+nu
 jAJvbRJUxF5oYEQNq5ueJWQOi5oVmjkOn5+21av+W1xuXxMUnGexnZMx+VNlYBmhFsnF
 0CzibfxvK165z5QD9Y8AyWhdHWLIDIfOc7XfevJHj9t65eeiwZQUj52K51c+E2WOgwrx
 9FYNjahjSArYij6xIZHRPC24rsc+Mg92c4Q6HT7hGtPK88HZJl4py/Cgn16eWBLMokOe
 99Og==
X-Gm-Message-State: APjAAAWltUgbD65WHi+wNi06c0glJS8jFgKHw5+IdpPpGjwPuZWwxJDi
 UnK0wDdAVHKmnQMLHF8b8opRXexXo2KfCb+rSyZ/6fmQH0HY+g==
X-Google-Smtp-Source: APXvYqysZ9SvfBfMjepy5wsmaNF5xPTiuQn/H+64GDkc23geu2XtaBPeTDv8o2ZXUOHBwmmygVByzvj9ul+PpiakIFY=
X-Received: by 2002:a19:14f:: with SMTP id 76mr4814026lfb.92.1570090143512;
 Thu, 03 Oct 2019 01:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190905144849.24882-1-alexandre.belloni@bootlin.com>
 <2261eadf98584d13a490f2abd8777d4a@AcuMS.aculab.com>
 <20190906091212.GF21254@piout.net>
 <b010053340ef48dfa244ff48c8decd38@AcuMS.aculab.com>
In-Reply-To: <b010053340ef48dfa244ff48c8decd38@AcuMS.aculab.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 3 Oct 2019 10:08:51 +0200
Message-ID: <CACRpkdZeBTWZ3NYR-aoTL0whXZLZxCJ+rB_jzCChgA5iKVOk=A@mail.gmail.com>
Subject: Re: [PATCH v2] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
To: David Laight <David.Laight@aculab.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_010905_431056_C3B608D5 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Claudiu.Beznea@microchip.com" <Claudiu.Beznea@microchip.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 11:46 AM David Laight <David.Laight@aculab.com> wrote:
> > On 06/09/2019 09:05:36+0000, David Laight wrote:

> > It does improve gpio switching synchronisation when they are in the same
> > bank as it will remove the 250ns delay. Of course, if you need this
> > delay between clk and data, then the consumer driver should ensure the
> > delay is present.
>
> With multiple requests the output pin changes will always be in the
> same order and will be separated by (say) 250ns.
> This is a guaranteed synchronisation.

Do you mean that hardware will guarantee this synchronization?
Linux device driver code cannot rely on that. We will simply
grab two individual GPIO lines (not get_multiple()) then issue
set() on the clock, ndelay(250) and then set() data.

It doesn't matter much because bitbanging is always extremely
slow anyways so one will get lots of delay, which is why
e.g. spi-gpio doesn't insert any delay IIRC.

The point is that the lines need be grabbed individually so
the delay between can be controlled.

> IIRC both SMBus and I2C now quote 0ns setup time.
> Changing both clock and data with the same IOW isn't enough to
> guarantee this.
> (In practise the I2C setup time required by a device is probably
> slightly negative (In order to support 0ns inputs) so a very small
> -ve setup will (mostly) work.)

If you are referring to drivers/i2c/busses/i2c-gpio.c it does seem
to do proper delays using bit_data->udelay from the bitbang
library.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
