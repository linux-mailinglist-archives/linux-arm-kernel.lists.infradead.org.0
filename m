Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FFB1FC26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 23:18:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/TvnMcPbQFmzZqTJg30LCiMOBvxovnUnEWn36s5TDo=; b=XXFQWME2oevNxn
	PbcCUT6QnuNpI8dSHu4z/hHKosu+mcn2DZNpQMT72gSVjV2rG2AUfc0zHGafhwS7aHLgBHiDKvJdW
	ojbnOW4KNlhVCR6jEvSOlKOPiZbMb98kRwaF0IlZYyk4Ttgxi/MeQrvzoeDd0NusHqvI+/hLdasw8
	9LAuRTKgMrZSQ1XSKPVqivvyF87oZ8ZByKUkEd/b44Bt1/NT2pHyRaEiyUzBVsmk6fxFSJYJEOQOT
	ZamumxM5sLcBRgylQ2q2aKxP6GeXDtbdmG2dX/bVcnRxWyOrPdXcohrcm6ElD8DVWBq225/0ShBv3
	W0CUR3Oku2gr/TDGm7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR1IQ-0001Jf-9e; Wed, 15 May 2019 21:18:42 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR1IH-0001IQ-VK; Wed, 15 May 2019 21:18:35 +0000
Received: by mail-ot1-x342.google.com with SMTP id u11so1423047otq.7;
 Wed, 15 May 2019 14:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KECxhG00vBm0IlDH9n6KSnmJxztUTqeZiXx2Brec6f4=;
 b=lxiRTmNOWVZoT2dnKAkBE35aDOk0GpZXsTGuC/FrYuP4RFUSpzz6R4+NBThg8+7Caq
 FlqWM2pP9jcBvRD6saFfOMWkCHzRc1E18PMXTwKslca5pVeoIHTG/yn90g+1xn5lTV0t
 cTbe2XWURr41z9tc0od/mJbjPb7jnWdwYSVP9P71J4dF4GeSFzh0f5hEoscDHNtaNPxo
 bLI2In6ZENqM9Tlp9NfLSQ5eKXxinuapLsYOkFuGqd3wCCTQw1xZEvupjlx+7VL2DPXc
 iSEpXXk48IgJIxWDu66zafTBGCh4hisAMnd0cYOKcniZvGduISlfqnJyCewQt9gLYUfn
 PuMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KECxhG00vBm0IlDH9n6KSnmJxztUTqeZiXx2Brec6f4=;
 b=iAbpSwyMKbpp8/BPfEbodI1Y56jaxHLdUSNRlZlXyKmLIGW2IfzRZQhVlSDgI9G9K2
 ddbTVjeDVyGcIdSBLQPykjxDEpjcCQbNoGRQ2WnAfLg/y+aw43+m9DncXBBz8f2wWnAB
 6ELOXmr6hD34veQfjYomkXUqUw8b65H6xNn6DatfZQaF2P/wAfNrrRewpwcnqZlamAwu
 b17TJY+znnXIylXA3/4A+EGZ7XeGt9ovyQ6DCMB6ujp5q+3QBnIDKfcdCOcHkur5RUSd
 EwXN3OJXEBWQ57sEyT/s5iGMKnzp1injV883bfsd4+TbmWWmTx1jFvvSNAcOYq+aTyBu
 Wjfw==
X-Gm-Message-State: APjAAAUhMb6CEN9V4UMochH4i/yPUuEbhHXOz21vcdPdTF/iwzWVEKjs
 5mqGm7ly+P8vOYHS35q7URaGFbMIbVye3j0k/lM=
X-Google-Smtp-Source: APXvYqyQOB61kbFWuMCaUd5x0vsZQMGyFvBi3SwJNnEy3rL9O+2ei3JvJEQX5nvmjaXp7fQunZiagCxcjb0d9Zgfb1Y=
X-Received: by 2002:a9d:5618:: with SMTP id e24mr3459779oti.38.1557955108329; 
 Wed, 15 May 2019 14:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190513091548.16674-1-narmstrong@baylibre.com>
 <20190513091548.16674-3-narmstrong@baylibre.com>
 <CAFBinCAMoNDnxoQA9XHKy0Xo9MduxD1CvQXOeLZQ3zZ4ViWm7A@mail.gmail.com>
 <a54f7a4a-c280-6181-969f-4979dadb36b2@baylibre.com>
In-Reply-To: <a54f7a4a-c280-6181-969f-4979dadb36b2@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Wed, 15 May 2019 23:18:17 +0200
Message-ID: <CAFBinCCtNQmKKL8yw07DKOfPK=eusgCuYeBmwgiHm0SSVmuFPQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] mmc: meson-gx: add ddr-access-quirk
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_141834_036234_C824581A 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ulf.hansson@linaro.org, baylibre-upstreaming@groups.io,
 khilman@baylibre.com, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Wed, May 15, 2019 at 2:45 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> On 14/05/2019 19:58, Martin Blumenstingl wrote:
> > Hi Neil,
> >
> > On Mon, May 13, 2019 at 11:16 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
> > [...]
> >> @@ -1158,15 +1183,27 @@ static int meson_mmc_probe(struct platform_device *pdev)
> >>          */
> >>         mmc->caps2 &= ~MMC_CAP2_HS400;
> >>
> >> -       /* data bounce buffer */
> >> -       host->bounce_buf_size = mmc->max_req_size;
> >> -       host->bounce_buf =
> >> -               dma_alloc_coherent(host->dev, host->bounce_buf_size,
> >> -                                  &host->bounce_dma_addr, GFP_KERNEL);
> >> -       if (host->bounce_buf == NULL) {
> >> -               dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> >> -               ret = -ENOMEM;
> >> -               goto err_free_irq;
> >> +       if (host->ddr_access_quirk) {
> >> +               /*
> >> +                * The MMC Controller embeds 1,5KiB of internal SRAM
> >> +                * that can be used to be used as bounce buffer.
> >> +                * In the case of the G12A SDIO controller, use these
> >> +                * instead of the DDR memory
> >> +                */
> >> +               host->bounce_buf_size = SD_EMMC_SRAM_DATA_BUF_LEN;
> >> +               host->bounce_buf = host->regs + SD_EMMC_SRAM_DATA_BUF_OFF;
> >> +               host->bounce_dma_addr = res->start + SD_EMMC_SRAM_DATA_BUF_OFF;
> > I'm curious: why do you need to set bounce_dma_addr in this case?
>
> We still need the physical bounce buffer address since we write in the registers,
so writing bounce_dma_addr to SD_EMMC_CMD_DAT is needed to make it work?

> and we need the logical address to memcpy() in the buffer.
as far as I understand that is what we use the "bounce_buf" member
for, but I don't see why we need "bounce_dma_addr"

> >
> >> +       } else {
> >> +               /* data bounce buffer */
> >> +               host->bounce_buf_size = mmc->max_req_size;
> >> +               host->bounce_buf =
> >> +                       dma_alloc_coherent(host->dev, host->bounce_buf_size,
> >> +                                          &host->bounce_dma_addr, GFP_KERNEL);
> >> +               if (host->bounce_buf == NULL) {
> >> +                       dev_err(host->dev, "Unable to map allocate DMA bounce buffer.\n");
> >> +                       ret = -ENOMEM;
> >> +                       goto err_free_irq;
> >> +               }
> >>         }
> >>
> >>         host->descs = dma_alloc_coherent(host->dev, SD_EMMC_DESC_BUF_LEN,
> > if host->descs cannot be allocated then you need to conditionally skip
> > dma_free_coherent for the bounce buffer in the goto err_bounce_buf
> > case a few lines below (just like you did in meson_mmc_remove)
>
> It can be allocated, it's only useless. I can skip it but I don't want
> to break any logic in the driver.
I wasn't clear in my last email, I meant this error case:
  err_bounce_buf:
    dma_free_coherent(host->dev, host->bounce_buf_size, ...
when host->ddr_access_quirk is true then you skip the
dma_alloc_coherent call for bounce_buf


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
