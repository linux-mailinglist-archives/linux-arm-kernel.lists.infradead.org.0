Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEB3AFE00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww15igRgqzv4e8qnms85f2RnGfKkT6n6Hbal482xg1c=; b=d0tkp5fJ/yeHmL
	LahS4jUyvzyzt7VuKMP6PJoxRo/lVNHVp9+fjl0m3ZJJ+aeYPWRvng9CY6ui6vQ8+/kY+NPW267sk
	zwcLEPwHzaLr6mGNLXmxjljf5jmatqhdgdywHqGY7c2SlojtLohn3mkbUlaWd3kp/BV4X1YNnJfju
	2f6y4+AVmNdJxa7QyWjBEZANTzfovIWmmRxxWvI6uaMYSgu6xKlgJMJq3N84N/8cIlOAAA6XFICrT
	MfN07m+UllW+qROXs17U/fSXAibxJiCeNQojtOl8gOq475cWrmyez6Ap8jyrUa3WqQ3O5WS6ndCCo
	Q5m/1WRRFURDZsYMLj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82yD-0000jw-J1; Wed, 11 Sep 2019 13:47:41 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82xz-0000jX-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 13:47:28 +0000
Received: by mail-lj1-x241.google.com with SMTP id y23so20042690lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 06:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nz4fH/KXhHqij+iKLC+4ZdFFxFYVPPUbmfkrz8PDltg=;
 b=DLyK/+ak64rFlOgLttB4Ar6+FvCSJvNmybyHgUL9jbUvEeVJP4xCwXQub9DeTUYgzQ
 oFIOh4cIsoZgefy7yGqAdOMhQftEPQhmqMAIc/qK/PsPNoiMlBtc+b+Epg4fgRQx8HTl
 tfLuyhv8liTJMMaYuFV7ooLfozyYVY410LYKBnZbnYS53wdNPyggQx/gc2ZGyFUOcPkB
 J28uSaE9cRbADj2qWANkWsow//32yG/JkSeOhgwrI4t8DNQnmXcjFkh2WSOJHEK6tKpH
 ACtkBTUtObT8s1TFO+my597cL5iP9sxoRJfZKL5yHwZmMI6pJGgoq3XPz9nRSZNG7h5V
 satA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nz4fH/KXhHqij+iKLC+4ZdFFxFYVPPUbmfkrz8PDltg=;
 b=mGWiXCnHulItrXU9WBSvoBd3cgJl9nlZQcjyMQpSfOgJABXFknGsb5lUnI/SoIvU6/
 fF98sEppVLf6U3bodgZgcwjhTL41k8iy33S72dZO2BVFAECJQrFvT4TiSx7JOV9xSAIj
 8ERa0CZUCQXEWbYD5fd1FzLx/n/X42NJ1zG/k/+Sn90oOtBy41MuEkrktFLPgsryo/9q
 4n5HUqR7VhkFbydkjS8VlsKCUIYtpybtMPXL4Z/INxsrrdNFRi9k17I/kwn89nqzgCUt
 HUuSMuNmeY5VH4Qt7To4At1CwydsHhBWxNQCCWDT5MJh6REZF9j3/Cw+beAQEYdRoBSO
 FHwg==
X-Gm-Message-State: APjAAAWGPjzI8uJkmmvMlixym2RDoWsEJCI7up/prsHcoM8HdF3G70dF
 2uaCg3oMVmTeYiseV2qUZFayDx9cmTrFQfXl+Wm1Pw==
X-Google-Smtp-Source: APXvYqws7ORqRB75L0oY4eDnjG2Wm//MH3lyQsM0QYHLeySy7D/AoJBKfHnVdu6FeiCtY6iZ+Z68Vtiu33mFOJqqeOI=
X-Received: by 2002:a2e:7d15:: with SMTP id y21mr16276037ljc.28.1568209645791; 
 Wed, 11 Sep 2019 06:47:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
 <20190906084539.21838-4-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-4-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 14:47:14 +0100
Message-ID: <CACRpkdZYbEhyGGoo9P=cnjd8Z+oDLUgqAYhKDeuqtZjspw7sSw@mail.gmail.com>
Subject: Re: [PATCH 3/4] gpio: of: Switch to EXPORT_SYMBOL_GPL()
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_064727_512475_76699A1F 
X-CRM114-Status: UNSURE (   6.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 6, 2019 at 9:45 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> All exported functions provide genuine Linux-specific functionality.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
