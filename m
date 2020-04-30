Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043961BFA99
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHacOvIt9f05r0hGjxUkEaacd4MJaNDaaaDIBBY0J6w=; b=WOWS4FtrnV72m9
	0IDLA8WMwagMwmIU7Mmr5V4pPxVCZqBAxGpyrpDHGuYFFVnZV1oAwjm4UB/mzj4k5bhmRrsHDV6W0
	4+YAwrWcuqdg+h0KKmfEPvGW2xRIgnJ85X64IRrukIDXxdPIX+JKSHCGXZKcXiedQK2qABTM9ec4+
	Xp2J/GByXdbtrbtFFQwH7Dq5u7nZfz/dYvR69p4CpFhfh4cRpFNNjUfMgxoqBuoEy13IYhTwByHz8
	4uq9ntOrwqLQZwi+9nQInA/Qql4CsLqmMutu8jleB14uYPUl0L4SU62+c0jHAIXEKFK+IG2tC5wZu
	xT6uYgEO4kT+cwmxcOOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9eN-00035w-R4; Thu, 30 Apr 2020 13:54:51 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9c1-0001Dj-NE
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:52:26 +0000
Received: by mail-oi1-f195.google.com with SMTP id c124so1719359oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:52:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bx1vrsVZq+IbNA++2G08z1rg1sNLX2BQVibyI5UB8Yg=;
 b=otKbkJ5XUbSVBNdFeR8KDAPVQjSxL8VhZcrkXqL5YYerZDYtOT+gwUI3tgUS4RsgSN
 cwDwINmbjk7O7+/FDxJUICL9evY7T2MoUTUzy1r+1qM7zNd8rwu1VBr9miR8nK4+hLRg
 ZTaUulRAqK7E6Mfn8+jLCRapAembedTTNeo/MYjCZLC67xN6RkJRkm/5AU+snQKb8Wlj
 7un9YBRK7lww4qNja5lSt7Afm7GDe6V6bwRuoJXFHkEQakdfueEhCyNFileCgNgu7TVz
 WoGZT9TpwFZtws0y0rfzifU5HRfNWIUu+imJTzOSO+f/Rs6WoRousknBO5C5z7wzbkPU
 l0wQ==
X-Gm-Message-State: AGi0Pub5pAPa/v8zXl+3XWK51zgNOROCcYYtH/qG3bjN2VViY+XbV7sa
 ZT21sVxrRSSkhHCctqSlMPlw+axUwMp8l0NGKzgFrA==
X-Google-Smtp-Source: APiQypJUGpqJbnxexd7dqOJmSTBNVdW9VYTDdyYVHeV3l6YnMiahGYWRXjyWK2Vresb0767EYyF1hnGyTnD1yoW3ZW8=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr1848055oig.54.1588254742783; 
 Thu, 30 Apr 2020 06:52:22 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-9-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:52:10 +0200
Message-ID: <CAMuHMdVTwEFeRKLaK_0_xTkaTV=vVPtu7bhZPz5_UZ++L=n8rw@mail.gmail.com>
Subject: Re: [PATCH 08/18] dt-bindings: irqchip: renesas-irqc: Document
 r8a7742 bindings
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065225_801044_24DDCEBD 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Document SoC specific bindings for RZ/G1H (r8a7742) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
