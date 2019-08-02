Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7E77FBCE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnzxgAFfDY5DBRrta/8Gvl8QGoRRi18RRYLyNfX+H28=; b=Xu8tkNxTKE4xyv
	vLdcbralpwXeDnZ4YfHlNHucu081fRkdBOjLxChbss8mQ9rngIcwMjysI5UvCGikOnUT0PR29B+yR
	mdKMZSRKPEN1HoOXm+PyM4H2T0LvUo1r18Nksck2Ahen5WlL8e/BJB5s9d2DXWdBNXN9s9WAkDcfm
	P1Dk1VHBKwJ3ELxLmmPz3R/YbVhWyvZG5ih7DxcITtHwE4D7cPNPefOz4Hmnag+5WHZ6pnBJTLy/d
	72qS23Q3M481mNnGfdRahX73PqExa4+2hFtGLbVDZMhbFL79j3OGmKq6wJblEeNDZLZltTzNMakg/
	3jT8eL1VkYnr/5cc//Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYGC-0002Lp-3Q; Fri, 02 Aug 2019 14:10:20 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htYG5-0002LO-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:10:15 +0000
Received: by mail-wm1-f67.google.com with SMTP id 207so68123393wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 07:10:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t/j+eIuVn8yfBsD/4njpgrl63xtXK7Uo/Aq0daTrXic=;
 b=ZgStEgghpOpczTPa0pe/HkBrMUQP3h+GKbFs22FMBjQELaJ5E0fQKdUmHQ0d+YfubP
 Wezm2NP5yGxlABcjM/iKF5gTKlITszS7Y3yoPAbrch76Vz9cprHPI8LwHmGXjBXaoulw
 7aJO/K1BhcJflCoiEBPjYnFnQtQFqt+jKbMLw8iDSPvdBiJzQRhGx4rF/U50xPvvIaS5
 LXIb5V0U9MMULWOn32ZiveDcSspCbh9bEmzqvZvSVe+aVMfQ/YxWKF5yXJNgfg/O/5LB
 3Ec+6MFukqj/lCO4ah5FfDn3vWYEZDrFpahLwJGaFtMPsnJlpny1acy23BsyxyNxmjH8
 yRgA==
X-Gm-Message-State: APjAAAUMhCb4J5NjrTiEfeAfHhPJv1WaTZtXN/gyIFpfK2CdUrGNQKSd
 o/8Nu8C7YLNV1PH2094e7qFbRChgV/ZgzWycly8=
X-Google-Smtp-Source: APXvYqz2eKCyQo52aRlSc3KupJbE199EJ97I8+oJuDGbrvsEElSPJ3KlzJknpLlKZ3kv3rVDSSnHocp6+G+Jv3ohb9k=
X-Received: by 2002:a1c:a7c6:: with SMTP id q189mr4822811wme.146.1564755010126; 
 Fri, 02 Aug 2019 07:10:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190802120355.1430-1-geert+renesas@glider.be>
 <20190802120355.1430-2-geert+renesas@glider.be>
In-Reply-To: <20190802120355.1430-2-geert+renesas@glider.be>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 2 Aug 2019 16:09:58 +0200
Message-ID: <CAMuHMdUndFnvpxHG6NUkw6L_B1Oetc_EZuQh4aNiidiCH+4wjw@mail.gmail.com>
Subject: Re: [PULL 1/3] Renesas ARM64 DT updates for v5.4
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_071013_700683_82045E8E 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, arm-soc <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 2, 2019 at 2:04 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
> The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
>
>   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.4-tag1
>
> for you to fetch changes up to 0a05b3d7fee511de8a1c9dffc3d86f1df55e1737:
>
>   arm64: dts: renesas: ulcb: Sort nodes (2019-07-30 11:25:35 +0200)
>
> ----------------------------------------------------------------
> Renesas ARM64 DT updates for v5.4
>
>   - CAN support for the HiHope RZ/G2E board,

As pointed out by Chris Paterson in PM, this is for RZ/G2[MN].
I've recreated the (signed) tag accordingly.

>   - BT and WLAN support for the HiHope RZ/G2[MN] boards,
>   - Sound support for RZ/G2M,
>   - Sort nodes in various SoC and board DTSes,
>   - Small fixes and improvements.

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
