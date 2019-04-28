Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7A0B689
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p9vrq8+HGXllpGjq1rtzR2ndQ5j5gyGoTMhQo9AzZ/I=; b=WPml0TPc1Z6+C5
	NGbjpHRtKJ0yPaEKYghmGadLkciqUMl3ZDvYnMVbQTiwMYArRLCfH/ayP2yfE+bCOSlA3Rw60jJAQ
	2GpvAOrTJq7tAVCV0++IoYULiLwJ78gfdYztqL9KrjjiQ5U+lMdxny51kDVbx9xIUE7i+6UfIWU8l
	KFdza9l+Yy8Rf2KN6/19WlGLFxoUFQs3OGcmzEYdfWpTK687U2abJs5deRAv4mrVje2LwjubQWhHT
	O6H6iwrmrs4beUL0fG9fsVCT1XcfgV0UqLBIShrAp1w/Qu3dIgvZ/pclJ6kFLGb1wj/qa+h2fzhoX
	OnQBnCydxikYOEotIOCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqJr-0003Uo-9F; Sun, 28 Apr 2019 20:22:39 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGp-0007dO-Es
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id u17so6362045lfi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ynWc6Z40VdwOntmZWQCwa70C+O7RxruKI1yBX2hMDVg=;
 b=kEo/sfp7t5sxDZhsxrgFabEdgjJbJQPMjRz7SAEsqbRiYLP+1PrMGciTNhPcn+VQsZ
 YtIezJs14LlpaGUBe6q8O2c4r2aPAuP6peJTj6TNcuwv1mDIqMs0mw/pM0h2A5v2SD89
 6YtuBPqc7Yn+syp4lTAgs7BdbubzVqbBTJWFoZzqnz5z+8IpdbjxekrsBk/W8y4cFBsB
 7BV7IflunswHkdk2JDkHz3kQEFnRZHBQ3PyFNK9Cx/IRG3wxhqSxDq1unk6LP0CY1G4P
 eS5PTHdOrPLi7L/lASIpC8IUD0uACWZ1hrsBszoL6gbCIzLMgjbEEOlCYc8Xk9hMeHgZ
 rjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ynWc6Z40VdwOntmZWQCwa70C+O7RxruKI1yBX2hMDVg=;
 b=aW7Vc3b+Cj+iG0HBxYdcLWCJy2DBXUGbGEX7HdM6PwIWskxcCK0bXy1a+ASY/vg5Bv
 fRP7kPPwK1GBSfBMEI6ml4N8Kx61UnHaZk+zqXeUIgKND8xn7ytJSxYhFXT++WIIT5FH
 I/CjK6C9AGI6qm9XMwMvpBt7u30qukSujKSKzZUlmFHgSjTT6hyOdqcOPWAc84MIAEC2
 dy5eB7iNVOwfNO4ViHQpJs0o6qbSRjDGJnv6fez4QcHgSPi7Y7ifgg7I/LZLcCzUlvUG
 ek0vKqbQCzc4/aBKjBHduxmnJx153sYrMU7ymilaV4Ys6grRVgw70ZKbcLRET1Ew4zgP
 Xr5A==
X-Gm-Message-State: APjAAAV9yBvJ4mx+XuAROyPzN0fFW4fhY/kMs+N5yuCKU13/djdmR3iW
 5M2gDaDmiBac9cgDjV0cCnlkE/ZCaZa52g==
X-Google-Smtp-Source: APXvYqwchsZgycuDU83qssyup5bEGOEPO9u9xL1OV2cG3f5gEw0mStwFIhWZEpIHxHGL69jNKQs5xw==
X-Received: by 2002:a19:2814:: with SMTP id o20mr30178278lfo.117.1556482769854; 
 Sun, 28 Apr 2019 13:19:29 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s24sm6559951ljs.30.2019.04.28.13.19.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:28 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:32:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: Re: [GIT PULL] arm64: dts: hisilicon dts updates for v5.2
Message-ID: <20190428193225.4mrj2ahy33iwaay4@localhost>
References: <c38eab18-5e57-4e07-dee1-272ff8744626@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c38eab18-5e57-4e07-dee1-272ff8744626@hisilicon.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131931_978337_BEAD636C 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tangkunshan <tangkunshan@huawei.com>, linuxarm@huawei.com,
 haojian.zhuang@linaro.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, arm@kernel.org,
 huangdaode <huangdaode@hisilicon.com>, zhangfei.gao@linaro.org,
 Zhangyi ac <zhangyi.ac@huawei.com>, jinying@hisilicon.com, arnd@arndb.de,
 Zhuangluan Su <suzhuangluan@hisilicon.com>, John Garry <john.garry@huawei.com>,
 John Stultz <john.stultz@linaro.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Salil Mehta <salil.mehta@huawei.com>, guodong.xu@linaro.org,
 Tanglei Han <hantanglei@huawei.com>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 leo.yan@linaro.org, "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 15, 2019 at 05:12:02PM +0100, Wei Xu wrote:
> Hi ARM-SoC team,
> 
> Please consider to pull the following changes.
> Thanks!
> 
> Best Regards,
> Wei
> 
> ---
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.2
> 
> for you to fetch changes up to ddd0dc915647f12b5cbfa0a5e7d65389dcd71771:
> 
>   arm64: dts: hisilicon: hi3670: Add UFS controller support (2019-04-15 16:01:34 +0100)
> 
> ----------------------------------------------------------------
> ARM64: DT: Hisilicon SoCs DT updates for 5.2
> 
> * Hi3660 SoC and related boards:
>   - Added DMA support for the uart nodes
>   - Added the asp DMA controller node
>   - Replaced dma-min-chan with dma-channel-mask to follow the binding
> 
> * Hi3670 SoC and related boards:
>   - Reused Hi3660 reset to support Hi3670, updated the binding
>     document and added dts node
>   - Reused Hi3660 MMC controller to support Hi3670, updated the
>     binding document and added related nodes to support SD and WiFi
>     for the SoC and hikey970 board
>   - Added UFS controller node

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
