Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABA9CA36B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7eQ57xvau/zpONZMFQxC9u0jegYviGVaZBDmPFcojM=; b=RNPq6jCY8jK7fo
	9CjtBTXMcuDigPiEqDHuSh7tmFrAkFgWIzm8z8D6PtdiliRGfmjP7eyDqQmjaqBvRIeJqsxddlgxc
	AkDELN5Lr5LaCnO+RrClLwLXCLF1xLdDd/ez7KiCmesVT1b/QaHl40MuKPjPBMt8g7fSAI8wBKGl1
	40/MwEjY402gV+eZk0yAbP+lyr31FdPzl41cuw6a1Qyn4jIa8C/iUklnCzO/cFUiPT40izlQy1qUc
	oo3JgRZtO0a1vPJ2AsK3GnV7+m5wpexVzydL+fkvQXivM0nwbZiSusj4RqWalTTW3Vzxq3VvRZv0A
	VzxFUEVzezmkp8CV1BEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3nF-0000yk-S3; Thu, 03 Oct 2019 16:17:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3n8-0000xr-Qt
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:17:24 +0000
Received: by mail-pl1-x641.google.com with SMTP id q24so1727772plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 09:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=woKsN5Nvj3edIiL1mnog+HJwItqLGqoGggibhx+prXM=;
 b=HQAEmXF/vteXHA3wUvUvKzh5HoSg9S0QmvBoKuxVYXBOPyOwnLQNu0ojnI9ENc9Ztm
 oAl2oYSCkpNYvvNGLiZ2CYkYN5JmMbMcg+/63PFwNIF4bZyDwf6qxUrYGJNtUBybwSNp
 GW3/LiHFDHlufv8dYKPbMAMdI1yvxWVf3wRmh57d6KmDrIYklelTyqc/FXK8gWpNo48M
 LAeTZUhlIXsKmJvsB5HRZNWQlHNJhDRI6YWtz4h/sAsWEoxf+qlTTJju8gMlCGXsvaE2
 DMi6SjUq8ATeVYXTguDhgGT4uyKK5Zs4PaJxHJEEZjGGdfC31jAxrE7uSuyt41Ey7mJ5
 PR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=woKsN5Nvj3edIiL1mnog+HJwItqLGqoGggibhx+prXM=;
 b=LZ4PzusItqOLN3PrdhMN7nnLqbKa8Sa2+1ltpWpnIdkaiW2t9y+3SblGQhW8HA7Ij0
 ypn+TWBrpKaenlVr+CYxNuKkuP4WajvzK1SyMrh5ebSl8JPUMFvI7DTmuQVsMBlMqQbf
 PqJ1nowLt9ECXdoZCZKGaW/TxqfR1lI0Ya36Jd7gmu1c2vcoa7XVTTYkkGlqtjfGdkQG
 moDgsm5HYpoSGke5hRrGqOHzylrj2rKKNpiwGxrkuVQJGICy6GrICFAGIToZ6JvP0S87
 tOkplJj/almgUodIXAZLeTlb78Ivo9CxEysDi0isoHoJYx6IhqBq1OnMjlVoJqNGwXdr
 ZvmQ==
X-Gm-Message-State: APjAAAU9DgE4yGwVqt6P9Ar08AzW150Q++8oebKu1UeuiQWJN4gQncLU
 oNsvZ2/gAZ100RUE+e77/WmP
X-Google-Smtp-Source: APXvYqwcF1Q6beDBQTdeoxkdICiYiMYrEpiV3RDw2oLfKtKRdUOjZccajdXgDjR+VWUVYjV6gLKSZQ==
X-Received: by 2002:a17:902:a986:: with SMTP id
 bh6mr10472391plb.197.1570119441739; 
 Thu, 03 Oct 2019 09:17:21 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:71cf:7b8f:fca3:6f38:70fb:67fc])
 by smtp.gmail.com with ESMTPSA id f18sm3004698pgf.58.2019.10.03.09.17.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 03 Oct 2019 09:17:20 -0700 (PDT)
Date: Thu, 3 Oct 2019 21:47:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v4 0/7] Add SD/MMC driver for Actions Semi S900 SoC
Message-ID: <20191003161714.GA14774@Mani-XPS-13-9360>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <CAPDyKFqsZ1mZ53b9wLruATzi+ymFrUCLhxzx7NFUq48p5w0Gtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqsZ1mZ53b9wLruATzi+ymFrUCLhxzx7NFUq48p5w0Gtw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_091722_870677_8C479BCF 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

On Thu, Oct 03, 2019 at 12:01:18PM +0200, Ulf Hansson wrote:
> On Mon, 16 Sep 2019 at 17:46, Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > Hello,
> >
> > This patchset adds SD/MMC driver for Actions Semi S900 SoC from Owl
> > family SoCs. There are 4 SD/MMC controller present in this SoC but
> > only 2 are enabled currently for Bubblegum96 board to access uSD and
> > onboard eMMC. SDIO support for this driver is not currently implemented.
> >
> > Note: Currently, driver uses 2 completion mechanisms for maintaining
> > the coherency between SDC and DMA interrupts and I know that it is not
> > efficient. Hence, I'd like to hear any suggestions for reimplementing
> > the logic if anyone has.
> >
> > With this driver, this patchset also fixes one clk driver issue and enables
> > the Actions Semi platform in ARM64 defconfig.
> >
> > Thanks,
> > Mani
> >
> > Changes in v4:
> >
> > * Incorporated review comments from Rob on dt binding
> >
> > Changes in v3:
> >
> > * Incorporated a review comment from Andreas on board dts patch
> > * Modified the MAINTAINERS entry for devicetree YAML binding
> >
> > Changes in v2:
> >
> > * Converted the devicetree bindings to YAML
> > * Misc changes to bubblegum devicetree as per the review from Andreas
> > * Dropped the read/write wrappers and renamed all functions to use owl-
> >   prefix as per the review from Ulf
> > * Renamed clk_val_best to owl_clk_val_best and added Reviewed-by tag
> >   from Stephen
> >
> > Manivannan Sadhasivam (7):
> >   clk: actions: Fix factor clk struct member access
> >   dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
> >   arm64: dts: actions: Add MMC controller support for S900
> >   arm64: dts: actions: Add uSD and eMMC support for Bubblegum96
> >   mmc: Add Actions Semi Owl SoCs SD/MMC driver
> >   MAINTAINERS: Add entry for Actions Semi SD/MMC driver and binding
> >   arm64: configs: Enable Actions Semi platform in defconfig
> >
> >  .../devicetree/bindings/mmc/owl-mmc.yaml      |  59 ++
> >  MAINTAINERS                                   |   2 +
> >  .../boot/dts/actions/s900-bubblegum-96.dts    |  62 ++
> >  arch/arm64/boot/dts/actions/s900.dtsi         |  45 ++
> >  arch/arm64/configs/defconfig                  |   1 +
> >  drivers/clk/actions/owl-factor.c              |   7 +-
> >  drivers/mmc/host/Kconfig                      |   8 +
> >  drivers/mmc/host/Makefile                     |   1 +
> >  drivers/mmc/host/owl-mmc.c                    | 696 ++++++++++++++++++
> >  9 files changed, 877 insertions(+), 4 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.yaml
> >  create mode 100644 drivers/mmc/host/owl-mmc.c
> >
> > --
> > 2.17.1
> >
> 
> I have picked up the mmc patches for next

Thanks :)

> and as Stephen picked the
> clock patch, the rest are now for arm-soc, I guess!?
> 

Yes, I'll queue them through actions tree (unless Andreas wants to do the PR).

Regards,
Mani

> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
