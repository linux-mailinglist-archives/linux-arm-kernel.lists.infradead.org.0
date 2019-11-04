Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CB2EE379
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QeqjCzwMuPWMsqDeUFK9+u9bFrcpfuRZ1UFkChcAtsY=; b=AVX3kaPf02QrW2
	SsEicL8xYENHgmadOO7MxuOd0YK2uu+SwqJMR3PqfbWPnR4wClR5DUlg+JEXLnIphpEsMc5AXSxN7
	7IuIa1cXWQ9DGUEvxgbysFJcunn3YRTp3m+n+4SFqLU0tymYGDR3V0aRF2jFpH6LZUUZkT9o2iE73
	pNbq8JIeFkAiKICYlfunghb29KbFWiLIq78ec8B/aUg/gR+TCYe2xCpdjfWUndHJOMUKH6c9brRDP
	GHGvJRWQSM3C6m2HSptlwnE6RHbhp/1px3n1qcaNah61upDuyFKTIsb9mGpxB7H52Lq3A9vkePMJl
	PZ4q4XL/n3DjT1FUouhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe7w-0005Pi-IF; Mon, 04 Nov 2019 15:18:44 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe7q-0005P3-0f
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:18:39 +0000
Received: by mail-lf1-x144.google.com with SMTP id f4so12530052lfk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+E7LWzV2qXCNRIBtcAIV+W0ZCP1K/HQKiWB7nT2TOy8=;
 b=D/cI3U9xqryIIgDDI2eBVyrOv6zSDY4Pv+f328Xd9w0FWRKPL9SepMctPo8vzhaaXq
 JKh/YWLF8H8HIBlZDPxh1/vPfUusVLkKj9OZoYWNzerJtUMNPqKhjNTdpnRpyqslruwb
 CegL3eXGFM1VOu/QZKgQ/twCosf0mPtB6Kxb9u42OOC+Ssqzahiso82Zdjw2L1L1kNgH
 IcnrI8vlT9QbPm3Y1rddZ4S8y8GqiWg7CJ4+g2TaNNPSbjKt8VyTvY6valcRjKybX5Vs
 5ePdycM5TguOwltalFWXkyGhlR5maH6n+maZG1hptHww/xI9mWVeSA391hIKB7dsGeTZ
 J89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+E7LWzV2qXCNRIBtcAIV+W0ZCP1K/HQKiWB7nT2TOy8=;
 b=Qez0rxPF0BsiyPB6cP1T+m1GS7SF50cv8B87jQ0qnSSIvW+RDoa97obm/wGSIBMiSP
 YbQ1w8CA4FFmCGB1sslcsDOccVbKb5B87BUblmW6fTVrKWLfHddap6tm058mS7LTlHME
 JiM5VuxueQbwBrMx7oUiPVEk8tJPFYB0Zn/q3VSrKQEnmag67uxVQGs7ZMzkQfCdFI73
 Epo4PNO08HRMeYnCdZx3h9cRWsCVyS2wNlzklU+z7OnDOUcwXP7I8vwWWHFHkmmVTMP3
 uXKCDTka4sEl5Hu75aDjZrXwEUg4cS7d1afoDZgVedXQo3wfnhfp034kInmUDWtQ0nYb
 3RtA==
X-Gm-Message-State: APjAAAXYRa7hYcNWxGSSCmJJGmk0ob0fhFqvRHR95ea7g9QsNIyFJYOw
 BUVmA3LPZ4YkUUHh9JB1flkl/BEVjuJwgyKSOYazOQ==
X-Google-Smtp-Source: APXvYqzj/twzOpW0JzQapnFO7QVDw82naU/CokfBf0anIa43kxBTcOQzzxx1Ne85jRVyIt1xkLGVqg4MTcpngDB6R7k=
X-Received: by 2002:ac2:4a8f:: with SMTP id l15mr16950975lfp.5.1572880715670; 
 Mon, 04 Nov 2019 07:18:35 -0800 (PST)
MIME-Version: 1.0
References: <5dbb2acf.1c69fb81.54ce2.2f48@mx.google.com>
 <9d1a6cba9687f94b2d36a82f42f5d4be2b16e7a6.camel@alliedtelesis.co.nz>
In-Reply-To: <9d1a6cba9687f94b2d36a82f42f5d4be2b16e7a6.camel@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:18:23 +0100
Message-ID: <CACRpkdamE_Zyein+6x70noJ5Z6RJpV2qJEHOVwPxysONH+-Rag@mail.gmail.com>
Subject: Re: linusw/devel boot bisection: v5.4-rc1-31-g6a41b6c5fc20 on
 rk3399-puma-haikou
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_071838_062445_C755B498 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "bot@kernelci.org" <bot@kernelci.org>,
 "tomeu.vizoso@collabora.com" <tomeu.vizoso@collabora.com>,
 "scott.branden@broadcom.com" <scott.branden@broadcom.com>,
 "khilman@baylibre.com" <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "matthew.hart@linaro.org" <matthew.hart@linaro.org>,
 "mgalka@collabora.com" <mgalka@collabora.com>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 8:35 PM Chris Packham
<Chris.Packham@alliedtelesis.co.nz> wrote:
> On Thu, 2019-10-31 at 11:41 -0700, kernelci.org bot wrote:

> > Breaking commit found:
> >
> > -------------------------------------------------------------------------------
> > commit 6a41b6c5fc20abced88fa0eed42ae5e5cb70b280
> > Author: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > Date:   Fri Oct 25 09:27:03 2019 +1300
> >
> >     gpio: Add xgs-iproc driver
> >
> >     This driver supports the Chip Common A GPIO controller present on a
> >     number of Broadcom switch ASICs with integrated SoCs. The controller is
> >     similar to the pinctrl-nsp-gpio and pinctrl-iproc-gpio blocks but
> >     different enough that a separate driver is required.
> >
> >     This has been ported from Broadcom's XLDK 5.0.3 retaining only the CCA
> >     support (pinctrl-iproc-gpio covers CCB).
> >
> >     Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> >     Link: https://lore.kernel.org/r/20191024202703.8017-3-chris.packham@alliedtelesis.co.nz
> >     Acked-by: Scott Branden <scott.branden@broadcom.com>
> >     Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Hmm,
>
> I don't see how this commit would have caused the oops. The new driver
> shouldn't (and doesn't appear to be) run on any platform as nothing
> declares .compatible = "brcm,iproc-gpio-cca" (yet).

I think it looks really bogus as well.

Could it be that these systems are memory constrained such that
the kernel image just exactly right now collides with the upper
memory limit or corrupts its own ramdisk?

I suppose I can't ask the kernel robot to do any more detailed
debugging.

I can't see any problem with this patch.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
