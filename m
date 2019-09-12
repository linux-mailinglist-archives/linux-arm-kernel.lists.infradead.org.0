Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 692AEB08DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qIjw3Ct/Pgz8+uUA0ycJxxU4xQRY9YpR+nvDkbt8hXE=; b=npjmfpefgt9UKh
	hKZy6qGi6xsHIsEXnQMw1GLqLcNgzrPCSB5hkssswpGpMqT+KIEgbNFVSFDfn7paYepNbc9m2qq9A
	8AcQyolmb9bvSzlTKwM6NT1mmJdOlKujXD2fIWKDiyzIgexLIQtFj7LvUHof+poQ3z8MXuealIUY1
	FNLCvRGrd5PiLHvO5SB1TnReVeERmjHGbwmKUus1MZcMxozBZ8Pi7N8LfG/WTkz+j5xHe6pc4VJpp
	uTW2tZxj3yOqgdrnH+meZTuNLBM4T/WHloR2Gyof8dHkoHCoVcrS4q1yzOqk+b6ktoLX0V+GgKkxK
	xSx8GLC+W0lBN09ZeUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8IfJ-0004TV-SK; Thu, 12 Sep 2019 06:33:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8If8-0004Sx-0L
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 06:33:03 +0000
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 034C920CC7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Sep 2019 06:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568269981;
 bh=Oo2cjKAiV3rsOkBdBi7Hyx8RM4IQKUDaU+NoHYxtRkY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n3EhKwYt1YNWIMvXgdASxGW0kH4zqKM9HsPNNFPprhlezL2o3C+ijNZ3/0K9N4b+2
 WMu4Il3SdMs9OOtpT7BfWiqnQFMJyXE+RF9a9mUWR6GwYDVvOJWkP55iXzNVs8T8z8
 nwt0Su+QKPMM/BZT48EsD8A6JAuXyYl2lI84TVyE=
Received: by mail-lf1-f42.google.com with SMTP id c195so3466179lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 23:33:00 -0700 (PDT)
X-Gm-Message-State: APjAAAWJUIIPOn/TlsMoHQdG4PuupOlFhu6aV6GHq3288kJ0NN6JY5zA
 iMUg0OXZZkBxGflFHYRqcgxYY82MAOwwJ0mnqw4=
X-Google-Smtp-Source: APXvYqznuXgFn7odIM98fPDcWkgctFSvzUYGAl/cTNXN/571YUmoELzvTRg1eO9Bthq5P/b24gmtV+lPmP0zKwmTFkg=
X-Received: by 2002:ac2:43b8:: with SMTP id t24mr7676135lfl.24.1568269979189; 
 Wed, 11 Sep 2019 23:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190911183632.4317-1-krzk@kernel.org>
 <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
In-Reply-To: <CAK8P3a2pBV+fh0rHitZ30Zz61QNRLfNSD-nhnzq4ZtxSh66F1Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 12 Sep 2019 08:32:47 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
Message-ID: <CAJKOXPcOSvc2DfoN+7Tca=t5dSm3RcKqmm06AfR0PAVBeY=GvQ@mail.gmail.com>
Subject: Re: [GIT PULL 1/2] arm64: dts: exynos: Pull for v5.4
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_233302_066823_D2CD8242 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>,
 "moderated list:ARM/SAMSUNG EXYNOS ARM ARCHITECTURES"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Sep 2019 at 23:07, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Sep 11, 2019 at 8:36 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Hi,
> >
> > Unfortunately the patches were applied right after closing the linux-next.
>
> Hi Krzysztof,
>
> I took a look at these and am not convinced this is right:
>
> > 1. Fix boot of Exynos7 due to wrong address/size of memory node,
>
> The current state is clearly broken and a fix is needed, but
> I'm not sure this is the right fix. Why do you have 32-bit physical
> addressing on a 64-bit chip? I looked at commit ef72171b3621
> that introduced it, and it seems it would be better to just
> revert back to 64-bit addresses.

We discussed with Marek Szyprowski that either we can go back to
64-bit addressing or stick to 32. There are not known boards with more
than 4 GB of RAM so from this point of view the choice was irrelevant.
At the end of discussion I mentioned to stick with other arm64 boards
(although not all), so revert to have 64 bit address... but Marek
chosen differently. Since you ask, let's go back with revert.

>
> > 2. Move GPU under /soc node,
>
> No problem
>
> > 3. Minor cleanup of #address-cells.
>
> IIRC, an interrupt-controller is required to have a #address-cells
> property, even if that is normally zero. I don't remember the
> details, but the gic binding lists it as mandatory, and I think
> the PCI interrupt-map relies on it. I would just drop this patch.

Indeed, binding requires both address and size cells. I'll drop it.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
