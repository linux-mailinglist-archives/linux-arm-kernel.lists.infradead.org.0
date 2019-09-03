Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407CCA719A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 19:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84iMxIB07S2t9yJTCuJpKGOrLy05U8ez8IaQg/faYSY=; b=GYBLA/rJHW28PC
	RjxP6ifEp5jrFy/Bc8wQzbAZq5if/bGkbwRreuOFlnk2/DperCRVZfeIq+GziQS9tm/u9Rku4VusW
	sgIjxPr/j3mqfmDlu8PcdDVTzjUncWcA+IOO9u5sO/cAIuIE/O2Rvgth5+v3SDe0kcYQ/WRh5owVp
	GQfTg8Pkb8QAqqrUiuT8m6q79X/8k6YYmlGuhXXLOZoubJDNvTgByefiFXNksEH8ppKIDda9hUMmz
	YYul8UnCM5JLzkx7Z/YYkKkE55uDzVyA8bFYcGYqNQqubtUXFbpVEC9oyOqgFz4dxsXAf7/pRHtmx
	AsahlQbZfhMYWFB2Zt5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5CVS-0006NY-IZ; Tue, 03 Sep 2019 17:22:15 +0000
Received: from mail-qk1-f193.google.com ([209.85.222.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5CVC-0006Mr-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 17:21:59 +0000
Received: by mail-qk1-f193.google.com with SMTP id d26so9138782qkk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 10:21:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+yX6K+GSfFVsEprEqhk1LVFi55m2T9zHs0bHG7G6LzQ=;
 b=XElj22i6YAVGNcK9VLUG6XSmZvGIWx1bvu2c3pihd0ysQyvTNfHpuuIBPfbNLDZ17j
 THqqoi4ILJYXSv/ziNfEYepX0a+lfU3mkiczgujpW6Iu98y+HUIQMBV8I4/puYE8kfpN
 jqTO7Tk5ZK61Hfes3kOKYSJyWYi/xXdZWQhnoymrd3H36SbDMI9jS76l7cEsjGWrHArW
 l7T137vlJ7FFlCh/HTuqjY8VMv9cl9O4RSNZDiDTOlO0f7+aor4MSu5aMdI97kYNqcul
 1hBdko1Tdsd0QMdQrVpsceYDtaiNRJ4IHzuwhO2kAbeIExG7q2FQHghVsUT1L1GqADv3
 ArkQ==
X-Gm-Message-State: APjAAAVKqO8RqP5CKecnCaAVPVfX+Maw7aGgDvH8r4vIgabA6nQjqGHp
 Qq8Tx9NnoNGesvMjPczel9D3ckhjMuh+o8FLiWw=
X-Google-Smtp-Source: APXvYqwtVaqFxj0uX5/gAyatD0C+Cv5WnzBDBxUeYKcBYyKebRJANZCfhlV3+7wKIyuDzZrhDolFX0Yg4QMPMSMw5Hg=
X-Received: by 2002:a37:4b0d:: with SMTP id y13mr34490800qka.3.1567531316765; 
 Tue, 03 Sep 2019 10:21:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190816163042.6604-1-krzk@kernel.org>
 <CAJKOXPcgZ2_ofZyAeTSxALkALaP-SFNfvNmNPYSPyLzuhpGZ0w@mail.gmail.com>
 <20190822183519.GA23735@kozik-lap>
In-Reply-To: <20190822183519.GA23735@kozik-lap>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 19:21:40 +0200
Message-ID: <CAK8P3a1_Qw=OB31yOCrpPs8Ys+=9tt4Pnyd=3+2JGzRXJV1KAw@mail.gmail.com>
Subject: Re: [GIT PULL 1/3] soc: samsung: Exynos for v5.4
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_102158_142208_ECC35E14 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.193 listed in wl.mailspike.net]
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 8:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> On Wed, Aug 21, 2019 at 09:51:09AM +0200, Krzysztof Kozlowski wrote:
> > On Fri, 16 Aug 2019 at 18:30, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:
> > >
> > >   Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)
> > >
> > > are available in the Git repository at:
> > >
> > >   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-drivers-5.4
> > >
> > > for you to fetch changes up to 40d8aff614f71ab3cab20785b4f213e3802d4e87:
> > >
> > >   soc: samsung: chipid: Convert exynos-chipid driver to use the regmap API (2019-08-15 20:25:25 +0200)
> > >
> > > ----------------------------------------------------------------
> > > Samsung soc drivers changes for v5.4
> > >
> > > Add Exynos Chipid driver for identification of product IDs and SoC
> > > revisions.  The driver also exposes chipid regmap, later to be used by
> > > Exynos Adaptive Supply Voltage driver (adjusting voltages to different
> > > revisions of same SoC).
> >
> > It turns out that it brings troubles (code is executed on every
> > platform polluting logs because it is an initcall, not a driver) so
> > Sylwester (submitter) asked to skip the submission.
> >
> > Please ignore the pull request.
>
> I talked with Sylwester and Bartlomiej who contributed the chipid driver
> and they provided small incremental fixes. The driver is still useful
> and in the future it will be expanded towards AVS. Therefore please pull
> it or optionally wait a week and I will send incremental pull request
> with fixes.

Pulled into arm/drivers for now.

I have drafted a related patch recently, regarding the related
arch/arm/plat-samsung/cpu.c file. This is part of a longer series
I'm working on, see https://pastebin.com/ZqeU3Mth for the
current version of this patch. The observation is that mach-exynos
is almost completely independent of plat-samsung these days, and my
patch removes the last obstacle from separating the two. I have
another set of patches to do the same for mach-s5pv210 (which shares
half of its pm.c with plat-samsung, but nothing else).

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
