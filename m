Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C16D7D3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFOGel89Ua6qgm00KTvPRU+cN0XMDVDHrFV84CbLJzQ=; b=VSPczoVz/E9MnI
	SS5l+mPi4YOJUHIXBOvuKBEuBqBv3woikzxqqobdK8OnS/L1KEl0B9+oKfDJaNP7pmFNNsGR+okf3
	Udq8WCj4M8eYun11Y8K4jEFEeC7iVrA3CzW0CncOV3g4yzm7tPYnjkmCzcLg7LB/SIonjT5zf2gs+
	OJXGvnVQvispuVI+10RCQSn0E8Tn+R0NQcdU6kfgmTr0PaTNABy+ghC3WYqG5LCDUk6viovOB9CsG
	ua0+oCvx4iLdJH1H3jTAmEhQ63tVUsX0HKOorgDDooBl4s1F9xzoXdnr3eeqNymcTcDznIoyTnFs4
	A1y0Q5jSlXKChFIfRX7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQSK-0006Pu-It; Tue, 15 Oct 2019 17:17:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQRQ-0005hA-4g; Tue, 15 Oct 2019 17:17:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 49171AD7F;
 Tue, 15 Oct 2019 17:16:55 +0000 (UTC)
Date: Tue, 15 Oct 2019 19:16:53 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015005327.GJ19861@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101700_343642_1DC0927B 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Woojung Huh <woojung.huh@microchip.com>, netdev@vger.kernel.org,
 UNGLinuxDriver@microchip.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Tue, Oct 15, 2019 at 02:53:27AM +0200, Andrew Lunn wrote:
> On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
> > Hi,
> > 
> > I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> > my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> > when initializing the eth interface.
> > 
> > Is this a know issue? Some configuration issues?
> 
> Hi Daniel
> 
> Please could you add a WARN_ON(1); in phy_queue_state_machine() and
> post the stack dump. That might help us figure out what is going on.

I tried to get a stack dump from the WARN_ON(1). The 'make defconfig'
seems not to enable it(?). Anyway I played a bit and noticed, that
depending which additional debug config switch is enabled the
problem disappears. The boot timing is important it seems.

After the feedback I got so far, it think my setup is 'special' in
sofar I don't boot from eMMC. Instead I rely on TFTP and NFS for
rootfs:

 - kernel is configured as 'make defconfig' +

	#
	# Built in drivers
	#
	CONFIG_USB_LAN78XX=y

	#
	# Networking
	#
	CONFIG_PACKET=y
	CONFIG_UNIX=y
	CONFIG_INET=y
	CONFIG_IP_PNP=y
	CONFIG_IP_PNP_DHCP=y

	# NFS
	CONFIG_NFS_FS=y
	CONFIG_NFS_V4=y
	CONFIG_NFS_V4_1=y
	CONFIG_NFS_V4_2=y

	#
	# Debugging
	#
	CONFIG_PRINTK_TIME=y
	CONFIG_DEBUG_KERNEL=y
	CONFIG_EARLY_PRINTK=y
	CONFIG_MESSAGE_LOGLEVEL_DEFAULT=7

	# Embedded config to kernel. /proc/config.gz
	CONFIG_IKCONFIG=y
	CONFIG_IKCONFIG_PROC=y

	CONFIG_KEXEC=y

 - u-boot enables network interface, does DHCP
 - fetches a PXE image
 - PXE loads DTB, kernel and starts the kernel
 - rootfs is supposed to be provided via NFS

Could it be that the networking interface is still running (from
u-boot and PXE) when the drivers is setting it up and the workqueue is
premature kicked to work?

Anyway, I keep trying to get some trace out of it.

Thanks,
Daniel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
