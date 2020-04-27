Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482D81B994E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:04:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NXbsylu1Ahu1vmWqFgqQsFbrz5MwzmJIeOMdURwHcNk=; b=P6c7D2q2nQqzRn
	iD7Nmuib9xp7PV42u6ciD16xuGD5rV3O54jABbve7j1cqikPqo6BG4NKBBRHc63veQ9mSJx0Eyjv7
	l1dh+a8zmI/nnghByPLNESNvSvHmTaTNc/xmRgCk/JNegT/fZuSpF03lV3b+YKsIKS4y6mO+/2R+x
	csMTxuiCsw7Ay40bZnT7oH28NKT8GunGeh+8rBWplDe8q/1erOBPPHaYx3hYDDy9PbuOPylJetpBe
	fXDOp8S9PhOurzVwiUB5w80sVW5bNkOBaKC/DgtP4mGiymiHv9t05KPmeH0Cg9sG9F098n6JIGrhB
	4BBicyzdXMGliXdnkvJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSykQ-0007pJ-Gw; Mon, 27 Apr 2020 08:04:14 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSykG-0007os-RY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:04:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id g19so24681607otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 01:04:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yp9HgL6YXH1Mrs7/xb1a0hjYzru62kco8NbdEX0q47w=;
 b=qW93k97ynZVbIYOOEH2u3PIFo0MBt1b+BXS6F3lRmAFvShIdnq4aOg5+VStai0kZeQ
 7thb5PlOgUCU+nTMUX7cKlPwYy8IXnm+FvwVNv3AN03Qg08qEdg0cvfR0Qv5t1SwzieC
 jygtxzZsVSeHRpuJGbKGHjyFSwfvhCQgPXcu77yWEIk/sbgC8Xd9HBOGngAPQcKGlu5h
 tC9FUUuNtT2Sw8/oWr44T/s73KtlNVZa153fT6Dfpy71vjO6rwThIVy0l0YrnR3/e7oq
 JR8+Fqn8WD8BBblkuOlyfFnIFJ/XqwC54waQmsQ1Vh4ZVfzX7uG/Lh/wseQjCSoetd1k
 jxVg==
X-Gm-Message-State: AGi0PuaO5/GkS8RwQEOXoc0FwiGBTF0cxD5UjqELuL8pEGhq+rUMX7eO
 rGdt6s+KbL2WGCWwSxraXNpZmWv6jHvn3AMrO5g=
X-Google-Smtp-Source: APiQypL9L0sStSs9sZCJMMiE2Zg4MITGkAayddwxMKwHPKdmjS62MIWjUuR1BBUAExNprGCWXUObgfMmOo6mye5Vn6w=
X-Received: by 2002:a9d:7d85:: with SMTP id j5mr16411444otn.107.1587974644288; 
 Mon, 27 Apr 2020 01:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 10:03:52 +0200
Message-ID: <CAMuHMdWiQd1x7+_qJnFzNbz27CwCW9yO431pUfYATE=0rM8J-Q@mail.gmail.com>
Subject: Re: [PATCH 06/10] dt-bindings: clock: renesas: cpg-mssr: Document
 r8a7742 binding
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_010404_885661_95754EE7 
X-CRM114-Status: UNSURE (   9.91  )
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
> Add binding documentation for the RZ/G1H (R8A7742) Clock Pulse Generator
> driver.
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
