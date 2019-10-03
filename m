Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D798C9B6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 12:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NS6eiyqnnMUewOgqD2WahN+Tplq8Aw9vuSmb7f+Vmbk=; b=iLd5rANE1+jzYh
	haE016CpnQTtQAHsu97F4lx7PEsazK00KtgSG3a+IVTMP42j6JVGtNe2d9JU4Nr/CbZfzwh8j0rQ4
	PstAl+8sJhItqkTVBiE6JTO46EYup7unmwtseLYnCAASuPigGjJUR7cPFVZGqcl1ehKMS0I3msJmP
	fB4ZhalWDYJvTb+3TcNoU4QyiyoKVP9GOtrnamNH2k3YLYeutQC9K6VNUtesyKZvGQ4t7RepNo7Dk
	MD7r62FOkQsnnOp0/DaXCWvJcfi/9NYLIgH8uJZ2afZpRH3q4P4cM6ybJGS9ikXcCdQaaGkiWg41I
	c7bkBU7+MAS89feQjUsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxwa-0005Qs-A4; Thu, 03 Oct 2019 10:02:44 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxvn-0004mg-LN
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 10:01:57 +0000
Received: by mail-vs1-xe44.google.com with SMTP id d3so1304581vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 03:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bQZgMiPBlch+da9eCpuVvMh7cDd98498ZGUQ3xlwUWM=;
 b=FuER+l0gj2hl/fxpTFxvQ3nYlHiIWdyz8MM9HC+XQxx5GTIH0AH9LvMxKjOxn40Vro
 o+KyzVClab/FiyZjLNkL5uvla+jp3D7dYdVVtEYEy44JiAKab3nvxz4nJd6Ys5vh0SUy
 royoVNCuLwNLyUgLj8W8Kuh10mXwzsJo9jNwQvoyIDXn2nmCgvO3lybBQKlhuooIgcTk
 MTwDkH6MQUPFv7fjj6JIj4n7fE/l+oVA44YgZLiT1EaCIAO6iROTdyF8i9qsSVZy9x6O
 L44zkMJjvgyat95nf/WiY2dPlBJluv73B32vxzs2rYOxLxVvrEFQWW3MjOncsHTUgB4g
 T4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bQZgMiPBlch+da9eCpuVvMh7cDd98498ZGUQ3xlwUWM=;
 b=gJqUxpjjxMijdkO/G7pFDOsJSI9tS2caei1GW5ZUReMdouXNdLdWv6UfJioWxM7esR
 Cs8lLRUK7BaAa+qIgnCc5GRD/B36Nx5jCJU5wbkz/qAGnUlC0iMBF+NlBtkQCDeXM5vv
 JlfhuZ6TkhhEahSh4ANwieqAeoSyOHhUkBUKMJvX0TciVw8YwKIdmL0B2PIfft1zM8lS
 nSUo0JCWh2+WqusRWLuEGhn6NFEZa+jykukdgHhYGrytMZ27NSKASZmikLMPYpzeb8QU
 9IHJn2ZMAyvvXTNwYEWJV5nr0b//+ueRIVvMCjoulhz7JhvuAfQYAeESdzUaOqezjTN3
 XyrQ==
X-Gm-Message-State: APjAAAWSgYSq3AvVYpTcXWpK6Sv6BIUm4IDLowrtr66kdLh2s5Wo2Erh
 C2aSC+1iam5ihBoEkJXyZFfegh8qXGHZZwPkNrz64Q==
X-Google-Smtp-Source: APXvYqzuSKcUmTZ9N2NNO3rEXGfkm5tGlVKGyINBteWvalYdV0+g5zqRsur4hFkbU0QLK6GOzgBpgwJYcfHAKQXzTWE=
X-Received: by 2002:a67:e414:: with SMTP id d20mr4534032vsf.191.1570096914812; 
 Thu, 03 Oct 2019 03:01:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
In-Reply-To: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 3 Oct 2019 12:01:18 +0200
Message-ID: <CAPDyKFqsZ1mZ53b9wLruATzi+ymFrUCLhxzx7NFUq48p5w0Gtw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Add SD/MMC driver for Actions Semi S900 SoC
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_030155_714118_B1635C8A 
X-CRM114-Status: GOOD (  20.33  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: DTML <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-actions@lists.infradead.org, Linus Walleij <linus.walleij@linaro.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 thomas.liau@actions-semi.com, linux-clk <linux-clk@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Sep 2019 at 17:46, Manivannan Sadhasivam
<manivannan.sadhasivam@linaro.org> wrote:
>
> Hello,
>
> This patchset adds SD/MMC driver for Actions Semi S900 SoC from Owl
> family SoCs. There are 4 SD/MMC controller present in this SoC but
> only 2 are enabled currently for Bubblegum96 board to access uSD and
> onboard eMMC. SDIO support for this driver is not currently implemented.
>
> Note: Currently, driver uses 2 completion mechanisms for maintaining
> the coherency between SDC and DMA interrupts and I know that it is not
> efficient. Hence, I'd like to hear any suggestions for reimplementing
> the logic if anyone has.
>
> With this driver, this patchset also fixes one clk driver issue and enables
> the Actions Semi platform in ARM64 defconfig.
>
> Thanks,
> Mani
>
> Changes in v4:
>
> * Incorporated review comments from Rob on dt binding
>
> Changes in v3:
>
> * Incorporated a review comment from Andreas on board dts patch
> * Modified the MAINTAINERS entry for devicetree YAML binding
>
> Changes in v2:
>
> * Converted the devicetree bindings to YAML
> * Misc changes to bubblegum devicetree as per the review from Andreas
> * Dropped the read/write wrappers and renamed all functions to use owl-
>   prefix as per the review from Ulf
> * Renamed clk_val_best to owl_clk_val_best and added Reviewed-by tag
>   from Stephen
>
> Manivannan Sadhasivam (7):
>   clk: actions: Fix factor clk struct member access
>   dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
>   arm64: dts: actions: Add MMC controller support for S900
>   arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
>   mmc: Add Actions Semi Owl SoCs SD/MMC driver
>   MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
>   arm64: configs: Enable Actions Semi platform in defconfig
>
>  .../devicetree/bindings/mmc/owl-mmc.yaml      |  59 ++
>  MAINTAINERS                                   |   2 +
>  .../boot/dts/actions/s900-bubblegum-96.dts    |  62 ++
>  arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/clk/actions/owl-factor.c              |   7 +-
>  drivers/mmc/host/Kconfig                      |   8 +
>  drivers/mmc/host/Makefile                     |   1 +
>  drivers/mmc/host/owl-mmc.c                    | 696 ++++++++++++++++++
>  9 files changed, 877 insertions(+), 4 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
>  create mode 100644 drivers/mmc/host/owl-mmc.c
>
> --
> 2.17.1
>

I have picked up the mmc patches for next and as Stephen picked the
clock patch, the rest are now for arm-soc, I guess!?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
