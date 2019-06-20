Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9011C4DB42
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 22:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7aq/aNvep70B7r4ShUv0LYz4LfEhm/AZfc4Qsj/7Zw=; b=pbkICDJrflvSf9
	X8smiBoIT+IWkF3id9dZKyYNYJFLSsuI0/lplqS0smlMpSQ1JbclmRUOvedBsKM1bCU8BL2tQJxmU
	lTi4tJmOxVEPhzr/oAs6Ty1/0FA6mU68GEIsPcDCby7Vyd/IiI9dPFGsmAR0PspJoL1ElTa3iayc0
	X83b0wd0vzgwNnvv0q+uTf/bOLZPTOeAyMvd0015oKvADJwfC3RW789F3dWClhQh3KAEtdg/51trb
	ftvUXc1tKBIqk5HDrYLZddFfoxVhKNs4cNvPPmqe5+nnsBTkha+VEn9c/rDp5Y/cux2OLTVcD3t3I
	9/xk8nJ1wf3qzxiyKCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he3if-0004HA-5s; Thu, 20 Jun 2019 20:31:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3iQ-0004FY-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 20:31:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so1201728ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
 b=Iz+3qSD6WbRhUE+tFCZqsR6W+T43RQqlhJuaueVgnsR+UHXqI6yGDiXDmoAN2KQV+J
 K7hg/B5bhJJNeAfOcSvC9amZalXql2GlhpAuSC3SORlAuoH0aFCsWHNWnVuqQGKr3bWe
 AvfJ6cVBI86oXbCiPbIGzMw+OcyhdOGqhwB0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
 b=PIEXBoE8thpRM/fGum2t2W9wtzRB/2/Em+gzTX7Q/BHoVXd2MtcF09hv2rZRNUyMJb
 yJP3dWqYl7gtrYIojsy6mLkz98k5+9VHwz2hTF+VsiJXMDeMjLLzKTfxFsWy/OXLpBOs
 /ZpGLy0IGqWp+PfvKjQgX6NvBcGlR1XHHUEOC5OExEwXTfGDNQ4q5Ca4e5O4W3aYmXqP
 NCMw8cSZXSt7L9dYGwwjcoQ10xtUjsUt2KtuMP8w4uZXYdgGGTWf9ZwpAWz00vGR4QKM
 XMjL64OfCVMR/pfILmmN/n3ZUJUAkHQVs5cPJE0b7Qx+S2EplPE+pPfC3TRTb2MdbDkt
 VJGw==
X-Gm-Message-State: APjAAAWb38YCHrPgk2weih3poVj7GHwtyyYDQnawriDCf7juBeUvMeMZ
 KgW4uob6EMK8YIzsavwzUwNRMps1Cy0=
X-Google-Smtp-Source: APXvYqy/tIS/DOdzLDy5NqQTtHRl0wox/gctZBapnjSTZclCRMN8u8hM0hT+ju4pIHQP4C0PGOsFsA==
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr12664755iog.77.1561062684155; 
 Thu, 20 Jun 2019 13:31:24 -0700 (PDT)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com.
 [209.85.166.49])
 by smtp.gmail.com with ESMTPSA id z1sm1274886ioh.52.2019.06.20.13.31.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id i10so112323iol.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr9824185iot.141.1561062682954; 
 Thu, 20 Jun 2019 13:31:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org>
In-Reply-To: <20190620182056.61552-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 20 Jun 2019 13:31:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_133126_105676_02C3794D 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
>
> This 100 ms mystery delay is not on downstream kernels and no longer
> seems needed on upstream kernels either [1].  Presumably something in the
> meantime has made things better.  A few possibilities for patches that
> have landed in the meantime that could have made this better are
> commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
>
> Let's revert and get our 100 ms back.
>
> [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
>  4 files changed, 4 deletions(-)

Maybe wait before applying.  I've been running reboot tests now with
this patch applied (among others) and with enough reboots I managed to
see:

[    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)

I'll see if I can confirm that it's this patch and why things are
different compared to downstream.

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
