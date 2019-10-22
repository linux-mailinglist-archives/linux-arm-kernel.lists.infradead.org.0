Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0E6E0375
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pALahhV46a/5W9UcbiKs+bdiQLAHA+YKrHkKWXMP2o=; b=XSUGOc2TyVWB4U
	zFCugbcHu/yjj9eI693F5iYFUl2ANpVpTrKaTUnATpg7hMMjQUIkTQ8biZc4IpwslYINJQkLKT+dv
	dpzvfG7R+43GDgwYQgrlaXUQKGEQ14mwtx4Tj8v3ETPMYr34CQCyq8Rwffvu0Zj9MTNlK8c2ogvsV
	RJbkz6uyhZG1pxOLhBtRyIG1Dhk5ngq+/W5dAi168BITXzHAzqnuyUt5D9YSI+Jsw5h/uTMjeesAa
	3+3pLyw8izBoqtRdlDtL/Wc3No418L89S4Cnc4P+HpZDL2rrA1R6/BWj/akaVZIy1eoatsXnmspgQ
	THWgJIardh+yo/YsxsAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsjG-0006Ni-RZ; Tue, 22 Oct 2019 11:53:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsj0-0006NG-US
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 11:53:20 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B980A21783;
 Tue, 22 Oct 2019 11:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571745197;
 bh=mFRL1cOPVqH8M3jRF0HmpTCPqEWt43++I19E5TTgXoI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=mAWvrBfIzsX978Bzhdz58X/RJTv4gaboqshUmS6jwmj6zeg755OZ1YhtbD+8hQbVZ
 ZNIUd5psvHtZ5ukNKWPaAZTL+5E8oPMJnkx5FjKs/sDTT77PGDgqrvtMFvIihct+Xb
 5t9LLmHOLRS/r5RFu8rrVNphbzdHeXAvJouX2KNM=
Date: Tue, 22 Oct 2019 12:53:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Subject: Re: [PATCH][RFC] iio: core: add a class hierarchy on iio device lock
Message-ID: <20191022125312.68aa514a@archlinux>
In-Reply-To: <9ddc41c4-3d84-cc94-5494-a5ef06697ce8@metafoo.de>
References: <20191011151314.5365-1-olivier.moysan@st.com>
 <20191012095747.3acd95e6@archlinux>
 <db362ddf-390e-0847-1269-f3cd0c757d2a@st.com>
 <9ddc41c4-3d84-cc94-5494-a5ef06697ce8@metafoo.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_045319_025710_9390A314 
X-CRM114-Status: GOOD (  31.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Olivier MOYSAN <olivier.moysan@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "knaack.h@gmx.de" <knaack.h@gmx.de>, Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 15 Oct 2019 23:11:43 +0200
Lars-Peter Clausen <lars@metafoo.de> wrote:

> On 10/14/19 5:59 PM, Olivier MOYSAN wrote:
> > Hello Jonathan,
> > 
> > Thanks for your comment.
> > 
> > On 10/12/19 10:57 AM, Jonathan Cameron wrote:  
> >> On Fri, 11 Oct 2019 17:13:14 +0200
> >> Olivier Moysan <olivier.moysan@st.com> wrote:
> >>  
> >>> The aim of this patch is to correct a recursive locking warning,
> >>> detected when setting CONFIG_PROVE_LOCKING flag (as shown in message below).
> >>> This message was initially triggered by the following call sequence
> >>> in stm32-dfsdm-adc.c driver, when using IIO hardware consumer interface.
> >>>
> >>> in stm32_dfsdm_read_raw()
> >>> 	iio_device_claim_direct_mode
> >>> 		mutex_lock(&indio_dev->mlock);			-> lock on dfsdm device
> >>> 	iio_hw_consumer_enable
> >>> 		iio_update_buffers
> >>> 			mutex_lock(&indio_dev->mlock);		-> lock on hw consumer device  
> >> Hmm.  I'm not sure I follow the logic.  That lock is
> >> for one thing and one thing only, preventing access
> >> to the iio device that are unsafe when it is running
> >> in a buffered mode.  We shouldn't be in a position where
> >> we both say don't do this if we are in buffered mode, + enter
> >> buffered mode whilst doing this, or we need special functions
> >> for entering buffering mode if in this state.  We are in
> >> some sense combining internal driver logic with overall
> >> IIO states.  IIO shouldn't care that the device is using
> >> the same methods under the hood for buffered and non
> >> buffered operations.
> >>
> >> I can't really recall how this driver works.   Is it actually
> >> possible to have multiple hw_consumers at the same time?
> >>
> >> So do we end up with multiple buffers registered and have
> >> to demux out to the read_raw + the actual buffered path?
> >> Given we have a bit of code saying grab one sample, I'm
> >> going to guess we don't...
> >>
> >> If so, the vast majority of the buffer setup code in IIO
> >> is irrelevant here and we just need to call a few of
> >> the callbacks from this driver directly... (I think
> >> though I haven't chased through every corner.
> >>
> >> I'd rather avoid introducing this nesting for a corner
> >> case that makes no 'semantic' sense in IIO as it leaves us
> >> in two separate states at the same time that the driver
> >> is trying to make mutually exclusive.  We can't both
> >> not be in buffered mode, and in buffered mode.
> >>
> >> Thanks and good luck with this nasty corner!
> >>
> >> Jonathan
> >>  
> > Here I consider the following use case:
> > A single conversion is performed. The dfsdm (filter) is chained with a 
> > front-end, which can be an ADC or a sensor. So we have two IIO devices, 
> > the dfsdm and its front-end handled through the hw consumer interface.
> > 
> > You are right. There is something wrong here, in buffered/non-buffered 
> > mode mixing.
> > iio_hw_consumer_enable() call is used to enable the front-end device. 
> > But this interface is intended for buffered mode.
> > So this is not coherent with the expected single conversion mode, 
> > indeed. Another interface is required to manage the front-end device. I 
> > have a poor knowledge of iio framework, but it seems to me that there is 
> > no interface to manage this.
> > 
> > My understanding regarding mlock, is that it is used to protect the 
> > state of the iio device.
> > I we want to do a conversion from the chained devices, I think we need 
> > to activate the first device
> > and keep it performing conversion, as long as the second device has done 
> > its conversion.
> > We need to protect both devices, and we should have to do it in a nested 
> > way.
> > So, I guess that anyway, nested mutexes would be required in this case.
> >  
> 
> Others like regmap have solved this by having a lockclass per instance.
> Although that is not ideal either since it will slow down lockdep.
> 
> See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/linux/regmap.h#n629

It'll take me a while to get back to this as my understanding is
currently very limited.  Poke me if I've not replied in a few weeks.

Thanks,

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
