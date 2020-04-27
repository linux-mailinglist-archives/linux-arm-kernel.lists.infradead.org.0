Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBC21B9A3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvqiu2RbNKZSl6dGh19bASvcO/ZJPgHrjPWb4msdoU8=; b=A4dY4Xc9Abmv3v
	JhoW7h+BpdPSQ0lQKyAjleILBSGUw296Nw2LzO3ticxx93ad327SN5yffYnffHOx5PXLkvlbaXJdh
	dDlEwcfVeQkf2IxkLv5OSi8F2qLBMWswqIYUnLbBxz44BkZadEmHd7W+tY9hyB18npD3OTK8pYqcg
	OeMtSILVLYkxHx/NMu5Sy+MGtsgY5hXDx+J1Myim4ykd3Ym4fRPU4n8T+U57li+i8TdF5B+JruGdL
	1507xbivZgvHY2XLj7GNgqjZ2xvYjtYqoMrohyWLHgbDBQwYOWX/B1ffMY3tiL9xzfv8MkYN/fp2n
	RS4FfCRZmasyZTn+GMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSz9G-0007u8-25; Mon, 27 Apr 2020 08:29:54 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSz6I-0005NH-7Z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:26:51 +0000
Received: by mail-ot1-f68.google.com with SMTP id i27so24782748ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ihiMp4vbxc5oIwvcnHb0LN0vARvd9Ooni0RPVOQhxkc=;
 b=B/EGrr3bUzV7x/f/TM/uYHjtl2t//puaGdEEqTjm10KGs0hiIPEIHlhokg02ub2sdB
 sUA8a8KLRkvFr/5di4SfVgkBlBjgLcmlW0Kyk92kqD9eqqtKutLz2XWj5knEYnXJ4rC2
 YDmN0YylL+3zpHadvYVWtXYv6bj0tW7vx12ivrmylZeKm4M3Obiyz8W6/Jqu5M9RJgOS
 6CyB8Uw6BQL6M/kXh3PBPZRfVZh82eb1L35tFGbBvyLAgjoDQNhgbJUMI+snP8DG7GHz
 HdhpCTgvMmwycRcTxfAWN09qUUfStrRQ1WBlsgtnzWWpicn3t7VtRj4K3FYAyPgoea6g
 im+A==
X-Gm-Message-State: AGi0PuYNeywd830AWmnQCmJfGGOnb9w279G9aydmKGGSZjPzn1tKdIlm
 tJAcnZOZfBHhnk4YNYWLFmwar62j0siV3x+wdS3Mqg==
X-Google-Smtp-Source: APiQypLscqMbwKnZqMSsnfb4EiQfW0ot85GIYgb9GEJ+7ISJ7utlbyc9JuuZHDQUSrdVZSbs1WF5JQsxiBr4ZA0cGCs=
X-Received: by 2002:a9d:564:: with SMTP id 91mr17457118otw.250.1587976008856; 
 Mon, 27 Apr 2020 01:26:48 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-8-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 10:26:37 +0200
Message-ID: <CAMuHMdUTAxaPE1WRJJOPr4_O9f_Yw7zVrgm6wkwjHiExSNu+yg@mail.gmail.com>
Subject: Re: [PATCH 07/10] clk: renesas: Add r8a7742 CPG Core Clock Definitions
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_012650_292554_136DE925 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
> Add all RZ/G1H Clock Pulse Generator Core Clock Outputs, as listed in
> Table 7.2a ("List of Clocks [RZ/G1H]") of the RZ/G1 Hardware User's
> Manual.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in clk-renesas-for-v5.8.

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
