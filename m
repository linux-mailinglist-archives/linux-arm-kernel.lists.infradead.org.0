Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA67F1482F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcyQpN2o5r1dDwfiijKCWyMRiRVhZKRqXAz5pZangCA=; b=kZc4PqLXpbClVa
	XbROoVhXZBmPwQ1c+awHpDe071iWgms7UAxu8oWAHYwQtfeoXzOD8d1r+5RNC+fVwDrmTNQ53pIHk
	kFC9rOQuMSO1ESWCV+Th2b5G46Esoq4mQoVsXtyBhOtuqqiES+6YPKZnauUA1mfpSaMyqWPVP6RjH
	EJRogkIPyYc+7AAIF1yqzMPU5BdIXdjgY16GB/UPIAT38MBscnFjpdiv0OsFs+SJfFXvg7Lr9p069
	KSIFV5I43TjdQ0EbXhkXuDrnz/xCDXzlydYGG9ij0bSofRkmpgjCAHU9nLTy5QyJvwJ1DI7qi0hMY
	UcaJjHFhcPX0rK9zz/+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuxCm-0008OH-GE; Fri, 24 Jan 2020 11:32:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuxCe-0008N1-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:32:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4DCCF31B;
 Fri, 24 Jan 2020 03:32:43 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC53B3F68E;
 Fri, 24 Jan 2020 03:32:41 -0800 (PST)
Date: Fri, 24 Jan 2020 11:32:39 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Greg KH <gregkh@linuxfoundation.org>, Jolly Shah <JOLLYS@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200124113239.GB40307@bogus>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
 <20200124060339.GB2906795@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124060339.GB2906795@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_033244_436154_CBB900D1 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

Thanks for raising various issues that I have repeatedly asked and
constantly ignored.

On Fri, Jan 24, 2020 at 07:03:39AM +0100, Greg KH wrote:
> On Thu, Jan 23, 2020 at 11:47:57PM +0000, Jolly Shah wrote:
> > Hi Greg,
> >

[...]

> > Firmware driver was changed later to be platform driver but these
> > interfaces were defined earlier and are in use.
>
> Defined and in use where?  Not in the upstream kernel tree, right?  Or
> am I missing them somewhere else?
>

Exactly and they keep saying there partners are using these for 3-4 years
and they want to retain that. I have told them to change several times.

> > > > +	ret = kstrtol(tok, 16, &value);
> > > > +	if (ret) {
> > > > +		ret = -EFAULT;
> > > > +		goto err;
> > > > +	}
> > > > +
> > > > +	ret = eemi_ops->ioctl(0, read_ioctl, reg, 0, ret_payload);
> > >
> > > This feels "tricky", if you tie this to the device you have your driver
> > > bound to, will this make it easier instead of having to go through the
> > > ioctl callback?
> > >
> >
> > GGS(general global storage) registers are in PMU space and linux doesn't have access to it
> > Hence ioctl is used.
>
> Why not just a "real" call to the driver to make this type of reading?
> You don't have ioctls within the kernel for other drivers to call,
> that's not needed at all.
>

Oh yes, this is so broken in design. This firmware is designed to abstract
the power and configuration management on their platform, but they decided
to add direct register access to some registers anyway. Weird use case,
don't even ask. But I strongly objected such interface in sysfs even if
they moved under platform device. If they need this at any cost, I have
suggested debugfs.


[...]

> >
> > Agree it will be simpler but to as firmware driver was changed to be
> > platform driver, to keep paths same, we used sysfs.
>
> Keep them same from what?  Use the platform device as that is what it is
> there for, do not go create new apis when they are not needed at all.
>

+1, and please don't add any sysfs that can read/write those GGS registers
directly from userspace. Move them to debugfs if you are desperate to have
something.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
