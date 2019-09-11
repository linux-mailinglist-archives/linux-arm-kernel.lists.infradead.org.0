Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97CCEAFDF6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 15:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBObN2CaVO7RQtL9Zz9j/dQ64PtbDB5zHn9gft6hRKk=; b=Z/Jz3LQxBbKJfo
	fFm1Opq1gSbiD8szVuXDaBF4eX3AV+DwEin/75h7nwgyh/R5FL+roTaYxzlA/uuDTnuCE8curoIBL
	n6VLKPskuYizuzsn073hhiRt1wESBPdxhK7k1kj+E/9U0ofB5WmnGEKO1xYcQaItaCV5f6p2YM4U5
	rjl/dsEBm7R9UXanwUSq4dn8OzuBbdHRBbqmUhGw7bTidlwgKZYyxuzNCiJe79I6feZ3YZmR6eRuy
	Pz4xDEn8dMvTB2ydqW/qd4h58OmJaH32aauVkRW0fmuFf0lqDj+t0iIqcYbvgfb0P8VgNVWs6RtPq
	DJqtKlXsWIOqEcR74Syw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i82wx-0000FJ-FA; Wed, 11 Sep 2019 13:46:23 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i82wU-0000EZ-Cx
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 13:45:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id w6so16540931lfl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 06:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nP0S20EG8LYe+0hd/5mZu3tMCLe/Md3Azkq9J3MKJKE=;
 b=c/y2pXyG9iAcROZvJYUWXzj08AwzhP+UtUM6Zvf/8ps1wHhTw+scZ4stj//aj35eud
 RL27Bf8D2dJW7JcyiLA/yX5gfNSAhmDOY/1XugvUaPZe8EC6rty0tbvIVKhMaLf1+deA
 /zxHOrlv8g2hF8FmJf9naGJY8vhNwopQr/98tJh0jRzPJAelieRtB7xzpxf2KMwDJNA1
 ntc9M5ItL3dv3Hji1pW11E8+fEfTYqyzZwOI0yrKULS9G5ud4S1a9TlkGLj1+6Y0UN/u
 QKjblsTwYO3m8OoWh7s1DFbOo0levTzp7EH/1G2ufv/5StbeoAOjKtfyVUD4LUcy57gR
 Oraw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nP0S20EG8LYe+0hd/5mZu3tMCLe/Md3Azkq9J3MKJKE=;
 b=hZLGBETVEgMDb1yxHu3l0G61dNXCgtST1wXWlXBq5cdi6jxYXrRz5Hbf7YxjEbQMR0
 ahT2541Xo6ngG1Oc9MxVyz27hHFODmImyjEdcfTNKMpY8iC5Ra2g7XeFnXoXCFAAEPh3
 npH1w8YH0uDkAH8boi4hj25MO3wu3AmckLQ3FzGO7miDbLpvYQEwaeA21pyIima9qZBi
 JmCa6D7UUir3QdSPNpKLw32hJV2hEgsI1Sr24Zano3R0tC5OJJoGBtCK2mOlCwFEQqOk
 BM8XNCcBHPKeZwKrSeyXGw0YhA4G4psbGRl8fLFucFZI+jjF1JmOp17T8emzcB9IzF09
 A0UQ==
X-Gm-Message-State: APjAAAUnOoMJCVa7Tpw1K6bz0EOt7NxdIL+JeQSmVTDA3ckeHyl402s4
 57OqhNACKQ04oxfdLXYCK/+/pwfRJdbbkFCMFK5ymQ==
X-Google-Smtp-Source: APXvYqyjFpv46U3/SHRumoathl8NLWc2Qs97KoWiUJCJOU9xmtA6GddnV4DQQxnfIrpO4ge71BO6yrhZSpCiBINuM/M=
X-Received: by 2002:ac2:530e:: with SMTP id c14mr23463783lfh.165.1568209550231; 
 Wed, 11 Sep 2019 06:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
 <20190906084539.21838-2-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-2-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Sep 2019 14:45:38 +0100
Message-ID: <CACRpkdaB_cX3AZiCQVN3=P5C=ffQa1cOZtVx_g4b+ej458P6ow@mail.gmail.com>
Subject: Re: [PATCH 1/4] gpio: of: Make of_get_named_gpiod_flags() private
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_064554_449584_ED6CE4B7 
X-CRM114-Status: UNSURE (   7.33  )
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

> Since commit f626d6dfb7098525 ("gpio: of: Break out OF-only code"),
> there are no more users of of_get_named_gpiod_flags() outside
> gpiolib-of.c.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
