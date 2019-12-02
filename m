Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C8F10E9BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:45:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooHdpGx8CZQ5HxqarnDsLygo5IwXi7lDccSfyF3lleA=; b=AUcfnib/9s2U/c
	j37VOnrH18EVxr5MVxw1ZAeVPQwWJitawlNK7INHenp2KBypBmNr/UdNkIwIkUsieUv8WF9BOOsvN
	EovFlzrVsQRQ1055v7UcoHt8P7voKuWZ+dlVHiuHZWo2k+GnQiMfPyoxjeEjbFK9RDzAfLY42HVtu
	QDzklJoMeDP0vCy7VAL78fgCQ6OdTOMIlfn5AmxrWHFoiul4wCAZ/LZLfvs6T13K+zOSo76nSNiHX
	tsjc+PHDidKqZ0YVVK6fuvRmd2zQ9udu+j1PxtOTI5gXZTVX7/zfKAcgbqcF0kgUbhAqVq5zIn5Io
	NmawhGyoVBsarXO68pGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibk8h-0001LK-4h; Mon, 02 Dec 2019 11:45:15 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibk8T-0000te-Qv
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:45:03 +0000
Received: by mail-lf1-x141.google.com with SMTP id n25so2652777lfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 03:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9dbeOa/yZiXLwAKhqVdLm2n/zVETLaeGOMkXijhyOxI=;
 b=JLrik/Q57hkA2pLMTsCgFgbbXQCV50ILFodTufcKAu1zVJThyK0XovKHqlm3wjIFXo
 thgwxcec57cupokH5vqIRP6Afm0WjEpc8qBe4nJwWGCNznGEyDTdlFrWzt3OQTWUtu7B
 9ojKBJ/a48Jp/wQ+CQoM8wncSSs9mNnuHZ41QHW7sAbD1bWBUOfgQH8nXdwsrzD82tOh
 +IJzbYXg/z1w5aY7ZGrLvj9474omGAyq7H6tFWkuH4FUM5PHsVMnE5lVUh/cwKaJl5tf
 /hhm7GuvMk6MXuDzwMfDqLgev32ArbhFfgAw6Pg0WZ76yLzTdJvlrpcRC1xyT7XWfzk0
 QIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9dbeOa/yZiXLwAKhqVdLm2n/zVETLaeGOMkXijhyOxI=;
 b=tfHQ27UgLJ46BN+WTCAMyMBfNUGk69pWGdcteLk0VdG29BYTGng0uWcHDuXgWx2Nwm
 X6cpQg9JSfy2fdAWPyPn8XVLIQ/20ITCavgTthloh8jNzrgn0cdXTwcdf23rV6B6GpXY
 fQSp0rSbrFwDod5SExPEmuRiRVg84eSRlM+GDuBrxDbzdAc7XfdVm3f9FfRu2c5xqKeJ
 ZFaeUaPe/x5eeSURUbYDzPDFPwHTJMk+Tr/KMNeiEbIW1fzE/yMwn4sAGbtUjdH2VDfB
 xSTUQeA9VPsMqcJ/DAcRSUFNdRVaAirmL1j13Qz+vIwSO+VJ6xEbijaI4CS1DT0TMVTF
 ko9w==
X-Gm-Message-State: APjAAAXO0vnapB3HCasbU343ZejyU+/1Rk1o3iiKecSjYXXIxggQwvyY
 kMm1Ia1IOZ11Z98y7aB2BxRAdRBB5SGHiJr3VqRnTw==
X-Google-Smtp-Source: APXvYqyoHJVudY4Th9gkUkwA7ZvcT7SMc/yaucVRZjkFgzCxhl/qzF5ng9XGEy78xknVHWJ5WXqV+foidMFPzNGJqww=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr41600526lfi.93.1575287099487; 
 Mon, 02 Dec 2019 03:44:59 -0800 (PST)
MIME-Version: 1.0
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
In-Reply-To: <20191129172537.31410-1-m.felsch@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Dec 2019 12:44:48 +0100
Message-ID: <CACRpkdaSmwORgetv7aZjtgk+2OchcvQR4SBjdWQ4KsRMHuUvSg@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] DA9062 PMIC features
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_034501_923874_B26A8D26 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>,
 Support Opensource <support.opensource@diasemi.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Sascha Hauer <kernel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 6:25 PM Marco Felsch <m.felsch@pengutronix.de> wrote:

> this series address all comments made on [1]. Patch "gpio: add support
> to get local gpio number" is splitted into:
>  - "gpio: treewide rename gpio_chip_hwgpio to gpiod_to_offset"
>  - "gpio: make gpiod_to_offset() available for other users"
> Please check the discussion [1] for more information. You need to apply
> [2] to test the new features.

I am very happy with the shape of patches (1) and (2).

I can apply these on an immutable branch and merge into the
GPIO tree at v5.5-rc1 and offer to other subsystem maintainers
to pull in so they can merge the rest of the patch series on
top.

Alternatively I can merge all the patches into the GPIO tree.

I suppose this is not so much of a MFD business at this
point so whatever the regulator maintainer prefers I suppose?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
