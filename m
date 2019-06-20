Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147844DCF2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 23:42:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRoKiEBYzl6E+C4+IQxzgcO29N5nJf/lObbZdePuQys=; b=Xnof61vT/Ii2Ls
	i45T83wrdBuVuwJn/7PdPTeXpz3QZv56XgpSnUxYDhrgn4eNNI9Za82Hd3HE1gMW+9x5zF0iWu91p
	slFABossUjgo0SKyNBVsKNe3vryVlsm9N6pjBjjk9Z/3i2jHJgiFyhkS1BBkGX5Iy1MK15SdlNxuY
	pngZpZrKBZnb61MwhVQkQX0rgjDxyfMTimMBFBCt/oxGGwNoPkQ5otlLoTX7RTVt6kjBpWJlLNqQZ
	2LrjSeLb5Lur3Vp0oR5X+ZB+pf49zZBkPQ6/OnYRvs37YfBarPaRVvO1+iy3Gd/ilZuFqfKw87kyW
	QFf85M4jYHdgFS/Q84mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he4pR-0007AI-Rk; Thu, 20 Jun 2019 21:42:45 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he4pC-00079L-2z
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 21:42:33 +0000
Received: by mail-io1-xd42.google.com with SMTP id u19so290459ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 14:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=L5PXkyhy8ccO/rU+9mbs3S++2/3ZYkLPR99yAF51MaQ=;
 b=TV0Dg1ZI2wljp/AWx8h3OzmM9x3bMSGEh7HpAV62ElXRDXihmbx8gwzWsphXUgiMEz
 /KGBbT4kZ8utVLXCMP5mrKMc46wdMwsQ+JjsciPPX2q2RfnIYjZKfF/4qX8kfo+kaNUn
 xpWGDPnDZ6QZ72QigQIQA8yHQyh3/ZI1KSFOvO1mK0ZnIpUahyGVYEmfJYFsi82nybm3
 m1kMSJkl9f6SKp+U+pQaTPjOuYexvLIwkFdRNg6/TCcj2GKlYWEC5J/H+qJoqqDUgqlx
 ryw8F+5oZ9QgVgC66ge0GYdoFSTb1vPglNRaY+1BTlNl54hoi4TpUIT2rRa+0G9w5sov
 ZFyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=L5PXkyhy8ccO/rU+9mbs3S++2/3ZYkLPR99yAF51MaQ=;
 b=qQ6wmwlS2JAtaol0Fq+uW5/EEtvdi71NpPJOlzCocmXf07vDpphhxocmhqSvf3bBov
 Zz5rDOhI8Ihqa7dURaIBuLcm+RTgLvmtPCBWtDzovowmqoIO5+ClPQzY4MuNwor5YWCC
 YMmM7g97GnqqpzuY6k4UNEl3Iwk7rdMT2FN27vdtGDcWIZvG2E2BlbYvLut8PVB5GXUS
 khU0zPOeVU/vBHXO+S+46KfnYwDd2uQylD+ywFO8eCNX4CAKV9W8OqbBGxFomml+5aLM
 CewsT82sazCUmt2C7zY4HMZoX17xFxREX6YI3NfIAi+5Sr9frRl1syTb11ok3XptquzL
 q5Dg==
X-Gm-Message-State: APjAAAWEi/eiIjrYbaVNRlFzzq+17pjPkd+MCvj6N+kdWe76El+CGf8W
 6ny5kHGTpguHgPEjS9z40yllnY32OHvzK6P0Ifcq/A==
X-Google-Smtp-Source: APXvYqxe4EnG9x8nkGUwWsXY0VGlOw7ZKhzlAEgRZddrOENAiLhbNnXeBB2rD4icJGMFPBsD1JYx261zvNgKftFk8Qo=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr32493807ioq.50.1561066949071; 
 Thu, 20 Jun 2019 14:42:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-27-mathieu.poirier@linaro.org>
 <20190620060521.GG26319@kroah.com>
In-Reply-To: <20190620060521.GG26319@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 20 Jun 2019 15:42:18 -0600
Message-ID: <CANLsYkysqjzkBWRUeWrBmves2D-H3Sb=PoYr1VD3B9i7kXO8tg@mail.gmail.com>
Subject: Re: [PATCH 26/28] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_144231_588726_E57DDE05 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Jun 2019 at 00:05, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Jun 19, 2019 at 01:53:16PM -0600, Mathieu Poirier wrote:
> > From: Suzuki K Poulose <suzuki.poulose@arm.com>
> >
> > Based on the following report from Smatch, fix the potential
> > NULL pointer dereference check.
> >
> > The patch 743256e214e8: "coresight: tmc: Clean up device specific
> > data" from May 22, 2019, leads to the following Smatch complaint:
> >
> >     drivers/hwtracing/coresight/coresight-tmc-etr.c:625 tmc_etr_free_flat_buf()
> >     warn: variable dereferenced before check 'flat_buf' (see line 623)
> >
> > drivers/hwtracing/coresight/coresight-tmc-etr.c
> >    622                struct etr_flat_buf *flat_buf = etr_buf->private;
> >    623                struct device *real_dev = flat_buf->dev->parent;
> >                                           ^^^^^^^^^^
> > The patch introduces a new NULL check
> >
> >    624
> >    625                if (flat_buf && flat_buf->daddr)
> >                     ^^^^^^^^
> > but the existing code assumed it can be NULL.
> >
> >    626                        dma_free_coherent(real_dev, flat_buf->size,
> >    627                                          flat_buf->vaddr, flat_buf->daddr);
> >
> > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > index 5d2bf6d18961..17006705287a 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > @@ -620,11 +620,13 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
> >  static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
> >  {
> >       struct etr_flat_buf *flat_buf = etr_buf->private;
> > -     struct device *real_dev = flat_buf->dev->parent;
> >
> > -     if (flat_buf && flat_buf->daddr)
> > +     if (flat_buf && flat_buf->daddr) {
> > +             struct device *real_dev = flat_buf->dev->parent;
> > +
> >               dma_free_coherent(real_dev, flat_buf->size,
> >                                 flat_buf->vaddr, flat_buf->daddr);
> > +     }
> >       kfree(flat_buf);
> >  }
> >
> > --
> > 2.17.1
> >
>
> Again, 5.2-final and stable...

So is this one, if addresses a deficiency introduced in patch 8/45
[1].  I have a new set ready for the other ones you flagged.

Thanks,
Mathieu

[1]. https://www.spinics.net/lists/arm-kernel/msg736144.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
