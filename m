Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752A8103A95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:00:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Pm2BFINJgMeSTsDf9ydZk4JiLxTzroHtZq6jq/qeuo=; b=qwDdkOe6U5kCXm
	e3gp0bq+D+IchCLSdV6EB/8YdH6yf9UdVvbMhh5fRlKQeq5sHLh5jpBlYEz7kwkbGixIy2Shhc8Km
	y4CsdMF3k6IVdZ6UKAdAK3qzdd95uBe3TTotpvShy8fU4NZntEVRuDSan7QPbZl2oPzUF6Bq/RBed
	k8e4cVbHXteuPLDg9exgopemDNtYURgHWY0J+78+ZQtanyvTpMyh7ue6u2EOmzk30y3ihGS9HwB7i
	6KWABLtcXA3RMaPk4LoljQpOl8KfAgWKrBVRB3NeKXhkGxnUwpKj2YlUCbbV/8As0hZhIb3a66WBH
	ouXjlk5ZBuhgL9VN0kCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXPar-0002cU-QI; Wed, 20 Nov 2019 13:00:25 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXPaH-0002QC-OH
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 12:59:51 +0000
Received: by mail-ua1-x943.google.com with SMTP id o9so7718445uat.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 04:59:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6UQf89xygZl5APXVlJ8BVg5S3Zma4VRojTMP4pFeE48=;
 b=jCoovsnalMMyh4DFH4VjJ0KELkHUZ6EsPjGPIJZwX2/Mh2nEdpGzEsfpRs0DbJqCE2
 neHXNcrUGxBuxtxNh3RLIqmNJq1tkldyoQYd5CzYerEgn+y0Lod+X1d3oApyD3f/8R7B
 DHpf9NsP1n2lq4kSJ8qOShRgOYCyINmlxMm6+ph7TWaBpVLstmBgAhMZYY1UonsbyrYM
 bBInnY9KCd2xnEh520jKhAYKwVXBUfs11xGVQV6nIuTzTGk4CCvrYlL+573ftnEyesnw
 82JoOJHQW4MA2LLSnKMJkB432xfIM3IRqtnXFaQny31xs5LDzelR/OBd0IE4S56DGLJ9
 6UxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6UQf89xygZl5APXVlJ8BVg5S3Zma4VRojTMP4pFeE48=;
 b=Q2TAEw35VZhcBuAUgS02agnmSmWmA99/+c6OKhvBiZBA7oZ7F6bcvR5K8qN/1wUcCL
 Fh1z6+BrJc4kMXfw7FYAMf6ftfdF0aSq6K/gXthKza2X/dI+FZMIFOpEOoCB3qeMCpHE
 3tj40wb5xFctRxSbClY1831CSJER8AxMEn3qUmR+DcbnY+VyhWiV2CjJk17qyYZzYzmG
 myMAHtOJzWTcHghjzpX0cfJrEuh8tKlBEa05DiiuqFV7s0JbL5zfXhb7ChmNty2wu10t
 Os7Lm5ps8nWUqutmCcvT99ecbHpVVotdTrncnF5+lR4fIrwbq0qxiK6NmyL01YaFZwl/
 k/dQ==
X-Gm-Message-State: APjAAAV8y1QDcoFp1n4aksA3WEgsN9kIwzQh9doFA/CTsxkhqbRJ8FyK
 gS0jd7fhh3/J+i/AJZnH60RPPGhzDzIV1Kjm5dXP5A==
X-Google-Smtp-Source: APXvYqxEyipp0d6e/DBwHVmq3a7VxidQ0hGF9/sAXkVICJv6ReLgBcaUXbQEwIhCLBiNae9zSsMEfT5AcLWi0/Kwg6o=
X-Received: by 2002:ab0:74cd:: with SMTP id f13mr1520153uaq.104.1574254787837; 
 Wed, 20 Nov 2019 04:59:47 -0800 (PST)
MIME-Version: 1.0
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 20 Nov 2019 13:59:12 +0100
Message-ID: <CAPDyKFprcjgrcbT3jpT7pyM+FFWL8RAm5AtFAjVLcPMDiDzUvA@mail.gmail.com>
Subject: Re: [PATCH v6 0/8] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
To: Manish Narani <manish.narani@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_045949_811545_C5345FFB 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, 20 Nov 2019 at 07:47, Manish Narani <manish.narani@xilinx.com> wrote:
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
> Changes in v4:
>         - Made the Phase Delay properties Arasan specific
>
> Changes in v5:
>         - Made Clock Phase Delay properties common
>         - Moved documentation of them to the common mmc documentation.
>
> Changes in v6:
>         - Clubbed all Clk Phase Delay properties' into a pattern
>           Property
>
> Manish Narani (8):
>   mmc: sdhci-of-arasan: Separate out clk related data to another
>     structure
>   dt-bindings: mmc: arasan: Update Documentation for the input clock
>   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
>   dt-bindings: mmc: Add optional generic properties for mmc
>   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
>   firmware: xilinx: Add SDIO Tap Delay nodes
>   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
>   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
>
>  .../devicetree/bindings/mmc/arasan,sdhci.txt  |  25 +-
>  .../bindings/mmc/mmc-controller.yaml          |  13 +
>  drivers/mmc/host/sdhci-of-arasan.c            | 478 +++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h          |  13 +-
>  4 files changed, 497 insertions(+), 32 deletions(-)
>
> --
> 2.17.1
>

Applied for next, assuming Rob is okay with patch4, otherwise you need
to send a fix on top, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
