Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F070FB130
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:18:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ5HlsBhN3LDMjtd93eKQA6GvNqiUuYgKLTuLqQbfiI=; b=hh3D5C6x+2Swir
	VIyB18eRYInSO3bYlsNJ31N6NTlS/7RY4xf4e+oupvMGcHNRTGCWe2vx8Ieww3q4fAhlXbqLmunXM
	Uz6Y7l4rlt8fZ+ZW2MbUziC8B9Wue2Hhr9bn+Sv4bB4hwXVir+fO4ndZiRUR9EBNkeFrQJucqRdT6
	XSMzQCWXW4MGPtLroTkV071jhSaNYSLoTVv8Pfic8dgf8zJv/TdgBpgKYn0sM76nvak2Puf6VJG/O
	3OrUFxhyY1owFPf+p+75HtjqmWzYYKLJxT7KqJSth3A03Zu595/ZUTdhoC9FmSw7f1A1kwoww/SuA
	/RjkoUm8ieD8K94QA0hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsX3-00082G-5o; Wed, 13 Nov 2019 13:18:01 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsWw-00081Y-8W
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:17:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id v8so1905476lfa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ODdjAsv6V42vaVg7OoS5YP4kHhdsnwsr8eTSaT+/TyI=;
 b=cAUOWGd9VlFqH5jzJiEP2SX1oEbTG4eUyljPTjFnPWaCuBIZtZIyYnQqxHEiu+PQGO
 BrEcQ1Cu8NQJZsEWNx1ccJ+yIfODPTVv8Vv3Vc7xEBKc8HhipY6JuaEqEGLlHZQNdtwS
 AXkJNfOi2XFtLUFJJZcjnDVlsGlzBx2env2DS39kWlq7d91iilbK6kK6oH6xXxtKAFsT
 zVyCS9YUNqYayXwTh5RfehPgMvuA2OVdINitY02+JaUS7kvMM4A/+1OJQsUdReTkCV44
 8AEwDVllvRLQAD06lvZkK2qMCyoE5UaOghUuzZbaTrteieKE8pIyvgHinDJ4YthMAr3W
 iglA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ODdjAsv6V42vaVg7OoS5YP4kHhdsnwsr8eTSaT+/TyI=;
 b=Cd0l47Dx5kWB/kNqEQBDnAyCZMXvdQl+F54Ak8hKBiNYG7+wf+AW6LxssLoetpImod
 odSWNiFJCwTIpZ2EZoZq7v54SX8NZK8/uGURszpMbcfRRqA8wq2QNQRorW0NlPhwRTLo
 3M78RCqP+5T/4pomLed6MqgsDM1Mxrc/pVVrP0tHQK8St/t8/0by2Df0l1YyydXFm2Ky
 QBjfOC/q3d4yoBkGmPDvat3paR/oHZUIvFJVDVaycEVMZowitIOJ6mvZAPEhAnq7oeWV
 yf4lK0CvpY3Q/poCmqBCEt73CABD8nuNLFi82I6IerxGWQPRrr8Mf/NBEWYInS5uWPn/
 QYDA==
X-Gm-Message-State: APjAAAUh2FKXhfyF2fozS3M3kQqxddD32cYeahx8KoFcy1APimKTEWDe
 5RMmvbcJ5UWis7pCeSqE0ex+nWtdOjQ3Gjad/WpYJQ==
X-Google-Smtp-Source: APXvYqx8siTYYDaL+IE0BEI1+P+9W94Je2xzQCR4dKQpvN8lQXygO2DokX4wXnJNdzV0d0Q/PDb6Oiww7sjiGj1A9XE=
X-Received: by 2002:ac2:48b8:: with SMTP id u24mr1361429lfg.133.1573651072109; 
 Wed, 13 Nov 2019 05:17:52 -0800 (PST)
MIME-Version: 1.0
References: <20191113075335.31775-1-linus.walleij@linaro.org>
 <20191113075335.31775-2-linus.walleij@linaro.org>
 <CAPDyKFqx-0J0ck-hyeJsX8LrOP+BWiS6PihLd1Y3EMoXX+qYiQ@mail.gmail.com>
In-Reply-To: <CAPDyKFqx-0J0ck-hyeJsX8LrOP+BWiS6PihLd1Y3EMoXX+qYiQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 14:17:40 +0100
Message-ID: <CACRpkdZhMjWyWQav1HhmfDkvUxOU8gGGbYJrd-tRXw8u+d2-Rg@mail.gmail.com>
Subject: Re: [PATCH 1/3] mmc: mmci: Support odd block sizes for ux500v2 and
 qcom variant
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051754_300271_ED6D4AE2 
X-CRM114-Status: GOOD (  11.51  )
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
Cc: Russell King <linux@arm.linux.org.uk>,
 Stephan Gerhold <stephan@gerhold.net>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Niklas Cassel <niklas.cassel@linaro.org>, Ludovic Barre <ludovic.barre@st.com>,
 Brian Masney <masneyb@onstation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 12:06 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:

> > From: Ulf Hansson <ulf.hansson@linaro.org>
(...)
> There is no need to keep my authorship of the patch, it's very much
> different than the original. I would rather replace it that with a
> suggested-by tag.

OK

> This is too early in the series. You need to deal with the DMA and pio
> issues, before releasing this constraint.
>
> In other words, I would rather split this patch in two pieces. One
> patch dealing with dma submit error path, placed first in the series
> and another patch that adds the odd block sizes variant and releases
> the constraint, which should comes last.
>
> Makes sense?

Sure thing, I fix. We need to get the whole slew tested first then
I'll collect the Tested-by's and reorder and split.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
