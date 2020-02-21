Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75F41680CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTDtTB1QjgbdPVIfW6yoBVgMy/cYyY1DLojAP0itBCE=; b=gAbmEEDH2M5zz1
	7HMeanXagN00r+d9uNwocFzraBym7h9MFhNIDklI8KhdSfGJBiCf7V+xus2FfUilxxF/144GaIxwD
	5ks0KUu+F75Pe4jMgn0xUV1GByXPcBlIS1pvbEuLzoBiv7zGpByE5oO+I/H/g3rXV6uKfGNyDCyCq
	kG3cpNtds/TrwfwzYsWKvrDTcFUIDPwPz3aKEf6N0f+0Ttb6FmReybLuqp/vQYfOMsqMUI32UFrkd
	afGFe4UHAkjl5LZtmbufXugYYfXt/0k/tXntdTFhO4ylOKIiGdeqRWa8x58K7bqguPzWc0bcAL7GG
	Mv2RGpkWto4Uoia/Vwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59eK-00032T-VG; Fri, 21 Feb 2020 14:51:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59dw-0002r1-FK
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:51:06 +0000
Received: by mail-lf1-x141.google.com with SMTP id z5so1661204lfd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:51:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yKqmcZOBwxiEAbBJOHWncpbYAIXiIAogkuJKwmYUhEY=;
 b=tCMstupyfCqlZhYVCygX4hPFog/myrUm3gRLohSV71o7UYXSx/R3guaTKMrl4p+JID
 ngi05ngbeIbeW3O+dOx6JMMjEynwS9v9/HlUZTf8qmGuHkUyIAQLNuceAW7wZlvnPGce
 gA+iQPAMEbAeddw3aC6Qb+jJ+uLLdi7gvRSJ7hqI/VhLqnceykQv2vRMilxL4yuXEjl3
 bpXPYoGeZo2MMMnnFdBMorCyJXJ6X4SLuCkDoDGD8tMAnQa5en3FAeYyfhNVUC/7GdQS
 5wAr+Azwq5ryL3FG+Oo6c8J1OSQxJ/5M7bRRFAn6+ztMpvBW4cPVbabzH2bw//HtYIwM
 ++7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yKqmcZOBwxiEAbBJOHWncpbYAIXiIAogkuJKwmYUhEY=;
 b=PtrGc7GMkhNWYp4i5WfiH2JkO8evwQEz7UKG3PxT9y4DI0VzKQBI9Uj5CspuavOAY2
 6KSprCw9jjIiBMus8kYK6I1l1GYWUOw3cz8Xxg6/qoKrB1v21cJIkqo75Tn5tDmDrfMm
 0JMjnfU3wfuQrke5vOrEfSNItVru0c96gaaup/XK4tk8/7+4sc2igdtfcQxk3GctruGf
 kwPa2YSljeuaMrArvasKtFXYfF3tVL74Ooh7ArUm3VAAB8CgGfJVlzRBjw20lVhDfvsG
 iWHDxeZIW8EoFULLHnY0+LyFLCCQcNt5CsNo3nRR+c/E55jiQcKr9/Mkuasjb+tuVV22
 dW7g==
X-Gm-Message-State: APjAAAWt/LJpxf+/KLxK/foyfECOo9gTScNHgIJZTMSH6PKoj/g6WFZF
 t9Lp7Rju6F94towSXVozTXecp8lbMni4gTWqfdOaCA==
X-Google-Smtp-Source: APXvYqzWFuIhBhU7rksYnB4UoqU/fxy/g8S3+M1vXFr85vf43QcoeKUFnva1cAl5yphXzmBkSOGnUkKRz3OG0X6DpQA=
X-Received: by 2002:ac2:44a5:: with SMTP id c5mr8193005lfm.4.1582296662570;
 Fri, 21 Feb 2020 06:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20200217144050.3i4ymbytogod4ijn@kili.mountain>
 <CAMuHMdWaCqZ_zcHuBetAQu4kmoffNw5jvHM5ciTi29MAxL70bg@mail.gmail.com>
 <20200219091754.GE2618@vkoul-mobl>
In-Reply-To: <20200219091754.GE2618@vkoul-mobl>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:50:51 +0100
Message-ID: <CACRpkdZ94VYtADCP9VXbNPsRkCacGFOYedd9dwXQw0Jve1HRjw@mail.gmail.com>
Subject: Re: [PATCH] dmaengine: coh901318: Fix a double lock bug in
 dma_tc_handle()
To: Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_065104_556469_9F6C2AF1 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-janitors@vger.kernel.org, Jia-Ju Bai <baijiaju1990@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 dmaengine <dmaengine@vger.kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 10:17 AM Vinod Koul <vkoul@kernel.org> wrote:
> On 17-02-20, 23:24, Geert Uytterhoeven wrote:
> > On Mon, Feb 17, 2020 at 3:41 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > > The caller is already holding the lock so this will deadlock.
> > >
> > > Fixes: 0b58828c923e ("DMAENGINE: COH 901 318 remove irq counting")
> > > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > > This is the second double lock bug found using static analysis.  The
> > > previous one was commit 627469e4445b ("dmaengine: coh901318: Fix a
> > > double-lock bug").
> > >
> > > The fact that this has been broken for ten years suggests that no one
> > > has the hardware.
> >
> > Or this only runs CONFIG_SMP=n kernels?
> > This seems to be used in arch/arm/boot/dts/ste-u300.dts only, and
> > CONFIG_ARCH_U300 is a ARCH_MULTI_V5 platform, which looks like
> > it doesn't support SMP?
>
> Should we drop the driver then..?

I still have the hardware and it still works if that is the question :D

And yeah it only has one CPU, but still has a DMA engine.

The patch is fine to apply because it fixes a bug, should the same
hardware block be used on SMP.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
