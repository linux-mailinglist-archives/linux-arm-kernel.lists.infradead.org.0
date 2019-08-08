Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BEA85D97
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsDJZ++Kpuy4HSAqWevcsVxrMJU9cLGGE2kaRvgWEDU=; b=Tz/qW9H4WeKqmq
	t19SGohh6gb5aw/PrU/exv/1HmMkIT6uExJeNhOV0zO4pmIcVv8hseNqBJV0wP7j/sIYxze/5colR
	7AgIZ5o6gbWFkwHuAmluWIEKFnY7OKXN8esbHobr9JQEhdX5i+486j9Gydj7EWlRe2cIXOl+E61z/
	YLT/agP22X7G5J75g5tiwvB0x70j/oNz9TMrbx3arqDzdWubegww/qxUqAZhFk4SyU/tMpiy1JUsz
	u/xdrn3/G0XfgCbxJ6wR2LfwFdC0Y/M4gG/6kZMQsG9a3ZtGz1JvD92zp7+PXs3s4ATYYEyFgEnAf
	d+Ha1RmfpH1T1y7fQoUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveGN-0005nJ-IW; Thu, 08 Aug 2019 08:59:11 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveG8-0005ml-3M
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:58:57 +0000
Received: by mail-ot1-f65.google.com with SMTP id z23so7389899ote.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:58:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hLriwBTV6yTq3YyLAWnHvmU14I/gHdIzmwDnVv1gMYk=;
 b=EORGNupUzcfX8uBecQ3ptkrdpihUMPWBlw/tFl2GYp9OSMCAjJKq7DSNyUTpJz9S1/
 Eya69PxRH2mS2A8pqCF1GaO8Ps2ahkFkMWwX+QFf26FX7K9hUo90nRONGsyuAPN3fG/E
 hIHXgaTpa0q3sztF0RFeFL+rSaeWsAhxgJ/Zkf+gVdnb6BM7WGlv7Y41tV9xp7GqrmeJ
 /JnmE1LniZiNJ1T9UstExUe8jQ16Vr6nvNtZ2OJumdDaT68y0RzN9gAPwYmznMI8R/d0
 Vn5D3DcGU6yVzmnEOH59JtvAwtL9MEMw0F/szazFWtA5A0rRigmK8dOPXzdibtSMNtu2
 ak7A==
X-Gm-Message-State: APjAAAVyh6YjHJjSfBDjaDdLpYP5U621j9jer19QyzrLODu8eB5sePG6
 oqdCumHBht6qQ3iyPR/LwYIYL7ymAVbrpRRCBi0=
X-Google-Smtp-Source: APXvYqxRLSh0JS5A9PkpfjEAOKau9ju1AU4v7Tx/uyXuGXcfd0DZoQbvP+vYEqjMbAoPUd4xlKvRkPsuW8gHwlBeB0M=
X-Received: by 2002:a05:6808:3c5:: with SMTP id
 o5mr1892545oie.102.1565254734766; 
 Thu, 08 Aug 2019 01:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190703084106.484-1-horms+renesas@verge.net.au>
 <CAMuHMdXMbLzL7X5uUp0g5Q-_YiXiyTW+tALzS=kHBOS3JNbRUQ@mail.gmail.com>
 <20190716112619.ielypcsnclg6sa27@verge.net.au>
In-Reply-To: <20190716112619.ielypcsnclg6sa27@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Aug 2019 10:58:43 +0200
Message-ID: <CAMuHMdVpq-3cJpTbgO2Ky4Z+Dc6ePGLcYW568+yCj3PARm3e1w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Rename file of DT bindings for Renesas
 memory controllers
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_015856_136675_8A061477 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
 Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Simon,

On Tue, Jul 16, 2019 at 1:26 PM Simon Horman <horms@verge.net.au> wrote:
> On Wed, Jul 03, 2019 at 11:33:36AM +0200, Geert Uytterhoeven wrote:
> > On Wed, Jul 3, 2019 at 10:41 AM Simon Horman <horms+renesas@verge.net.au> wrote:
> > > For consistency with the naming of (most) other documentation files for DT
> > > bindings for Renesas IP blocks rename the Renesas R-Mobile and SH-Mobile
> > > memory controllers documentation file from renesas-memory-controllers.txt
> > > to renesas,dbsc.txt.
> > >
> > > Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
> >
> > Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Hi Geert,
>
> are you planing to take this through renesas-devel?

Thanks, queued in renesas-devel/renesas-dt-bindings-for-v5.4.

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
