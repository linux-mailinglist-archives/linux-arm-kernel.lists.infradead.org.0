Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D471C5016
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 10:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSafn7+DAFAL7sToJ/efxwe9H2uE6CfnmOuJh91HU7Q=; b=Lc4xDFzZgHNUed
	6gQM0bfawOlXwo4QQ7JJBWGTDKUhj8EacV5uUb1oFr7iJaEzGhZC4BRDDuIvRx0BPxkSvuMXbPYts
	tVtFVGB6gc7ZDIw6OXRTmNpg/IyYk4m8YR7rXMC0Zm9aFLIAjg8gNeLk0iWpkkvYukTTgPaupXqwu
	CADFT88Gx4fm4QQYRstfpTet78Rg8Vg+I4SpTu9Z+GEo7ZHWgIZWOdgM6R6WDQWvGDi2paGop9r9d
	BaiFZPV6w3icO7RpMpQCuaAwlTH17uaghXdSrbOI5nQaKoO2gP31RtjEQhUYrsVFP+oEGiG0J7l0J
	d/OiqXSNTsU92hOyTWVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsmB-0003sX-L7; Tue, 05 May 2020 08:18:03 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsm1-0003oK-Bi
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 08:17:56 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i185so263931vki.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 01:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TbQ/NUsTl64Wiv4a1ipzIuD3CBdf0yc6n6AHT0AzX6s=;
 b=lizeE8913OsCMHce51oPvAyEnSr00jzla8Wj9ZJX8Yj4J1Psb7aJ12HDbUuxzEASuV
 CJOcUf/1RPpJ18db073V2gTXAgZrhjOiqKsFQTtxkRjpOYi7p+8iPI6IgM2MLiGzaKLy
 cLIvq0bhk4yEFz1lkPgzduKThkyI9/FNNBUECjt00MMWx/SmSy1QyuQ90mKXKVovzmJ9
 4fKGh0hJnh1TGnDmYd/ZhNdLxC+6X+tPCtAfmgDvTlLfG9iZKYS2tw377gR8NwBlvma+
 N8uaPL/HAJq4slF/CQIAr93/bDUWK4Xy5o9CeYh1dInheigK6z+mx2xsFNL4I2ItVIiH
 Sw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TbQ/NUsTl64Wiv4a1ipzIuD3CBdf0yc6n6AHT0AzX6s=;
 b=ZPFA9ws5TmuY+WT3M0cB0yyol2zLb+gg17hSo6eYVWbPRlz+z0BEcos9ec9zvSdqfW
 XLDiZnJaZ9znMYf6QEioaMaAG3/jjG52xMvbWcyekNpD0DP94COi3kvbPEmxbwaCq7BX
 PJjPzJfIA2IcWplsVJGYQrfNAtVw9xiSPyXEWTU9/2BlnRcbJht47AwhManXjurEdq37
 5x2zBq+L4dETe4RgAR9ZJvXws6+ZEsE6Tmcwrrr+p4mZHAUQ8uRxlFc02wbaHGAEpveS
 Is4ij1AIFRmeuunGAQ2dbRyxhDyVnY+NCZHP7ewyZAMTg0Wsl4IgfwlyPxLt40XiwfeK
 iONw==
X-Gm-Message-State: AGi0PubqvTnPw9x1a63/acFbq7aNkzxHv+6FyL0vhztPX4zVHuUL8ZKF
 FULoysDTdIr0BnJSDNwGdytj23keAA22vBNsqUtYRw==
X-Google-Smtp-Source: APiQypJn4YPdoD6blL7gFwU0ijM52tdeLzBf7tlSaUAOwu8rfRRQ9Nd8hu+SfYhQA6qyrUO32C4i1Xcp+YT+RFkLY84=
X-Received: by 2002:a1f:a60b:: with SMTP id p11mr1325157vke.43.1588666671822; 
 Tue, 05 May 2020 01:17:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
 <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 5 May 2020 10:17:15 +0200
Message-ID: <CAPDyKFq_USCNNps3s4+C_1hriycrxtRMKJvnPFcP59CZmLXbGw@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_011753_403029_214BFEE8 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: DTML <devicetree@vger.kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Anand Moon <linux.amoon@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[...]

> >> > +
> >> > +     return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
> >> > +                                        onecell_data);
> >>
> >> I think registering a provider for a module that does not provide clocks
> >> to any other device is a bit overkill.
> >>
> >> I understand the matter is getting the per-user clk* pointer.
> >> Since this is the module registering the clock, you can use clk_hw->clk
> >> to get it.
> >>
> >> Once you have the clk* of the leaf clocks, you don't even need to keep
> >> track of the clk_hw* since you are using devm_
> >>
> >> Afterward, we should propably discuss with Stephen if something should
> >> be added in CCF to get a struct clk* from struct clk_hw*.
> >>
> >
> > [...]
> >
> > Hmm.
> >
> > I am not sure the above is a good idea, at all. Unless, I am
> > misunderstanding your point, which may be the case.
> >
> > I think above "shortcuts" could lead to abuse of the clock framework
> > and its internal data structures. When going forward, this could make
> > it unnecessary harder to maintain the clock framework.
> >
> > I know, it's not my responsibility, but from my experience with MMC
> > and SDIO interfaces, is that those have been too easy abuse - since
> > most of the data structures and interfaces have been exported. Now,
> > it's hard to roll back that, if you see what I mean.
>
> Indeed, it worth clarifying this first.
>
> With clk_register deprecated in favor of clk_hw_register, we are likely
> to see that case rise elsewhere.
>

So, according to the separate discussion [1], I think we can let
Martin decide what option to implement at this point.

1. Implement the "clk_hw_get_clk()" approach. The preferred option,
but requires wider changes of the clock subsystem as well.

2. Keep the existing approach, with devm_clk_get(). I am fine with
this as well, we can always switch to 1) later on.

[...]

Kind regards
Uffe

[1]
https://www.spinics.net/lists/linux-clk/msg48373.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
