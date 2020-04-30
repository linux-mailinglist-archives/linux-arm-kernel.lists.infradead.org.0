Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 308241BFBA3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPtBQd9oCv2lcchpSbP3Ooalw6OvyYLvgtjqu6gQ+No=; b=KJy/HzypQeKWUg
	OovnS4yGFpOC+mva8/ldLjeJNwBKT2kErpe+09oZ7X7+clJuz0xESfT/1aC7REoT3nnAlsEDYee8C
	BHHHeCX2WwueGpFsb1jRs+SgzMKcLrfu01j+C/dl7syqG04mlSEvDXl79QMPfE9AdpRrO+iDnyA2V
	CGi2AFzALYgsVh/cWTRWC1tdlbYKwePQQAmr2qoiLpCS9U1NguS1xjviqYsoF5nun1o0GKvhBzjfV
	CkTexynaR4L53yYvZygpRdTqUC73Y9VcTasBb8utbmpU4CDMuJeCArzbDHb8FwwtpEL+nIzXJ8OCW
	FkVNjRHZLKqnqLwTINPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9kh-0003uh-Dh; Thu, 30 Apr 2020 14:01:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9kJ-0003gn-1W
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:01:01 +0000
Received: by mail-ot1-f65.google.com with SMTP id e20so4922261otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:00:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=56+hnJF7fvucpKqv2sY0gAy5FVHsLurCXmxr1aGtcTI=;
 b=i7zqN7z6WJnv7530f43v5YPxtDtKEpLcLZjgLRtHSn6aAUOI/DQCqcqI2NyvliBX+0
 N9OM5AyHdC/Y8T53iL3FVjJL6WYUJpathqqfTYB79ozI5IBmhcNx0GKJqMGgUcV6PXVj
 P5ZstwfKtIIdn54MNDPIs0d6zk8LQKDr+g/BxyNfPti98A9sdFd2H6Cjmeq7lUAnWbmx
 l6tRmMarI+uA0P7oYoI0riBKGh4Hccf5AfeZiW7y5qyjoo4M4adU3YMgGL2tDmSnY6v+
 VnAVf4z+YzZvoqkEGLWDQNTNny9WDRGi+gaUi+VpVWucR4I6IZF8p4i5GlEIK0iAcLad
 2pIA==
X-Gm-Message-State: AGi0PuazDyOLlpAoJcX0Ty5FD7j7da4OUKB9mMIYxDwR7V9WCPRfpLuK
 C1/gi/CSFnju5Fqw5CyASAtxZmQB7WT6Rj4CFCg=
X-Google-Smtp-Source: APiQypJ6KaeAGcTKjVOK3+7+brBeC98O0eTIIpFYmbi9JxFQKsEFhK22k9egoZvh71YGTW6h2ODRjWwTyt+WgWUnMsc=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr2561994otm.145.1588255253287; 
 Thu, 30 Apr 2020 07:00:53 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-12-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-12-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 16:00:42 +0200
Message-ID: <CAMuHMdVn0j8fKD_LH7gKBadjA-g+eNE1=Ld5M+8=NM2VKt-HCA@mail.gmail.com>
Subject: Re: [PATCH 11/18] ARM: dts: r8a7742: Add SYS-DMAC support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_070059_213341_AB5D390D 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
> Describe SYS-DMAC0/1 in the R8A7742 device tree.
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
