Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA7C1A9A4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2RyORdUwz7sWfvrhJB7W6Ev1hpiDwnG1kvkDZ55ML8=; b=HFzRBhyFGJdMcy
	Mp2FwBNCZe2J9NIomym2Pyvg9uj80EhGXtobWu6GUvEihFoxdYlOVuzOL/cRkt2ueCvByh+m2aaFZ
	+XNM0l0sqgH9Da1Z5uJbRUK/FvBonym1KJMaPbMwHXvF7qDGKMYQqBmZ5wlnnVLDKKnENFD89Yn2K
	xarET82WDKGaxBmBZ6OoUUWEeVxqJhDVO9Uu1lFbh34gXSM7mKtlsqMADsOmRgZOuG4is+nnYYUHU
	aN4QwwIoBiFlkieCSEWlrx1oitkx1ddNeR1t6pUkQmdi+clKo18SSlYW/ZFgZOwZOvwUkj0pEk+XO
	8NEE57zSphavLlEIt3ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfBg-0002N2-1E; Wed, 15 Apr 2020 10:22:32 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfBU-0002MI-Rd
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:22:22 +0000
Received: by mail-ua1-x944.google.com with SMTP id d23so1132580uak.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 03:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F+P0Ra3iC/JXSowntxHaRgfUwGs3p9lTv27KqV4QmgY=;
 b=yinSAq1kT6zD1vFtfLDkhnd/jpN7wrG7ODN60H5IZPf26eivm1z8qbVdevmvj+nESI
 nZkUgiclMtRXxn8wlxgMLJhloymD845hPfK9pL/KcGtTJb0d7fX7pwCexJD3h/XqUIDL
 sC/Ecllg7bxMZ/zKYj0/8EIP26LBpFsV6haHjrJ3Q3Wp+5i/wRyQy3VDQCRyWiOgGpqs
 sRYyedAtNXFE1+Eible6YMxvgiuvsJKYaaAL+7utOJgKAFToCINEIuZ/ipArRi5R5Fct
 mAEz5wpBzbacQFz5hqldM4DaVLpl7apIeSSYMb8dIUylxnJOl2KZru1sz0LMGiN1gTvH
 3Vrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F+P0Ra3iC/JXSowntxHaRgfUwGs3p9lTv27KqV4QmgY=;
 b=Ra3O3gSHjcao3J+pPN7uDpgHjDQiO6sj+RJRVTW4WlUyWnltQ6v4NIFMxyVB+8XZIx
 FsRj5JSF/GzicBLbYQuRQBcLVTapdXCKqL7XlFhqSBOQnqeraHW1xZfVuD/6W8fLQJoR
 XRfKThR2nwC5G+BARFZDKGXYEFFhjjOi+hH3VjUtM44NAcJ18llvGIkqylNWhTwJORpi
 IF9EtktPrj4t1Tr7YrbPNa+C7KVR54sL3btRPqMQybzr6XR+bUyvqENmchqqXvgpB/pX
 BwjthUnQfEeIGB3EYkoZDWRhqdnWLA6B9BTFGxDdjXIeYNAnTrmtBZRuMRmpaQB0zplc
 3Adw==
X-Gm-Message-State: AGi0PubRJy/UUv5ceQZKIfjRkIwKG6/SWQMWxe7mT/J6I0c6XQYAXYlD
 JauwUg+3Kdf/LN4WSXOf3F+70fqw1GE+k7M1VFmB0g==
X-Google-Smtp-Source: APiQypKTK11CweNuCLZHuiNsUqScKK2+NgaXl+En6sRY3fEfxKIbqcGPVRHGTngyxhLH42mRakinkb9pbXES1T/eR+k=
X-Received: by 2002:ab0:6204:: with SMTP id m4mr3886872uao.15.1586946138827;
 Wed, 15 Apr 2020 03:22:18 -0700 (PDT)
MIME-Version: 1.0
References: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1586195015-128992-1-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 Apr 2020 12:21:42 +0200
Message-ID: <CAPDyKFqXYTh_+J=tnTTsK0Q1tj6f77hmnnh60Skw=WYwCCY9iQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] Add support for Xilinx Versal SDHCI in Arasan
 driver
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032221_415961_3F299A93 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 git@xilinx.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 6 Apr 2020 at 19:43, Manish Narani <manish.narani@xilinx.com> wrote:
>
> This patch series includes:
>  -> Document the Xilinx Versal SD controller
>  -> Add support for Versal SD Tap Delays
>  -> Reorganizing the clock operations handling
>  -> Resolve kernel-doc warnings
>
> Changes in v2:
>         - Addressed review comments given in v1
>         - Changed clock operation handling for better modularity.
>         - Changed comments to fix kernel-doc warnings
>
> Changes in v3:
>         - Addressed review comments from v2
>         - Move platform related structure before doing clock related changes
>         - Rename sdhci_arasan_data to avoid confusion with another struct name
>
> Manish Narani (6):
>   dt-bindings: mmc: arasan: Document 'xlnx,versal-8.9a' controller
>   sdhci: arasan: Add support for Versal Tap Delays
>   mmc: sdhci-of-arasan: Rename sdhci_arasan_data to avoid confusion
>   mmc: sdhci-of-arasan: Rearrange the platform data structs for
>     modularity
>   mmc: sdhci-of-arasan: Modify clock operations handling
>   mmc: sdhci-of-arasan: Fix kernel-doc warnings
>
>  .../devicetree/bindings/mmc/arasan,sdhci.txt       |  15 +
>  drivers/mmc/host/sdhci-of-arasan.c                 | 473 +++++++++++++++------
>  2 files changed, 361 insertions(+), 127 deletions(-)
>
> --
> 2.1.1
>

Applied for next, by managing some conflicts for patch4, thanks!

Note that, unless there is a "fix" part of the series, there is no
need to ping during the merge window.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
