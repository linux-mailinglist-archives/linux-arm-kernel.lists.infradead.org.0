Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0B71382B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 09:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XR4L494HshFohAUDnLfrDbs6yhKnwRjMixnuwekwk0Y=; b=I3qu94e4Pow/Q5
	Mzbr2GuaARtppKRPy7F70NwkoewO5u87PT20cuukBsh/Av4McpYlMlVXQEm34ebc4+FdahlL4WHmM
	r57hhf57qGV9/axqGptRBzsedqsW6nxW4fj0+dLcj55/UGIX7cxxuR8uzHDAylzlr9mTkJ+rriB4P
	kgBiBf0sO5ZPM4dAY4pXTFifH1Wdbx8bHo+m+AIUzj19vnNO9oNisUQCuoj/fQPG3ctq6WWpI86yP
	k3FKAG5Hq/Lr2Z81S50xktEwna7CobomNG4i5UuWYlxpyYgHblZbKacf0SS1YlCRohlplvJ3062Qn
	cKMg6oZ7BacH6Nvv9lLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMpVu-0001y4-3z; Sat, 04 May 2019 07:55:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMpVl-0001Rk-00
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 07:55:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD94A206DF;
 Sat,  4 May 2019 07:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556956505;
 bh=rYPN3R+HI0gzJ3zG999qqQnoIuSpK9XHHiTCWGM41vE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y8g6vWADpPZNrwosyOhB4k2QUKfIiD2hX6aCDYfnFrXrnot4C5HkGTT+mN7IL9N1d
 P3EVHLgxD7l8Hk4kKaR0DHXaMqekVxvGkdOjv9yRJR3NuFYmETNCoXmGINZEfifezy
 0wRMqWdU/sCwOeNyi2HgdwKAUt08vfWZPaT8SMEc=
Date: Sat, 4 May 2019 09:55:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Message-ID: <20190504075502.GA11133@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
 <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_005509_061724_CEE33565 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 04:41:21PM +0000, Dragan Cvetic wrote:
> Hi Greg,
> 
> Please find my inline comments below,
> 
> Regards
> Dragan
> 
> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Thursday 2 May 2019 18:20
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > 
> > On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > > +#define DRIVER_NAME "xilinx_sdfec"
> > > +#define DRIVER_VERSION "0.3"
> > 
> > Version means nothing with the driver in the kernel tree, please remove
> > it.
> 
> Will be removed. Thank you.
> 
> > 
> > > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> > 
> > Why this number?  Why limit yourself to any number?
> > 
> 
> There can be max 8 devices for this driver. I'll change to 8.
> 
> > > +
> > > +static struct class *xsdfec_class;
> > 
> > Do you really need your own class?
> 
> When writing a character device driver, my goal is to create and register an instance
> of that structure associated with a struct file_operations, exposing a set of operations
> to the user-space. One of the steps to make this goal is Create a class for a devices,
> visible in /sys/class/.

Why do you need a class?  Again, why not just use the misc_device api,
that seems much more relevant here and will make the code a lot simpler.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
