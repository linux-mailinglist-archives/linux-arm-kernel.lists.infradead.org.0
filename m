Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB451612E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 11:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGy3gV7ad1062/t/tkmYttaFG9KoCVpR+vgqMD9FQ6I=; b=LPrVi0jV3tagHd
	zKvkyLstosI5g/aHnARscQQgJFVvS1YIJ0XIYG951nYUIpDp+QkuUiBat0zbb1c1L9I0RGa10G3pl
	Jv3VXM8C3i7sv9OPgK01ofOiyrEIErx+PDmYusLST18CJhoyPnInLTaNhUj50xVvj6N2K1e58HWHj
	Yi75/l7sF8FaaUfixKMy3xS/8snWRXUaYL435D3LYGqsILhK6t4XNmH1bdwirkqi2k4fMpD0frYWG
	HHVkQnW2S9h4yT7SoURU4i6gGWDHhBQf4J/7EtJbfoj9SxAprFC92MWUm+KGExHAAMEizmzhff2Ct
	KkAM6IiwLMWlnHl4HT6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwZk-0007oh-QM; Tue, 07 May 2019 09:39:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwZc-0007o7-Cp
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 09:39:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 94DA820675;
 Tue,  7 May 2019 09:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557221984;
 bh=oXRKVHlZHDamJiPpfj36vVQjP9gWgXkIVXvvUy/gBho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qPEBnk56bPCyo9NFwqkasLn5N18ZRBOfXBTZNk8ltq1OK5Wc3wNOJmcvU/wc2KnBP
 8a8ouUroyRoxPFWe5QgaWTyQ1P/vt46oTvnNewYaCKmZYWr5lIDRSdXENo5iaMS1o8
 WMQOmbEcR9CbwtLCmbgbkdwzCTMDtvUqL2Uvr750=
Date: Tue, 7 May 2019 11:39:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Message-ID: <20190507093941.GC20355@kroah.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
 <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190502172007.GA1874@kroah.com>
 <BL0PR02MB5681B0F2BC0D74D8604D4289CB350@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190504075502.GA11133@kroah.com>
 <BL0PR02MB56814D6EACC16938A0575D16CB300@BL0PR02MB5681.namprd02.prod.outlook.com>
 <20190506123425.GA26360@kroah.com>
 <BL0PR02MB568169E26DCD12498EBDFC3ACB310@BL0PR02MB5681.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BL0PR02MB568169E26DCD12498EBDFC3ACB310@BL0PR02MB5681.namprd02.prod.outlook.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_023944_471528_AB462948 
X-CRM114-Status: GOOD (  22.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, May 07, 2019 at 08:48:41AM +0000, Dragan Cvetic wrote:
> 
> 
> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Monday 6 May 2019 13:34
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > 
> > On Mon, May 06, 2019 at 12:23:56PM +0000, Dragan Cvetic wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > Sent: Saturday 4 May 2019 08:55
> > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > >
> > > > On Fri, May 03, 2019 at 04:41:21PM +0000, Dragan Cvetic wrote:
> > > > > Hi Greg,
> > > > >
> > > > > Please find my inline comments below,
> > > > >
> > > > > Regards
> > > > > Dragan
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > > > Sent: Thursday 2 May 2019 18:20
> > > > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > > > Subject: Re: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
> > > > > >
> > > > > > On Sat, Apr 27, 2019 at 11:04:56PM +0100, Dragan Cvetic wrote:
> > > > > > > +#define DRIVER_NAME "xilinx_sdfec"
> > > > > > > +#define DRIVER_VERSION "0.3"
> > > > > >
> > > > > > Version means nothing with the driver in the kernel tree, please remove
> > > > > > it.
> > > > >
> > > > > Will be removed. Thank you.
> > > > >
> > > > > >
> > > > > > > +#define DRIVER_MAX_DEV BIT(MINORBITS)
> > > > > >
> > > > > > Why this number?  Why limit yourself to any number?
> > > > > >
> > > > >
> > > > > There can be max 8 devices for this driver. I'll change to 8.
> > > > >
> > > > > > > +
> > > > > > > +static struct class *xsdfec_class;
> > > > > >
> > > > > > Do you really need your own class?
> > > > >
> > > > > When writing a character device driver, my goal is to create and register an instance
> > > > > of that structure associated with a struct file_operations, exposing a set of operations
> > > > > to the user-space. One of the steps to make this goal is Create a class for a devices,
> > > > > visible in /sys/class/.
> > > >
> > > > Why do you need a class?  Again, why not just use the misc_device api,
> > > > that seems much more relevant here and will make the code a lot simpler.
> > > >
> > >
> > > The driver can have 8 devices in SoC plus more in Programming Logic.
> > > It looked logical to group them under the same MAJOR, although they
> > > are independent of each other.  Is this argument strong enough to use
> > > class?
> > 
> > Not really :)
> > 
> > 8 devices is pretty small.  What tool will be trying to talk to all of
> > these devices and how was it going to find out what devices were in the
> > system?
> >
> 
> These devices are Forward Error Correction encoder/decoder
> and will be part of the RF communication chain. They will be included
> in the system through DT. Also, described in DT.

Userspace doesn't mess with DT.

I am asking what userspace tool/program is going to be interacting with
these devices through your now-custom api you are creating.  Do you have
a link to that software, and how is that code doing the "determine what
device nodes are associated with what devices" logic?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
