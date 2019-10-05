Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE633CCA79
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBly4hJgSjrLQDnPzQyiasoT0hMHCs3+aPneNZ0PD2A=; b=aJYwruI/fGz/4C
	apamHCtcFPouPT/aqIBM5NO52/xnQdWRF3j/kNy8ObeGK8wmMTnZJrAn3FT5eGRe6srd22mykqQvi
	5Ag36CSgEm8WHoIqUWvcJhgkLQT9ineoZVphqKrFxO6nKrBkyqT+Y2EcYUjJMbjaVk8TjJ2YcxAyK
	DI6mfWOUISnWV9yFhprIEkMEh0a282fWrZ+KPcqhbKYPjkm2frkO/Oh1oD1Z7LhtfvZgdgpK5srFw
	EEqGcbpcW9xG/1KlIczWylPnuoAXcC2YR9+kvsRiOwokp+9+wsn6OkbX6nXr8xrqzFXI8bLALw2A5
	HhdFzpb54G3GgmZ3cilA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGl4I-0000E2-7f; Sat, 05 Oct 2019 14:29:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGl4A-0000DM-IC
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:29:51 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8756720867;
 Sat,  5 Oct 2019 14:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570285790;
 bh=gTTOXZzJ7SZUwzYSIK7oby/7p3yeI1CkELSTEhee4cM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BHmXTlF4+DYLAxXhoKZ7K2WthP1055bfqWZcafwpN51LftwPicjUHlqNNzdaDN//X
 ljeL9lw44bRUEhLyXVzfedzS8VlqAE7gy0nqSi0XYefaTl354dJomJzl5yHzv4SeH6
 9c3V/trApYfmXIyH5lycz+DMl1Q70bP9sTbpSK4M=
Date: Sat, 5 Oct 2019 15:29:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH] counter: stm32-lptimer-cnt: fix a kernel-doc warning
Message-ID: <20191005152933.7920455d@archlinux>
In-Reply-To: <20190925235112.GC14133@icarus>
References: <1568809361-26157-1-git-send-email-fabrice.gasnier@st.com>
 <20190925235112.GC14133@icarus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_072950_622736_DA79772E 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, jic23@kernel.org,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 25 Sep 2019 19:51:12 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Wed, Sep 18, 2019 at 02:22:41PM +0200, Fabrice Gasnier wrote:
> > Fix the following warnings when documentation is built:
> > drivers/counter/stm32-lptimer-cnt.c:354: warning: cannot understand
> > function prototype: 'enum stm32_lptim_cnt_function'
> > 
> > Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> > ---
> >  drivers/counter/stm32-lptimer-cnt.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/counter/stm32-lptimer-cnt.c b/drivers/counter/stm32-lptimer-cnt.c
> > index bbc930a..28b6364 100644
> > --- a/drivers/counter/stm32-lptimer-cnt.c
> > +++ b/drivers/counter/stm32-lptimer-cnt.c
> > @@ -347,7 +347,7 @@ static const struct iio_chan_spec stm32_lptim_cnt_channels = {
> >  };
> >  
> >  /**
> > - * stm32_lptim_cnt_function - enumerates stm32 LPTimer counter & encoder modes
> > + * enum stm32_lptim_cnt_function - enumerates LPTimer counter & encoder modes
> >   * @STM32_LPTIM_COUNTER_INCREASE: up count on IN1 rising, falling or both edges
> >   * @STM32_LPTIM_ENCODER_BOTH_EDGE: count on both edges (IN1 & IN2 quadrature)
> >   */
> > -- 
> > 2.7.4  
> 
> Fixes: 597f55e3f36c ("counter: stm32-lptimer: add counter device")
> 
> Jonathan, please pick this fix up through IIO.
> 
> Thanks,
> 
> William Breathitt Gray
Applied to the togreg branch of iio.git and pushed out as testing.

thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
