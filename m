Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CBAB0AF7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cHHkHNGtRS1MZkXhtBQMXGpZC617D+tsZdFWV/wQffg=; b=pGA+FkqA4iOz5q
	wAM4C1v5zMQ9kB81WQcmrZ6ECYBVFoXUJyNduzYh1wWap/tTQprfHJCEcTP7Svv8hAthXOuv1L8Vy
	UUNqXQpoz9PzgOip9OGjrOJ0Kw0AlPv0jgUksJgC1fw64NqatJ2KXmMUJITTtA/FpktFzTWbUV/FK
	kjaChLdjQj9YHEWjm1edq37SGL9VLqftD16ApeKphqZv1KKy3zLv/Mr3rYO8qfOqKLkbS3aGpkj/N
	xeQN1eLJU8SNzJsgqxJxobmodC4ry4lY+gbP8Aocq7+fBvk6GP0l/3Ao8uVQ4D1LJ8aoisX3dGZ/z
	3DUtxn3TuwgEpG/9zaOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8L5t-00059w-Ny; Thu, 12 Sep 2019 09:08:49 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8L5c-000596-Vh
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:08:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id h2so16339600ljk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 02:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i7J4PbmeH1oWO8W8ZajC7YRPfKxbxslCKwg9jxg+VhI=;
 b=wjZ7oJl201ebYkz2a4f5nJBzDw39KWVo2OQLkQ1zXvGCiTSdowLq/j7ziMwP1Rfjrs
 uV7gzQlNFSDiiryzutStPQMBshx949FbzlxiVoQdxywBka36pLfree0FoDtqHieqXZ9h
 LSgcUGWnPCzn38RtRhs/XPWLl0gNsZKoEPpWaZcCYDw3x1qSEcrPoXL0OXhYHOZ/VJCD
 o81eT3EXtrpPzrvnW31ZLOH9xKRQTKq2SpnvdemuVseN+LY2LrjlyZCHaSdpM+Nkqi8r
 dSpTP/SLeNoIUByjYSm41gQDDZcdiwBVHX+C01i1dKIRxJsM+9fV3vd+AvYEZc6zq6Lh
 pjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i7J4PbmeH1oWO8W8ZajC7YRPfKxbxslCKwg9jxg+VhI=;
 b=MmOAB2xvaYUt2X6/anWpk3FkQjjuRblkpLNm/CIb/iv5obsW0EFvjhtL1XW80nyaxU
 z4tK6SoTtq7uH3dBAbUny7xXYepsRQgOOX2PlhVgKu4us5JeuVhyp0PG8RDkIl07Uu66
 kLwe8Nf/kPUvLhRVtH6uaJyUEca4yGnRYhaS/QeN4p7hwGZ53zZtKuqO+jhNeNo9WQ2P
 khG3ftIrWNNf6O95oU7mGMcUQ2cJA7rmdQasBCiDeEd/9RiRHKOf1h+9buIIO7jg8QOg
 AxI1gt4DN7OgPMJ28E407GwWtLTwTwZipFQxZooFjTOcSKnwrpbjduhg0EBzwEqeozNH
 U6WQ==
X-Gm-Message-State: APjAAAXIYmK+tgPPAp/gGUCNFVLCtY6g8N6LQ/b8eiXH23jseIaN1nLz
 8tBlTLp1Jk5ayYOiwfCHjZirNGNtNkaK5nBIiVaCumrpSgU7lA==
X-Google-Smtp-Source: APXvYqycdCEjJhtO9F1hYvDSmgwKHe8g+Qx//eIozwl50NSf3M2ESWqUNchgPo7jVeCOMW93J0H7u9GmmXC1JnhgtLc=
X-Received: by 2002:a2e:8056:: with SMTP id p22mr20790479ljg.69.1568279311270; 
 Thu, 12 Sep 2019 02:08:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190910141529.21030-1-geert+renesas@glider.be>
In-Reply-To: <20190910141529.21030-1-geert+renesas@glider.be>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 10:08:18 +0100
Message-ID: <CACRpkdZ=NVVEwk=V8z4--t0Yjf0bqKrjKn0e8d7hKn_1-3xW0w@mail.gmail.com>
Subject: Re: [PATCH] gpio: htc-egpio: Remove unused exported
 htc_egpio_get_wakeup_irq()
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_020833_024680_13699BA2 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <philipp.zabel@gmail.com>,
 Paul Parsons <lost.distance@yahoo.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 3:15 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> This function was never used upstream, and is a relic of the original
> handhelds.org code the htc-egpio driver was based on.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
