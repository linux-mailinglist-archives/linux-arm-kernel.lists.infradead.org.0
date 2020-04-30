Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 001AF1BF89F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7IPo/UzBZYhNWrCVjtV2e/DRtOPRRe/Z1/LhVNMLdY=; b=MVGwzQ7kzR+YoN
	GGUJsuQfFr/z4nmwM3d9a+bEh4WRH0QBLR79g+4EHI0ME5YZKpys9/6lFOV8Q9eeHUrzibjoZPkvk
	HUBoJlXhYdEM3jgVB5fNW89q86F+tRlulHikEaT4mz8IT62uDwpuK3ueaANl+IO6X+ZVjFTpYHXJj
	UWolHwhrCQNqq9vEVYN55qSnkh6YpGz80ZmGkUql90ruXUavSCLgnHiUCNB6slP6Ejxb9BkfrOpDP
	LwTAbcX1rQNdgMBnDj5p1mW4FXdsm8QxiSRFGtcxkFNt2w4j1PbcanmyHHMMfGoTrsXZrx4oJBGnI
	vUJINiRfOTXCN1JO1OMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8lm-0000Fb-Fq; Thu, 30 Apr 2020 12:58:26 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8lT-00009d-12
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:58:08 +0000
Received: by mail-oi1-f196.google.com with SMTP id r25so5110957oij.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 05:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f06O0cFyNEo5gvdIcg9Ddsp0/DFy3D1D3kCWuQbyuVo=;
 b=LcBIy9Te+b1oGXM35plf1ENcI50W38Bap2isMonHVvvfxpxtrAm3dPF2Bn/4FwHkLY
 zuM8XSxfFrkVT6ra8fOZIcIO+9S52EVVpXoSuuKlDStf2j05YUtngiiDgzTGGO2OrPOh
 qC6GyrkCGaZjEiVXkECXPxmz9TKv6EikfnbKIIF3Ax/4Mwvb5bj1licgmFpDY4QSy2HI
 dujp7n6zTF1H4W2TgId9Nah93J3aZs7AP6Rh+af8ZGzE1Xqhceop+Y/f2T1PodqRKtDi
 H1X50BDIo+h5Bpy8GHoTLTwJkMtQZPD94KLaJs0XvPeAok8vA46xhwSeecwoXxjUonX0
 dUaQ==
X-Gm-Message-State: AGi0PubJ9BoqlraBHJ6oOt+YV1RK4jBN99XtXVo8YnMNQDrANvd31zT4
 XR/Vv3UbOpzR3h/bdGL7XXFVzRE5Hg6/d1PNWfk=
X-Google-Smtp-Source: APiQypJ96idTKZgifmCnQ6wUrxkX/7Ep3RkgKRx5bDPk1I41cxrwHGqHte5K9ORdTBr3+oxbhTyMJGSH5dmCUBLUFsQ=
X-Received: by 2002:aca:895:: with SMTP id 143mr1527059oii.153.1588251485338; 
 Thu, 30 Apr 2020 05:58:05 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-2-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 14:57:54 +0200
Message-ID: <CAMuHMdWEo9h7HxePSDXbzVvqfdCsUUgmZ3rvuYjA2g-kqJWYWw@mail.gmail.com>
Subject: Re: [PATCH 01/18] soc: renesas: Add Renesas R8A7742 config option
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_055807_325590_F3EB1979 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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

On Wed, Apr 29, 2020 at 11:57 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Add configuration option for the RZ/G1H (R8A77420) SoC.
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
