Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0BF4B794
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsawRKPfE0iiKBP0cjSAgnZIqZBT+OxxjATPYKJJQDE=; b=WVa3lmoo8ygvq9
	o8A5dr5wRUVbfnsQrJtMAno4ceV+8r4KzyDFVPwoxX8uMRKZEAYaZF8GTxKMhI0UrzSDXHvQHZ+nP
	QG5thlec/KwTFcT4aneJNS9h+nazAoq+0bFjeU9o2TOtSXiy7B9SgZXZZ82NnX0CQBSoJHSyr2FoL
	3MM8dit0OTO4RK1iM7Zhsu027P8HoJbzbk3uUFFiDGCE+Ta0i78qKHKtyJX9E1/ZNPrybI8fck8k7
	azLYIKVPJ2F8NVWgAmPHpn/rIyb5P3owWhcaE/OE/DpZ/bSYXdVibnBK5J+vfuL1uEHqPWGFJCnv0
	z9eek+aQxVu0D9AhJ1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZIp-0008IP-Fr; Wed, 19 Jun 2019 12:02:59 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZIg-0008I2-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 12:02:52 +0000
Received: by mail-lj1-f196.google.com with SMTP id p17so716746ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 05:02:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sI3F9RN+utydt3P1LSuFV0W1bFTbyujq74r8k0N53Bo=;
 b=r+Joo7cpIATMd3zoGPs6HVd1Lj4aNffwbcnyibYhezVyZy561O0j8ryBK3SKBkGkFe
 Z2BrnS7u+lKX6uQLwY1Zi7X+cbc73pYim0OiFP7PNCWzFaK7LvQuBW6LFltKpB8XOHiv
 8XTzZVvZXt8WqQeXmVGph+3HBE9UobS+WBtc0W4ngRd5FifJqRhV6bA0uNkcVGMDPPAN
 5FRZlSVZlE9DqxPiMzwq0uGT70gt6uvKxMLc055K8IDRCunpn1vdki/2/3cOzmCzbeWM
 U19lOAV73JGGFgOrHMcXMfRfSjR3xdw54xDoHX41Sh5yyuFuPCG9JtyZBtzsv1gYtsrO
 vrRA==
X-Gm-Message-State: APjAAAV2xsFqWsbMKRhhtqauHvF3KPa5tDbN3WaUyXZ6U11LVheYncPe
 s7qmJdIET2kcpsUV2sYu5heIc5bTaS/BHxoB3Tc=
X-Google-Smtp-Source: APXvYqy6u/HLvJliV4B/pGxFYiWCuIRt07JR3Iu4QdJytpDJtdf5/cp1fpwTMmkP8kIP0sh8+nsdN6o+2smqSTput+M=
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr28842793lji.139.1560945768007; 
 Wed, 19 Jun 2019 05:02:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190618124714.15120-1-geert+renesas@glider.be>
 <20190619115141.wwze45px5qinll2j@verge.net.au>
In-Reply-To: <20190619115141.wwze45px5qinll2j@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Jun 2019 14:02:35 +0200
Message-ID: <CAMuHMdVbGKxfVgkQ=CwqcBWj5u3CSR3j1E0Eso1eZTrdJUfPSQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: shmobile: defconfig: Refresh for v5.2-rc1
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_050250_779658_B0F1AAB9 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, Jun 19, 2019 at 1:51 PM Simon Horman <horms@verge.net.au> wrote:
> On Tue, Jun 18, 2019 at 02:47:14PM +0200, Geert Uytterhoeven wrote:
> > Update the defconfig for Renesas ARM boards:
> >   - Drop CONFIG_GENERIC_PHY=y (selected by PHY_RCAR_GEN3_USB2).
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> I believe this duplicates the following patch which is present
> in renesas-next.
>
> b995421faef5 ("ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig")

That commit doesn't seem to be part of your public repo.

https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git/commit/?id=b995421faef5

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
