Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7532F1BBA8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 12:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HwuWwQXg86b0gJF3QkBbd9DBjITixFNF11200s4DBs4=; b=oRO7VtKALfVRf8
	Na/hrlAWEBsThmVWBaJiUp3qYHzwvJYXvnjao6MdLFMy/UMqy/6LRnqjAojBJDWcvK4ilGYM3PFio
	PgbOoCDeOroXLCW71O2Olm6RA+Bag1uHDfhd7SH2kqjKpyrMTtjuFQDYNvjkGvb8XKfNuys5wwYtv
	oEiURYRSvWd8M939qeNBTNEyjkiCo4IuN8tx7RlcKdj59faD/2pLori6XRAKiyo5/BO/2mx3U8he9
	DkQWJndpYFWggvVx/Nuf0tIgYSSYAAoQQEUcGlVZKklmgqei3Vj85Hpv4fZ1f4CVNIn/6bhJeiFzh
	PkRqg/fKhhwEPEe8Bd1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTN3e-0006dL-Pn; Tue, 28 Apr 2020 10:01:42 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTN3N-0006ba-1U
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 10:01:26 +0000
Received: by mail-lj1-x244.google.com with SMTP id u15so20819226ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 03:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vLmsZ8FzUvZ2qyUD84j1b22i18dHEE70Jtvscxhc09k=;
 b=YuSW84MJxGm4qTrO7x6FDa0tNZ2DwTGnBZcdLuuUJwmIySl3NXFo5FIxgcdvSWhhHw
 w8f3SVhylLAGIenBWpXFofh7SIqxoYqGlwz7LQm+YJ51a177fjUJO5Xr8wTKk7PLE9Ow
 sq0njirZjcIVJgrpYtz0SI1Xkqde9Fx+gJzIVvtihqPzC8b+RubH3I+eAsZH3kyRJCaT
 TGV1gQgqGK9ntlhlHxoERIFjvIwg0mp1TnG9kPacdcpTqghNObPflJ8OxLxmk7azsenJ
 5pB5uU4FilL+JAVfPKMCSGlURLIKRawxY2bwR16A3geOEdTBD8NnehNPWlwNekdReDCw
 g9WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vLmsZ8FzUvZ2qyUD84j1b22i18dHEE70Jtvscxhc09k=;
 b=oR4LELQXCdsbeJLkhWGGoAUvxG9Q5Q6Y06IwTbc1Lp3dHDI/vZ8AgBk97wP8KmYOgT
 UN0KqTqvic/oz82xzMNs4VOmOtnP40C9ZWe4yNEj1PW+zUVw+XZANTkVvPVGKQWWUqLr
 srcgQxAi/966oao+X4RF9zuW1xvzKS/VpVloFLB7J3EzgRKmGYJ3iZXQrJnwZlXb5Jua
 gS9ZZeGop9gQmvYoQlDTM1wCLLR3QEK+lDLYXAzNB01/RjI7lRkiRbHKzKugPEAjrMNy
 9MbzyU90PkTCVNkAAgBnpbBNDYvpejT3zHc9v6bfYsDJ4Q2mcbSoj2PRupv5tn3v2xwP
 2h8Q==
X-Gm-Message-State: AGi0PuYE+OneNVCtvr3HtZDl87nwh9yIWouvy16uUHbfe4B7R6TlBwFC
 XlzldbuUrJrGto18QUdcQbeke1xfW8H5bAiZnMKa4w==
X-Google-Smtp-Source: APiQypILX45Ac1tiqnMnI+HFKCHUmn1qsryssGy+UbF1Sz2zs9tEQxqIByqukAumdnDai62XdgrEeXgjb4HSD+iqAwQ=
X-Received: by 2002:a2e:2ac2:: with SMTP id q185mr8308858ljq.125.1588068083674; 
 Tue, 28 Apr 2020 03:01:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200417183349.1283092-1-martin.blumenstingl@googlemail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 Apr 2020 12:01:12 +0200
Message-ID: <CACRpkdZ82tjcBc_kF29zUMiLLH==0zKbOd=fTRGq5-4FOiez5w@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/2] pinctrl-meson: two small improvements
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_030125_252191_EF19A9F0 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 8:34 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> While playing with audio output on Meson8b I found out that the
> vendor kernel uses a custom version of the GPIO_PULL_UP flag. I
> suspect that we will need this for audio support on Meson8b and/or
> Meson8m2 but I don't see it hurt other platforms.
>
> Also while comparing the register bits with the GPIO direction (of
> GPIOs exported to sysfs) I sometimes had a mismatch. This also wires
> up gpio_chip.get_direction to have sysfs and the actual registers in
> sync.

Patches applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
