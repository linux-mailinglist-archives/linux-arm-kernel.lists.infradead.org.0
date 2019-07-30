Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD3D7A3C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjtBiuBntODG+62xy5EwE+VPxgMEqXUUa9lpP9TwKBk=; b=dxRqIx6oRq6ei5
	J4bNPJ+PUJmoLhM3UVL9IBSowFZTxdU7uXMZyETCYG+WGqOlXmYwjafv8iTJDW6tasSDOpXQ33aV+
	uq4ADiNxaoz5fMDPUMncpn8kgaDJyRltQ3j3BpbecNP5K6ItmQKffvo1vLiKeGA/Nk1HpboFvUyW1
	HjpHyUwDOpx8jESpZZk1xT+ohSjE3JaXwYu5cHdS08iKHtyHG28mc7rGAKUis0d/W1Lq+cDCbPRz7
	kkTJrsxkHcXDZFF7ch4xQWA7L06d7dwlz8eln/O2y/XOtZaUnidD8g968wPuK8mc+ccY3bIFhlmgx
	QUuZJWbdTl4O22zqUY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOE7-0005o3-Qq; Tue, 30 Jul 2019 09:15:24 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsODq-0005OK-Lh
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:15:07 +0000
Received: by mail-wr1-f68.google.com with SMTP id n9so39826477wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 02:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1T7w/YSm1mZ9P2MY1HKuwSxq+rVbqV+bb06Sz93Z0pI=;
 b=DmQUHYXGoVRYkHf1ybMGGcDnhib5f4JsQ2R5RIw9rESXAIIvWdJJUo6CVebYVoDUhW
 DeGch1hs3cwYbE0yjEvP1fBMD7odLitJSAdGBOdyDkxjX6eq6amDKcayvqhkCO+UmNRe
 rK/VEOso+BKsrVr0WFjThcyLVfref2ooIW/zw2EJzzQ7bvQPYOleuveoc2ysz6di6r/4
 jMsV2g4zM09f1bBVvbRrl12IWOwdLjatSSpOAkZuNiz+J/OYxQECP9fRFHOzdaaR23L1
 pkl6La1QaGQDmAWLvZs41NWI7JieLN/CkJRKgmn62ghUphrC2VMVEs+ot/StGtoXzzYt
 IP4Q==
X-Gm-Message-State: APjAAAXesdRfTozQyLcDpfgYStkXQ0A5uagfBGIPLlRlt0znrs1YCiv3
 95z+K4bF9igVqoMCqLiS62Aq1BQn9SNG316Ip9g=
X-Google-Smtp-Source: APXvYqxoxTT1wmvpyMa8FKPqmggSviDHWrloUn/i6511/eWkiPSVapIUIKi0gXLL53gx/aENhGaRg4iiYwmtUwTqjmU=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr41807530wro.213.1564478105315; 
 Tue, 30 Jul 2019 02:15:05 -0700 (PDT)
MIME-Version: 1.0
References: <1563905046-2949-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563905046-2949-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 11:14:53 +0200
Message-ID: <CAMuHMdXqEB-=Hd=X4Wyg8MUTVYmhpyFf9FGEqUrV6vcrCO8aRw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: ulcb: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_021506_725390_D9A46959 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 8:04 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
> Sort nodes.
>
> If node address is present
>    * Sort by node address, grouping all nodes with the same compat string
>      and sorting the group alphabetically.
> Else
>    * Sort alphabetically
>
> This should not have any run-time effect.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.4.

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
