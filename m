Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EE6488F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZJtZUEtvTGZA9Q06i1mB9u3RMgDDjQEEt9/IPrh95c=; b=O8VcwpHu+ohSOR
	0CC0hrL72ANCY2AXzH2K/mCPHPW4vIt5Xs6FPF5PRpITeg/76BWDFbTdOk4eryF5+sUY9kp4ZTl1U
	uQb4eWpdswRFv7Z8LmOadTuege8HD4arQf+h8M0pJR3NOdQeN1OsnVM60jBPzFHidAsJBCcw+wpvW
	WoxT8TCML9yzS1ewGPZrsKk+SeMOJFsDGyplUs/e7g5QxF0bXC9clz0vM5w8XgiofkVFSa2NTaREy
	IYFMTDc0jb2d4NTx0U5dVTiLH2agcaAGrSKyhm0DGgKL4vf8wEe+pKjx2vqavjjfeRum9PLBQH6aa
	g6YiFTgiMTb+4aI4WI3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuXH-0004SB-FI; Mon, 17 Jun 2019 16:31:11 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuWf-00042A-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:30:35 +0000
Received: by mail-pg1-x530.google.com with SMTP id f21so6118519pgi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
 b=CPHtJ2By0lXch1LgQEpHWMooMYGBDG2ewjy5cFlf67lYX9MHcxSYLY29NJuImhdguf
 /+igoGJC4XV5ibOc1FOAUdO6E0/P1MSwn86hbG9Z79eHYo6+WNHqw75pV4imKh2vrtm9
 eBeLhPIORJTD+D/nevbhWZqjiS6LMYN8AQvCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MZrjut71NWNNaKlLd3kxdXdldXiQAJyc0Qxm4bxHoDY=;
 b=OrEnLIBgzFshowPsG1neNUfIaQpH/kbR6oBHfDQwMXeAuym3+PGAEvEpeeuRdjxmzn
 bvA24zVbd+JNpy2QaQzcaqAy9HzahprRS4lVac6Tpvv4bXh/6/9+ElAvEaum+rnxQlb1
 oNzo2oxYwDemHHopCbS4bViQbp/afyEowzaaFMUVFokdMj8npvXTABl8Icqg5fT6i2sG
 zqMCRvhJB0/0VctYq0mUS6otBh/4j9AULu9EreBAzA45ngeE8ZVDVc8rDVfbq3VsGPzd
 Azy6pgBsA0aH/in0WN5A6bqhcoLzQQGYpuKifmWMgMUlNGKVVxXiVuGqUF7o2mdvKbCB
 vbCw==
X-Gm-Message-State: APjAAAVH8GD8psZOlfHFYQRbpvwHazx/XOYQEuRpaGmqTCN+OQvfxR1p
 HCQ49jNPxtedkoXMMPh1EGaHPFsEkng=
X-Google-Smtp-Source: APXvYqyeGb12otld5CDA+Wx17m4Ieywv4C5/6/QbfVQQ946V3lEKoBfvkyLivdI7EXj5RHu0cN6fug==
X-Received: by 2002:a17:90a:9289:: with SMTP id
 n9mr27273064pjo.35.1560789032483; 
 Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id ci15sm8076407pjb.12.2019.06.17.09.30.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 09:30:32 -0700 (PDT)
Date: Mon, 17 Jun 2019 09:30:30 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190617163030.GS137143@google.com>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
 <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093033_470437_9B1F5B39 
X-CRM114-Status: GOOD (  22.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Enric,

On Mon, Jun 17, 2019 at 12:08:25PM +0200, Enric Balletbo i Serra wrote:
> Hi,
> 
> On 16/6/19 17:41, Pavel Machek wrote:
> > Hi!
> > 
> >> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> >>
> >> According to the commit message the AUO B101EAN01 panel on minnie
> >> requires a PWM delay of 200 ms, however this is not what the
> >> datasheet says. The datasheet mentions a *max* delay of 200 ms
> >> for T2 ("delay from LCDVDD to black video generation") and T3
> >> ("delay from LCDVDD to HPD high"), which aren't related to the
> >> PWM. The backlight power sequence does not specify min/max
> >> constraints for T15 (time from PWM on to BL enable) or T16
> >> (time from BL disable to PWM off).
> >>
> 
> Hmm, clearly we are not looking at the same datasheet, because in the one I have
> I don't see any reference to T15/T16 or LCDVDD. And, I assume I am probably
> wrong because you might have better access to the specific panel specs for minnie.
> 
> I looked at my archive and the datasheet I have is similar to this [1]. In page
> 21, Section 6.5 Power ON/OFF Sequence, there are two delays T3 and T4, it is
> *min* time between the pwm signal and the bl_en and it is 200 ms. That's the
> delay the patch was adding.
> 
> [1] http://www.yslcd.com.tw/docs/product/B101EAN01.1.pdf
> 
> >> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> >> ---
> >> Enric, if you think I misinterpreted the datasheet please holler!
> > 
> > Was this tested? Was previous patch tested?
> > 
> 
> IIRC, It was tested measuring the backlight power on timing (although I am not
> sure if I tested this on minnie or another board with better access to the pins)
> 
> > Does patch being reverted actually break anything? If so, cc stable?
> > 
> > 								Pavel
> > 								
> > 
> 
> Probably will not break anything, I don't remember the reverted patch as a fix
> of any specific issue. IIRC it was more a fear to be out of specs but I'll not
> be surprised if the datasheet lies and this delay is not needed at all.

Indeed, we are looking at different datasheets. It turns out that
'B101EAN01' is an underspecification, minnie uses the 'B101EAN01.8'
(eDP interface), your datasheet describes the 'B101EAN01.1' (LVDS
interface).

> Matthias, are you reverting this to solve any problem?

With the patch there is a user perceptible delay between switching on
the LCD and the backlight. Not necessarily a big problem, but better
avoid it if the delay is not needed.

> Could you share your datasheet?

http://www.yslcd.com.tw/docs/product/B101EAN01.8.pdf (the server seems
to be down currently).

Thanks

Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
