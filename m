Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815C8189C49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhFywzLe3ngrw/0eMCM0E8AUC+w3g8lqAKjxgb94TdU=; b=kt2RGO40p/X7pE
	la3uoxzn+E+yRi5VhH06qHGxmSYdi7hr5pAmoO6nCmmiti7gTjTmrquSTU4LYg9CzIKIawAXXdoK1
	n3zF8l2Jg7klMhqh6dGjm1xxhK0vrBoYPLN/AZxYRgFGqWFTm8G/kubNVbTeyDyDCOfICnVURHqCq
	tU4JK3cySRvtgC351fAMDpRoF9MO0nGKIdV+Zjjg4swfrZm2ZpBUMSnZEIBLKq4O80a1b9v5zzdNe
	JRlUM1FiZDTDpqlIfd1MmflZ37DLL9/PRT/v9SY3Pa8ddWrHvZYq9e5JLAaXynYXVMZQhFPjl1gf8
	+sO/0koZCMsoiIL5MEHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEY9J-00007x-6R; Wed, 18 Mar 2020 12:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEY97-00083f-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:50:07 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B498620772;
 Wed, 18 Mar 2020 12:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584535805;
 bh=4sAHYFtjA0FIdYJcOZIot3tUfnyJiT7eyznRhSXxk3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cIezsSKKuQ3seIdtO7kKrRl5zs5TwtTF7vVaWUEN68+xXAXgxNUrLCElI6m+cYkID
 rfNxn+j8J42BrRHX2n2rzTy7Y2uTU9phPEFF1Ec7UzSsw+mw+iyO4ULhLtwP2kZf98
 Q/l5hfHFWMk83eNAWUpAYETxHr296cWmeS/SlDSk=
Date: Wed, 18 Mar 2020 13:50:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Rajan Vaja <RAJANV@xilinx.com>
Subject: Re: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write
 GGS/PGGS registers
Message-ID: <20200318125003.GA2727094@kroah.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
 <1583538452-1992-21-git-send-email-jolly.shah@xilinx.com>
 <20200318115141.GB2472686@kroah.com>
 <BYAPR02MB4055DE6560EFDCFD0EBFD8E2B7F70@BYAPR02MB4055.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB4055DE6560EFDCFD0EBFD8E2B7F70@BYAPR02MB4055.namprd02.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_055005_895723_83755880 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jolly Shah <JOLLYS@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:41:46PM +0000, Rajan Vaja wrote:
> Hi Greg,
> 
> Thanks for applying patches and review.
> 
> Please see my comment inline.
> 
> > -----Original Message-----
> > From: Greg KH <gregkh@linuxfoundation.org>
> > Sent: 18 March 2020 05:22 PM
> > To: Jolly Shah <JOLLYS@xilinx.com>
> > Cc: ard.biesheuvel@linaro.org; mingo@kernel.org; matt@codeblueprint.co.uk;
> > sudeep.holla@arm.com; hkallweit1@gmail.com; keescook@chromium.org;
> > dmitry.torokhov@gmail.com; Michal Simek <michals@xilinx.com>; Rajan Vaja
> > <RAJANV@xilinx.com>; linux-arm-kernel@lists.infradead.org; linux-
> > kernel@vger.kernel.org; Rajan Vaja <RAJANV@xilinx.com>
> > Subject: Re: [PATCH v3 20/24] firmware: xilinx: Add APIs to read/write GGS/PGGS
> > registers
> > 
> > CAUTION: This message has originated from an External Source. Please use
> > proper judgment and caution when opening attachments, clicking links, or
> > responding to this email.
> > 
> > 
> > On Fri, Mar 06, 2020 at 03:47:28PM -0800, Jolly Shah wrote:
> > > --- a/include/linux/firmware/xlnx-zynqmp.h
> > > +++ b/include/linux/firmware/xlnx-zynqmp.h
> > > @@ -105,6 +105,10 @@ enum pm_ioctl_id {
> > >       IOCTL_GET_PLL_FRAC_MODE,
> > >       IOCTL_SET_PLL_FRAC_DATA,
> > >       IOCTL_GET_PLL_FRAC_DATA,
> > > +     IOCTL_WRITE_GGS,
> > > +     IOCTL_READ_GGS,
> > > +     IOCTL_WRITE_PGGS,
> > > +     IOCTL_READ_PGGS,
> > 
> > You do not have explicit numbers here?  Bold :)
> [Rajan] Here new IOCTL IDs are continuous so didn't mention explicit number.

Yes, but is that guaranteed by the compiler?  I keep getting conflicting
advice with that.

> Are asking for adding numbers like below:
> enum pm_ioctl_id {
>       ...
>       IOCTL_GET_PLL_FRAC_DATA = 11,
>       IOCTL_WRITE_GGS = 12,
>       ....
> }

Yes please, especially as your firmware is expecting the explicit values
here, right?  That way you _know_ everything is correct.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
