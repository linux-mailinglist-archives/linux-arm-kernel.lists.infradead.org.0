Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB3B3B17A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 11:04:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9DMrmfqiZL+MKietowouIOEaaC+Wm6JPZL8kQHGbm4=; b=hQYEdy9Bszsc2G
	1QnhY4/jFQV1tMhTVoMtjMGk9dFYUgtePF7JMgIlwklsARwkpYZLTCmomciq9EnumJt+qMNwmhNuL
	BGYS9znSi5p0lczYFqNDmg2KWa7t4iktEi6ufAxOv5/2DfCGlJNKjEb55PIs50/3XcIM1pTPHrhuH
	iqlNKzeSswE40acyoEL3Siz6JEuR1gHFeIR9yKqy8vg+XA+LeuX7+XlqYYaSEefDy1HIONJGmF9wa
	HygR1cNH8l2idgGhlQIYuM7EFqnAKIK/EtOg1pQt+JYWdlTFa3q6ybOjSBv6kSokN47kA0rveVoGi
	ovZ8jS7EAGCy5ldjNpbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haGEO-0004qb-M1; Mon, 10 Jun 2019 09:04:44 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haGDn-0004pv-Bv
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 09:04:08 +0000
Received: by mail-it1-x142.google.com with SMTP id j194so5128536ite.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 02:04:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fT90yBCfvgHH/USr4Fa6t7Hb/A6wLFnh4q0k27VLHoA=;
 b=MiBmuh4HcFCHNwSDfo1tTNQ7oVKa6r6w1uW/9apFsiPxN4cBNnJOAkrD9G9NcYbBz0
 eDV76xl/95MZ78MKpWkJ5xVCZpS6Ia7dwF2Cz6M4m4Iu3mB5a20AXD/HjJC4pYaVzMO7
 firn3hGYSYxkMc577jeK/u5pGhEs+AQOsyxGOiuVYB41BLhCRXEgB5slWh/gsZN+/lAA
 Bf3OAVrpWFjdZFLYduRzO+I2SE5pQK867tkKniEgqfkJEEW6xQHZFnM8ygi73IJI4EW9
 J79NCgY1YVRqSBhBymYFPGfyzTrD2ooEB9Uw0nv22rHBC/gwyvYx98yO6JEcJ5gKeClL
 jKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fT90yBCfvgHH/USr4Fa6t7Hb/A6wLFnh4q0k27VLHoA=;
 b=PC1BJdQmBteg6J6VUyeUxeh98ouiIk67nS2i1YNx0gBZnXl7wxyCdtaFmPZpO2DWU8
 8A8VTxLV7+7lRJHzyWJ8hT5RsEdk7ORGQDl71tukosZsp2M+IshRVtRMVbkzkNjL8Job
 mS7xsGi+TmURghggqO3+KkCpX308Fyh6+YPKO2qvdUiYExLhHXuS5hzAPlUAWa6xuRv1
 eg3XASMdrwaXbr6ip1l2bXIlAkdbToJwAvkh9QlFLfJ5vhqfrTSZFjlUfSF1dD07TQFb
 e2Jmf7ZZ1QyBgNimhMdm+gnzRg3BEIcYHqB2FH1SoMnKTkF0cT/67GVgNR4lyMTTImgJ
 Fo4w==
X-Gm-Message-State: APjAAAWxzcgz+C/5N1tFhs78vNmpeN20ZZRypRMcU04lEBeQlLeUqFRl
 L0WrvedIALe0VdnifoKIT4E/yTXR5tUAywLrwnmKAA==
X-Google-Smtp-Source: APXvYqwkUy8NJlaVC3ZLeQiyK4NjB0jc9Voa3XoI7Z3nR5vGUM1XyHPJFdz9nE7zh9z+pHwwmOgMLp1ZWxUKgEuZmJs=
X-Received: by 2002:a24:740f:: with SMTP id o15mr14362252itc.76.1560157446438; 
 Mon, 10 Jun 2019 02:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190610084213.1052-4-lee.jones@linaro.org>
 <CAKv+Gu_s7i8JC4cv-dJMvm1_0cGzzhzf+Dxu0rxcF7iugF=vHg@mail.gmail.com>
 <20190610085542.GL4797@dell>
In-Reply-To: <20190610085542.GL4797@dell>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 10 Jun 2019 11:03:46 +0200
Message-ID: <CAKv+Gu8rhxciy1cOG3B3pda9+p4R_COGrrqa7S_Rj9y2HeBxYw@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] pinctrl: qcom: sdm845: Provide ACPI support
To: Lee Jones <lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_020407_414812_42B7BF6B 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, wsa+renesas@sang-engineering.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, Jeffrey Hugo <jlhugo@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 10 Jun 2019 at 10:55, Lee Jones <lee.jones@linaro.org> wrote:
>
> On Mon, 10 Jun 2019, Ard Biesheuvel wrote:
>
> > On Mon, 10 Jun 2019 at 10:42, Lee Jones <lee.jones@linaro.org> wrote:
> > >
> > > This patch provides basic support for booting with ACPI instead
> > > of the currently supported Device Tree.  When doing so there are a
> > > couple of differences which we need to taken into consideration.
> > >
> > > Firstly, the SDM850 ACPI tables omit information pertaining to the
> > > 4 reserved GPIOs on the platform.  If Linux attempts to touch/
> > > initialise any of these lines, the firmware will restart the
> > > platform.
> > >
> > > Secondly, when booting with ACPI, it is expected that the firmware
> > > will set-up things like; Regulators, Clocks, Pin Functions, etc in
> > > their ideal configuration.  Thus, the possible Pin Functions
> > > available to this platform are not advertised when providing the
> > > higher GPIOD/Pinctrl APIs with pin information.
> > >
> > > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> >
> > For the ACPI probing boilerplate:
> > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> >
> > *However*, I really don't like hardcoding reserved GPIOs like this.
> > What guarantee do we have that each and every ACPI system
> > incorporating the QCOM0217 device has the exact same list of reserved
> > GPIOs?
>
> This is SDM845 specific, so the chances are reduced.
>

You don't know that.

> However, if another SDM845 variant does crop up, also lacking the
> "gpios" property, we will have to find another differentiating factor
> between them and conduct some matching.  What else can you do with
> platforms supporting non-complete/non-forthcoming ACPI tables?
>

Either we don't touch any pins at all if they are not referenced
explicitly anywhere, or we parse the PEP tables, which seem to cover
some of this information (if Bjorn's analysis is correct)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
