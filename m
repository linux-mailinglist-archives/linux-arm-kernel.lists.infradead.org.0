Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838E67868F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 09:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aC0bMRq9Dfbua8cVGD9qP95Sw+QG+c3n3+fHuWwN+IQ=; b=rBzsDbcoU2rJwr
	wxlra1Afe/mg0zt95yu1Xbg0zrXxk6+CkMslGoPZchKZdOIleuUwnEw9pXP26s0/wIXy7QRpLDWP6
	Li8Qf9684ULhX83ED4MJ4vX+y3h6FpRx6Lvp1Y3z+Mn+NM3IDIdbxknkcUYypGPr2WuwdYydCFIvW
	DG6rRp+kFAYxYQVCQRr60W2HdkoJjxyEHlfLe8oyWC10qB9Zv7A/rMIjKiLyOi+PPIDqOyQqcrmLd
	y9efCKXwmMQklXL7cGxBJBO/DFWfgT5wJha5aiilPSzw7/JFR8tnQ1kq8Cqu7VyAtmETRcSFmq+6g
	IjNz/dPL/Mfs1RDAGKDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0LV-0001Iu-Sr; Mon, 29 Jul 2019 07:45:25 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0LC-0000h3-6j
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 07:45:08 +0000
Received: by mail-wr1-f68.google.com with SMTP id n4so60724443wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 00:45:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XXRHBEMKhef+dnocaNK4nkJJjQSEielvNAr/Iguh9Kg=;
 b=UtcayKTlk0mZnJa4w7llngq1sqb8oH5cicW6RusEHPeaWVhtL7ogXifdzItB2DJfqQ
 u2/8yPnYttvqfGYK3mxdt3/R+c1hejc7MOHRjFeu2oZEZ+N/gkO35T61ag7wyqE4n1xD
 d6nLZxL/TCKudLGfIAn7vATDk/1R400osw6H6GWzGypn6hJGKk8wfCo9lZEPegaS1GHx
 cHUWLDhQPIvGMBQAv9gYf5/G1JHn1udYyluNkhTLSK+YPkFafQgv72+k5dAZ0mldyqhc
 dX9XYYznNgqSP4lHAHDdcm85bvg9tmpSYNGqD2SgoK2JtIRkfrkwbOqOBQ/hoN2EK96H
 v8Ww==
X-Gm-Message-State: APjAAAUTUXOI4mHdZjlfO1WrNVZcsJihk1/0zBwD7DKzkB6zd37K6IWU
 mETkMa2DG3ZGyKsYwyf2Lhh7Phbkpk6qCx2KDbs=
X-Google-Smtp-Source: APXvYqwpm/kijAIS8KFK2eMwQFo1bfr/p+cl9hcwaGna32JrVH4wttc50iYtIsPYz0ZfUBOIYS+MgRm8MWsiqonq7NU=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr34464237wro.213.1564386304195; 
 Mon, 29 Jul 2019 00:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <1547808474-19427-1-git-send-email-uli+renesas@fpond.eu>
 <1547808474-19427-3-git-send-email-uli+renesas@fpond.eu>
 <20190726091325.GA13111@vmlxhi-102.adit-jv.com>
 <20190726094724.GA14913@vmlxhi-102.adit-jv.com>
In-Reply-To: <20190726094724.GA14913@vmlxhi-102.adit-jv.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Jul 2019 09:44:52 +0200
Message-ID: <CAMuHMdXiOBxUDXLcL6R7jHF4DMoH=72yMkSiv-51aV7cw3my9Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: r8a7795: Add cpuidle support for CA53
 cores
To: Eugeniu Rosca <erosca@de.adit-jv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_004506_262632_F793B373 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: "Wischer, Timo \(ADITG/ESM\)" <twischer@de.adit-jv.com>,
 "takeshi.kihara.df@renesas.com" <takeshi.kihara.df@renesas.com>,
 "Dirk.Behme@de.bosch.com" <Dirk.Behme@de.bosch.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "dien.pham.ry@renesas.com" <dien.pham.ry@renesas.com>,
 "Maik.Scholz@de.bosch.com" <Maik.Scholz@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>,
 "khiem.nguyen.xt@renesas.com" <khiem.nguyen.xt@renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "horms@verge.net.au" <horms@verge.net.au>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ulrich Hecht <uli+renesas@fpond.eu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eugniu,

CC cpuidle people

On Fri, Jul 26, 2019 at 11:47 AM Eugeniu Rosca <erosca@de.adit-jv.com> wrote:
> On Fri, Jul 26, 2019 at 11:13:29AM +0200, Rosca, Eugeniu (ADITG/ESM1) wrote:
> [..]
> > The culprit BSP commits are:
> > https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas-bsp.git/commit/?id=3c3b44c752c4ee
> > https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas-bsp.git/commit/?id=902ff7caa32dc71c
> >
> > Further narrowing it down, it turns out the CA57 cpuidle support is
> > not responsible for generating the issue. It's all about the CA53 idle
> > enablement. The reference target is H3-ES2.0-Salvator-X (the problem
> > originally emerged on M3-based customer HW).
> [..]
>
> Small amendment to the above (based on vanilla testing):
>
>  Version                              Issue reproduced?
>                                       (H3-ES2.0-Salvator-X)
>  v5.3-rc1-96-g6789f873ed37              No
>  v5.3-rc1-96-g6789f873ed37 + [1]        No
>  v5.3-rc1-96-g6789f873ed37 + [2]        No
>  v5.3-rc1-96-g6789f873ed37 + [1] + [2]  Yes
>
> [1] https://patchwork.kernel.org/patch/10769701/
> ("[v2,1/5] arm64: dts: r8a7795: Add cpuidle support for CA57 cores")
>
> [2] https://patchwork.kernel.org/patch/10769689/
> ("[v2,2/5] arm64: dts: r8a7795: Add cpuidle support for CA53 cores")

Thanks for your report and investigation!

Unfortunately your original report didn't make it to lore.kernel.org, and
probably also not to the list, due to the large audio attachment.

For the newly CCed people, the issue is about consistent dropouts during
audio playback using an in-house application, introduced by adding cpuidle
support to _both_ the big and LITTLE cores.

Thanks!

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
