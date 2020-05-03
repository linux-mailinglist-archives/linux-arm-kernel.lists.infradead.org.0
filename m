Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1AC1C2D22
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRNHshMrz1BcZlSeJM+F68IUrMiEWkearuylnWGbfdU=; b=ip4rxDKqB3lxs7
	YXXlJJJEwug14YBdZ+y0SAIkDDIRj9DNz/hssbxfx2n6KSM1E3oOG3Tsw1Sn9SXlQrdtOvekRT2rH
	OkIWBLttB9frJB2qbB2mTG2PY048YmTnk5ZnLOANv+hE0lJKk7yzPk/TeQLSMpotKhk55WJsFMZtg
	2JURtkKSf9rXgzV7uQwv8fyuCHVVArap9VMcqj0wkANe9XcGAme8UuxR5S2EAuOlRROm+YEgW4FdL
	uX/nnFBrmfhEsGc4SB7FCI/p4F+QPvsVJW7uXjKqzjRXYXO+GCEcL+V3gnyatQGXDvfJnXQDZLaTj
	AZbO+TRGKfiEf2jyLnAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFzG-0004L2-F5; Sun, 03 May 2020 14:52:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFz9-0004KG-Cg
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:52:52 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 918FD206F0;
 Sun,  3 May 2020 14:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588517571;
 bh=xXDUieDuCzRqcEpqQa4OH8QkYBoUMGQ7uE6Ln2swCE8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=BwzIx5JNlgm+xPpdHNmK6Ug/5+tkTXai709h5BlOsaYVzJ70JQUz02hooslHlBOpm
 cvowAwVs5jIu5veh1ttXQnvWEGfN4Feo4hghFrLb49giSYHDa16woOeomwk/qq32g5
 L/RSkXW+YBlKnRkpnbcJgJIo7mU7ZHX4hiwzt2Zo=
Date: Sun, 3 May 2020 15:52:45 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <david@lechnology.com>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200503155245.08916211@archlinux>
In-Reply-To: <a6402ade-648d-6e49-85cd-a7fd7f58fd1d@lechnology.com>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
 <a6402ade-648d-6e49-85cd-a7fd7f58fd1d@lechnology.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_075251_450890_00E86B34 
X-CRM114-Status: GOOD (  17.74  )
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, alexandre.torgue@st.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 William Breathitt Gray <vilhelm.gray@gmail.com>, linux-kernel@vger.kernel.org,
 alexandre.belloni@bootlin.com, mcoquelin.stm32@gmail.com,
 patrick.havelange@essensium.com, fabrice.gasnier@st.com,
 fabien.lahoudere@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 15:21:05 -0500
David Lechner <david@lechnology.com> wrote:

> On 4/29/20 1:11 PM, William Breathitt Gray wrote:
> > Over the past couple years we have noticed some shortcomings with the
> > Counter sysfs interface. Although useful in the majority of situations,
> > there are certain use-cases where interacting through sysfs attributes
> > can become cumbersome and inefficient. A desire to support more advanced
> > functionality such as timestamps, multi-axis positioning tables, and
> > other such latency-sensitive applications, has motivated a reevaluation
> > of the Counter subsystem. I believe a character device interface will be
> > helpful for this more niche area of counter device use.  
> 
> Nice to see some progress being made. :-)
> 
> > 
> > Interaction with Counter character devices occurs via ioctl commands.
> > This allows userspace applications to access and set counter data using
> > native C datatypes rather than working through string translations.  
> 
> For most aspects of the counter subsystem, this is not an issue since
> configuring a counter is not a time-sensitive operation. Instead of
> ioctls, I was expecting to just be able to read the character device
> and receive counter events or poll to wait for events similar to how
> the input subsystem works or how buffers work in the iio subsystem.
> 
> I'm afraid I don't really see much use in having ioctls that do
> exactly what sysfs already does. And my intuition tells me that the
> extra work needed to maintain it will probably cost more than any
> benefit gained. (Maybe other have a different experience that leads
> to a different conclusion?)

I agree with David here.  The ioctls are currently doing what could have
been done nicely with a userspace library.  Moving away from the string
based internal interface is a good move to my mind, because it ensures
consistency in they sysfs interface and provides for in kernel users
when they make sense.  The step of then using that to simplify providing
an IOCTL interface to do the same things doesn't seem particularly useful.
So what do we gain?

Jonathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
