Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD907C220
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:49:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1VqmGDsMMR14gD9oa5TCRlGf/DnOWEPXkLmMlVALv8=; b=W2gmbTWUHH9D10
	KBv8jR7J8nOGQtYpa2Fl3ZFqCpJxLxW+Z+57IIZGedLpJ09fI+e9glf5XSfzWcu8Cmn2dJT3qmULi
	OQi3VbGFewx0Ot6rZBvsfvIuNg+7FtCqUPNVq59E11ge1I78TqXGCdlNEum9Xbb7uVGX1qDRmIIB+
	I7pk9MbVMbuIx4ondHze1Ru3Ewd+zzsRhjSCQoylH7NjC+TPh4vukP2LD5mQFSN9IIZ95nJ+o9gip
	azRDw0ukFbfpxmT9NIOh4GS7hZBGiBflTqwKSoQ74SdOuQuuEr3u98G+CsTwubxf5z7Fsn/1zFJIF
	p/tvVV4wrCbrG/Mibp9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hso2S-0002F1-QU; Wed, 31 Jul 2019 12:49:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hso2K-00027C-CX
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:48:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8EEE9206B8;
 Wed, 31 Jul 2019 12:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577336;
 bh=+f/Dgv65TnYEKX4aRtBqh2I13SU6iXsYL2gHKmPGEfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YUZ/cGTINA0QFRQICgjIpMnOLGxA5vN0u6SvKIEPLJTvwNjI7efnwTy/wabT2Vh9f
 TjVVRyQlC3a67CgSbZM+8HZjOEuYt37hs9CBbT4PurDC/5Ddfz6RnTl8FFAi2BrCCQ
 Uq7fMqEDA+Oe3v8omdxstqtMk0h25OHwOjoeWKWU=
Date: Wed, 31 Jul 2019 14:48:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
Message-ID: <20190731124853.GA4905@kroah.com>
References: <1560274185-264438-1-git-send-email-dragan.cvetic@xilinx.com>
 <20190621141553.GA16650@kroah.com>
 <CH2PR02MB635999D7374378CEA096FE72CBE70@CH2PR02MB6359.namprd02.prod.outlook.com>
 <20190622060135.GB26200@kroah.com>
 <CH2PR02MB6359A32E03E920AE5EEB7324CBE60@CH2PR02MB6359.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB6359A32E03E920AE5EEB7324CBE60@CH2PR02MB6359.namprd02.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_054856_463753_2A5CAFFA 
X-CRM114-Status: GOOD (  31.55  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

On Sat, Jun 22, 2019 at 05:54:04PM +0000, Dragan Cvetic wrote:
> 
> 
> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Saturday 22 June 2019 07:02
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> > 
> > On Fri, Jun 21, 2019 at 05:49:45PM +0000, Dragan Cvetic wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > > > Sent: Friday 21 June 2019 15:16
> > > > To: Dragan Cvetic <draganc@xilinx.com>
> > > > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > > > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > > > Subject: Re: [PATCH V7 00/11] misc: xilinx sd-fec drive
> > > >
> > > > On Tue, Jun 11, 2019 at 06:29:34PM +0100, Dragan Cvetic wrote:
> > > > > This patchset is adding the full Soft Decision Forward Error
> > > > > Correction (SD-FEC) driver implementation, driver DT binding and
> > > > > driver documentation.
> > > > >
> > > > > Forward Error Correction (FEC) codes such as Low Density Parity
> > > > > Check (LDPC) and turbo codes provide a means to control errors in
> > > > > data transmissions over unreliable or noisy communication
> > > > > channels. The SD-FEC Integrated Block is an optimized block for
> > > > > soft-decision decoding of these codes. Fixed turbo codes are
> > > > > supported directly, whereas custom and standardized LDPC codes
> > > > > are supported through the ability to specify the parity check
> > > > > matrix through an AXI4-Lite bus or using the optional programmable
> > > > > (PL)-based support logic. For the further information see
> > > > > https://www.xilinx.com/support/documentation/ip_documentation/
> > > > > sd_fec/v1_1/pg256-sdfec-integrated-block.pdf
> > > > >
> > > > > This driver is a platform device driver which supports SDFEC16
> > > > > (16nm) IP. SD-FEC driver supports LDPC decoding and encoding and
> > > > > Turbo code decoding. LDPC codes can be specified on
> > > > > a codeword-by-codeword basis, also a custom LDPC code can be used.
> > > > >
> > > > > The SD-FEC driver exposes a char device interface and supports
> > > > > file operations: open(), close(), poll() and ioctl(). The driver
> > > > > allows only one usage of the device, open() limits the number of
> > > > > driver instances. The driver also utilize Common Clock Framework
> > > > > (CCF).
> > > > >
> > > > > The control and monitoring is supported over ioctl system call.
> > > > > The features supported by ioctl():
> > > > > - enable or disable data pipes to/from device
> > > > > - configure the FEC algorithm parameters
> > > > > - set the order of data
> > > > > - provide a control of a SDFEC bypass option
> > > > > - activates/deactivates SD-FEC
> > > > > - collect and provide statistical data
> > > > > - enable/disable interrupt mode
> > > >
> > > > Is there any userspace tool that talks to this device using these custom
> > > > ioctls yet?
> > > >
> > > Tools no, but could be the customer who is using the driver.
> > 
> > I don't understand this.  Who has written code to talk to these
> > special ioctls from userspace?  Is there a pointer to that code
> > anywhere?
> > 
> 
> The code which use this driver are written by the driver maintainers
> they are examples APP and test code which are not public.

So, no open code is talking to this one specific driver?  And you have
run this past your lawyers?  Please go talk to them about this and see
what they say (hint, creating a custom ioctl that only you use is a
"fun" legal area...)

> > > > Doing a one-off ioctl api is always a risky thing, you are pretty much
> > > > just creating brand new system calls for one piece of hardware.
> > > >
> > >
> > > Why is that wrong and what is the risk?
> > 
> > You now have custom syscalls for one specfic piece of hardware that you
> > now have to maintain working properly for the next 40+ years.  You have
> > to make sure those calls are correct and that this is the correct api to
> > talk to this hardware.
> 
> This is very specific HW, it's high speed Forward Error Correction HW.

I have no idea what that actually means.

What is "Forward Error Correction"?  What does it do?  Is this a network
device?  Video device?  Random black box that sends radio waves?

Is there no other in-kernel driver that does much the same type of
thing?  What "class" of driver would this be?

> > > What would you propose?
> > > Definitely, I have to read about this.
> > 
> > What is this hardware and what is it used for?  Who will be talking to
> 
> The Soft-Decision Forward Error Correction (SD-FEC) integrated block
> supports Low Density Parity Check (LDPC) decoding and encoding and
> Turbo code decoding.

I still don't understand what this means.

> SD-FEC use case is in high data rate applications such as 4G, 5G and
> DOCSIS3.1 Cable Access.  A high performance SD-FEC (i.e. >1Gbps), is a
> block used to enable these systems to function under non-ideal
> environments.

Nor do I understand what this is either.  Do you have a pointer to this
hardware somewhere online that might describe it better?  Given that I
have no clue, odds are others do not know what it is either.

> > it from userspace?  What userspace workload uses it?  What tools need to
> 
> There will be APP which configures the HW for the use cases listed above.

What exactly are these use cases?

Where is the application?  Who runs it?  Is it already in a distro
somewhere?  Who is going to distribute it?  Who is going to support it?
Is it only for sale?  What is the license of it?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
