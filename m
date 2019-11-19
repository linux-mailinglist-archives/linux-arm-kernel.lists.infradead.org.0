Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84471102753
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOCGnECWSqzFHYqjXzKIjY+5JSKpg5l4TOuqy5lS/Eo=; b=Bn6DV1MGxK2XVR
	NPPHLee8HEwjJYiWEefN//OIVQm+0vy4rSJGE0JQzRVXEw1ShkAl3aEfFOvbuyr9ffQWPYlBnuq12
	88artIUBnwESqjhk2OS3/F1Np0AUcbItw/jFb7Z8CSpJyVbMBHhY86gvPfjHJZ4j93QrgKKzoAwxh
	MuU2NUMEaBAnBwLaAPMYsvHfN2FOJSXxvIdIAXmifLDhF7aSMqobPYm9lqfYXvsQyxkmRqGNXA3Zo
	YGxhJmMsdMg7vwX8BaL9TxjVEL417RDj4FqmOXDzhva2YJlNrmWTFaWHh3rDyKu7M9MHV0I7PaOJB
	27hm/WXZtHoAS2sp8WeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4pc-0002ga-HK; Tue, 19 Nov 2019 14:50:16 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4pP-00021Z-03
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:50:04 +0000
Received: by mail-lj1-x243.google.com with SMTP id y23so23632877ljh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 06:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p9ZQjl9wnsKAB3Zoo4F9RgP5GlFui/VJLm448ki3rBw=;
 b=vCkQI+d2K135zgtVt+7P2PPf2Rpc8MsPNf2WQPoLquYf8/L7drQL26yA9UAHUJxyqh
 aKyvyc75wnsr+ma1wiqXJ28O7DcQeoghmTGnmeg6tmxgbkomWa7qrTFwKgugNxbViahZ
 kPSzFfDpFONKL8bgd1IQ7YFuKo0p+8SmIY120vbz/xGiZYeNAb/dy6+uDZ/+oqOOAU9r
 zdbkv1/RT9QnRUoMm3iZmlYaLHXZd12EB3PUjcI8ua5L2tpxXDqulpQ4+XhSf7bYXxw+
 Qh6faNWjS2YKiAay4R9dTNE8C5ccVZn4fFaOhZ4l/oOx3/9D/eyfzJO0TazR1CnydRmE
 HClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p9ZQjl9wnsKAB3Zoo4F9RgP5GlFui/VJLm448ki3rBw=;
 b=IUSCft97zcbI8Mf1+re867hetZit+2zGjVhVI8OrzlSCRuqgK8Tq+tCpBRWGfeAHHE
 j2Z36xjGeDdW2CA2GvDYFZMZ0uoG1jUgcmX+vvduKHm16UtlSwOWWEfu4zDJOdQ9K8vq
 tOYIEcPIZ5KhEnIXvN6WJmMD7cQPpt009YFJKnq8lClSblUaf0qgJn67b3CZKLAGgHQ5
 ifEajYOvDrx0BViGxbiaJULlNykRnOvRQdztHjNR4YlAPL3Nzjwn4695OXAmN4o6YAYe
 GXH7+2RrqIeh0wUsFEY2khvijOZdglVzDMHBMAH/XdaYJ0e8b3Apd5I2uWJC2Oxx24FQ
 oHaQ==
X-Gm-Message-State: APjAAAUJ4EgPvY9EefH590FLS2zVymbB30MrNvvfGROg4Csnyv2kucym
 MyuE3e0EWPI5GfGOCbtUvJ0fYXlmQpmSJpLMY1pTGVsAics=
X-Google-Smtp-Source: APXvYqzJgWBhYdXEJT831ipF+tbS7McUT2nhsFOn/XLqq39OkcEoN7fRPKqD94tKrLYR0spiriWRyeFk0XTbbtftwxs=
X-Received: by 2002:a2e:9784:: with SMTP id y4mr4328823lji.77.1574175000780;
 Tue, 19 Nov 2019 06:50:00 -0800 (PST)
MIME-Version: 1.0
References: <20191117205439.239211-1-stephan@gerhold.net>
In-Reply-To: <20191117205439.239211-1-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 19 Nov 2019 15:49:49 +0100
Message-ID: <CACRpkdYZr7LAZ647DP1-_OPxE7eRnEDhfpMbL36XnELHcc4aTQ@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: nomadik: db8500: Add mc0_a_2 pin group without
 direction control
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_065003_057353_DE079841 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Nov 17, 2019 at 9:55 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Some devices do not make use of the CMD0/DAT0/DAT2 direction control
> pins of the MMC/SD card 0 interface. In this case we should leave
> those pins unconfigured.
>
> A similar case already exists for "mc1_a_1" vs "mc1_a_2"
> when the MC1_FBCLK pin is not used.
>
> Add a new "mc0_a_2" pin group which is equal to "mc0_a_1" except
> with the MC0_CMDDIR, MC0_DAT0DIR and MC0_DAT2DIR pins removed.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
