Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72862117D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 13:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D92mgCIR4QK5XoyV9P/n8G89+pz+PIZqGwUiiSbT32c=; b=WnP8pbKay8uZy1
	gqLA3GlqeFDuwU/33t3z64NRy1IxKIlDkUt+qcmuDd98AwtRhEH8lZnWpxbD8C8EQO8XmK5I3/CuN
	IFS3/VcjqipYCfkbha/hGxY1zWjgCC6K2AB0Z/bX3NmQ0Vb2HZb5IjRYf2UmeCj0ZpaciRbhaykYI
	ZzH+dh9UdDRSYKeN4FHq6YqmcvFenAcMexPYrd0vVPTH7OW6gnnUtLUV0VfWvjArMNc7TVuRcUVjo
	QxEwGwaDQDtosj+nyEqQJ1n1b2Jt6aMf54+GQuuRJN7DPqYFT1t7uYA/7B4lphvsXtZx/blpVTqu8
	QyLYo4xuBPCpG6dBCBOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9V4-0001Kh-C1; Thu, 02 May 2019 11:03:38 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9Ux-0001KB-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 11:03:32 +0000
Received: by mail-it1-x143.google.com with SMTP id i131so2539481itf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 04:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t6qFScCGFm+OjY65pkD+W15TAhL1Jfr5D+WuGdpbCR8=;
 b=LUSO+WRC99FAZkWEItfHPPFIHsjrnxCYbDXt3s/nQMb8ZJVh4ay76TBCBlPIWKMc49
 Ru0VVLcFAFTrahByDg6zLQDUXOqGEHfdSR9S3Wi/ggtyffdEIjX0VPiow4nAYHImi+Sn
 Ou535enfb1L9vx2XUWQ+kBe0O4psVGUsFIK+UM7pC0hZESX7fWMP0UcJtTbuPzPYYPnE
 y1TK1Iw8Dgc2dwK/xJ/obVI+2dvTZlWRMgiQsrQI6RUW/iBaI47zfTm8v8D4b7fBbFlQ
 vku+dDmd3y14p6152FrKBlMMN5S8G0m0EymH8uCNj5id7Dw13mCUOErqdYGWg/nNQvOg
 EIDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t6qFScCGFm+OjY65pkD+W15TAhL1Jfr5D+WuGdpbCR8=;
 b=pu55BkfuZd31e+wVzP/IZx7eSqgW2C1YwG5qr4pjovlME3czeJxmjLbcvUHZznCbVk
 SH7abnlZax0/plfhSSy/PLcvjs/Bq2HcuQ0w0/j2iZBld0UJCG0mTSE0QNYzaJWdpGVY
 p5kU5U1JYQwVVI+kMphTrzS3a/OkBdqidvNoqAmuB3l/dgKIZ5urgIRpHfQnCTv8Jj1g
 3FIOpEfzi6cbxkiNwfHy6Z4bbSnLTD62YY7CGGEqRZqK4EnesgWRputAQDX2Fj5ktnrk
 UkeohtM0yNqwkVJGnwzXyNGXrJkna5mzgymFZk1ULIet+vqiqwyjI5+QxSIChsF2MQGs
 SDAA==
X-Gm-Message-State: APjAAAWI3uyUrLv9BII0XdGj0pPCKi9BNdD/PtpFB0JYmy/N7uMUJYt+
 /pcAvsEsPdPJiNO14i5CkjJfvCjSE/duFRJn4tz1nA==
X-Google-Smtp-Source: APXvYqwnwYPjLFgFQ08DslFzYPdjWB5WeGzReY62upJhpAn3HttdD91biXn/ByvMjR734VKTkLmBogCfHmp44/jOy94=
X-Received: by 2002:a05:6638:94:: with SMTP id v20mr1953066jao.2.1556795010051; 
 Thu, 02 May 2019 04:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190429131208.3620-1-ard.biesheuvel@linaro.org>
 <20190429131208.3620-5-ard.biesheuvel@linaro.org>
 <20190502080255.GS26516@lahna.fi.intel.com>
In-Reply-To: <20190502080255.GS26516@lahna.fi.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 2 May 2019 13:03:18 +0200
Message-ID: <CAKv+Gu_TEpTuwE3zB1VxMojHnevNAUSX5PkaW_uCVtV6jNx-LA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] gpio: mb86s7x: enable ACPI support
To: Mika Westerberg <mika.westerberg@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_040331_752903_E64208BC 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Graeme Gregory <graeme.gregory@linaro.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Linus Walleij <linus.walleij@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2 May 2019 at 10:03, Mika Westerberg
<mika.westerberg@linux.intel.com> wrote:
>
> On Mon, Apr 29, 2019 at 03:12:08PM +0200, Ard Biesheuvel wrote:
> > @@ -160,13 +177,15 @@ static int mb86s70_gpio_probe(struct platform_device *pdev)
> >       if (IS_ERR(gchip->base))
> >               return PTR_ERR(gchip->base);
> >
> > -     gchip->clk = devm_clk_get(&pdev->dev, NULL);
> > -     if (IS_ERR(gchip->clk))
> > -             return PTR_ERR(gchip->clk);
> > +     if (!ACPI_COMPANION(&pdev->dev)) {
>
> Since you don't use the returned ACPI object, you can also use
> has_acpi_companion(&pdev->dev) here and other similar places.
>
> Regardless of that,
>
> Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>

Thanks Mika. I will use has_acpi_companion() instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
