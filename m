Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4474A3A02D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 16:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJZswo+XZClGWiFRxpqDVU5ojfUTcIGx4OuY/rUMD3g=; b=ERfnRCOkMAycBe
	ie1S5V8BfS5xKwpu3LElhr7+LtebZIkVVjo3+qWswoQIDkcKfB45/dD79elogF/+vvOSvwP7LKm/l
	SljrLvQK8EY3ztlnBWqBb8PQNGdKwq095WVOeNsArlPF7zC8t56IZwt3gF+WTdBudCFQiIlOr2yV9
	gPZXAGniQ/qEbPN6h/PctnJ+QnYnEGWrAhl4OEiCwagyume2zsLqBOCaCScJP7q1Za1dM5/naEBgh
	/us4E+VqmJE8SL6/XQUitapkcgJknLXTAZxP4JjccHJ6FSQ8bMwsfq7CQbqMddH3zNuG6JgypCKPl
	2vtZnxZdGJUsc+Nkm9Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZc0F-0006If-MI; Sat, 08 Jun 2019 14:07:27 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZc05-0006Ht-R8
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 14:07:19 +0000
Received: by mail-lf1-x141.google.com with SMTP id y13so3646612lfh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 07:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DSRTOSLA+/FemdbH6BEhfWhV1nvGjGDSfzo3b0dCtrg=;
 b=WfSlXgITYjk/kmX1IVtv6UxCnCs/kJHjqnUKJ8Zv8JZQDCQu7EtrGDPpInyTvm72uE
 6Jh3A8tTaALJbmtRlss2aI6W4+waViOr5mUaDGlAlyTXzRWkDgT/sb9MGndw0Lk5feY2
 NpDURIlsWRQ++l8z+dDvkGP9aAkJ+lx4rbv8b+nUmZjdXFakZXkApQTsdEi0esKWCEbu
 cA8WYC5vnZjS1GqHlkSp/aA0FHSG1wR7VUt5Q8pVz8Ijz1HqO348jK6RSTW8IW6QEl0O
 92dOgAbQtZgF9lPg0eXAD/Bwb+x+JIUq5t/QFcv/5K0eNzL0+5lT0VACA/v4ulpdnIY7
 u4fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DSRTOSLA+/FemdbH6BEhfWhV1nvGjGDSfzo3b0dCtrg=;
 b=sA9XXus2Fgia8x/UbUSSKOrlNhXJ3uyN6xPhePsxwhqlpwjFiqzDDR9NQleyFdxB6U
 xyrEe/u6doLxFt1e7nIh/7ePvn1ZoIPSdujZC9qoatMe9XhCbpg6P7eND3bV0Ya7t9lS
 QfHvudIACeUrONDDKk79gM8AVCYIuL22PTLDQ8PHuTXszMwM8mUZEkEAaFmV5vssv1C/
 nnmvVT7vv55aJB0kBnAHUIeZc/RtjEwBdNODCEibZet0D7ZlANU7AtO6Wh7fvsN8g1Hr
 3rBJS8o//AoHn6IhcQdKpMDbHVZzw8Ydus45jfqF6aidA6nzfVwvvgEspVE/vdYrZCrS
 5Whg==
X-Gm-Message-State: APjAAAWv65aSvmiXb3PKdikUHSln9KRNylzQbTaW03KM24IrWknROu1L
 cgoMmKGqqXZWtklGY1VE+vppCOKuE6Ifxh0ptJqKUg==
X-Google-Smtp-Source: APXvYqzhdX7oIqcBv/zUJO/5MKYb4k7O/5CPACCUetU6zB1YL1fMBc4XFNKk0JgXOpWjBNi39gAvRNca91ZKemc2KnE=
X-Received: by 2002:a19:6a01:: with SMTP id u1mr27926050lfu.141.1560002835134; 
 Sat, 08 Jun 2019 07:07:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190607090201.5995-1-brgl@bgdev.pl>
In-Reply-To: <20190607090201.5995-1-brgl@bgdev.pl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 8 Jun 2019 16:07:08 +0200
Message-ID: <CACRpkdYjXq-KV=zW=az+02tvjiHVHgUPiC149gNfkWTb4c29PQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: davinci: da850-evm: call
 regulator_has_full_constraints()
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_070717_883458_ACB68429 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 7, 2019 at 11:02 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
>
> The BB expander at 0x21 i2c bus 1 fails to probe on da850-evm because
> the board doesn't set has_full_constraints to true in the regulator
> API.
>
> Call regulator_has_full_constraints() at the end of board registration
> just like we do in da850-lcdk and da830-evm.
>
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I assume Sekhar will queue this and the LED patch?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
