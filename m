Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFC07A354
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 10:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEi3+v3yLWkSs3HVX5T29edyyUdYlgKftv81IINhi7k=; b=LYHezqrS223fyT
	IElcw2Uo/q0BzUXpi+B+9O5rlbrI6cIzSMv4IoNv0ZdbktXXl66KskD9uPaVceK9t6H02kker84uw
	xpcrsjA8k0uE1Ktd8DeaHSlkUEjCoXx+ASqqE02Uy6WtjvfHW3xUDfbKnQGlLRmoqZJVmMfro7JDU
	DjlmM+qpeiHdfYEXeGn4ijTjfo3VPb5xfCAe8z0Kqvv72YWUumbvf01kAuyZGcXFW2oBCF7FJh/5/
	ONF9r2OZscoKYu9Yyfd7rRJaAyULMjJeDEAXWrqZqT+Dj4YdLLzl5ykemp5GNP4aHD4AVQRazBRBC
	9da5q6WZZL2d8LeaCjaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsNnE-0002L1-3H; Tue, 30 Jul 2019 08:47:36 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsNmp-0002JL-FQ
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 08:47:12 +0000
Received: by mail-wr1-f68.google.com with SMTP id 31so64836170wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 01:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SXZ8F+/pdkw6+4mstV+IqTyMZaGGWzvH632IwSh+5tY=;
 b=kaxZpsUbkbtPxvOS4n5DIv7wT0W6MFLCpd05CgcXSF9RI/JXAXyObI+2sAaCKsuyit
 vodu9ZcTMIY4gFyCvWAI6SAAoPPkIO0WeqhA0X9867q8gSuvCuf0aUe8K4zivTCwAvby
 eDOTWi2W9L9PHdy0LphbqMa/p/ubDjUdElhXdpoWuGEpMANpyBhF5DDvNr4hdSTuW7fO
 Eyis6utLcJveYwdauhbrOz/fyYPmlKI15VLGwZf/WzY9vWK4DO65IojoRu2KGxv7XAVk
 HTofDxwrqsMjynnjwsj3GwwtpykGMrfk/EZ/I9V161Z4gVqAt3NWKsgaZGk4bYCuWLAQ
 mHxg==
X-Gm-Message-State: APjAAAVwaPXnE/y6hT1b1Ca58Hv17RYtDtGsv5aih1kf1WmwJ148w8tq
 UiZM4fj87Zz3HGX5DE2krX6OLrSoOtpkTeo/+Tc=
X-Google-Smtp-Source: APXvYqx3uOX9bZRHOS54TKu9DFrgudYYDsQGL1bQnJ2QjpiEcvGuqielw5CNQ1GjKe+IwRjU1W9wT5ysCE9ax/YUyzQ=
X-Received: by 2002:a5d:4b91:: with SMTP id b17mr6154861wrt.57.1564476429831; 
 Tue, 30 Jul 2019 01:47:09 -0700 (PDT)
MIME-Version: 1.0
References: <1563461006-19658-1-git-send-email-ykaneko0929@gmail.com>
In-Reply-To: <1563461006-19658-1-git-send-email-ykaneko0929@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 30 Jul 2019 10:46:58 +0200
Message-ID: <CAMuHMdW+pyis2DqgJj6Q-1ngwos4syeXMCSF4xTYMhNq8Og3Xg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: r8a7795: sort nodes
To: Yoshihiro Kaneko <ykaneko0929@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_014711_510094_B215E7F1 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Jul 18, 2019 at 4:43 PM Yoshihiro Kaneko <ykaneko0929@gmail.com> wrote:
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
