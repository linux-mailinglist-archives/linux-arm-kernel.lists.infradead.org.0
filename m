Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93213DEF19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZTpHXi7x4MxMwCje8MysXWbey24o5goM/DOHfUkga4=; b=pzar1z0tmjKfx2
	Cr2lxaTaY9p2hofSbNUeEu6gHvGJ6j7wJ+YZm4xTu+lBuY3KlFfTSDH+BBrxOVXVTtYqQ2ECbf/Lk
	alCmfF34jAcxqnkVvW5TPIo5EW0q9GjbnYHUfVjKOvzw2GZEAYOu46AmJUyT9ptkPy71wXwOXYLfD
	AkNGY78qj+I7Fnn8pFpiKIuTWsxjhMfgsa/+tQjroMoj5JwXIN5rbA01Cm+LIAwTKX3pBMzVn1l0I
	IBTi96qLD144Pr1EOZc3bO11K1R8zL2sDsRkekcHzZQy14XOo2DcpC5Z+64xuDd4wLun++1eVnbuh
	Jtl3q6jbWGHmTQGGFhSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYSo-0007ib-Sa; Mon, 21 Oct 2019 14:15:14 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYSX-0007hx-AU
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:14:59 +0000
Received: by mail-vs1-xe44.google.com with SMTP id z14so8918564vsz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yS8qs3B3YGG+1CaBCs+yd01gHNPGrQOZoSsD0Kk0Jog=;
 b=Pn/BCboTlYXueWFu2lYYLoFGnsbCRWYun52IGpqPIDYrwc2DK/4wSWIlEIAwadC3Ou
 dg7eBJiJxRYXrT6Ya9KUrMlTMR6vzqKpazwDroPYbKI7s/J1NEL0Rsc4GYU+P1Md7r7A
 N0PZnApDTKbbzf9lUyHu+zTbPUaEPLIFUwUG+qiArKuGJgSBDB93WbhnHvQ55Bfly0Bg
 xR0pyZRVdDcRVZVnGK1lHKMSaKowQU4IO4OApws7zDX3vYlltsiAQXfFTgIxakyKHFIt
 cyeEQvT12qW/TlJhRySJdqZaFqyCWalutZWBk3pTWyqlu9Q7ejExawnfBfc4+yN2KrGm
 52ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yS8qs3B3YGG+1CaBCs+yd01gHNPGrQOZoSsD0Kk0Jog=;
 b=JqX8cIItiJ6OQHD8A5bbMQ3jbnBlyDL44JqpYhFpdC3qvKsHgfsjSaTThJ6LfjUn1W
 Px3ZTW0bMYhBJGWAPmP7QF6yOvvUiHms9Qo6aE/V/9eFGPxOAH6dtU29el9xc9azlSM5
 JeEy/DmMDPhhrtVtQj9yJOqxlCnQ+L1kvYzBrTAbDMFF5Nz5bwb0nAfbDmvPnMneoBiZ
 cUQ5W//lHvLTfHkvhSYSPHUFBz8pW2WwjfSaGue3d4dEd7AkYH8s4SXEp00RlXOREyjy
 5pVMRBIjXOTG6ipGK9fZDyhYEUQmFt5jc87FQKKRVFHxwC/xwAFr63PWynD80P9rgEsx
 W7xg==
X-Gm-Message-State: APjAAAWzumqBh7t21UVxSw+czSbJoyx9e7LwoGjs0QkwCPm9y72E9cGK
 Ep+e8nSCSAheRdH9XDNRRx0UmoNxnP7V1tNBtHGm7Q==
X-Google-Smtp-Source: APXvYqz9r09sX0s75qmyPEEUmSKArK+VJBphmNsHF6I2eD5KN0VEOGXWfbqgNE20Ygtof4lmLqC1eZzCLfMc1loRLkI=
X-Received: by 2002:a05:6102:104d:: with SMTP id
 h13mr13907823vsq.165.1571667296086; 
 Mon, 21 Oct 2019 07:14:56 -0700 (PDT)
MIME-Version: 1.0
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 21 Oct 2019 16:14:20 +0200
Message-ID: <CAPDyKFo-8=crHZd9X7JpGJHdEwFs4Pz8rzEtVg6e7QZqE8N8nw@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_071457_363997_B1747BC7 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 Moritz Fischer <mdf@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, jolly.shah@xilinx.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 at 08:22, Manish Narani <manish.narani@xilinx.com> wrote:
>
> This patch series does the following:
>  - Reorganize the Clock Handling in Arasan SD driver
>  - Adds new sampling clock in Arasan SD driver
>  - Adds support to set Clock Delays in SD Arasan Driver
>  - Add SDIO Tap Delay handling in ZynqMP firmware driver
>  - Add support for ZynqMP Tap Delays setting in Arasan SD driver
>
> Changes in v2:
>         - Replaced the deprecated calls to clock framework APIs
>         - Added support for dev_clk_get() call to work for SD card clock
>         - Separated the clock data struct
>         - Fragmented the patch series in smaller patches to make it more
>           readable
>
> Changes in v3:
>         - Reverted "Replaced the deprecated calls to clock framework APIs"
>         - Removed devm_clk_get() call which was added in v2
>
> Manish Narani (8):
>   mmc: sdhci-of-arasan: Separate out clk related data to another
>     structure
>   dt-bindings: mmc: arasan: Update Documentation for the input clock
>   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
>   dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
>   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
>   firmware: xilinx: Add SDIO Tap Delay nodes
>   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
>   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
>
>  .../devicetree/bindings/mmc/arasan,sdhci.txt  |  40 +-
>  drivers/mmc/host/sdhci-of-arasan.c            | 477 +++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h          |  13 +-
>  3 files changed, 498 insertions(+), 32 deletions(-)
>
> --
> 2.17.1
>

Manish, the series looks good to me. However, I expect you to post a
re-spin, to move some of the new DT bindings into common mmc DT
bindings, as Rob suggested.

So waiting for another version, before I apply it.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
