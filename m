Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13786DC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ME+yY3PSP2raOxASTXfDTYxDKVkBTXJ02iXnTOHOmPI=; b=lK4VJU0ItUZMG8
	uetQ3pThXoNJayIzlujOFbI/GpUHmLmTVAMtxO4zjVPte5CtXp/HhmN0TecHZ+RCQaQkEYVGDdD2n
	9jdCFIckPAhHOijqtwuf1PqexJlX/KwQIrKVBH+Z+T12iDUacuXHIkq8Rg3p3YEfsSgHgQu5sw/Wt
	Y4w3T0QcWN/unWMtFRRBqfL8GocMastc2V3/PjtZYKPuwK+IvAzZ9RwQTy13JLpFjuTr1nxL8n530
	EHeZ61li5nzucGxIn4TbublbMY/xjdFqQEW7V9qUTdRxLFEyZ1znLUWnK8P+tn8NMmQeN7TYgAgqi
	nY+7N+5J9NEKrXpMi7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Jx-0004jM-C3; Mon, 29 Apr 2019 07:03:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Ci-0005Rw-V0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so8292441lja.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=f/SFxHqWTuce+B7hOCrn4MCwuAGCuKhiPGijyMFJ32A=;
 b=YR+4KDoK/DNmvAhfpktw9rxbkL0Q4jnnKxfxUCc9GgCG7/zKov7efPi02SKnTpAcYh
 ByuOQyEGRcOS4vnRGPvyak0zKhcSi72QlXfEwuReuQJ75894478RfMIVJQbFfA48tTn7
 Z/qz/heykIRTIz0hIsEmV9kba82JIMoq0vG0zYCkmrDU+qkWR8kGJXtM1R8qw1ZZJhs+
 95JtA9INgPvlFHNLG+oYRfCc5lBd2puk+nJIaGjElHL1iHXKCdBgsfIX82ghji0KQinw
 KtHAtyi9tAbXkKIvRd88aS1bpForz4EXFkK+sstF7ZM3Om7nj3d1Mtk4RR5LsXoWaoG3
 haug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f/SFxHqWTuce+B7hOCrn4MCwuAGCuKhiPGijyMFJ32A=;
 b=ggxzwOrq1PrH+VWjiiEgQbsJxyImgyqKvFzSpxe5mw0Ez1a7wa9iidDF9adi6ihVve
 ife0rMUqCfFgNzizf3E07Dc5KpT2Aeo1TnFvw8H/i/hYmkpeynrTO0IT7/+ja1Nvp1/r
 cOOwoemI1KLiC2eozvCYlPu6gUqkTrGRvU1pLvp6LdXrz9c06Bd4glR214xSrd2zPbJa
 DwFIsYGFvZB57TSEAG/l6RaXOdZiDqE58qbq43ZxWhZl+RewCQFx6XrkFBH15UBjXKsX
 SoMrtQcU9sgBYhbLTcekUZEjWhCWpdR2HaagDtHfnKc5Uc/BL36lr0g8Qorzf89ntcme
 JyOA==
X-Gm-Message-State: APjAAAVh9e65UFj1BFwGi0xynhVlVySHRAW5tjAPNJQipQdegR+56MI5
 1zp5FWpg2b8V2kM+u9N2wNDvIA==
X-Google-Smtp-Source: APXvYqxphZgGLPcPLbt40yzYxwOA7EbUqYIPHKOsEZ/j6VBKmctI6SI3zoTjpf5XE3/m3kHaOcgmJw==
X-Received: by 2002:a05:651c:106:: with SMTP id
 a6mr2634007ljb.175.1556520955392; 
 Sun, 28 Apr 2019 23:55:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t85sm627199lje.96.2019.04.28.23.55.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:54 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:32:42 -0700
From: Olof Johansson <olof@lixom.net>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2] MAINTAINERS: List arch/arm64/configs/ explicitly
Message-ID: <20190429063242.blpen7vuuripsf56@localhost>
References: <3d1862f6-f83d-dd8f-061f-8feff9588133@free.fr>
 <20190418131055.GE18646@arrakis.emea.arm.com>
 <fa0fa2f0-0492-8cf3-c3c3-923e9982bdf5@free.fr>
 <CAOesGMih7j_254ucFvvgmz9+4ST-aOH6R9rDy4XeY5RcxgE5vw@mail.gmail.com>
 <4097b949-f285-b490-23cc-a8b4d9d37edf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4097b949-f285-b490-23cc-a8b4d9d37edf@free.fr>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235557_552822_149EBE6A 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm-soc <arm@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 07:48:15PM +0200, Marc Gonzalez wrote:
> On 18/04/2019 19:25, Olof Johansson wrote:
> 
> > On Thu, Apr 18, 2019 at 6:53 AM Marc Gonzalez wrote:
> >>
> >> As it stands, get_maintainer.pl scans the changelog to determine the
> >> recipients for arm64 defconfig patches:
> >>
> >> $ scripts/get_maintainer.pl arch/arm64/configs/defconfig
> >> Catalin Marinas <catalin.marinas@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> Will Deacon <will.deacon@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> Heiko Stuebner <heiko@sntech.de> (commit_signer:10/73=14%)
> >> Simon Horman <horms+renesas@verge.net.au> (commit_signer:9/73=12%)
> >> Maxime Ripard <maxime.ripard@bootlin.com> (commit_signer:8/73=11%)
> >> Olof Johansson <olof@lixom.net> (commit_signer:8/73=11%,added_lines:39/248=16%,removed_lines:63/135=47%)
> >> Andy Gross <andy.gross@linaro.org> (commit_signer:8/73=11%)
> >> Jagan Teki <jagan@amarulasolutions.com> (authored:7/73=10%)
> >> Bjorn Andersson <bjorn.andersson@linaro.org> (authored:7/73=10%,added_lines:32/248=13%)
> >> Enric Balletbo i Serra <enric.balletbo@collabora.com> (authored:5/73=7%,added_lines:29/248=12%)
> >> Stefan Wahren <stefan.wahren@i2se.com> (authored:4/73=5%)
> >> Ezequiel Garcia <ezequiel@collabora.com> (authored:4/73=5%)
> >> Marc Gonzalez <marc.w.gonzalez@free.fr> (added_lines:53/248=21%,removed_lines:63/135=47%)
> >> linux-arm-kernel@lists.infradead.org (moderated list:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> linux-kernel@vger.kernel.org (open list)
> >>
> >> Explicitly list arch/arm64/configs/ in order to limit the recipients
> >> list to AArch64 maintainers, and protect the innocent:
> >>
> >> $ scripts/get_maintainer.pl arch/arm64/configs/defconfig
> >> Catalin Marinas <catalin.marinas@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> Will Deacon <will.deacon@arm.com> (maintainer:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> linux-arm-kernel@lists.infradead.org (moderated list:ARM64 PORT (AARCH64 ARCHITECTURE))
> >> linux-kernel@vger.kernel.org (open list)
> >>
> >> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > 
> > This is inaccurate, most defconfig updates come in through arm-soc
> > since most of them are platform related.
> 
> What is inaccurate? My assessment of the situation?
> ("As it stands, get_maintainer.pl scans the changelog to determine
> the recipients for arm64 defconfig patches.")

The list of maintainers is inaccurate.

In general, defconfig updates should go in through the respective platform
maintainers for platform-related changes. For architecture related changes,
it'll go through Catalin/Will).

> > For core features, Will and Catalin are there right maintainers. For
> > platform options, they usually go to the platform maintainers and then
> > to us.
> > 
> > So, if you're turning on a feature for an SoC, send it to said
> > SoC/platform maintainer.
> 
> I want to stop receiving defconfig patches, just because I poked
> the file a few months ago.

The way maintenance of the file is setup, there's no good way to write
a maintainer entry for it. None of us want these patches directly.

We've dealt with this just fine for years on 32-bit ARM.

Feel free to just delete these patches when you receive them.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
