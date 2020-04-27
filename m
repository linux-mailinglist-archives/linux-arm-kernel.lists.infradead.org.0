Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 097AB1B98EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 09:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPspL+MJn01DeuAAKY3dzM7qo8dUuKMpIwTyy11ax14=; b=FCWKZKHvi7s3PP
	+JyIc8coMrtBSMyFgKG7ZAz58k80tn/JsLtGIFytCqpOShVNiWQtM8I1x9SJ0TQcqoye/7hdxV4fS
	yazT3VTYp7zvIJ6W8Y1mTmBK7PhUPdvJi4XZQb1VnhlKrlWZ2ALrTMOprGyzhzIgu8tbkhl0Lo3f0
	VZWAaOXQTka7LWK78A35fU+zw2WuPKYYucWbFMbnS/IiSDo4V4sEZAF40VBx8zypHTfGqhmNh6e2f
	ODMC2r6QFgmQtuhKsMbvifj2Jg3/iSAZvD435yXhC77zMWj+tXsJH/7jSFon8tiS8QaK1Ql91nPNc
	JiXJ9xd7+/aQDVdjxO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSyRB-0000Ob-6h; Mon, 27 Apr 2020 07:44:21 +0000
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyR3-0000Nr-Qi
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 07:44:14 +0000
Received: by mail-oo1-f66.google.com with SMTP id c83so3656212oob.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 00:44:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aUJDPtd94Plupi9zkES8lfiieamV2XcJxXuQDIx8qu4=;
 b=PdrCjkMrQNKTUQmJx0ak7Bu15HBTOLEQwjNBBBEa5KjdMriOdCTMEN+6IRpHRYI7KV
 4G+lWS5kB6eEqGtUzJdgzQTtbAWJmzMr8SULq6pf7sSBoE41kLtqzi7ExA05yqW+qCUp
 5eN3gd1MTfeBsLszFwMK6LrU9S5ENVa1B/vuegGIlLEY8Mt788gc78vVTblWdp+2U2Zq
 cUInMO+gDaL2u/0CxfJKmct46Du/cglBoi+ZDB6n324MMqDzIF+rBJX9YBJotJi3Ijj1
 ClyB1hPvmJnRdiNLhGyKRc3JiqPTLo452I1qG+duL2n3QiC3Tu10nVj5piXG1BmUvX9W
 5JDw==
X-Gm-Message-State: AGi0Pua+0oVj3UulLKf0yubAz2+4yKQCGfEJPfcBrNWdqa1wyw6FOW4w
 7NvUNv1bM0dW1pkRpbiQ8wMQdQHF2+Qa5NEdwOI=
X-Google-Smtp-Source: APiQypIl/TpnOn5p7OBbPvXk/Rw8DS6/P2ZXewhbJXbTzpHODYNJFR3YLZ3Ic8lUBEcmpgBPbPkwhix00waahtWul7Q=
X-Received: by 2002:a4a:d44a:: with SMTP id p10mr11597099oos.11.1587973452397; 
 Mon, 27 Apr 2020 00:44:12 -0700 (PDT)
MIME-Version: 1.0
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1587678050-23468-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1587678050-23468-3-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 27 Apr 2020 09:44:00 +0200
Message-ID: <CAMuHMdVkFBjgwL9M4GutgOaf0Avo1Vq1ZUUv9fWsia=Tb6qnmA@mail.gmail.com>
Subject: Re: [PATCH 02/10] dt-bindings: power: rcar-sysc: Add r8a7742 power
 domain index macros
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_004413_865252_CFFAB9B0 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
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
>
> Add power domain indices for RZ/G1H (R8A7742) SoC.
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
