Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA6DA7610
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 23:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eptFArbL+6EsLsPvkPDLyl9t5dvMMdxfbrrkASv/Kog=; b=CzSsXOr/QeqCu2
	nYTSHEiP3fWQXpoUqv1sissTwJAKga+MMmHEvw4Ox/l59n73Jd5xbLN4pAwrzf6to3QhIFsDybecJ
	GPRIAOWoLeFQMt/OYJDJtbl2DoscZh3jHintLbHtgbIYfhknPvYoQAAmHV7T5f1VUHCKDp+kJZ0JE
	+3t2qL2prfcbZOxTk4I1FtNwuKWBKh5TNZCxwmtnHsQP1QaG3e5njRFa04lXJWWyV38hobCV8ia9V
	cHf1vR8L5d/VEkEPfxbq1aj+D3bZzgvFo926dmn7wrf5+lK1mHR7u5kD/wYhCC/NdcB9Sx8G9/Off
	ixcncLVP6pyFrxRTEsxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5GBj-00068X-CG; Tue, 03 Sep 2019 21:18:07 +0000
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5GBX-00067D-CV; Tue, 03 Sep 2019 21:17:56 +0000
Received: by mail-qk1-f179.google.com with SMTP id f10so17560945qkg.7;
 Tue, 03 Sep 2019 14:17:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DoFNL2Xw85kFFJUW6peduZxA/0zNesvvkQ9XWqK3cNo=;
 b=nJNLGdTZ0ItKLhXgHr6Qr30fLpVd3G5hV/gMGNmjnMyCY1xX02KaIjCp7OQHbBUO92
 KNnEoN4FvPBp18njOKOHqm6jkB0rdH1nY39DTrvHSBZqrTX2zh0Xj9bc3R7nh/Vqe0uf
 sNcHAvSXY+/F18mYDsQtCOl+vh/Vy1Fhr8zV8akDi31xJF4Z23QTiCaFbWAUW6H8K10I
 Tx1DbU0Dmadl0ppGuikvW92Xi/Ix2ipOx8M6kjVbP5MvaBKAJP8iO8brZLJdFQ0QhNe7
 Y7/if7LcmxllU8+Yehl0mnQBzvRu/JLwaAFL3JnEVy3KYv1W50FKam+a5X8KF5blEmep
 AH4Q==
X-Gm-Message-State: APjAAAUMB78TQCI8sGJoCw82IZbfBX318c1Gr9q1B7nT8/7uKi0IHUzN
 chfDqUT7KdGH9097W/+R18qBINoTpmVL/vcHl8I=
X-Google-Smtp-Source: APXvYqzPKAEL57Dqj6+o72+mq3l1R1POezPpmM6EDrRvzrojkJs6eaKFs7LPI2743Rj8Ua5MEVBUoqoTalVPIEX3XOE=
X-Received: by 2002:a37:4fcf:: with SMTP id
 d198mr35980474qkb.394.1567545474318; 
 Tue, 03 Sep 2019 14:17:54 -0700 (PDT)
MIME-Version: 1.0
References: <7h4l1zrf84.fsf@baylibre.com> <7hv9ufmthb.fsf@baylibre.com>
In-Reply-To: <7hv9ufmthb.fsf@baylibre.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 3 Sep 2019 23:17:38 +0200
Message-ID: <CAK8P3a0JUmErnV+jq8D262y8Tkw9=DYdyEOBn91+yB-8muC8EQ@mail.gmail.com>
Subject: Re: [GIT PULL] arm64: dts: Amlogic updates for v5.4 (round 2)
To: Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_141755_427541_75A8431E 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
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
Cc: "open list:ARM/Amlogic Meson SoC support"
 <linux-amlogic@lists.infradead.org>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 1:39 AM Kevin Hilman <khilman@baylibre.com> wrote:
>
> Arnd, Olof,
>
> Kevin Hilman <khilman@baylibre.com> writes:
>
> > Another (final) round of 64-bit DT updates for Amlogic SoCs for v5.4.
> > Highlights are in the tag description, but of note is a tag pulled in
> > from the clock tree due to a handful of new clocks used for DVFS and
> > power domains.
>
> Here's the promised respin (round 2.1):
>
> In addition to the clock dependency listed above, this branch adds a
> bunch of DT users of a new PM domain driver, which has new bindings and
> DT headers added in my drivers PR.  That drivers branch is also merged
> here to ensure this branch builds standlone also.
>
> Sorry for the noise on the first attempt.
>

Pulled manually into arm/dt now, thanks!

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
