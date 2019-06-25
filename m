Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C55550F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:57:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSmaOChl7KGNM7nBnkgL4tpgyI9pJzRIZlSBwqCFWYs=; b=OzbAqGjunzNJmt
	XK518um2NAvg1XsXd45u8iv0nucpJAqg66vPVA2jv0fn6sdBUSZsruGfQhkXOD7r94cbdIA9hkicY
	T86+ySozaDnAXqTRlxho/6ihxkLylJL1MQ5H68+z8ppFfXCRKI0TqNn2ukfjInE/Hj1t6kDAE53tQ
	85PR+aD8j2n/lS1lX4DLalLzh5OSUfLt8VDq4UOF1ZNCO+uXi7P00jWCPYtWSrjJTh6Jx5AcCmO0w
	zyCD1lng3UkWFWym3mucnLRtDg0AxSV9nBPnlaUGfOAdJGSuBqMUBMJDZ8Cvu8Xut98uVyCjgXkQ5
	K0+2OHOXgahzBdz9C4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflx5-0004u7-NM; Tue, 25 Jun 2019 13:57:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflwu-0004tZ-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:57:30 +0000
Received: by mail-lf1-x142.google.com with SMTP id y17so12730717lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uTW1RTzufVVCLIfnh+7h6hW+A8p2OrQGWdWYeH+4NGc=;
 b=rD0m+cdPPd//2jtOKnRrGA+yNzIqtS2OrqhFqNvI9BwnBTByDXePb2d3VmLU2Jsp2b
 Oydu3kFeAuwXsLOTos5YOl2x5uYhXgslRKqRtNLsVCKqeXMHqkFg2ymZljatvVr6VYlA
 O0tiN6MFwgHkc8Q/ZYT/7xhM6QsmCfMQ8+TvCfARZfEtL92HD+7UYauRjumeafw5xCsk
 BZExa7hD1Zs1iEwk2uLNjmROHkuq7YMAp1FA+V8VgxqVdo+xk38mlwJEz72Xnk7ppxBr
 +0cinfadSpALzcrTBdhVj0HVufS77V7TugkgzF4l2XAZenupQ1QYRRNAyk/hiuknm6eP
 3NNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uTW1RTzufVVCLIfnh+7h6hW+A8p2OrQGWdWYeH+4NGc=;
 b=Ft/b3ooc2qgXX5CrrFXw3BZd9sRNzwDmAL0PcWOO1ke77uowTEryEFsuq1KqemlvyC
 f6edpKp5eIcTlTI/xK+1YQpsWPOX96A6uKA7TByxvILhY4e3q9CSLOLy/L3fzY4MRfX4
 imMhIAdfQePN5sTOiCDSo+RSYHZtA5FPm6gyne72eMh7ZXq4RsQ8WvaxUY8GGKyWZEJZ
 7gCg3pNY9MulSfdXNZsrBZjBtS6CYnJDYdjLIPuIPgoHiYYWkNC+rtrHiveYDY81hr7G
 +AHHOqceaDdAogHr6zGQYoCz8EQxDSLYYh8cJbn8lJK1z/6dx/W3GALxnj7B8eOw+n85
 lm8Q==
X-Gm-Message-State: APjAAAWccmdSEwh1P1uhNTKoufrPTJHLlUOxHFOm1d5j+VC/GietAJxE
 Sy3JipFpCloo7QoSVqTbtm/E4kIEZiEy1qAY8+7u0A==
X-Google-Smtp-Source: APXvYqwtMnHq1yBBhWHpEFgSyvvNlRPOWrNyzfQxiPn5jAkCYYNbYam/5KODrrng0KafhfQTzullbXmVYSc52G3PQ3I=
X-Received: by 2002:a19:7616:: with SMTP id c22mr25238102lff.115.1561471047372; 
 Tue, 25 Jun 2019 06:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-2-icenowy@aosc.io>
 <20190624124019.o6acnnkjikekshl5@flea>
In-Reply-To: <20190624124019.o6acnnkjikekshl5@flea>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 25 Jun 2019 15:57:15 +0200
Message-ID: <CACRpkdaQSg4qWWF1XurWA8wnW+ezGtTympVT9DvkF87VKEQVzw@mail.gmail.com>
Subject: Re: [PATCH v3 1/9] pinctrl: sunxi: v3s: introduce support for V3
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_065728_999576_A777AB0A 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 2:40 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> On Sun, Jun 23, 2019 at 12:37:53PM +0800, Icenowy Zheng wrote:
> > Introduce the GPIO pins that is only available on V3 (not on V3s) to the
> > V3s pinctrl driver.
> >
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > ---
> > Changes in v3:
> > - Fixed code alignment.
> > - Fixed LVDS function number.

> > -               SUNXI_FUNCTION(0x2, "uart2"),         /* TX */
> > -               SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),  /* PB_EINT0 */
> > +               SUNXI_FUNCTION(0x2, "uart2"),                 /* TX */
> > +               SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),          /* PB_EINT0 */
>
> I'm not sure why all that churn is needed.
>
> Looks good otherwise.

Should I apply the patch or wait for a new version without the
whitespace fixes?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
