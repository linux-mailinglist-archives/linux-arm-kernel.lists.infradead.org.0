Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA577E917
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wf6qXA/xhEWjo4Vv+iLhPO8GTfyQ72QMk543Vjoqd6s=; b=kK9L9eBqHAhruh
	ntdkY0rNSn7TFSPOPIfr02wDcwVYr8M9bgjSlHFHH3aAEwK9DOkdvdE4HjyOtma+pEGE7wlyIousG
	2mRkGxt7WvtLPYsU7US6FHwwhsx+dIcCIesDOHpw3fd0DRDqQkzcCmvOXte+wXToc3DTcBlhl4dxK
	Hc9/HnuFF5y44RuC0eZHRyPgei+dRd7lL6l8NhWUd7uKluvm5eiHhrzcrPr77a1TpnNSO5YyN25Y/
	x7UKL2sz5WUYCg8qV5ZygoHeoLpNFPzmuxDbJqCbfB812WavGz51b4CgRBK6t4OOPpGEaU+uhtlGn
	aHw/wtiI2JXqbLMq/ywQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA7f-0001PK-RQ; Mon, 29 Apr 2019 17:31:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA7I-00017k-NB
 for linux-arm-kernel@bombadil.infradead.org; Mon, 29 Apr 2019 17:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=; b=v3cXi/lmewwK5SjIaAaobkeH3
 5vATH7Typ6rXMuyNrrTz6+epDCgNNz18oHbVowpIwayr4T9P8MBKE+4tbM5l2Tl6uOfW0D01A84zr
 XSZV2MCSIXDJo6B8gmtKZAt1vxfjbW/7IAT5Sxw2xbrDRK2njuqxHi2ZeGfzBvo0ICIVzThsPfIo8
 xsg9Q4IPP/gcYA1XcJw13dO9cA0RZqRr2CgO6zy2/LHootfGJSCfj+4jAmtRwrSlk2j+4a7QBWQgF
 +6YNMA0dY/WtvmcK+Nb4AaGMveAsludCMoWo3afPShX2JGrAmB9Nz096xtnOAddzi2rndRRa6as58
 nu9TEAfSQ==;
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lQ-0001TO-K3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:08:26 +0000
Received: by mail-lj1-x243.google.com with SMTP id f23so10116982ljc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=;
 b=xNOyBR9tm/L1PFDzPEPPpBt81NrtPjOtAaY+TztDpLOW1hnU1y9Qss0zqIrPgWLu7p
 i1NXOVD7BMNqm4CPqx55LcldmDjz2HvstzaIbEEmVDmvRNDp2nvFRp33YlJRC8yvGLui
 4V4KIxvt0SloN/qaiiJycOhwb9PkWpTsD9ek5nosxmzptDYdYz9kp9ZcQ6QNaW3QIPzW
 E8/i7Bse71rxq/XP6NEO0rUL8QC1G37TXW39/Z20yzXKV3bG8gR/LTfGhmJqoEkivuAZ
 wdSeifmwy0FKBupzYov3+IjP878fbc0lJyyMR1rtrPhoZqjv+lVPIYOdfPr49QiUe0eF
 LwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hLy/N5IIDU5S17Aiea9w/yKdhqHcRyIx5lZCj1/EzYo=;
 b=owLLsyVgWyWWHAZXHi7ZHP023+t9C0zz1jtboGDSIbfKjQB9+t8SCn5hoWK8oFYaqj
 6hM8dqqzRH5SM7xe7Bb2x8kIn0DHhV5HJC2gc3H/7wQ7qsPCGqksEy0Iwj1XNMK6qp8E
 qZiEYNr9068DawNnUW4DDWl8H3eJKIOvwM+55tB/797kGuZk04+WI5gUTvuTtwUmuhqI
 HqneoG2pvs5MtV6oFQiAZjgRDyJa9K+RW7Z4sVf43oIxg4txqv5R48w4Qb1CF0jNKOWi
 Xv49w0M7l8mbMh0QgsUQYHS8YrxxH/qG4/X7wFz88LZzvkL4X5w3xDvEGWh/9mKSGkWl
 mr/Q==
X-Gm-Message-State: APjAAAXl5BqZxo7uIxkuaLw4pP6lrGR4AwcrSn0Pao4MLX1hbcXkkbjG
 CKOh7NW2/gBgPHYGcQNJMfZiqg==
X-Google-Smtp-Source: APXvYqx1UyC6K4jBnPvzwH/GS8GycAaY+bpNnIMrHPnz6Gy67DBivsbRsgqaoPPMMPtdouU+4iwAQA==
X-Received: by 2002:a2e:8905:: with SMTP id d5mr30147170lji.59.1556557702067; 
 Mon, 29 Apr 2019 10:08:22 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id h26sm5374847lfm.11.2019.04.29.10.08.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:20 -0700 (PDT)
Date: Mon, 29 Apr 2019 10:03:18 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 5/5] Rockchip defconfig32 updates for 5.2
Message-ID: <20190429170318.63wwgxov2lbyrvvk@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <3043127.yMmPYKTTFR@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3043127.yMmPYKTTFR@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130824_739898_68DEDD8D 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 24, 2019 at 08:00:07PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-defconfig32-1
> 
> for you to fetch changes up to 366391f04177355320a3dbc5705daa017de5a373:
> 
>   ARM: multi_v7_defconfig: Enable missing drivers for supported Chromebooks (2019-04-23 19:53:29 +0200)
> 
> ----------------------------------------------------------------
> Enable more options needed by Veyron Chromebooks.
> 
> ----------------------------------------------------------------
> Enric Balletbo i Serra (1):
>       ARM: multi_v7_defconfig: Enable missing drivers for supported Chromebooks
> 
>  arch/arm/configs/multi_v7_defconfig | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

Merged with some fixups due to churn in the file.


-Olof
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
