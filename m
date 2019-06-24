Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E1850A44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Hf5aT3ltBKMaDuTF9UtfoO6vHYl0ae+U4weXtPcqnk=; b=NYCkJem4EXrima
	qli1VzYR/2t6kZsEr7ZO+CD0kKVvUyrNZEM8R00PTR6FkvQ/ulR8oF+LjwYeTCPRTig+5rjolmCLK
	3a6uurbTcZE54X24Bc/y2jlrVrfpFMhZOaSi5l3aVJldIYlbZnDpIKUwx6YgqUiq2Q4y7TwKmgUCT
	JT+oc+mLETTiIPLmxrCFJWMLxsZ+27Cytlwc49OQYguPOmcRa0sSbsGOrvtOqn/31/t+WxUaxUR0d
	MQiSuVqoltypwfOHZN2y5biN1UtUXQvyL9zT/q6V1+N5fbrx106XFuTxq0K3qC7wbxsCvspXQbxxY
	31eIEq+ciwe6OEfCDJZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfNbC-0000Cz-82; Mon, 24 Jun 2019 11:57:26 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfNaz-0000Cc-My
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:57:14 +0000
Received: by mail-oi1-f195.google.com with SMTP id w196so9511583oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 04:57:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9MOphVmnDcCoY9bNa+B8yU8DMwKC7RiOMtXWqxIQ12I=;
 b=VXVCWQeXjhUDKAUNXLOBvOcVnl0xv0wf/EQil/zieDV6jy4l1k5ZRuo4gZq/+fZMsF
 eyh9pfHNqxS5aNzcEViz1lMvEov8Keu/rZMv8gd5t1aQKCG4XcrY06g3ywry3rsqGy4/
 ASqGMZgTwJZaqsmY4t/sxgT3sN1nR3Hy574d5gYKfeP7k659hLbgrMtUzlSSdolsoEZ/
 eBwju5a6hoA1ztKMggUuzqoiZaMRhtIWBQLDzKpFWTR8D4RqBFZBl4mzpgH6q8LT2AAn
 Npny/xr2yg/CEflFATMGOVJQFrG0yO0xHNi5kGcjBDj4KX/GOMVhEeVK8FEfQIip3xF8
 TBGQ==
X-Gm-Message-State: APjAAAWcbQpvjwc91zEDynMeF4sYo86QkUwoUPvspgusFargv8BkuOWj
 9DxewI0xGxl/Dq/L27nVuyjFl4l4SB2ypMeKn9UOFA==
X-Google-Smtp-Source: APXvYqzZxQy7QPEmHD2I4++tL3gjeZrC/62gDtRd2Ss6n/tHVXVfpsTMoJQNLAGpLAP1iqxaWkFhsDLJqbgGIxqRHLU=
X-Received: by 2002:aca:3bc6:: with SMTP id
 i189mr10196765oia.153.1561377432658; 
 Mon, 24 Jun 2019 04:57:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190624105224.23927-1-horms+renesas@verge.net.au>
 <20190624105224.23927-3-horms+renesas@verge.net.au>
In-Reply-To: <20190624105224.23927-3-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Jun 2019 13:57:01 +0200
Message-ID: <CAMuHMdVFHR7x=+nhMh6y+pEQw1CFabgL9hpDSYXJeYY3Q1Ujrg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: renesas: r8a77995: Add cpg reset for DU
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_045713_749235_1382F444 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 12:52 PM Simon Horman
<horms+renesas@verge.net.au> wrote:
> From: Yoshihiro Kaneko <ykaneko0929@gmail.com>
>
> Add CPG reset properties to DU node of D3 (r8a77995) SoC.
>
> According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
> level so specifying one reset entry per group is sufficient.
>
> This patch was inspired by a patch in the BSP by
> Takeshi Kihara <takeshi.kihara.df@renesas.com>.
>
> Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

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
