Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A444FD76CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 14:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFItxhDRzGeXT2scnB5rKC33s21ai730KiQP1IVwXsQ=; b=lbxH0I5BOjZj9y
	6gx2wCySiYtVRp8x72PT46eyjsgy4JcD2T0sP33dJdEjA+8orlu/DFoT4+fK0BQexGwxbqHsPxB1X
	gmIfSIBUQ5RZ5bHaqTn8uu6gPOrNmXkJPdWqGCXS22tEv13g+3Fq0AvbhiVizIA7kpBAJFXQu8PMi
	GhuxNboP0q0QjJNmfrDMIKq7J6YD7h+rp99KhRuKaogcfkJC4+s+1HczprVN2yZrQANQLOtPUbQBR
	bETqLb3jfoZMnm4d1h+3ktrDFaW9dK9dl/fNFXDeKOjkQ0tYAKxCh26ZaPRGptoSHSQrCWh+Miv7q
	pDqOwwM+nn3pGR2HGA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKMEa-0001hB-VK; Tue, 15 Oct 2019 12:47:29 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMDd-00017h-MM; Tue, 15 Oct 2019 12:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=90gOI3ZNBU8XOCOO6fVVM8x4ayP2qCVtACJ07jsGuEo=; b=EUD683mh3/XdGNi4cijQMZdPUl
 V2VvtbYM15H1bNOBNN96kq+3xE8hvIESmwzdR8tcw0684e84w7dkVfRqTQVS4/Nyk0Q2FHouXDbWj
 /vzHCLdAn2u4tEh2EpMGQuHQ+/HBfISv3yqVpcJs3YMzdM/lpMT7E6UZJHi0eQBfL7XU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iKAUN-0007B2-I8; Tue, 15 Oct 2019 02:14:59 +0200
Date: Tue, 15 Oct 2019 02:14:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191015001459.GI19861@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014163004.GP25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_054629_821309_1BB2E16C 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Daniel Wagner <dwagner@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 05:30:04PM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Oct 14, 2019 at 04:06:04PM +0200, Daniel Wagner wrote:
> > Hi,
> > 
> > I've trying to boot a RPi 3 Model B+ in 64 bit mode. While I can get
> > my configuratin booting with v5.2.20, the current kernel v5.3.6 hangs
> > when initializing the eth interface.
> > 
> > Is this a know issue? Some configuration issues?
> 
> I don't see any successfully probed ethernet devices in the boot log, so
> I've no idea which of the multitude of ethernet drivers to look at.

Hi Russell

> > [    3.281367] usb 1-1.1.1: new high-speed USB device number 4 using dwc2
> > [    3.652279] lan78xx 1-1.1.1:1.0 (unnamed net_device) (uninitialized): No External EEPROM. Setting MAC Speed

This is the Ethernet driver which makes most sense.

> > [    3.663653] libphy: lan78xx-mdiobus: probed

And this fits with a PHY device being probed.

But it does pass a adjust_link callback to phy_connect_direct(). So
this is a bit odd. I don't see anything obviously kicking off the
state machine until the device is opened. And as you said, i don't
think it is even registered yet.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
