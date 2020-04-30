Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3D1BFC1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tr95espJz+Zt/RlQcMTyrslnQxMuk6l2i+UzQNSZS5g=; b=uyyZ0ulmZUac0o
	15h2UAKKfsyn0PKN6n7cWAM9O62mdJlSZ8oWsnfQxlG3EeHP2YvNDkQdNihuG26Wy1RwQyMyQS/da
	3OSH2UtTwEdtrMgQmCKqHBdeSKdSL7kCVd94zZhL86jN6qJ0pBkK5dHv295jMqPwjfpF0keBpWxGh
	WihPEzgOw+8E5R4mBMl8DYQ0StNYtDbGi0XIdsIfp5PXmUuo/OEJxl5RgO8YiENyhZXQ34ZORejmK
	2NCcCPeq8n1XYrv47ScvxMj2tcTv9QwBuynmagww5vaFerx8lZd/x+LJuNihKqp9jM8CMmynDkqPN
	wxxAmjdBkVPeDNKXkrvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9nC-0005tH-L4; Thu, 30 Apr 2020 14:03:58 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9n0-0005rb-S8
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:03:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id t199so5298879oif.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:03:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x8sgU1Szr34IsxXbirpuvDaAZhkCI+krBrR2ZiJePQw=;
 b=iR3Zc4KRYbdQzuc6I9X6D4JDLoubn9TWd+n/uRBYn950mBloni0mWCXBERjsZwWYMY
 8/JpyHnNaHmqYOkPfDxRLbjk8NEvBXAKigROM1Yr1DBx/ZXTfEqxmA7ssunkCyBnEumk
 ozN2iyr+oPNDq4vWHhC0rITg7PGyEx3YqeZ/GxJXiKBUuQj4PL3kair8KoAkC0h8Rnxn
 2g7qYs0C6g4iiO73H4qEU3MwyLluZe45wQqMXBej06hZh4Uk+ReljYdIt8MnLbZedh3Z
 +xe4UDvaj6YXC8MmOtIWOkzTSyVxVV+gKhr/iOaBuaI4+dSVlJPslD6+nGdLicpk+SHr
 QdaQ==
X-Gm-Message-State: AGi0PuZi++hYVHxHltt7eXf010Wyx1QiUEv4x+4pfXP4EeKcavjoOtlg
 sp6Jv/ikUM1QvWwvOiCQ6LbnvukFdRxjDGYdjrQ=
X-Google-Smtp-Source: APiQypL9xeeJpmuZvM5tql+5NXWQ4pW6DcMEWufc5ew+DxYHUpQs0+qo6mOBm2fIsWhIGQsFkQ29kQIrXYqgOowhF2I=
X-Received: by 2002:aca:895:: with SMTP id 143mr1766140oii.153.1588255426230; 
 Thu, 30 Apr 2020 07:03:46 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-16-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-16-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:03:35 +0200
Message-ID: <CAMuHMdW5UPVStDUHK_9eYEwAnRiCxCBshLPCLeoAsxuhn2LXqQ@mail.gmail.com>
Subject: Re: [PATCH 15/18] dt-bindings: serial: renesas,hscif: Document
 r8a7742 bindings
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070346_909988_DCEF73C7 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
> RZ/G1H (R8A7742) SoC also has the R-Car gen2 compatible HSCIF ports,
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
