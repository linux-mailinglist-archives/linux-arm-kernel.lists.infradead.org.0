Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB351658FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:18:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DI+aZHdiP+Jax26/lLrfTU3E2eurT31G5lr/Yg8eb1k=; b=rc3ASsO8zoavBS
	Vsa4fPxidmQRWlv0Hle4LWaV2990dC8GGpWKQENcLl8mbKthcO70ccfx+ShPl1SM1kW33ImlZliF0
	X5r+xQgDGDWa0lJNWo8NklzfmcM5jxXZzN9mXc6T77WD3sXTdPpLzA/IQwtkxV01qW+l2WM6CPJZp
	VuUJVwfn4XVxypbBFcfVLf0N1g/iAnvUeMBTGUVs+AAvreALOlcgStIgxpSmKXIj7Z374n0Z9Tx51
	xBaSaj1FAatVNZ/5bECqTH+CSWG3tWBTnNN3PJkFUnwz29jJFkyQCQDbiDVd37nTGgMn8TKnHJ4gz
	O6yZFNYikE78mKj/sDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4h2B-00081T-GC; Thu, 20 Feb 2020 08:18:11 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4h24-000812-Eh
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:18:05 +0000
Received: by mail-lf1-x143.google.com with SMTP id b15so2368240lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bfzGIR3YDiF6H+a6zuyFtqFo96c/AxsGVVSXFrBtaro=;
 b=MAROxxGOlLyeUqubF+UzqU7IGScwIIckR/engdSUpg/yhzEcnTd6TRsz4ccQypWssp
 LEfIOKYp5tifBf7tyUVNPtpff9QDzVaJ0aktej1Tsngo7E1JQ/6SIHabsh+XxwcwBIgY
 pAiUaTIwclmpgYtKpBd8zYoKwO22rmqOT/IA8pER8YiQEgs5rUJq8wtOrs9ufZJsnIrH
 1hMHsm4aWnFNhNQpyQ7jw9MBMK7ra8vVebDyUxCBQeigRtet9NwAI3FxNF2fIVwY8g5/
 Etn+ssi5+onBUy68zTSsWMb6ULREGRKn8CGU87a0how/RKua0mnOk0w+ApaAP5B7Of56
 O9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bfzGIR3YDiF6H+a6zuyFtqFo96c/AxsGVVSXFrBtaro=;
 b=OX0BZ5jCefayyDWmG2jJLtCrwvH/uKvRfPh5C/F6vu9s77GqLB0hvhsClCzIwtl6e9
 Y9gJGbSakEB3GC0IOtBW2ICsp01t9MOxQzhpyvI2PT7+meBzXoahkeZtjk/Jt3DXSexf
 TvQKbwr5twiI/TBMBCv38x6FSZQsRdK9TpXT4bft4Is5NK4AvWCtZtoPj85De8PbJDfl
 jMmLFQc78u9vNJ5GV3FKsTe24FmEgXbex+S6/C2I4sZtkdDMis8R2HYe8BLL+ltuIDGa
 pPqTlLRwr7cCJKphSoh/Xhx+hdU8K0oaJHW17xcJ20gzas8yBXpx8Ln3caQcVt8u/ekc
 9dJQ==
X-Gm-Message-State: APjAAAVoQklz/Gnb+JTMMF8uk52I9hHDeUpF1llnCLxjUGvS5RYIVRoz
 vJwaprAwOqiLMR8KD+d1bEdD5K18v/TI6ERThdr7oQ==
X-Google-Smtp-Source: APXvYqxjTpOkXxHXkogdm1rBBTRQ/jNvpMrr9lmcSMi5VuYw9rJcTzPLj16dSa445cLIR6/04e9vqkvnuwR87v+M7Js=
X-Received: by 2002:ac2:44a5:: with SMTP id c5mr4263584lfm.4.1582186682486;
 Thu, 20 Feb 2020 00:18:02 -0800 (PST)
MIME-Version: 1.0
References: <20200206173247.GX25745@shell.armlinux.org.uk>
In-Reply-To: <20200206173247.GX25745@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 Feb 2020 09:17:51 +0100
Message-ID: <CACRpkdbzjBnaeXJg3XvZ6G2FdtQQa0u7MPy9bgN-uo-F1vSpbQ@mail.gmail.com>
Subject: Re: [REGRESSION] gpio hogging fails with pinctrl gpio drivers
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Peter Rosin <peda@axentia.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_001804_526342_C46F354F 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 6, 2020 at 6:33 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:

> It seems that sometime between 4.20 and 5.5, something has broken the
> ability to specify gpio-hogs in DT for GPIOs that are written around
> pinctrl drivers.
(explanation that makes perfect sense)
> Consequently, adding a gpio-hog to DT for this driver results in the
> driver endlessly returning -EPROBE_DEFER.

I suspect this is sx150x-specific and suspect these two commits:

1a1d39e1b8dd pinctrl: sx150x: Register pinctrl before adding the gpiochip
b930151e5b55 pinctrl: sx150x: Add a static gpio/pinctrl pin range mapping

I suppose people weren't using hogs very much with the sx150x and
it didn't turn up in testing so far.

I don't think for example pinctrl-stmfx.c has this problem, as it registers
the pin ranges from the device tree as part of the core code.
But other drivers calling gpiochip_add_pin_range() may be experiencing
this.

Peter/Andrey, do you have some idea? Have you tested this usecase (hogs)
with the sx150x?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
