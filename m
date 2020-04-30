Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FFF1BFE34
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/pRVtzxrTds66ogcTRsg1ysKpttFNGwgf029lMdxGc=; b=Gr1YY8zXVVemdX
	WaJgTKj+fzZA9UzP51AQqqiZfVh0Oq/Jr5zk6fhvkn1gST0P9FIHe4L2TVv4sQucj2ggvz2M1NISx
	07xW0nCSkBASbYogxnEVQ4XVb475oXGscym+NRYJ4BXiVFBxjQKJNOhZ3+cQ6An1LR/OuNeYL1LXr
	rjkqWI6dbOOte7ev+w+Tl3LT+/DJ1Xmd5B43DK5ELWAIYepmci4yZRtT0Rvqfsde6hvU29xpGyPxY
	OVraOvqagpAS+/NhDgZHc97fhNEPNShTnzyJNPWStw8fC/ptOf3fU1WjNcrF3GZkf9TW+2JochJNY
	367cGoMes8oAuE6mMGIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAAX-0008CE-3H; Thu, 30 Apr 2020 14:28:05 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAAL-0008Bd-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:27:55 +0000
Received: by mail-qk1-f193.google.com with SMTP id g74so5807931qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O/0HPBsHNU1Zz63ikLSaiq1tEsUfgo674JZFS5/Kd2o=;
 b=sWXBzpUA1z3pMnOpwfaO3geIZgXOaCgwYXhRz+cEzD4csCFn6CMXqnmDXUekFDuFdE
 tk7oA9Bnqznnd0t2yXzIwz7lFyY5Aqb1/UX8ivfER0VOtdC8LDrTLKaE/YZo9QygJ0Sg
 +RtiRg9WiEhfXzhEJA357gPAMqzEjUwd6G7qKeXpSTjf5O6uTM8FDzjA3brLyP1a40XG
 yx7tz+OR7BARCr+jjeaa5HvgwRuDeMZZ/LwtP3yUEOASGQTynlaBXOA7hrGLWa8UTco6
 OYeNOC8nQq+bxJk83owqtWV3+vA5tFY4GT6BI6twFw1XAu3vaUq21MM4AcNe4irn9XH6
 u6Tg==
X-Gm-Message-State: AGi0PuYdPVF9QV5sWHc5BUYAnZ1FVbZeQUPDhn49b6pbiFQlarbDIDXL
 WaKLbPovLH/yT6TLmrbnNRjRbaNJpAbZ7YPpOsk=
X-Google-Smtp-Source: APiQypJ0wnfqNBtvV5DRJQ7B2RPuH0aK38BLyizTr8I4v1YozRfr0aHWKl2U/Ir3VfckqinVYAjVYSuNmzb4FyxwrlE=
X-Received: by 2002:a37:a212:: with SMTP id l18mr3494398qke.428.1588256872560; 
 Thu, 30 Apr 2020 07:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-17-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-17-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:27:40 +0200
Message-ID: <CAMuHMdX=Y49D+zP4-6oxsu7c1gsMbQC-Wb34uJqrPmxRxZp7JA@mail.gmail.com>
Subject: Re: [PATCH 16/18] ARM: dts: r8a7742: Add [H]SCIF{A|B} support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_072753_843530_D7C29648 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
> Describe [H]SCIF{|A|B} ports in the R8A7742 device tree.
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
