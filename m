Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA9F817C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:02:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q1X6O8/X3rzSqP6TBHPjOZqj3JDmJ3Cdb5MKlWlS7zs=; b=Ht/ZZDraSdnBVP
	VQUUn5oaRasuoHObgQ0eLs9FZ6qXSX41RJylVsK4QQTh4N6VvmqQ9hJFaG60X1XW5RS8W+y+Rioxk
	R+TT+CEeEypsWYKpvhFuOB9u8FWq+dbLIwpYkIcKnzolIppfgUEF76pc+BJdjW+a9vTZ6TCJILIJt
	xKXNxCcXwXhzN3BmNWryhP7Dn/Wdo4FvmtjvdluCScWSWz/Vq5UltF7YOXhOlBHWxTdLHff7EViwh
	GEgFGetE2/dMpDrB56RHpM8Kva6DzFIYWMuy4vKv+gnEwZxaGy8ZU5tIVDBGf9lVVgDrGOERyjS7d
	JvEq/HY3gpFQXTqsxqyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huakW-0000po-Bp; Mon, 05 Aug 2019 11:01:56 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huak7-0000n9-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:01:32 +0000
Received: by mail-lj1-x242.google.com with SMTP id v24so79065621ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fm/51dNbtT1AoRASq2ygNjUysJb63GrKj4DIaeO9Ghs=;
 b=Z8iG/NmUwQ9i+AFPGL0ddsR7h9HdoT1Ttt4aAmnHZDClf+igwc+gtbzhT1Nba6laaz
 4v+lLXov3kcW44IiefLKXkqGZ0yuj65ZaoQH1xsIDTxVVx6PdeRPrb0G23ULaT1s3B73
 FnbYivp3DueW6KWrElW2wZyrCEZNoE17ZGX+l0Xgqb+T6uyuMxBLjAVT1EhECFyykqMP
 4hMexKxJyF51cRbhjwTJUHNkSOY7XU+9Rtg3U6C8Ue+jfe9xi+seEkWqvxpg82U568yD
 yrwwkO3XsZ2ZcWNNAOyRt3Qkjym0FpXuwC2i0NE4N6FMY10+Xzi71jIhC5Lugb6EYXpJ
 H/uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fm/51dNbtT1AoRASq2ygNjUysJb63GrKj4DIaeO9Ghs=;
 b=W17axU4WPCDusPpjBr12Yzlyvs6sPWJb+fZJjvd8TygERUNlUPBHx2sa9NNu0NNVbj
 QaIrqeD5wVW5AcsvA4Zqh3IRr0hU7pcra9PPtHraR/OYLx30meF1Z00MKEuDPhd7MqSn
 HdkOZHT8JBnZHIAYf1KftuAU14nTW74pj3DSriq5yqV/DCnJTw8pf0VJuGHkw1PDoIqT
 4m/7OhcEiFHtDc+k4OfFI3sIFgNcFhCcrlDcaVoscKdTNVC36V4u7uJvOXOlbk5AQ0kQ
 wy/UdCjqCwOQ4JW6lY/npPD5JieMhxYN0h7wt/8n3m/O/PRwJMOcRvkOA5pELYecovDR
 yYGQ==
X-Gm-Message-State: APjAAAV4edDxZ1VvFxhqT0dd3WTin56N8mV/2oJiXQ57n1P+qLH0K6vQ
 GAjBW8fiMYnKmB1MmolZof60zh4MLNyy7AZMJ/uXKg==
X-Google-Smtp-Source: APXvYqztNgDE8wQq95uC5fqxtY6tG66NjiEC9RCu4ZI6X3zlaBRtnAgyXqI7tkIKROGOxKhKMeXnW2M6REnOxYZlfSY=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr16524273ljs.54.1565002889640; 
 Mon, 05 Aug 2019 04:01:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190729125838.6498-1-narmstrong@baylibre.com>
In-Reply-To: <20190729125838.6498-1-narmstrong@baylibre.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:01:18 +0200
Message-ID: <CACRpkdbssrCrs3n1tejA3iLnUvCbv95xt_ip1Y8gdCi1RkJgXg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_040131_186309_68240DA9 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 2:58 PM Neil Armstrong <narmstrong@baylibre.com> wrote:

> Add the missing pinmux for the pwm_a function on the GPIOE_2 pin.
>
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
