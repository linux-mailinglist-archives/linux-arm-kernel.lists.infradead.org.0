Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B7614786F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 07:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pPG6YDm8JQLudT0Ao6FPCWPl0XERxlooUtFf97JhgMo=; b=VCuG+g+VqpAI60
	zWL7z2mjU4GEXsuPItYl0WunzJD+x7BqvsvPtpk2KUh8TkzBqXbmYOJDVwNFyCf1RWPjVYb+5Y83R
	UucItpgXbITje+RyCTHh7fznjsW+uYGACgcBJ2xC+tPqMmZJkVbjVkyjc77gO2pApCrUaWl+aSW03
	amVRhIoYkKveLJ9KIcchWumwBd/cBNWFBb9BNhiNdOSw+oy5UQVMVem4EHqnatjnyjE27/35NbLev
	UT+fpZ6R/63krM1Pd3L4l11JsQBGoaTAaov4DP0Rt2KumOV7yS0oY/wE0iiKTLqAwVMKgf3iSmHf4
	ELU6TZCiJ+89eGp781QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ius4L-0005O8-Lz; Fri, 24 Jan 2020 06:03:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ius4F-0005N2-O1
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 06:03:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 215952071A;
 Fri, 24 Jan 2020 06:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579845821;
 bh=HAs60DRf5BSFHERMbxGfL8THT/7QSUVWC8FVp+r5kJ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WTnayUFvm/P59mIIby5Mw0VHpLV+3UlZ4TGy7oj/xQ8AxjuBh1R/L5zGor66DNiDR
 FH7hId5xi3GZ7L03i9ZMOrUIT/ualF3cNXjcjIrPQP5vl2SJI2QZo3wNOStNe2/QIV
 jhratH4nic3QIarXZs2a1gaJZE45f1nKTydd8UGc=
Date: Fri, 24 Jan 2020 07:03:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jolly Shah <JOLLYS@xilinx.com>
Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
Message-ID: <20200124060339.GB2906795@kroah.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
 <1578527663-10243-2-git-send-email-jolly.shah@xilinx.com>
 <20200114145257.GA1910108@kroah.com>
 <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB5992FC37E0D2AD9946414417B80F0@BYAPR02MB5992.namprd02.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_220343_824764_4A20744A 
X-CRM114-Status: GOOD (  33.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "keescook@chromium.org" <keescook@chromium.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "matt@codeblueprint.co.uk" <matt@codeblueprint.co.uk>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 11:47:57PM +0000, Jolly Shah wrote:
> Hi Greg,
> 
> Thanks for the review.
> 
> > -----Original Message-----
> > From: Greg KH <gregkh@linuxfoundation.org>
> > Sent: Tuesday, January 14, 2020 6:53 AM
> > To: Jolly Shah <JOLLYS@xilinx.com>
> > Cc: ard.biesheuvel@linaro.org; mingo@kernel.org; matt@codeblueprint.co.uk;
> > sudeep.holla@arm.com; hkallweit1@gmail.com; keescook@chromium.org;
> > dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> > <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>
> > Subject: Re: [PATCH v2 1/4] firmware: xilinx: Add sysfs interface
> > 
> > On Wed, Jan 08, 2020 at 03:54:20PM -0800, Jolly Shah wrote:
> > > From: Rajan Vaja <rajan.vaja@xilinx.com>
> > >
> > > Add Firmware-ggs sysfs interface which provides read/write
> > > interface to global storage registers.
> > >
> > > Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> > > Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> > > Signed-off-by: Jolly Shah <jollys@xilinx.com>
> > > ---
> > > Changes in v2:
> > >  - Updated Linux kernel version in documentation.
> > >  - Used DEVICE_ATTR_* and ATTRIBUTE_GROUPS macros.
> > >  - Free Kobject structure in case of error.
> > >  - Resolved smatch errors.
> > >  - Updated Signed-off-by sequence.
> > > ---
> > >  Documentation/ABI/stable/sysfs-firmware-zynqmp |  50 +++++
> > >  drivers/firmware/xilinx/Makefile               |   2 +-
> > >  drivers/firmware/xilinx/zynqmp-ggs.c           | 284
> > +++++++++++++++++++++++++
> > >  drivers/firmware/xilinx/zynqmp.c               |  32 +++
> > >  include/linux/firmware/xlnx-zynqmp.h           |  10 +
> > >  5 files changed, 377 insertions(+), 1 deletion(-)
> > >  create mode 100644 Documentation/ABI/stable/sysfs-firmware-zynqmp
> > >  create mode 100644 drivers/firmware/xilinx/zynqmp-ggs.c
> > >
> > > diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp
> > b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> > > new file mode 100644
> > > index 0000000..cffa2fc
> > > --- /dev/null
> > > +++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
> > > @@ -0,0 +1,50 @@
> > > +What:		/sys/firmware/zynqmp/ggs*
> > 
> > Why are these attributes just not hanging off of the platform device for
> > the firmware controller?  Why do you need a new subdir under "firmware"?
> 
> Firmware driver was changed later to be platform driver but these interfaces were defined 
> earlier and are in use.

Defined and in use where?  Not in the upstream kernel tree, right?  Or
am I missing them somewhere else?

> > > +	ret = kstrtol(tok, 16, &value);
> > > +	if (ret) {
> > > +		ret = -EFAULT;
> > > +		goto err;
> > > +	}
> > > +
> > > +	ret = eemi_ops->ioctl(0, read_ioctl, reg, 0, ret_payload);
> > 
> > This feels "tricky", if you tie this to the device you have your driver
> > bound to, will this make it easier instead of having to go through the
> > ioctl callback?
> > 
> 
> GGS(general global storage) registers are in PMU space and linux doesn't have access to it 
> Hence ioctl is used.

Why not just a "real" call to the driver to make this type of reading?
You don't have ioctls within the kernel for other drivers to call,
that's not needed at all.

> > > +int zynqmp_pm_ggs_init(struct kobject *parent_kobj)
> > > +{
> > > +	return sysfs_create_group(parent_kobj, zynqmp_ggs_groups[0]);
> > 
> > You might be racing userspace here and loosing :(
> 
> Prob is called before user space is notified about sysfs so racing shouldn't happen.

"shouldn't"?  How do you know this?

> Or you are referring to some other race condition?

Your kobject was created, and notified userspace that it was present and
then sometime after that you add more attributes which userspace has no
idea are there.

If you use the proper device model interfaces, none of these problems
would be there.

> 
> > 
> > > +}
> > > diff --git a/drivers/firmware/xilinx/zynqmp.c
> > b/drivers/firmware/xilinx/zynqmp.c
> > > index 75bdfaa..4c1117d 100644
> > > --- a/drivers/firmware/xilinx/zynqmp.c
> > > +++ b/drivers/firmware/xilinx/zynqmp.c
> > > @@ -473,6 +473,10 @@ static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
> > >  	case IOCTL_GET_PLL_FRAC_MODE:
> > >  	case IOCTL_SET_PLL_FRAC_DATA:
> > >  	case IOCTL_GET_PLL_FRAC_DATA:
> > > +	case IOCTL_WRITE_GGS:
> > > +	case IOCTL_READ_GGS:
> > > +	case IOCTL_WRITE_PGGS:
> > > +	case IOCTL_READ_PGGS:
> > 
> > Huh???
> 
> Sorry not sure about your concern here. These registers are in PMU space and hence
> Ioctl is needed to let linux access them.

userspace or kernelspace?

You seem to be mixing them both here.

> 
> > 
> > >  		return 1;
> > >  	default:
> > >  		return 0;
> > > @@ -704,6 +708,28 @@ const struct zynqmp_eemi_ops
> > *zynqmp_pm_get_eemi_ops(void)
> > >  }
> > >  EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
> > >
> > > +static int zynqmp_pm_sysfs_init(void)
> > > +{
> > > +	struct kobject *zynqmp_kobj;
> > > +	int ret;
> > > +
> > > +	zynqmp_kobj = kobject_create_and_add("zynqmp", firmware_kobj);
> > > +	if (!zynqmp_kobj) {
> > > +		pr_err("zynqmp: Firmware kobj add failed.\n");
> > > +		return -ENOMEM;
> > > +	}
> > > +
> > > +	ret = zynqmp_pm_ggs_init(zynqmp_kobj);
> > > +	if (ret) {
> > > +		kobject_put(zynqmp_kobj);
> > > +		pr_err("%s() GGS init fail with error %d\n",
> > > +		       __func__, ret);
> > > +		goto err;
> > > +	}
> > > +err:
> > > +	return ret;
> > > +}
> > > +
> > >  static int zynqmp_firmware_probe(struct platform_device *pdev)
> > >  {
> > >  	struct device *dev = &pdev->dev;
> > > @@ -751,6 +777,12 @@ static int zynqmp_firmware_probe(struct
> > platform_device *pdev)
> > >  	/* Assign eemi_ops_table */
> > >  	eemi_ops_tbl = &eemi_ops;
> > >
> > > +	ret = zynqmp_pm_sysfs_init();
> > 
> > See, you have a platform device, hang the attributes off of that instead
> > of making a kobject and detatching yourself from the global device tree!
> > 
> > Please redo this, I think it will make it a lot simpler and more
> > obvious.
> 
> Agree it will be simpler but to as firmware driver was changed to be platform driver,
> to keep paths same, we used sysfs.

Keep them same from what?  Use the platform device as that is what it is
there for, do not go create new apis when they are not needed at all.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
