Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E521B991E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LudujWAuzZlIBOJKKFFfTgOwnGgcVC03oVI90fBvO4=; b=oY8xGjV3y3ZhxV
	AQY7Q6Ik/6e8HrJU4AT/PII6hxdbatpelgvEeqZuAkx2OJ9YuvPKHNWBziA34D6AcEC1PknCH3gAt
	XWsAOx0mOPuNzuQHn9VV0YiSykpveqIkTIA5MdhobTYUggkV1x/6QqlK2ZgDMTyp8RYL7yZ7Dlju7
	eS+Qbw9qITyQHBzwKsYA1qQecal7esddmS3SsMOSa1s7iiFAEFXaHeAgX40S2WgcCRZ9G1EuAcOnh
	ohQPScpIjO3sNsJZqZQjjOtFpaPa5kDPKMPRTue9W2Jcy2H8yGKSs8jobVA2PkkPIr9YcldPugK/W
	G6OlcEXbEh+T4dy3fKNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSydQ-00036F-Ck; Mon, 27 Apr 2020 07:57:00 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyd8-00035X-OQ
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:56:43 +0000
Received: by mail-ot1-f66.google.com with SMTP id z17so24720928oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 00:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7UMvg3SgF3Z/vg+y7g9jGGsKrtnmuAla9KXreMTQAhI=;
 b=I+XtikgbtMWAC0ashRESUgEEC+hbZj8mgXmaWJ8ShKXpHwB+0utEGXZyhbFziyKZ/1
 lYqoNfP3W17ZFOWEY1+Ok8PnDTIRllUSR+l2AfXKAc/plBt7VKWF/dBXNSJv9kMXnNP8
 LntoxV7E1d3Lu6aGAtDSaBTQRCtw1rv5AxRkhSXK8WZnRebBlKGQzjhmHMQIpJGW0iCK
 dQTg7TZn54qUpVYIGVgYvx9lZUQNv2k2rj+wCa+0Y5oSUI+CbVTRzMAvd5wBaiw1LiGq
 GQGKZc+f9dt8esEUiwKx0IBscm5b+Fikd32xp/RDL6t7I67SFpsrge/vyTr5KUkhbYeP
 62Yw==
X-Gm-Message-State: AGi0PuYaD9ZTKAnHEsli7nJLxpLj9p0tm70/Qclzr/RyQ1FwIxA7wrvg
 Nz9MuRIlnJYR02cFFiRQDI0VYJY5OZGqezkPwmI=
X-Google-Smtp-Source: APiQypJNiorFwGFtTWNfHeU91mJyq8jOtGMvHi4yXmBXBG6sADUJLDzy6CgqP6gm3Pr5teIV3//DtSwqQxPpDR3DXq8=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr11386571otm.145.1587974201140; 
 Mon, 27 Apr 2020 00:56:41 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-4-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 09:56:29 +0200
Message-ID: <CAMuHMdXQdoi07dhYeb2qqCTEuNN4xzVxA9sBgi9F+1tjtaHe6w@mail.gmail.com>
Subject: Re: [PATCH 03/10] soc: renesas: rcar-sysc: add R8A7742 support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_005642_790679_1A1BD115 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux PM list <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Lad Prabhakar <prabhakar.csengg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:41 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add support for RZ/G1H (R8A7742) SoC power areas to the R-Car SYSC driver.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.8.

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
