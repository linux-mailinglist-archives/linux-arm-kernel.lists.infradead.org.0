Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244857312B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikyoMGkVmkINif07RZwMHrDlce2TVAysFFpnvdoudHI=; b=H6WipjsYnFypwj
	0ylQ/l97lpk2c/MXU29DXRWSfqEqA2r/DSo2w31peJ/lA8SDu8wnxa6qz1XPtMWMwRk2Wn5CtmutW
	vAo5T+hwtPbhpcyVfWL/bHigFCb34c5OYFLRDKLGHhG0qLaMaVAEQrSvMyXpwgwmsV6ZNWO7UkO8w
	7Hae/XGfBQk+jUn+CncqaH9g0hGvcc8V4xrNHz+WSIgHKW5Mf9dtHRmrBIgP4UaQdYZDPSC7pA8U2
	19s9cwsoduiSFzqGFZd2a44jmj/KyXuorZbcLVKvOta5akoeh4k2LSTVYvx8XrnHAs7SDRugbHnzw
	RN/9FwVZzItfuT+wFgZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHxL-0002i7-4l; Wed, 24 Jul 2019 14:09:23 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHxA-0002gh-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:09:13 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v6so31459566vsq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 07:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vu225xqfPN2/rLvfSwAsEyzbhQbRUYBKagHgr6BRdsY=;
 b=QyZ2HwJpThM1hA/UrkoCrMIzIG1qKdbxY22knQQ6jxvlptPvYfpn/ryUOMMQn8eIhA
 AC3LnHEkrVN5bI1nJ0thtUrgSKSGzTVwtdDypWV/ILV8M+LY27M+POFs7fT1Y1FAux6y
 n5e83tSvhWJURpzxfWwdhmaiSaLuirPtbrz66wDsPj/I6IsUhr4h/Y7oxSjQJ2ZSdOTa
 8E3tmXjCaipnHIW/zQf/E0FmjEYsP2Zc4TyCHaczJpoZtU4g4m0Llb3u+TSyJ2v43wBF
 95VsWEolqVKTuSeVcf0xALB10xPazd6MCw22nAWZ01zUiGzuaSu+1dC4iDVTv21g6aft
 lPLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vu225xqfPN2/rLvfSwAsEyzbhQbRUYBKagHgr6BRdsY=;
 b=ZqKuB9KmeuuJ2gF35XB2T6m2oYDcmT1yup/PU8aNEaK16xHw7p7XaDQPlqMiUHnlrz
 KkFVj4EbRheTC6QpH0wr6yfXP/Jt6HwkLqz+kSor9GASi89umbBK5NcMMp0Rqm/9/PmI
 hh974PePp2JZb3vb22i6u5rNWLT1r9HXa54LGtz3rKi7/lPhcOj8lgOe9ywBqTRggR27
 1AF/vuc3ejpMmZB5MLcGB5atrhWwmTOoVOjrweX5+OCPKiMkeZDLxEXNRDX/BQm/0Ukq
 DfAo6vE1IFlIyoszrRKH7ygHaQFqu4mYfJ35iLU1val4lvBJIY3tkUgFYxLH/b4Ic9Qk
 6KDA==
X-Gm-Message-State: APjAAAVjT7jGoc/snH+iMbr6Lbqp3Ln+MtWFD6gnMaoD+lHJG5chdMEr
 A93NDUXyAMyP78kBfUBuEf/QM/knQsAHDjP4bdp1CA==
X-Google-Smtp-Source: APXvYqxssmW5IGjzFz7Uo+wZjJeNnk8rwQp/G0i5AYPNWrc/17j2TjRxyzFkW1UAR4ii57bMU5HGHANrJsgPGutsiDg=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr51771554vsp.191.1563977350961; 
 Wed, 24 Jul 2019 07:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <1563774880-8061-10-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1563774880-8061-10-git-send-email-wahrenst@gmx.net>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 24 Jul 2019 16:08:34 +0200
Message-ID: <CAPDyKFqrbwJ9G0Za+U2FCBB=GKpMZdXesQAHZ+8v8T0fCusmiQ@mail.gmail.com>
Subject: Re: [PATCH 09/18] dt-bindings: sdhci-iproc: Add brcm,bcm2711-emmc2
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_070912_458772_3DE4BA6C 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Matthias Brugger <mbrugger@suse.com>,
 Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 07:56, Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Add a new compatible for the additional emmc2 controller
> on BCM2711 and clearify usage.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> index fa90d25..09d87cc 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> +++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-iproc.txt
> @@ -6,10 +6,12 @@ by mmc.txt and the properties that represent the IPROC SDHCI controller.
>  Required properties:
>  - compatible : Should be one of the following
>                "brcm,bcm2835-sdhci"
> +              "brcm,bcm2711-emmc2"
>                "brcm,sdhci-iproc-cygnus"
>                "brcm,sdhci-iproc"
>
> -Use brcm2835-sdhci for Rasperry PI.
> +Use brcm2835-sdhci for the eMMC controller on the BCM2835 (Raspberry Pi) and
> +bcm2711-emmc2 for the additional eMMC2 controller on BCM2711.
>
>  Use sdhci-iproc-cygnus for Broadcom SDHCI Controllers
>  restricted to 32bit host accesses to SDHCI registers.
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
