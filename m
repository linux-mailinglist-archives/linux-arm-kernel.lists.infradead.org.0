Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F642103E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bmW9Sr4/jyOyQC7NvRwc4TzYLPh07l6MfcC9SRGaAg=; b=IAwwAz0WtxtYkH
	W3ZF7O1Fwv/znny1nxfxR1AaqZEZop8oznrDNpNNLRM4Thv8auObm+TYj9GnAS4lf7KAWz5Vxqz2B
	SfP4U7F6u9CUL/5GdvY3Y3wZQ8SdzzdPWlw+q3osH25Rs7faRhmsqMP+cLPqJnCgwJBQu5GPd/yRr
	ETxVAX8m/MKS1s5YHIx8FEMJkMKJ9DF6IehQyVQJ4meHLja+oIPKv0N+KuPJMZjwiv+cmwTFYCfEN
	iRrYU765FfDhjZi85rvveezfRhqm/Ypl2zK/jyGyQy9c+2RnwEXrI3kU/nkS9hlLayTxcuiovrDB6
	wRyGKQhN1gTXUKJ7CvfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hROCy-0003Gw-MV; Thu, 16 May 2019 21:46:36 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hROCq-0003GX-IW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 21:46:30 +0000
Received: by mail-vk1-xa42.google.com with SMTP id v69so1463915vke.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=++a8Pfd1pmd0gtgzMiYzStSZkT1QAJ0q9LoMMmyznno=;
 b=lxC0mVIjA0SLzDUNfcqRwxoiM0ULrrdBItgvpMV0PYh4yCZN/egZlHDYXZIOCb0MWy
 MEptyIyNH17TyhG2+6tHcF8ypoGmsF8PJqLzkBm6+Qlwyk2Q/8Ro+UcRneAkuDiSuMtV
 KnOVeynDlXHVxD7AA7uJiQXAlzHOQX14yDO8c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=++a8Pfd1pmd0gtgzMiYzStSZkT1QAJ0q9LoMMmyznno=;
 b=a96sKthfn7zaiRHHQSVSyVu+uLsN3j66M1/RFgyTspV1t+ivzQdl4/rnh4oZEYbImu
 f/iRuOlavbgEKPK+p31VMRuTLdKy1nIn+KlxZIEMB0L6AmIUiUXF64vdWGnkOBHRpj9O
 zut+cim09Sp8MteYfTwE9K5dRMWzlm33d8+1cvJ9WpOA0doPLV+Gh2E5+1eTQvorjXkU
 g2jC9RSv4w5zQpEZxe6/mi0S9bU4xq6YYZVetuVpPREWONAXdur2YJaofYsn61YPcJwR
 WPIgrqNzd8JzwuCb+7d5m1tkmrf0q/L6mLxBfo1tDh9tF0gHgPlkjk7muIWZtbIfNsJc
 epng==
X-Gm-Message-State: APjAAAWj31oH/9whYSVQu0bcZ+WIEV3HNxK+pOBNv2sKxxBjGoU1Y2LX
 FYeEC4VLyLJB31cBnxBfFfc1qgysa5o=
X-Google-Smtp-Source: APXvYqz26mXmR3yDlAUyGWDxOcl4hi6LKi0CLlEjrn4SOHufYqm5uiiXZV0y9zmlwpZJZKkIRFYqmA==
X-Received: by 2002:a1f:8ad0:: with SMTP id m199mr610668vkd.80.1558043186754; 
 Thu, 16 May 2019 14:46:26 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id l31sm3323345uae.15.2019.05.16.14.46.26
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 14:46:26 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id m1so3297459vsr.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 14:46:26 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr18643024vsk.149.1558042747509; 
 Thu, 16 May 2019 14:39:07 -0700 (PDT)
MIME-Version: 1.0
References: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
In-Reply-To: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 14:38:52 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
Message-ID: <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
Subject: Re: next/master boot bisection: next-20190514 on rk3288-veyron-jaq
To: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_144628_633911_1F240CDE 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, Linux PM <linux-pm@vger.kernel.org>,
 Guillaume Tucker <guillaume.tucker@collabora.com>, mgalka@collabora.com,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, matthew.hart@linaro.org,
 Kevin Hilman <khilman@baylibre.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

From: kernelci.org bot <bot@kernelci.org>
Date: Tue, May 14, 2019 at 9:06 AM
To: <tomeu.vizoso@collabora.com>, <guillaume.tucker@collabora.com>,
<mgalka@collabora.com>, <broonie@kernel.org>,
<matthew.hart@linaro.org>, <khilman@baylibre.com>,
<enric.balletbo@collabora.com>, Elaine Zhang, Eduardo Valentin, Daniel
Lezcano
Cc: Heiko Stuebner, <linux-pm@vger.kernel.org>,
<linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
Zhang Rui, <linux-arm-kernel@lists.infradead.org>

> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>
> next/master boot bisection: next-20190514 on rk3288-veyron-jaq
>
> Summary:
>   Start:      0a13f187b16a Add linux-next specific files for 20190514
>   Details:    https://kernelci.org/boot/id/5cda7f2259b514876d7a3628
>   Plain log:  https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>   HTML log:   https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>   Result:     691d4947face thermal: rockchip: fix up the tsadc pinctrl setting error
>
> Checks:
>   revert:     PASS
>   verify:     PASS
>
> Parameters:
>   Tree:       next
>   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>   Branch:     master
>   Target:     rk3288-veyron-jaq
>   CPU arch:   arm
>   Lab:        lab-collabora
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
>   Test suite: boot
>
> Breaking commit found:
>
> -------------------------------------------------------------------------------
> commit 691d4947faceb8bd841900049e07c81c95ca4b0d
> Author: Elaine Zhang <zhangqing@rock-chips.com>
> Date:   Tue Apr 30 18:09:44 2019 +0800
>
>     thermal: rockchip: fix up the tsadc pinctrl setting error
>
>     Explicitly use the pinctrl to set/unset the right mode
>     instead of relying on the pinctrl init mode.
>     And it requires setting the tshut polarity before select pinctrl.
>
>     When the temperature sensor mode is set to 0, it will automatically
>     reset the board via the Clock-Reset-Unit (CRU) if the over temperature
>     threshold is reached. However, when the pinctrl initializes, it does a
>     transition to "otp_out" which may lead the SoC restart all the time.
>
>     "otp_out" IO may be connected to the RESET circuit on the hardware.
>     If the IO is in the wrong state, it will trigger RESET.
>     (similar to the effect of pressing the RESET button)
>     which will cause the soc to restart all the time.
>
>     Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>     Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>     Signed-off-by: Eduardo Valentin <edubezval@gmail.com>

I can confirm that the above commit breaks my jerry, though I haven't
dug into the details.  :(  Is anyone fixing?  For now I'm just booting
with the revert.


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
