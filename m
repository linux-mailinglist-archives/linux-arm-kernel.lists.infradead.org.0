Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE7A43650
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9k/4NtLIpqDzcn0bC+l7pznwCDm3Cwtazl8zHbe8M0=; b=WNAZJ8Q/7ZPldA
	qFP/fdLrE4B3DBK++DUJ28uQZmBpx1m3u3J5rl2FLarYF7tpIPRXYt0AUDM3wOUm2XIDsx6J/pIW0
	4AynRdQrbiT1unLlGg8/JZnlAon03C6SAxUWyl8n3D8G5r9vL3/HhqdM9IaJsKZXx2xLQM61JDpZz
	VyD2e9H8D97B0AHDWf9KnWf/g4kDfS97KZiH9D+yN/EKLyBc88fwKacOzaL9qmtmLuyxWXmM9PLZM
	7fVqr68btVZH12pNperPbmZttbz+F0XKbrBOzPacomNMZWgb8yUpH7jRfmCgdwKaruP58x5jOg9S/
	oMGGyPLUY83gs6VFQKdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPYv-0005T9-GU; Thu, 13 Jun 2019 13:14:41 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPYg-0005Se-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:14:27 +0000
Received: by mail-vs1-xe44.google.com with SMTP id n21so12576388vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 06:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CR4I31iRpJNzMeDmL877t0ARvDi8UmH6xTDgLBUKOEU=;
 b=ELoOMPni1y0S2Eeu4CKg+k17whALIizetT7cvmiVzng2ASoWY/zEf4QCF5Q4OCkG4r
 lLSK1k41lMROJ+CxzlSyxs4V908CnVex3CA8jzK+NeJYcm9x2tEsn3yAQP+XWphKFejP
 JnPcJGVuzsD2hPED5Rx4zSlBDEMa4cgvvknreVnW5pBkqU20fs0btRzAemvxo5UuMhXw
 g5QinFv6WnqFTkUUnCvRl6n9kN9cK8l6xbWlCP4F+wdmQWWeftsL/0JGcradgEWeJSzp
 QWxvGdPrSOdP1tTXeg1zxynQFa/LfRm4TmZHofWD2iwya+qc8IzJc2B3hZq6Tq0/OBz1
 lEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CR4I31iRpJNzMeDmL877t0ARvDi8UmH6xTDgLBUKOEU=;
 b=MMf4dEASpgMgeRU2Qj8/2yFUR//aYulEitUAMW0UXd2e5hhPtrH7SRoykVh/tiONPB
 nVo9VSVoca3k0kG7yKCS6se714awlRZgJaE2WuC29+5DkcdK/T2kTbj84wByTdXl4Wf/
 58g0zZbl0UFfdeuUt1hBkFzi4VOgZFCJRE9DClFWWvLPi7vx4HQuCSSn2+XJs4BgzJc3
 YB00NzEQvebQ79Kptys5gJiAFWF/IKgWNuw3tX8PT2M0xW2O8AP+9rrfHIK/FYAmGsLx
 L2/u/cSUG81cF4Xjau/qJMqZ6HMyyn9QjPSY17polPjOfQvwMWQk9pIufeYDUjKYdrOH
 aZIw==
X-Gm-Message-State: APjAAAUI0XL8JjY9vFuUARUGlCbIhZJnZ2rLg0d/jRpTpjpz8b/KTbtd
 yGtkuhmvTRtg5ShFDwx/nzsaChUjGJ3sOvBNoG/5Qw==
X-Google-Smtp-Source: APXvYqwbXxtKhJhPoMfm6hW9bmujkyqa7UqRJRkTixkWhWXjnp1ugr9ACSLRfaX8ICyv+pkIWZG5c6+bqjRTtP+mu6A=
X-Received: by 2002:a67:ee5b:: with SMTP id g27mr15041407vsp.165.1560431662796; 
 Thu, 13 Jun 2019 06:14:22 -0700 (PDT)
MIME-Version: 1.0
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
In-Reply-To: <5b7e1ae5-c97e-5a21-fc3e-7cc328087f04@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 13 Jun 2019 15:13:46 +0200
Message-ID: <CAPDyKFrULRk=cHzVodU9aa6LDX9ip-VPHNwG7QXhmNZrMpPjGw@mail.gmail.com>
Subject: Re: [PATCH V3 0/3] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_061426_137168_4D563BEC 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Jun 2019 at 15:02, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
> hi Ulf
>
> Just a "gentleman ping" about this series.
> I know you are busy, it's just to be sure you do not forget me :-)

Thanks! I started briefly to review, but got distracted again. I will
come to it, but it just seems to take more time than it should, my
apologies.

Br
Uffe

>
> Regards
> Ludo
>
> On 6/3/19 5:55 PM, Ludovic Barre wrote:
> > From: Ludovic Barre <ludovic.barre@st.com>
> >
> > This patch series adds busy detect for stm32 sdmmc variant.
> > Some adaptations are required:
> > -Clear busy status bit if busy_detect_flag and busy_detect_mask are
> >   different.
> > -Add hardware busy timeout with MMCIDATATIMER register.
> >
> > V3:
> > -rebase on latest mmc next
> > -replace re-read by status parameter.
> >
> > V2:
> > -mmci_cmd_irq cleanup in separate patch.
> > -simplify the busy_detect_flag exclude
> > -replace sdmmc specific comment in
> > "mmc: mmci: avoid fake busy polling in mmci_irq"
> > to focus on common behavior
> >
> > Ludovic Barre (3):
> >    mmc: mmci: fix read status for busy detect
> >    mmc: mmci: add hardware busy timeout feature
> >    mmc: mmci: add busy detect for stm32 sdmmc variant
> >
> >   drivers/mmc/host/mmci.c | 49 +++++++++++++++++++++++++++++++++++++++++--------
> >   drivers/mmc/host/mmci.h |  3 +++
> >   2 files changed, 44 insertions(+), 8 deletions(-)
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
