Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4422AD0AA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgRfJ/hfC+timpKrzdWTJE4ybuuBX2AVWmDUnz7x2CM=; b=SaVwOz9l6lolSv
	w1TsWk+Ag0gJ2GtjchOwVN+oajivCGS9loob8KdKOAyZBM9G8iSc3OOaSs4c+qzGt+qqSNXYT5z7i
	RgQjr1H7UfKOU9h7sy5BehlczblO1LWXGjD1Yw3idTDFVaDVHEYPzARDIGE43czYki9xQasQYx+Vw
	IhoIBRcHEB8O0WPG033lh8LgJFst4vZUarsSZcJEGztYhTNxj2Z3mihtVxLWcW+/NXXOWyNVUFPQv
	PyEGR1NG1ge8gbDzQik75FqC3O2BjkB5KP8Vy7jmABByy9RBLaMi6f7fupYZVlAGQRbramip0d+vX
	bgPwpZoaPCX9IL8cFGow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI82K-0001uD-NA; Wed, 09 Oct 2019 09:13:36 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI81q-0001ey-HN
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:13:08 +0000
Received: by mail-vs1-xe42.google.com with SMTP id d3so1052597vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 02:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=czvwlzjYxEI9/u0IXNcmOe4QZHiW6rPzIFMH9Q1LDCk=;
 b=Qc2Deu0jcIu8UninSS/S0zk70x0bqBdhAd0yfA7qBpIuezQeZhtsCMTgl2oQe67acx
 u4wk111JrrgX/Jufsar0klMlx/zh57vz5Os14hIVrppTBRjeDz1m/qPp14Igo/yautTp
 5Yp2IuccCgRDP8J+M/yEawZoabNWJj43fHG3X77q630c9m3abY5NfhVAsc6wFldOdZ0s
 URDbnfkIgbDn2cMwtKsMIazie7O3cxvzTzVpMxvAs2ppmr3oy88BoEjddyECLhglvj7O
 8MikkaTtXlf/pIq8kNTiyPvhLgkdFMroK2tRyngXNEVw+M8Nbi4i+K5qvBjvoqJ3g0Ud
 N/MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=czvwlzjYxEI9/u0IXNcmOe4QZHiW6rPzIFMH9Q1LDCk=;
 b=dQYhfI+oktpagqhMapOBWKyvxRtCb2vUTPggSUd9ONbVKss3YFyVqvs1IgwmKIGhFo
 saWuH47IuSt/0osanQTrFolwA87U/h6xaMbUZLi5hafe+UiVIYZCe7Pg/1zVkyHnAEux
 VlbuBIyy+QtlY8LhLvgRkJRkz18T9x6hrmkPLjJcEFdrGlI6JrDxCQeE/RgT1xiNsLfu
 hnjyuElLpY0f2OlEXvvqtk3DNGAhfhy3SmsmEdAEiZxsiOiNmCZUB6K0V78heZcpr0V6
 GbVBC+RSq0TsWcilgrtBvbyIBawVEDqF39A6GP1LvvuYwdbeMvrjnBCwzLh3xUb1Y68J
 +AFg==
X-Gm-Message-State: APjAAAV/8pJdtRtd5jbUm/QCDiqjI0IEKOqIWO+gR5gIF2nOKsBOLW4L
 Unj9Hhj1g9JhQr0CDouzye8HomJCblpHPcIWWM9pyA==
X-Google-Smtp-Source: APXvYqzP3FVres/j/D8kUEjQC+HXZ/OT5WzktimrnRbXf6/XBUuevqgnd5AQdUIZ6APOTW+/Qh/g5LVfGjLDkHD8OAw=
X-Received: by 2002:a67:ef89:: with SMTP id r9mr1243756vsp.200.1570612385264; 
 Wed, 09 Oct 2019 02:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191004134452.6493-1-nsaenzjulienne@suse.de>
In-Reply-To: <20191004134452.6493-1-nsaenzjulienne@suse.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 9 Oct 2019 11:12:29 +0200
Message-ID: <CAPDyKFpprt9TVP2Ywu2urqy6zB_H7Xrbo=N6OGp6-O6Qk7rLPw@mail.gmail.com>
Subject: Re: [PATCH v2] mmc: sdhci-iproc: fix spurious interrupts on
 Multiblock reads with bcm2711
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021306_607887_81DBEAAC 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <mbrugger@suse.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 at 15:45, Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> The Raspberry Pi 4 SDHCI hardware seems to automatically issue CMD12
> after multiblock reads even when ACMD12 is disabled. This triggers
> spurious interrupts after the data transfer is done with the following
> message:
>
>   mmc1: Got data interrupt 0x00000002 even though no data operation was in progress.
>   mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
>   mmc1: sdhci: Sys addr:  0x00000000 | Version:  0x00001002
>   mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000000
>   mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000033
>   mmc1: sdhci: Present:   0x1fff0000 | Host ctl: 0x00000017
>   mmc1: sdhci: Power:     0x0000000f | Blk gap:  0x00000080
>   mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x00000107
>   mmc1: sdhci: Timeout:   0x00000000 | Int stat: 0x00000000
>   mmc1: sdhci: Int enab:  0x03ff100b | Sig enab: 0x03ff100b
>   mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
>   mmc1: sdhci: Caps:      0x45ee6432 | Caps_1:   0x0000a525
>   mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00080008
>   mmc1: sdhci: Resp[0]:   0x00000b00 | Resp[1]:  0x00edc87f
>   mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00400e00
>   mmc1: sdhci: Host ctl2: 0x00000001
>   mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xf3025208
>   mmc1: sdhci: ============================================
>
> Enable SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 to enable ACMD12 on multiblock
> reads and suppress the spurious interrupts.
>
> Fixes: f84e411c85be ("mmc: sdhci-iproc: Add support for emmc2 of the BCM2711")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Tested-by: Matthias Brugger <mbrugger@suse.com>
> Acked-by: Stefan Wahren <wahrenst@gmx.net>

Applied for fixes, thanks!

Kind regards
Uffe


> ---
>
> Changes since v1:
> - Add Fixes tag and Acked-by
>
>  drivers/mmc/host/sdhci-iproc.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index 2b9cdcd1dd9d..f4f5f0a70cda 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -262,6 +262,7 @@ static const struct sdhci_iproc_data bcm2835_data = {
>  };
>
>  static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
> +       .quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
>         .ops = &sdhci_iproc_32only_ops,
>  };
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
