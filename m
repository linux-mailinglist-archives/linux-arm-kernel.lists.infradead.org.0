Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605F51D4702
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 09:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0d4bCAEsPI6AfSDXm71mGuG7ifzvvPfrOyK+xm06F8=; b=GA9SVTXGeCajX7
	xEUnldBnH5m2//15e/sDgsiUHs4hQh2DuFHFZOd5PnDwiVAtmLQqLxss5RcYQbZgEGBBI+WKTtohj
	T+qPRgQCqrY4pIO3/KBKZ0T6YH4MmuHUt81N4g610h2WfgbzyAo8pQNtB77mUSDxeB8f8ROaesNhL
	J0p1Bo/XenmCFOKBw7R79v1GkpxRYUAun37lIv4OrJRb0F5hUy+5Yta4PlaG5+8rSlHPPE1Msl/Ys
	qhVZ5Tg4yHWMTHqzn78PGuHulx1LBuZU5KLd3sEc0vkPGAPrlFBG0xePrLx9bhgx0T6dCdIp2C1Y3
	NnIYZXnBGEkYGQ9NDHlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUgF-0000cX-4E; Fri, 15 May 2020 07:22:51 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUg5-0000bp-5b
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 07:22:43 +0000
Received: by mail-oi1-f194.google.com with SMTP id i13so1380728oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 00:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=unTaiYNsyJHNbPep69SOcCNp6Xe5J0UrX0ALNxnvuwk=;
 b=p2BJAKJJ8Vp9FM9AmLQl7arqh1Nj/5AUWJhK3IP3NfOFD3x2Uz/dRj6/jQiVO3eCf+
 GSC+ZkotwiF2zjgy/qLfV1fD7AEdt+6AyWbAJXIkENrs1nc0vD+ECQ7xk4Y2SkfLCrma
 qeFEpQAWVK8srZctrVxIIW1OFS5T5LeeF9MBBcry2zf7vP4ANmGdjRsPF1/Uec4yJeoo
 40Lk4z/V9aqKBv6P93ESgDmtzx1tocVSD6/ipkf+1Q1zjBf5i2gZWimoISdc7uJ4EpRS
 /5/0RmvbEhX4JggSuPoe+07OjOAxLxVhjzSXaHfGPkTRUqZdN1qJvMfczCup8w16HN9O
 Q91Q==
X-Gm-Message-State: AOAM530lboEdCSAHn55xuRZOESZxyXUumh5LutuwCKGvfudhGBwihUtl
 bUJiGzRhkbBiiC9lbdA1w7hlKz79rwtCRwsKcAQ=
X-Google-Smtp-Source: ABdhPJyjJ+/cjMBY1UUSSo3Cxe2NWI07C8OJj+hqOcWICEGnCReUQGucy5vB7JV7cSes4CyFwN+7ATV+zop4u3K0sxQ=
X-Received: by 2002:aca:cd93:: with SMTP id d141mr1113849oig.148.1589527359964; 
 Fri, 15 May 2020 00:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <1589494238-2933-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1589494238-2933-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 15 May 2020 09:22:28 +0200
Message-ID: <CAMuHMdW8aQyHm7uzOd3cL2kPXc0EZ=DN_MmVa4AVFLqo5PwMKA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: enable CONFIG_PCIE_RCAR_HOST
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_002241_203026_E80B157F 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Prabhakar Lad <prabhakar.csengg@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Fri, May 15, 2020 at 12:10 AM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> config option PCIE_RCAR internally selects PCIE_RCAR_HOST which builds the
> same driver. So this patch renames CONFIG_PCIE_RCAR to
> CONFIG_PCIE_RCAR_HOST so that PCIE_RCAR can be safely dropped from Kconfig
> file.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

I wrote before:

   "I can take patch 2/11 through renesas-devel.
    Probably it's best if I submit it to arm-soc as a fix for v5.8, after
    the driver part has been merged into v5.8-rc1."

so this will have to wait for v5.8-rc1.

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
