Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DDE1BF8DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47NJGOB9YuHXuGmfq3xLco1VUR2GjMP9X3cBDYuUgEg=; b=LXxikkk1xfTsvC
	3jw5lkj214eJx6PiUyg/JCrvmXr4hqkN8ZIX5E2qJLdkb1yNYq79do4BOK0SZbnml6ELBghdY0M9z
	ea+FZNSWnDpWG9N+j7ghgB0FdFC83bM3yDCSX58G9xcSSFjKk60WK/uKr36UeglBo3iSi6YfB1ueB
	kHIhz3q9pOja0um64yCeV4CxVRj0TydAZSsbRPCTH/yGlfpvaamVxhhuWNHNPvc+mfst78Py3kA1d
	z/yaDcRq6MMHqmGD4/Bzhf/40pt/UdUObFAAJ8Sdv/7vQIr1GFSfQSzDiQoaFCxyIuOF16K8f15tn
	PUMvH9o6csGL9IQPw4qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8rd-0005M0-Dc; Thu, 30 Apr 2020 13:04:29 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8rR-0005Kz-8z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:04:18 +0000
Received: by mail-ot1-f67.google.com with SMTP id e20so4768593otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:04:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p8uSpmhwBDQ1U9t+PlYqOYkuJzr7dXp1+naCrrRJGfY=;
 b=PAWDMbr7ZPDmDfoJgFSP53re68jSNNZUV2Ji1E6I/339Q14aFWs5RsC9o8M1QQVIZh
 D/qczq/WdTjwj40WKu3foPY064shkBun/G7zrSMCTC223a0GqfO+dtn5nVdXvIar3UOr
 ujxFY1yauy4kKcUfa1gBnut6G4JQMaTovsflUCWkrCN9iFI/pwh+pyGAUOdFO2bEH7/j
 ra/LKPuCD7MgPilZAi6LIWv752ImtGTQOkXtkbRdr87eXQjzhCXeZk7qDD3X0pjTgPSV
 JpwchdfYeYKEU8EOKNPBkNDWy5wmxaveNuFaiBbyyhjivwXjs0mUHqOLmAUx6qIqjc7J
 7IfQ==
X-Gm-Message-State: AGi0PuZe0+vIENFwBzcNqYy1EXCCgRU8mtDhYLnnSw/ZmDHNDjt6yPLQ
 bD+hVFMz7P61y6S+pD1LNMZewtk4hH8AWd+gTXdmgw==
X-Google-Smtp-Source: APiQypJM8NPdDbTWm6Iu7eFmwUmgJfrZdKrQ+XkEkbx+p2+b3lqy3IQKLn2ouBNMfjTTCkDtqDWWS/OEgjBAfo04W0E=
X-Received: by 2002:a9d:564:: with SMTP id 91mr2433669otw.250.1588251856441;
 Thu, 30 Apr 2020 06:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-6-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:04:05 +0200
Message-ID: <CAMuHMdWDFDEYtD6kW5x96j-fwpkxXeaoOvXZdF1Ex-zaT+zANw@mail.gmail.com>
Subject: Re: [PATCH 05/18] dt-bindings: pinctrl: sh-pfc: Document r8a7742 PFC
 support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_060417_307794_336032CF 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
> Document PFC support for the RZ/G1H (R8A7742) SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in sh-pfc-for-v5.8.

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
