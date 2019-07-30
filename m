Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FEA7A3D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2lGHOKSXF0fjcUT8Zd21YR635ffIQC3IxIwMZQrce7E=; b=jhXIyMGLD1nU3k
	lq6lTkdV0lbAt/80ySQYMPSM11nBTgC/y+QbAyVMKoWNiMPQI30XdHxwsnIYB5Bz5AXDsmhI3l1LH
	s9QVSlYU3CQd3u9wRLzI1UvEdXHt8ebKDj3dTgdYcMM78EFPZIZToMFxPuCBzFMOMPluzeoKF2R7d
	FQZosdAPdOuK5RHG04Act5eM2QnYomBk0cjhVYqOizXwhQ8Fc6D5UjhDUTJVdjqif74PVspsQxJeu
	kkZWnszLaRgH3UqRHMfF235c1x7xfNYC/wgAOPwEF+9lvpaM5bTt0epcJ7bopcLzFSdKaARRVCbnv
	xtfvB5eXfHAvoqOeZ5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOFn-0006lO-Nu; Tue, 30 Jul 2019 09:17:07 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOFH-0006hG-M6
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:16:38 +0000
Received: by mail-wr1-f66.google.com with SMTP id c2so61703898wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:16:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=j24m8YwIkgZoAdisYhIZZGOM4mMaO5nu7o1IplZhp0U=;
 b=Z5CQe5f1HiLHxyn/VZ9vRRwrWARKkzET9MQCv7T01xzHUjWLa1DlaS4++XT9acTYBc
 9BKTP9InKLddy5SMIiy+GUVpElCPYhw+1GQBljbYviSXKxCx3p0IrEYXQeA+paL+HNbK
 MDks/ILOdKisvuYVMLQ8ijpsqLlXaKADzyA4cvPJnhOO+rofpPsaA7O3quRIst2jMg04
 kxKgMFx6KULNA3Mp6shwriPkn59ff2MAufBjMILdj7B1szmfO1BrB4Kj2vcrisgbhETi
 hzTFW/2N1ljHPOjwmh2z6e6apIJsv5zMWDref6eod4JCwI201vgA71qubR4e8jlG5zOU
 vk3w==
X-Gm-Message-State: APjAAAXXTOMhIzv++vhwF4sx7kbABqkw3DgePrrH18F9Hi8tkEjTcMzw
 bkguT3W+IUxv3upvdsBTBnbIDJwV2zLdAztTfHX5l0X1
X-Google-Smtp-Source: APXvYqwU8JEsUchDDEfZuLE6iNBFbDAIhT3lCErFptAgr1wuzTZlQZUkINWxbixHAgGlmtp33fGA54p3N0plrr6Ei00=
X-Received: by 2002:a5d:630c:: with SMTP id i12mr38575833wru.312.1564478194192; 
 Tue, 30 Jul 2019 02:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <1563904928-2797-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563904928-2797-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:16:22 +0200
Message-ID: <CAMuHMdVGYLFmqayWa5oR9ggBrLW2+KDAJ8Wx8AjPjiRJ=-eZKg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7796-salvator-x: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021636_010535_CD2B6631 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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

On Tue, Jul 23, 2019 at 8:02 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
