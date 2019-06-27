Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514A358146
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 13:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGOl4kYBbXDfsZ1IkR1LshRWEzeVLneZPRaC/xVpl74=; b=tg0qO3z17bYwNp
	0f/PlaArhEtKnqwoVeBV9WLT7XpQ3UeJPOe7x+9nD2MeCrnToVIewqWOoFUT436UqClzVREr3MXF4
	GSJf3uTYUw0wT2N+AAQdIk0jtdNu+xNbv7mdaRZEHAVVBwxwmhtHpdrfKqqHDFGS9w+IV2/HeCj6k
	v6rK/2HXi3H7hayU21wBkOSYUbx478KqjSqykUqiucE4EAvWXw0/iNDbF9Yzv6WwfmibvIX60E7kr
	lvUeNN3IX/f3jIsAiKABKVbFD1pa+Xzp5E+R8dXAxlgOHtH6fz6JU3wtFFtoqAdexskvpI7OiGYwv
	Lg3jG/CdmfVnRmYesdBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgSP0-00089s-39; Thu, 27 Jun 2019 11:17:18 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgSOp-00089S-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 11:17:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so1888149ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 04:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h+M32KORGemVLrEhCU+mugrqZ6KHhAjcB7ktP25bgUw=;
 b=JATFfirzIRvl4Bn0MzZWqLXi3Ey2itUpvEWgha059qAjA3IR4c2e1wMYo0c8Z9yL/L
 WyGOxZrDK3Wnpu+UNfnPJmkwU9xOdh+bOAd5U+upstomSDHtE62P4UarRnshyBxTZwJC
 GXuAX0YXnoWrBeA4RM3Qn1INmR+BJS6DN+IzO5VbLtp3T6R99ZjdyYG6rtknT6+hXXwJ
 DPoPboHY7TP74z5yaajm17KS0cWKWMGHFArJHx42qzxQyRY1KKg7LMdAMfkwaPbuyatE
 kXX7rKx4ZmsGCoeVQpyujljI9AIVkuBs6ld7AtEB4hCOp/+cjbUg8oBHYZu0nmkh8mI7
 CsLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h+M32KORGemVLrEhCU+mugrqZ6KHhAjcB7ktP25bgUw=;
 b=sSA4YyprSvI9pWH4K8KRliMryLGHquBZXmr6jrGG+G+sDZsgLEW040ZLQ5U9aHu4L1
 Hauw4Ov3bvC8TlWnDms71+MdqwgjTdrMH1JApu7wTa1R4LppAwtxwiVw38DdArvGng9F
 /4q+D9jm0OjsT/b/gRiuUZ5E5cQ1PJeWXH9r16eEru8m7bixn+8ac5fP520Pnt9RS0bR
 eb9ZW8N98aRPx33R64HpZg0KJMMkXYatcKqthL9UhpS1O+0tzzq9UioBaXqGKWNZcWJE
 FZ3bsWomkTw1uRpnd/fVe2dVjQig5PWiQpGe7eqZ84ZmHDRvguK4ETEG9l/6fVX3wvb4
 PJSg==
X-Gm-Message-State: APjAAAUYdx5wLbXjr7/LFx2auQDRDGoEhnqSufeRagSQxRbnToKO7Xrt
 PWtNNtHBNKCd4fPpJqaiwH7uS+MtaVykagONhmWGgg==
X-Google-Smtp-Source: APXvYqwhIrf7JDRO2BMtKtOJvp54agYbc9d0DQAtQ0T63qMEcpkYpkkimqLDdz3gA69lWL5g0fktxZUtlvgv/RN7KDI=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr2370304ljj.108.1561634226615; 
 Thu, 27 Jun 2019 04:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190625163434.13620-1-brgl@bgdev.pl>
 <20190625163434.13620-7-brgl@bgdev.pl>
In-Reply-To: <20190625163434.13620-7-brgl@bgdev.pl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 27 Jun 2019 12:16:55 +0100
Message-ID: <CACRpkdZdKigQ08bf5P9sYf-EhWFn5LmMRPQoMS2O5ouB9h6=MQ@mail.gmail.com>
Subject: Re: [PATCH 06/12] ARM: davinci: da850-evm: model the backlight GPIO
 as an actual device
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_041707_979693_5E081B7C 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 David Lechner <david@lechnology.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-fbdev@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 5:34 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> Instead of enabling the panel backlight in a callback defined in board
> file using deprecated legacy GPIO API calls, model the line as a GPIO
> backlight device.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
