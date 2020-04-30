Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CC41BFBFE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tGx/hgsUriT0y1veXaxS8vztWJ+V7DqL9dUofcsm0qc=; b=nZh4DPcXTQD29y
	A4Yzw85+g8+oG6WoUMe4Okhy/4udIwK+Vok/xRJxUnpz99SbvzVOqk6DlAbe62MIuELCXSKKSh5VJ
	TbTSoMeNrt9BBewvfasIU4SRj4K8EofXyv6pbFjHRqlZ1owipRBNeprSugidFMIrpe02Ejm91JRKh
	wT8Y2d3kzcb03Ecp8dTdafd6t2ERnGyPPJWs/fvDUtH7Q5T2UNlEwtZcBZQqdhTCEz7I8OJ6EPVDw
	Zc3jDWg4Ax4y8lvJtIeM9HY1D+o6TWvW4TC9ua7+YHPKrQTg6COUK5umCcXrDZibiHAalZWVOJgat
	Srs90nXLdSBbx1Gm4GFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9mR-0005FE-5s; Thu, 30 Apr 2020 14:03:11 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9mC-0005DJ-55
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:03:00 +0000
Received: by mail-oi1-f194.google.com with SMTP id o24so5322278oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:02:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sJs/ccRnc3IpftOPmZxsp+U77POq5aMrgerBg7OaDG4=;
 b=EncgapkFW/jMjti4avYF50xDWkKM8s35dOJU3xM+QROUAOtJSoN0X+3I+HnicB0IQT
 sFPrrFhumGdTtb/Sm99rw5Xk6i1aHrKzAeNxi+ZeEhm+EaGcg9RgZwoxdfWRGOt0Hav6
 gUo86rfKny6T1Scw5T81ceCJY12fqBuVhqJ3Y2Z3lWB/Q/2Zj3IZLLR5gCFCOzRfq4b7
 z83C+Q7MKpKaSB89cV9+lnorlWIlVqR+z43GgN9IsLpHeg+Z74LQsT8mRVAbdcOExFpo
 w2g+gXfXoh08YleXoa2SLG5EB57F34zphGxKlcKsvNvUAiNHX3+bxw0WM+uDUIE0bsXc
 rpZg==
X-Gm-Message-State: AGi0PubSfsymuGm6rkmcSW3E12cWDQrOK6z4b2NzFE67TkjiIpD82AnB
 p9lHWcPBxWd2vywRNoAP6o+0s3JE5RhS1auKOV4=
X-Google-Smtp-Source: APiQypJ0gb+RTtB2XK9qYeGrvR6ZbhTKXtAi0sTZFb9b/YKzwx/yPxkzE6lCQbIOJJ/J3ynAVkE1ekKFQSCnJOLDnKM=
X-Received: by 2002:aca:d50f:: with SMTP id m15mr1887761oig.54.1588255375518; 
 Thu, 30 Apr 2020 07:02:55 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-14-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-14-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:02:44 +0200
Message-ID: <CAMuHMdU4zynHLhxte4gHRc=G9SvcX0ghwZtFFOdN2Vp5x1=hnw@mail.gmail.com>
Subject: Re: [PATCH 13/18] dt-bindings: serial: renesas,scifa: Document
 r8a7742 bindings
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070256_193003_4CDCDB15 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
> RZ/G1H (R8A7742) SoC also has the R-Car gen2 compatible SCIFA ports,
> so document the SoC specific bindings.
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
