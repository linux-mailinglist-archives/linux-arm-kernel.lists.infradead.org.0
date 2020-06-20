Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBB2202565
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WI/U+jPZ+pc4mzaw9bM35h2eV6FlhkBQ2fbkdHP3vqM=; b=iyedpLS/jtzbt5
	fUF+3Gk+ZDN+w1xADnU0Rs2N81aIeK/na1O0oSqQJnpeHvVCGX0Sg1Ckdu6jZPAxgV+IuFr91gQfo
	csGxz3SqMMy7ttw+jlDDovJytSCDsKFOHAEaTaCCMBO9oTYj2CLZiMYEB00kbs0rXl9NjJRLqOy68
	kCMRgNMsSCtW7MPTmKZNVkoBXl0wOgshT8qQ7B+h3BYF6UiHhDCL+ErJuX/hQFXl204OzOskWNYT4
	1sAVYYMP6XygDc1LY25HbdMVacl2eXTqM5kE+nqLf6t4NafxoLQ1IzhuQgLjvc4hXW0hs58mmwVzl
	cSbW+2NJo2roZTNVklFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgXy-0003Uc-ND; Sat, 20 Jun 2020 16:40:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgXo-0003U9-0d
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 16:40:41 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FCBF208D5;
 Sat, 20 Jun 2020 16:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592671239;
 bh=lfSzalvbtneZ8u/8cfqsrPZxTlT9H2bEBJMac45J2rA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pAqd9F3Tq6dKNOl+JLqJE94RTQ8RA+y2gHkD6XfvR23ET/VKwBv5V31BLXxbqORxC
 3tEOumxZSSOl3VnVbkNYDhfJNyGl3GxvfxUZUC9fF9dwpynj8udwgyIUwhu5r5dG9y
 FhO9dXAkwG/O4ajHz9/8n5Ex3NYsdsO3I2KSd64c=
Date: Sat, 20 Jun 2020 17:40:33 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Message-ID: <20200620174033.2ffec237@archlinux>
In-Reply-To: <8ae96d9defc521ae3b8ac37ebfc9dd0f5b32cfb3.camel@analog.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
 <20200602095406.00005add@Huawei.com>
 <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
 <0eeae8e8c2c1a3f21e15c1931bacb197a8245104.camel@analog.com>
 <e17fc5b3-fc6b-5980-7294-6d0a151138da@microchip.com>
 <8ae96d9defc521ae3b8ac37ebfc9dd0f5b32cfb3.camel@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_094040_094577_A3E4A008 
X-CRM114-Status: GOOD (  39.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "songqiang1304521@gmail.com" <songqiang1304521@gmail.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "Jonathan.Cameron@Huawei.com" <Jonathan.Cameron@Huawei.com>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 18 Jun 2020 13:37:16 +0000
"Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:

> On Thu, 2020-06-18 at 13:01 +0000, Eugen.Hristev@microchip.com wrote:
> > On 17.06.2020 16:52, Ardelean, Alexandru wrote:  
> > > On Wed, 2020-06-17 at 13:37 +0000, Eugen.Hristev@microchip.com wrote:  
> > > > [External]
> > > > 
> > > > On 02.06.2020 11:54, Jonathan Cameron wrote:  
> > > > > On Tue, 2 Jun 2020 07:50:23 +0000
> > > > > "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
> > > > >   
> > > > > > On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:  
> > > > > > > On Mon, 25 May 2020 14:38:55 +0300
> > > > > > > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > > > > > >   
> > > > > > > > From: Lars-Peter Clausen <lars@metafoo.de>
> > > > > > > > 
> > > > > > > > This patch should be squashed into the first one, as the
> > > > > > > > first one is
> > > > > > > > breaking the build (intentionally) to make the IIO core files
> > > > > > > > easier
> > > > > > > > to
> > > > > > > > review.
> > > > > > > > 
> > > > > > > > Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> > > > > > > > Signed-off-by: Alexandru Ardelean <  
> > > > > > > > alexandru.ardelean@analog.com>  
> > > > > > > > ---  
> > > > > > > 
> > > > > > > Friend poke.  Version log?  
> > > > > > 
> > > > > > Version log is in the first patch.
> > > > > > I was wondering if I omitted it.
> > > > > > Seems, this time I didn't. But I admit, it probably would have
> > > > > > been better
> > > > > > here.  
> > > > > Ah fair enough.  That works fine if there is a cover letter but not
> > > > > so much just putting things in the first patch!  
> > > > > > > Other than the wistful comment below (which I'm not expecting
> > > > > > > you to
> > > > > > > do anything about btw!) whole series looks good to me.
> > > > > > > 
> > > > > > > These are obviously no functional changes (I think) so it's
> > > > > > > only really
> > > > > > > patch 2 that
> > > > > > > could do with more eyes and acks.
> > > > > > > 
> > > > > > > Far as I can tell that case is fine as well because of the
> > > > > > > protections
> > > > > > > on being in the right mode, but more eyes on that would be
> > > > > > > great.
> > > > > > > 
> > > > > > > So assuming that's fine, what commit message do you want me to
> > > > > > > use for
> > > > > > > the fused single patch?  
> > > > > > 
> > > > > > Commit message-wise: I think the message in the first commit
> > > > > > would be
> > > > > > mostly sufficient.
> > > > > > No idea what other description would be needed.
> > > > > > 
> > > > > > So, maybe something like:
> > > > > > 
> > > > > > ---------------------------------------------------------------
> > > > > > -------
> > > > > > All devices using a triggered buffer need to attach and detach
> > > > > > the trigger
> > > > > > to the device in order to properly work. Instead of doing this in
> > > > > > each and
> > > > > > every driver by hand move this into the core.
> > > > > > 
> > > > > > At this point in time, all drivers should have been resolved to
> > > > > > attach/detach the poll-function in the same order.
> > > > > > 
> > > > > > This patch removes all explicit calls of
> > > > > > iio_triggered_buffer_postenable()
> > > > > > & iio_triggered_buffer_predisable() in all drivers, since the
> > > > > > core handles
> > > > > > now the pollfunc attach/detach.
> > > > > > 
> > > > > > The more peculiar change is for the 'at91-sama5d2_adc' driver,
> > > > > > since it's
> > > > > > not obvious that removing the hooks doesn't break anything**
> > > > > > ---------------------------------------------------------------
> > > > > > -------
> > > > > >   
> > > > > 
> > > > > Looks good.
> > > > >   
> > > > > > ** for the comment about 'at91-sama5d2_adc', we really do need to
> > > > > > get some
> > > > > > testing; otherwise this risks breaking it.  
> > > > 
> > > > Hi,
> > > > 
> > > > I can test it, do we have any patchwork so I can easily download the
> > > > patches ?
> > > > I have issues when applying them.  
> > > 
> > > Is this good?
> > > 
> > > https://urldefense.com/v3/__https://patchwork.kernel.org/patch/11568743/__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119Sk7-d50A$ 
> > > Series:
> > > https://urldefense.com/v3/__https://patchwork.kernel.org/project/linux-iio/list/?series=293141__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119TNWi1mbQ$ 
> > > 
> > > Many thanks
> > > Alex  
> > 
> > On at91-sama5d2-adc driver, sama5d2-xplained board,
> > Tested-by: Eugen Hristev <eugen.hristev@microchip.com>
> > 
> > I applied all three patches and tested together with the other patch on 
> > sama5d2-adc driver.
> > It looks to be working fine. If I discover something later, I will let 
> > you know.
> > Thanks  
> 
> Also thanks from my side for testing.

Great.  Thanks for testing Eugen!

Applied and flattened into a single patch as discussed previously
using a slightly edited version of your cover letter to reflect
that Eugen was able to test it.

Applied to the togreg branch of iio.git and pushed out as testing for
the autobuilders to play with it.  Was a bit of fuzz but I don't think
anything significant.

Thanks for all your hard work driving this one through!

Jonathan

> 
> 
> >   
> > > > Thanks !
> > > >   
> > > > > Agreed.
> > > > >   
> > > > > > > Thanks,
> > > > > > > 
> > > > > > > Jonathan
> > > > > > >   
> > > > > > > >    static const struct iio_trigger_ops
> > > > > > > > atlas_interrupt_trigger_ops = {
> > > > > > > > diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > > b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > > index 17606eca42b4..8e13c53d4360 100644
> > > > > > > > --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > > +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > > @@ -99,20 +99,6 @@ static irqreturn_t
> > > > > > > > iio_simple_dummy_trigger_h(int
> > > > > > > > irq, void *p)
> > > > > > > >    }
> > > > > > > > 
> > > > > > > >    static const struct iio_buffer_setup_ops
> > > > > > > > iio_simple_dummy_buffer_setup_ops = {
> > > > > > > > - /*
> > > > > > > > -  * iio_triggered_buffer_postenable:
> > > > > > > > -  * Generic function that simply attaches the pollfunc to
> > > > > > > > the
> > > > > > > > trigger.
> > > > > > > > -  * Replace this to mess with hardware state before we
> > > > > > > > attach the
> > > > > > > > -  * trigger.
> > > > > > > > -  */
> > > > > > > > - .postenable = &iio_triggered_buffer_postenable,
> > > > > > > > - /*
> > > > > > > > -  * iio_triggered_buffer_predisable:
> > > > > > > > -  * Generic function that simple detaches the pollfunc from
> > > > > > > > the
> > > > > > > > trigger.
> > > > > > > > -  * Replace this to put hardware state back again after the
> > > > > > > > trigger
> > > > > > > > is
> > > > > > > > -  * detached but before userspace knows we have disabled the
> > > > > > > > ring.
> > > > > > > > -  */
> > > > > > > > - .predisable = &iio_triggered_buffer_predisable,
> > > > > > > >    };
> > > > > > > >   
> > > > > > > Hmm. Guess we should probably 'invent' a reason to illustrate
> > > > > > > the bufer
> > > > > > > ops in the dummy example.  Anyone feeling creative?  
> > > > > > _______________________________________________
> > > > > > linux-arm-kernel mailing list
> > > > > > linux-arm-kernel@lists.infradead.org
> > > > > > https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!ulH92S3o_JWLMQfg5VBrFknwc_-a0K5AHpJBrTEB-RtYEp7PnRJ9jA_EacOzFQmbNIKO-Q$  
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119RWwM-1NA$ 
> > >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
