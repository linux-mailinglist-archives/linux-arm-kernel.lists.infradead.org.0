Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC421AC0C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vvXHc3IiUZkCWDzrrKFrHk/410N9eKrBsAk2hdxKe/U=; b=tou2o1hnSFGdwc
	r/q3WXofQvFloweZYvUzyHomxRwzNemruNNsn7KrlKye1a9xT97+dEWdrERzQ27o6FsGaFwIhoEMs
	xXMF75ZdfcW9UY4yjJKoK1GHBdNODxx4UgOsmEOb9KZNz/2WdeyYn8+HJgW/A3X5K04aRdzBiSDvf
	KgS1iPNlR99hez0mYcVP32NN8AVNtI1WjD1lUuMwYQuUHEwsg2jm+ReX4O/3Jn4K+4srsxzQemqvv
	gi7AT6AGgkSO+fgyVkZp/sRjvpfYfG3kGSceQqRpEHXBqnPtxqoIeZFxMRVp10FY3vNy4Y/nDH8Wm
	pQYMAEwdpJwzauMCTH9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3KH-0008Jc-17; Thu, 16 Apr 2020 12:09:01 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP3K6-0008Is-Pz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:08:53 +0000
Received: by mail-lf1-x141.google.com with SMTP id m2so5376545lfo.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 05:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CLvpaW+uUne5it3kIWzMOUIojoXmf6oiO8ThkN3cpkY=;
 b=Ys8YKsXM6fXzEeMjXeuG+QrbM/PhTPcxJ/fam+5PAoc1qC2WvmrsY0zCOurzWs1M5I
 3sVoZJJLm1ofXVvre/Sc6/ghosEAS1wVxrAOvEzOCdRTBb/WK+AgqD8Nmy+CnyFizLUZ
 L/EvT45dNlnZ6otQAvt2GzByEZbLdahUAYxuljFzlLSWJcku7egzOHNJrCWuYclSWmEv
 WYf4EuwTF3S84+A9OCLMOsvtxAmXAPegR3uJp/VlbGXa3otOO/iaw4fwur65G2SuCAGG
 zdyjLkTZYkbaQb+RCwu0LL/FfPrD3chTjG9bSUI1CHcHY2lqFBF5mRbAd+PmDEB8x7DV
 PaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CLvpaW+uUne5it3kIWzMOUIojoXmf6oiO8ThkN3cpkY=;
 b=sFppqsxlb54KB1uo1m9ArMhfscF0+pTyCckzdKDYdYIFjSdb0DZmdlWwWIlOnYvtV4
 slv2ssOb7SmHnXWI+SapwRA2mrJOIri7GJd6Gc/AVXsKWScvXppISERW3ZYoa5QRlxV2
 QG9JjjemwEbsiI4mKnambO4X/M8YrX5vDCCPfJli2uBOK/l9D/Aw65QcdPDVMYw+iCDV
 8j82nh/QJjmahtAy+axnJMjFYXU8dpNE32X98v51cQiDwDr/pdw6ywHOyEUr7IfTN1jR
 ruzxK8NKZAsBrbxMsvr93SiZUIzdkPNEDCpggzlmY+LNB7gJ82TfBvmGw+/tAKYKdlQg
 /zTQ==
X-Gm-Message-State: AGi0PuZaFtki0guZb7t0qK13oOCg0fFC5h9tzRg8rOo4/eLlUo/XCp6v
 vUSEiOINNE+SxZSpvFFLQrrPyXdoHSI2owjG4gopVA==
X-Google-Smtp-Source: APiQypJzhCYUXv7QXcnsa/vkCVwefo5n3281I83Ws1Af1XZup/G2mwOYqWP5CDfj73shqpvSNrbcQ8jDk5V1Fzze4mQ=
X-Received: by 2002:a19:700b:: with SMTP id h11mr6005687lfc.89.1587038928602; 
 Thu, 16 Apr 2020 05:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416081412.GG25745@shell.armlinux.org.uk>
In-Reply-To: <20200416081412.GG25745@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 14:08:36 +0200
Message-ID: <CACRpkdYFBGvQX3i4P1+cF5ExXOSKieT6cJNPTNuKFxEhtJVEjQ@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_050851_364780_3449F954 
X-CRM114-Status: GOOD (  13.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, linux-pwm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 10:14 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Thu, Apr 16, 2020 at 09:51:37AM +0200, Linus Walleij wrote:

> > The gpio changes all look fine to me +/- fixes for review comments.
>
> I think Uwe is incorrect for his GPIO comments; the clock is only
> optional on A8040.  We know this because A8040 has worked fine
> without PWM support without the clock, whereas for Armada 370,
> the driver has hard-failed if the clock is not present.

It's fine. You are running the hardware and it should work for you.
I usually go by the IETF motto "rough consensus and running code".

> About the only change I would make is to move the check introduced
> in patch 2 into patch 3 instead, inside the MVEBU_PWM_SOC_VARIANT_A8K
> case, so that deferring for the clock works (which is necessary for
> the PWM driver to be useful.)

OK let's go with this.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
