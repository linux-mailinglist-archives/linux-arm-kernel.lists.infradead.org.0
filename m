Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA8B1B9935
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:01:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WbvC0yKEIntILdkKOaT1Jz1oVcyMY96sQxYDJGu8xlM=; b=hR8B1VSPtA8NyI
	97u5QqljRScLAzm9S3Brpf4MZhPDQMi7V/HW7yorQJaKkPKqNlSGrHpXuYSMi6+8DH6ATUp8NKzaE
	EmKf/1vbCMofRhE8qNjJm2vWumpk7TVmKRl9K/OlBqBP18Hv2w/8laa2yLn/l2+9ofUkagERIwcNX
	urDmr6gnOEc9Hg+mK2zuXKG9RKnVyY49wTWLdmAClngjn14appOMxGR2lleTxpj7tIxlnkFpfqDxj
	GrpXnfklaExZ6Qeleu96V3ien3U6dCYW9t9cU5dC22lzmeK+1sz1zi5Be1bSa9j6qLsA3RzIeGxIe
	OLQqiutHTwMU9XPYJsUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyhR-0006mq-MB; Mon, 27 Apr 2020 08:01:09 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyhG-0006mF-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:00:59 +0000
Received: by mail-ot1-f66.google.com with SMTP id m13so24654706otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X961gX/6KGObMSFw3QoDIqVYm3uZsNmN2X2162ARhZg=;
 b=rauKOoNdHYdME7vmVMKlW/hnjtMhIuehpd4WW5oO7htNdq6IJSYZZ17Vhe93lz+pNe
 TvUXfZtEBJ1tb9D8P7zGFoBhYzBThwpqzz5+0S0h+h81uTNQWwhskidfBOriYIwNbd3r
 udtZZRo+qDmFy8Gm2o0+iztqGaZiWDC/d4IsPf/ZOWCFCT3N77drboimnS8uZJN7pdry
 wHZfEPsDPMhdGWtKKBaD93w13rTQqR6p19AfAJCTOBJ6N3Zv4L/Nc1Ccm51i912AOFe9
 DKDyPdPAroIaEGht9EezwnRvgv8ma/NE5FQnwJgW15Luzs+z7tLyHGYKcoOqR0l2EivD
 qK0Q==
X-Gm-Message-State: AGi0PuYGS3fFp0Itm8DX2yZ6YAcKZ8wAEGHL1FJLn/u263yTbyScU05K
 vnsjDuZ894v7iuJdKmiyOpjaSpo+xDaqLsrMjl4=
X-Google-Smtp-Source: APiQypJKU/j72BSTwKd4GmflG8egi0AV4Nl6yPNfO5elzqOQWxX9qJArYB8VHjspyZ9/XuD3IAIBCboIdRj5O8UEkS0=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr11394398otm.145.1587974458189; 
 Mon, 27 Apr 2020 01:00:58 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 10:00:46 +0200
Message-ID: <CAMuHMdW2Uj4TtcBmBDo8+69e7xoYKT-Kesznrv+kpRgp1v3z6g@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: reset: rcar-rst: Document r8a7742
 reset module
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010058_816590_C4B549C7 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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
> Document bindings for the RZ/G1H (R8A7742) reset module.
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
