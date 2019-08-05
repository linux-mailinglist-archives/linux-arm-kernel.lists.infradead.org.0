Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE2582061
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qulnHMUtkFgzsEAUhBF6C+85HdcAzqYhWweFceuSRU=; b=HKLIQi0DsqURXW
	et9MCLmajf8PIjYbzHvy0QElzbgi1m9V3vi66GCodAaMaIzblB0NRe8RbY5SfF+kkCG6W6Uuxjoju
	yY2m4+8cnXs72LNLvRarKHudzAvv+txBzrZ48jWOIGMaunduHzfQMedjxDAFpSbeX41yZ3WTxBX2M
	70M48mCbLLzDztC8a/y0/NuWuSgtKKiwWNuVEI+ApgQCuUw+XrEI420Yb5Buf65rfcwiKVz7o8RiI
	0JhOt8JwRhQpt/xNWf1w4PgqwyFKeXKuS/AhW39hTYe0B5HyNWCSBovfw9RhyJUfA98yj243oiQeJ
	eaoai/WsX9h4KYrlLKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huf2S-0004Cz-86; Mon, 05 Aug 2019 15:36:44 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huf2H-0004CH-FN
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:36:34 +0000
Received: by mail-wm1-f68.google.com with SMTP id g67so69353495wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:36:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9rSCX6R2XZOTJnRaLplOC9AtcGOL4okCuqc4EieSckM=;
 b=Qm3hQvyYVnuYv5eapG748iy/lzzRRsdEXK9Poc4BQs7EM9N2YUZvcX/TBvFygfM3QF
 93WOxb05vAEYQCLlw/BA2j1C+Gp0MKGISc/h5c4GKDKq0tT8aptSk9/IQwKwRdODHxOk
 qGV+5foYR1rLFlzhpQIICOPsWUj2VD4j8vd+BWmeKlAAKV/rMvjJ9vGh+bk+VrI9kZZ5
 +uwCMTosIIaQZDiU3J1p528ljOqXqtWnXQnmhn8xBNYuTIRtXOW3KKfaB4oiuGjcMqU+
 Ke4Pj/YbvU5cK/Hx6a/HjP/qoiVDt5N5/XCG+slqObiB4ZtNVwACGmOYgQsAewyL1bsg
 TUwg==
X-Gm-Message-State: APjAAAUrx6WTDm88EGyMFmvveE23rlvzl/wS90zOk943XyCIN89/2Dg/
 f53mNU2jEzfjtVkiTMnBRriHtuYQqCcz7qUdeRJfJe6F
X-Google-Smtp-Source: APXvYqxlQ+OcOIe3dUoSdiHi/0Cbv5zBJhjrsU4lJIZrBIBi/9YZ3uT0lMrKsiPwHgYW675R1Pskw1OhCRCw5K8FPuU=
X-Received: by 2002:a1c:a7c6:: with SMTP id
 q189mr19652057wme.146.1565019391790; 
 Mon, 05 Aug 2019 08:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <1564669495-22718-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1564669495-22718-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 5 Aug 2019 17:36:19 +0200
Message-ID: <CAMuHMdWn=ZKVwEuq5wKq+5=6+kMpz8aOrN=YY01Q__71hHY-Gg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77995-draak: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_083633_527995_C8D53EB4 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 4:25 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
