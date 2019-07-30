Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D6B37A3C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+GbrKfdiZWsDDy9Ry6PeeK9XVjfug8Bc9ZVLatrsec=; b=dz7zcJmoMZ8owp
	ugvRBXiIbsKgUhpD00bxr/YfPhjeSqx9yxoTRmA2gO1PYOTVhaJK3m3DjwP579B1wVUaexhn8IJY5
	faa3/Dw/6zBMQewhRw4K8jP7hSSHwkqF1Lpubl4FLnTZYAu2PRileXZeh94TpsrdiKG9DUSwaCcRu
	uog7RVaHimHfHQNOKfXxrd77+yGaRy9bqbXHtl8EQzocJ/Ym/WLCEbPVcvK3wgdrH4KPf4lVr+uek
	dWv59pLkb3RfKo+kxbD0m1xPsuOU0rx1jkVdolayS0gOmrtiRS5JePW5BGL8VO4Xtf8a3HXhx82ip
	+hLY6DewFvx+8EV0PG0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOEU-00061L-Uf; Tue, 30 Jul 2019 09:15:47 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOED-00060L-A7
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:15:30 +0000
Received: by mail-wm1-f67.google.com with SMTP id x15so56410802wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bbMITpI9ih6oubekM+/8yvOIOsT8t48Ldjw0I9CwY0E=;
 b=s/8nXeZX6y4alUh1O7miQZuK6KFkEG1ROoW2LX8WqXYzYjx72YKt+U7yZgY0Aivg8H
 EOZg7nL1DJZiQq6LzgYS1GakwvPsSdklBm/Klcsr5T7tlDYAaFMPSAAYT9PGZCwvbxC6
 5olITQmhU/JcDt0FIfgkLeS6wOSyrqT6adeGJYvfB9KtqseU5pJQ8vEPYpGvzJ4oUO8A
 YdEyXLS3ztbNtL1AGoys4157wa+8WL/3qjZZGUhQQnZQu1G1uGJK0QbpJy1VGbsMpwRR
 HvGOwJsApumOOm3CIzFEyLQBN31kIPP7wcPb4edzE6qPzWN0EwLOMwQDbn/CHhpnMB5P
 CE6g==
X-Gm-Message-State: APjAAAWs1wfjR5CbJVpb+mX1mpgs/UgySp9yLz6HxAd2mF6Z3oeMCbEQ
 B0l7k8vnOy8jesgRE4OZkDc7AD4e/T1mCAG61/k=
X-Google-Smtp-Source: APXvYqzN98mCKmoV4rr2++jma1hFDr8aafGC97/FKFoJvBsh62mxPtdqhMJgzHzafWoI9ChLPL4+n+AeaRRX4NM0354=
X-Received: by 2002:a05:600c:254b:: with SMTP id
 e11mr97164024wma.171.1564478127904; 
 Tue, 30 Jul 2019 02:15:27 -0700 (PDT)
MIME-Version: 1.0
References: <1563816141-17805-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563816141-17805-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:15:16 +0200
Message-ID: <CAMuHMdWJ1sq0eFWZki6g4bcPKU4Q4bTRs-WujJA6jLCK7jYQ4A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7795-es1-salvator-x: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021529_359418_DCA1C619 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:22 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
