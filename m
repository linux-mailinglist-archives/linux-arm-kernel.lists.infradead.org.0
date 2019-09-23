Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE021BB744
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 16:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJR8VfpKEKHo0FXoqCGXTdIv3Zt4RRadopDDLIDrLxk=; b=OHLTgQwWjTM1Os
	cuyBmweXXKzNO95Hl86pet2ayRuBa6D+gdMKgbtcd89op7YUR5bQqXnUakfAUQoKbADYxZh9m9b/z
	pNdtIia+gTXOgF5TRkfsRO3RenLZtSRIKbdYytPUASCK69+U2Tzxi5Z52qrWoeurgjlMZCDkmHK/N
	s+y39lo/9OYgej0MDqYJ0wcVsa6ZgxGDP8UxTf/dtyhRrzP/Mmh8lGYL6+rk6KOTktlmN4NcWHgCj
	1XEqTeK2Qi5+PiArUE06PSOqdEvMaHa7PjKLNTGzQSL0/jvZX5jPZ5rwcT1Ei2q1r5baEtd4ZnjBR
	3ecjnDQkER7bTy/dlFbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCPl7-0004VN-MZ; Mon, 23 Sep 2019 14:56:14 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCPkt-0004UQ-81
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 14:56:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id h144so34106709iof.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aJSkN3O3R055m+qpJx/Tm2HyfkEZX9CoGjygiAHKo+g=;
 b=gysmm9SedIHwKk43YK3DQp+CGCZC3a0JoqbVuZXFDfM7s7tI05+eBgvd9zlJT0ufYF
 LNSj++cFYfxLREA8TSOtM6d7szFNRwrQfRYyHBxbb7EzfUL86rthVAOWZeCOfNTmU+gk
 lwt8SF1824iQXKk3ma3/8RrREG4xDzdnjOsv2h5Bj0SBCRrrvscqW4MBz959+gL0hBMh
 M5vjZz+QeRZX3QTSVjt/05/sWJf7zcoY8h8en678AqXCzGJU3hfndwTJuA5nYAAS8asV
 +QlrgBF0YTWeDwT0J+zXbwuAfLgJWtBap6FVa5NEJ3/xyP+J2QIrazfvRecu5Voax5dC
 4L9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aJSkN3O3R055m+qpJx/Tm2HyfkEZX9CoGjygiAHKo+g=;
 b=JrcacluOgm4YuXCSJ5mOO4kBs0FTJWU1g9yn2WvBIqfbXp6/POIbtaDXKV08lVqsnr
 KzNrIbk/ePpRRK2r00p+btv7EJQnwtrHioFeAW0phpnjsvoFo//59QVaJpF13u4vNyAj
 7JcNI57oB/s7Y7cwCT8qctYIM49Izv1fetuPI+7xSwz0GREsNY2nWJ30Hn4b83B1LIOX
 fNuLqzyP3//aAhoU0W0WDSLQeFABeHu/9x0PqD6liUx1Yb3jUzrPkBfnKxM6P5IE0E1y
 f/y9/iJF/ur/dndfaJI6OvKY90LLYPs4/IUnvjxIWM7QKryz3M0JrNc062Smf4s7iMJX
 8YKA==
X-Gm-Message-State: APjAAAXDVochmIiRus4nsNG+Vzb4eZy6kfZlmGCFmxPwRATkmIrGO0Qp
 n9m/LHEVIO6gX2shVZF0h2crYsHErKB66TnDSOg=
X-Google-Smtp-Source: APXvYqz3umQLZs1WqpUvvzKbf1OvBAzKpjy4hK6udNDouR2tEvv08QtBYHQKN8m3xT72wndDH8FytOxzmRkmAiayeiE=
X-Received: by 2002:a5d:9c4c:: with SMTP id 12mr672385iof.276.1569250557575;
 Mon, 23 Sep 2019 07:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
In-Reply-To: <20190923135808.815-1-philipp.puschmann@emlix.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 23 Sep 2019 09:55:46 -0500
Message-ID: <CAHCN7xJL_x1ryOoNW+R2hOZ9dMFem9wni8Uo8QOA3wxpzKLbqQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Fix UART DMA freezes for i.MX SOCs
To: Philipp Puschmann <philipp.puschmann@emlix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_075559_290698_8EEB3A6A 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: fugang.duan@nxp.com, jlu@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, vkoul@kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Robin Gong <yibin.gong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 8:58 AM Philipp Puschmann
<philipp.puschmann@emlix.com> wrote:
>
> For some years and since many kernel versions there are reports that
> RX UART DMA channel stops working at one point. So far the usual
> workaround was to disable RX DMA. This patches fix the underlying
> problem.
>
> When a running sdma script does not find any usable destination buffer
> to put its data into it just leads to stopping the channel being
> scheduled again. As solution we manually retrigger the sdma script for
> this channel and by this dissolve the freeze.
>
> While this seems to work fine so far, it may come to buffer overruns
> when the channel - even temporary - is stopped. This case has to be
> addressed by device drivers by increasing the number of DMA periods.
>
> This patch series was tested with the current kernel and backported to
> kernel 4.15 with a special use case using a WL1837MOD via UART and
> provoking the hanging of UART RX DMA within seconds after starting a
> test application. It resulted in well known
>   "Bluetooth: hci0: command 0x0408 tx timeout"
> errors and complete stop of UART data reception. Our Bluetooth traffic
> consists of many independent small packets, mostly only a few bytes,
> causing high usage of periods.
>

Using the 4.19.y branch, this seems to working just fine for me with an i.MX6Q
with WL1837MOD Bluetooth connected to UART2.  I am still seeing some
timeouts with 5.3, but I'm going to continue to run some tests.

Tested-by: Adam Ford <aford173@gmail.com> #imx6q w/ 4.19 Kernel

> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> Reviewed-by: Fugang Duan <fugang.duan@nxp.com>
>
> ---
>
> Changelog v5:
>  - join with patch version from Jan Luebbe
>  - adapt comments and patch descriptions
>  - add Reviewed-by
>
> Changelog v4:
>  - fixed the fixes tags
>
> Changelog v3:
>  - fixes typo in dma_wmb
>  - add fixes tags
>
> Changelog v2:
>  - adapt title (this patches are not only for i.MX6)
>  - improve some comments and patch descriptions
>  - add a dma_wb() around BD_DONE flag
>  - add Reviewed-by tags
>  - split off  "serial: imx: adapt rx buffer and dma periods"
>
> Philipp Puschmann (3):
>   dmaengine: imx-sdma: fix buffer ownership
>   dmaengine: imx-sdma: fix dma freezes
>   dmaengine: imx-sdma: drop redundant variable
>
>  drivers/dma/imx-sdma.c | 37 +++++++++++++++++++++++++++----------
>  1 file changed, 27 insertions(+), 10 deletions(-)
>
> --
> 2.23.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
