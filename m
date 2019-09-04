Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBABA7C79
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IblZLw843u1yDvyE1gTffUu46tr4BIFkmxkupaJPZpE=; b=s4rlwza/by6ZYN
	IgGdFTjL90nXs79nQ/0pPf6bO/Usrg41TEfZcZw0Wq31qlrrVg3wPLVAL8I6V/GFKTxrSWcIhKHtI
	J7Iw4ZC0ceCduCjKnKBhLm/I3b48VfJVjH4MKdk+QtE1s0X6FI+OSYSwTs2y3BNThCBzM8vq+rPHf
	VtfAWhH+TyeeDrzKysJ/PYEtS0f1Cr5rtcF+RNX9SZXaiajTtXyaU0x9L1lbyBm5WBPQfQ5LUTcPQ
	FB8LEOOgzZIUjc33iZAazJHvS/MhXQX/HoXPkc9SbpAsyYNdVbjM0QJcxhAW1nR5MJM7BKsg4EWQk
	//hYHslha4Jli0N+/i8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PWY-0007ue-4R; Wed, 04 Sep 2019 07:16:14 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PWJ-0007uG-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:16:00 +0000
Received: by mail-oi1-f169.google.com with SMTP id 7so6863462oip.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 00:15:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fgv5ucks9JqJeucfLpT12cl9J45/7/nkr6LLzr2izWk=;
 b=DIX2fHraLH5l27KX+ucS71yh2O0BvfE+ZJYGECTZl52HHbmWNmvsfvimIrlauDl0Y1
 mbUAHjBThQscaGAGWH2nDFiJzwnFTSElhuR2g6bnsc6pL4Y4AjAAwaB/x7LwXne4gx1O
 vV//FWfvNsFZmDORl0sHodNJoigRU7nCBWVLZsC2haxG57qtMPjs0V0godbPIaUpZukX
 WHGXjCmbgsOF8mZksZrAcxfXEIkHMHVE8EqT19LcxY2W7f+JauN+BNJ17SqZKFhAh3UW
 KzQDMnsfHsr4lvyjw06tNqM8Ah+GVJTwJppDMXhp/rAyHJHqJOlPx4MQ0C0xBRAecx6D
 9rDg==
X-Gm-Message-State: APjAAAXzrZUMGrCy5Lt3Gp32pgVpCcOM3PrNHQYIGZjBYOmGjX7zYMcm
 5iAOEg+SRVHIfuqHrCOF1CIlO6YkpW+0yIalP4Q=
X-Google-Smtp-Source: APXvYqxLc2EhXZhftPgeRfLRRdjdPCuNGx4NeDTs9OkB/LUjEafw3ZWncRNiAh1GjPJ+06Dm2UCrr3biTsphV5tO4vs=
X-Received: by 2002:aca:cdc7:: with SMTP id d190mr451591oig.148.1567581358045; 
 Wed, 04 Sep 2019 00:15:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190823123643.18799-1-geert+renesas@glider.be>
 <20190823123643.18799-3-geert+renesas@glider.be>
 <CAK8P3a11EfOXfwZ5Xx3vYJwfBGPh=yX73f_=3u7Zmm+hJF6HVg@mail.gmail.com>
In-Reply-To: <CAK8P3a11EfOXfwZ5Xx3vYJwfBGPh=yX73f_=3u7Zmm+hJF6HVg@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Sep 2019 09:15:46 +0200
Message-ID: <CAMuHMdVaw8KGgxbahwyHv+-PabQSrktjEyrTL1xP4SGgLTdaHA@mail.gmail.com>
Subject: Re: [PULL 2/5] Renesas ARM SoC updates for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_001559_111642_66800D4A 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: arm-soc <arm@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 Simon Horman <horms@verge.net.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnd,

On Tue, Sep 3, 2019 at 11:15 PM Arnd Bergmann <arnd@arndb.de> wrote:
> On Fri, Aug 23, 2019 at 2:36 PM Geert Uytterhoeven
> <geert+renesas@glider.be> wrote:
> > Renesas ARM SoC updates for v5.4
> >
> >   - Low-level debugging support for RZ/A2M.
> >
>
> Pulled into arm/soc, thanks!
>
> This should be the last of your pull requests for the moment. Can you check that
> everything is there once it hits linux-next (probably Wednesday, I may have just
> missed today).

$ for i in $(git tag | grep renesas-.*-for-v5.4); do echo --- $i ---;
git cherry -v arm-soc/for-next $i; done
--- renesas-arm-dt-for-v5.4-tag1 ---
--- renesas-arm-soc-for-v5.4-tag1 ---
--- renesas-arm64-dt-for-v5.4-tag1 ---
--- renesas-arm64-dt-for-v5.4-tag2 ---
--- renesas-drivers-for-v5.4-tag1 ---
--- renesas-drivers-for-v5.4-tag2 ---
--- renesas-dt-bindings-for-v5.4-tag1 ---
--- renesas-dt-bindings-for-v5.4-tag2 ---

Yep, all included.

Thanks a lot!

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
