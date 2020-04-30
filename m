Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB21BFB15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+9gMg/3hksNqFq5XInZ6o+XsfosGRA4Z7ewOLcu8BA=; b=LCsLxxWQ5QR8yS
	cbYX6wyDo3pTqUFCsGV+GGZzSBbXfxWojH2/ZYvll2O16qMLqmCRq76hohrdC9mwK1R6IamNwub1+
	zUAYrpe/VPcqzMB2nL5Hrtmw9zDeehsAQnZavFA7xCtGhkjeZRKmUob+CGwdfdFZv71NZGTM2h3oH
	RjUoODKHHiyPOT5MX5LbX8RbqpYi6Q3bADE2IA2k6/MoP4UWjaTtuvvp/KLBeQmGK2S1+JWppDwsZ
	XBn0cDFwGkmngBs+1DH+YfbSfANTgIw7jThoqQK3d+GPO3m6uyxgGtDyY+F0zN2LKciPVI+ZPXlHD
	wxTKEYEyFw1S4Jr6vM4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9gz-0007qV-87; Thu, 30 Apr 2020 13:57:33 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9e2-0002xB-TW
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:54:33 +0000
Received: by mail-oi1-f193.google.com with SMTP id m10so5255988oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:54:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lq5yotINN5KYJUar62+nHe1UVAWw3VsyL3e2P7YS8BU=;
 b=Dap/lT9bCG1NVwnffxCNrYFFotM0Rb+pRDoo6cOL3rDY1RrSdaITLqMSeakyXvkBwR
 HX+4rnO2fLDHymA3CMXeZf7gIV5aq3eDRWwr9p4AylGJH1Yb+7JIDP69hfuxW/suC9x0
 BfuweVvnVVtcn1WZ4Zbk8ylelPrFTNL+Dqqe+E212D5deX2JOk7SdEDdoqZTYBeQdnis
 C8ZwK1EnI10BJF54Q7Rum6Bh2xQbLSqwln7qn1bOS1BC2qanv0II8wp/MLQXJy24jbkc
 D/+RTCJAlnIP/g81z5t2mLWxS7x4suFecE8IGEsnNk+XFFRcBsk+em/D2kygylhdPUGQ
 BR5w==
X-Gm-Message-State: AGi0PuZQmdUnwASQnMfpQet/dW39P+rSSx8Tei9nup3zg8J8Dfq/qzDt
 VQ2papAriK6vOchrGHf0HxiXb63GIb6bRCBCYBk=
X-Google-Smtp-Source: APiQypKSH2mk4TQbA0Ak5zrv/RbXfwp1aRhXDsLXfDfpPXjbsGxuhUfYCkid+vwSbm4NVFRKEn9DNNlyvrMRml/YzRI=
X-Received: by 2002:aca:f541:: with SMTP id t62mr1735443oih.148.1588254868374; 
 Thu, 30 Apr 2020 06:54:28 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-10-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:54:16 +0200
Message-ID: <CAMuHMdWUYU6-S+EhzTKE4JeS2ExLQcsg_Bpy7RKD+cwhg55M8g@mail.gmail.com>
Subject: Re: [PATCH 09/18] ARM: dts: r8a7742: Add IRQC support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065430_985842_1C807BF3 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
> Describe the IRQC interrupt controller in the r8a7742 device tree.
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
