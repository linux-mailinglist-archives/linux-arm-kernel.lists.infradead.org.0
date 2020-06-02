Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473891EB7BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2wZMWxpjRan9WaOwtIK3qW99E9DECtc5SZy6H8q9rQ=; b=WuCHpsN4buY8HQ
	58LofsV1VBc2g/Lsezh/7SpBTuIuv1izWfkOrBIrgvq2tIMISPdtdyosDqnFifIrvMIsZDLZRsJ3X
	cZ2FOdj+qT3dyv8b8gfkgcXp0j9pUDRHkR9/o5FtlzDDaW+MNQIvxRqNqApHyMdXm4rnDA9OdqhAQ
	cOR6L4kVMNpjr9AviXSX0oi/5djHaydCwkXcbsV1y7jxqCcJA2suJ9dpk1aY4x+ZVxbIMDaBBHTX2
	j8Hjh2RNg1OCVRWGf4QKpsk8Rt08Qk8VDibu/ua7MI+5wr2d3aXRx5gGBrSO4m49c6r/TiWP4JqDv
	G9bmhkJddJ5QHFKR45eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2ja-0003Fd-Op; Tue, 02 Jun 2020 08:57:22 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2hC-0007PF-WE
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:54:59 +0000
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id B113D257B5EFB95BE55A;
 Tue,  2 Jun 2020 09:54:46 +0100 (IST)
Received: from localhost (10.47.95.180) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 2 Jun 2020
 09:54:46 +0100
Date: Tue, 2 Jun 2020 09:54:06 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Message-ID: <20200602095406.00005add@Huawei.com>
In-Reply-To: <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.47.95.180]
X-ClientProxiedBy: lhreml714-chm.china.huawei.com (10.201.108.65) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_015455_198552_B6AF2FA0 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "songqiang1304521@gmail.com" <songqiang1304521@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2 Jun 2020 07:50:23 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:
> > On Mon, 25 May 2020 14:38:55 +0300
> > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> >   
> > > From: Lars-Peter Clausen <lars@metafoo.de>
> > > 
> > > This patch should be squashed into the first one, as the first one is
> > > breaking the build (intentionally) to make the IIO core files easier to
> > > review.
> > > 
> > > Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> > > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > > ---  
> > 
> > Friend poke.  Version log?  
> 
> Version log is in the first patch.
> I was wondering if I omitted it.
> Seems, this time I didn't. But I admit, it probably would have been better
> here.
Ah fair enough.  That works fine if there is a cover letter but not
so much just putting things in the first patch!
> 
> > 
> > Other than the wistful comment below (which I'm not expecting you to
> > do anything about btw!) whole series looks good to me.
> > 
> > These are obviously no functional changes (I think) so it's only really
> > patch 2 that
> > could do with more eyes and acks.
> > 
> > Far as I can tell that case is fine as well because of the protections
> > on being in the right mode, but more eyes on that would be great.
> > 
> > So assuming that's fine, what commit message do you want me to use for
> > the fused single patch?  
> 
> Commit message-wise: I think the message in the first commit would be
> mostly sufficient.
> No idea what other description would be needed.
> 
> So, maybe something like:
> 
> ----------------------------------------------------------------------
> All devices using a triggered buffer need to attach and detach the trigger
> to the device in order to properly work. Instead of doing this in each and
> every driver by hand move this into the core.
> 
> At this point in time, all drivers should have been resolved to
> attach/detach the poll-function in the same order.
> 
> This patch removes all explicit calls of iio_triggered_buffer_postenable()
> & iio_triggered_buffer_predisable() in all drivers, since the core handles
> now the pollfunc attach/detach.
> 
> The more peculiar change is for the 'at91-sama5d2_adc' driver, since it's
> not obvious that removing the hooks doesn't break anything**
> ----------------------------------------------------------------------
> 

Looks good.

> ** for the comment about 'at91-sama5d2_adc', we really do need to get some
> testing; otherwise this risks breaking it.

Agreed.  

> 
> 
> > 
> > Thanks,
> > 
> > Jonathan
> >   
> > >  static const struct iio_trigger_ops atlas_interrupt_trigger_ops = {
> > > diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > index 17606eca42b4..8e13c53d4360 100644
> > > --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > @@ -99,20 +99,6 @@ static irqreturn_t iio_simple_dummy_trigger_h(int
> > > irq, void *p)
> > >  }
> > >  
> > >  static const struct iio_buffer_setup_ops
> > > iio_simple_dummy_buffer_setup_ops = {
> > > -	/*
> > > -	 * iio_triggered_buffer_postenable:
> > > -	 * Generic function that simply attaches the pollfunc to the
> > > trigger.
> > > -	 * Replace this to mess with hardware state before we attach the
> > > -	 * trigger.
> > > -	 */
> > > -	.postenable = &iio_triggered_buffer_postenable,
> > > -	/*
> > > -	 * iio_triggered_buffer_predisable:
> > > -	 * Generic function that simple detaches the pollfunc from the
> > > trigger.
> > > -	 * Replace this to put hardware state back again after the trigger
> > > is
> > > -	 * detached but before userspace knows we have disabled the ring.
> > > -	 */
> > > -	.predisable = &iio_triggered_buffer_predisable,
> > >  };
> > >    
> > Hmm. Guess we should probably 'invent' a reason to illustrate the bufer
> > ops in the dummy example.  Anyone feeling creative?  
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
