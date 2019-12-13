Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDE011E773
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MR/eI0GSB1HsjfS4WhFr1JeO5bq5NvjOqx1kt+eSkvs=; b=jmqQWJON1WGtnJ
	6HvbT8UYaF+tnS3qs31snBSQxTSboC6V09j0nkQvLASWQUXZIehyXQ9Kj84pUEeeKmHrL2Iw42cW6
	ZsuyZUoI8nrOIi2bE+9uCHUpeAGtFn6KxwWXrCDRAEINV88WK5Vqj4NoZHYnv3l6IsfS5ST/7SlKr
	bfdAJ7UgSWYqkghuTwHyH19PYniB707Dg1ukvU5qwPrnqZ1KrTFfwxYTQ9td8Q//QHFgdaecRb9x4
	wXSfQ3LnIyUG2fhRvrn8eI+iXiGgi8VVpbzVTAPemdAYRgBBz+FNI/h3KU0pKgcARWv7VHyL3ygI8
	x5f7Il6fg6Xp/f2RZ52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnQ5-00019C-0P; Fri, 13 Dec 2019 16:03:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnPv-00018q-3w
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:03:48 +0000
Received: by mail-lf1-x144.google.com with SMTP id 9so2317595lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:03:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kvwPLR8XH8zayvVN3UCZB+7bnWFYQS/MV8OjCwXgshE=;
 b=Lm3EUMhHLF/p5ts9CtLbB2fyDZXRoWjputOXrBtc8w7ehCGKjKtMXvoPrTasEbwr9L
 Q3AtGb4t5b12A4UETL2BUWgG5Cn3ExxVW9Yl6AUo8cXmMYvCfobKGRsZm6pxrhmK0a9z
 6zhXvlJpLeBhB8oPfsi5pCryXMJx1gJbvGiSkKx+RtK40sUMHfAm6omvG+NKM8ZxMty/
 w20SMAR0w64D3FA4cvC4PtT51ker8sPYcr61mC8aVoUs/PGoA1VNm+lQDmAsk/4duDpA
 C1NaXWrGkDcKqm5BN9O+v2tClo6BGzebqA+UgrlOucQnwmsRGpCP/fmpfk0BdXurfeE0
 TwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kvwPLR8XH8zayvVN3UCZB+7bnWFYQS/MV8OjCwXgshE=;
 b=iCtMljwllO02af65KxXevstCv0FqiCezci4SokOmDIw59sbctOwXs7OtF8zIjZ8xVF
 JEjcQDUnaEcGOupDA/5QnvuaXEWfKW5qUzDUt669L4hMxx9hyUYGHeGqd0MS9Z3KIjhY
 yyaqJf8b60u3kuVq8jgy9OlG7bR4CT/qJDHktCthwayrUDUsYbii+2yZuaEZbRSodf9q
 1/rlYMQB8HFR/8S6RkOg10M7E22eSwbeybNu78sc5a6eLMU1o1AwdpCNUVLi1vZNDL4G
 rZblUcMtOs8r6whRel2ZqA+FME5cGbWIcIki69kUPOQ4BGzdrU24BNTMwbHx2WCHZA39
 rl3w==
X-Gm-Message-State: APjAAAVJF2KuQzGezH4klEoqL9kZFRD5tCgulxNqAWx1KLSX9FJn4RHg
 6qoSk0BbnWt0o6oSFL1kCLNw5IcVgnHtkvn5bPUdJQKj6PA=
X-Google-Smtp-Source: APXvYqzlUqj1JYbmvToLn4WKba8fTKOUKLwpvrIjGBIxwKCLtbdTwf4N8ZSiv2/s71Wmfh8n29zU9ltAma3PI2ii6Ck=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr9176651lfi.93.1576253025593;
 Fri, 13 Dec 2019 08:03:45 -0800 (PST)
MIME-Version: 1.0
References: <20191209163937.8156-1-krzk@kernel.org>
 <20191211182739.GA6931@kozik-lap>
In-Reply-To: <20191211182739.GA6931@kozik-lap>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Dec 2019 17:03:33 +0100
Message-ID: <CACRpkdYX+-GWvUhhXvJiJ1bCib-qjyEvZ0qYB35q+OT7hy=56Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: samsung: Enable compile test for build
 coverage
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080347_206945_A24E3738 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 7:27 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Mon, Dec 09, 2019 at 05:39:36PM +0100, Krzysztof Kozlowski wrote:
> > The Samsung pinctrl drivers require only GPIOLIB and OF for building.
> > The should be buildable on all architectures so enable COMPILE_TEST.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  drivers/pinctrl/samsung/Kconfig | 8 +++++---
>
> Applied both to my tree. I'll send them to you Linus later in pull
> request (unless 0-day catches some build failures).

Ah I see OK that's fine, forget my comments about not being able
to apply patches then, I'll just wait for the pull request :)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
