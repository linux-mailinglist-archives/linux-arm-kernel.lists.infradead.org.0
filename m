Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BA4D6A10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGyGGb8x1vDhvM32RGjihUy/SFN4WsZ9h3+OzfUIF3c=; b=meqo5w5ikVMqaM
	sxEEC/bI9H0d/L1zvkDTRIABhjlx4LUK7EmERWV/pwvrtp/1ceZabdNIpxrK/8IUljo56IXONlguo
	7NSCCA80eJFYfVQVycJO271PDESLNaDyedEmr7zOCMTIbzKc03ofT+Ha+Mnf+dQygcFTsLmQDIhxd
	YWJrZOcLEHCSCHdQhPpch5CPEk1TlRS6FvE9oSaLSXg2Yh5AUHYHcReMcyamlphDS6zuBIV7+/v78
	VKNG7G3YX4pbFYC+nlk9b+9jaQ5SKI5WX4xZf4Vv1h8CKZ/IY2mh95iGdT66MDMjMNzpwUxuez0Aw
	Od7FUYd/gJeeUcAFZnCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5yN-00031c-Sy; Mon, 14 Oct 2019 19:25:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5yG-000319-5E; Mon, 14 Oct 2019 19:25:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B6A6EAC63;
 Mon, 14 Oct 2019 19:25:30 +0000 (UTC)
Date: Mon, 14 Oct 2019 21:25:29 +0200
From: Daniel Wagner <dwagner@suse.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191014192529.z7c5x6hzixxeplvw@beryllium.lan>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191014163004.GP25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014163004.GP25745@shell.armlinux.org.uk>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_122532_344857_A655FA64 
X-CRM114-Status: GOOD (  16.61  )
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
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
> I've no idea which of the multitude of ethernet drivers to look at.  I
> thought maybe I could look at the DT, but I've no idea where
> "arm/bcm2837-rpi-3-b-plus.dts" is located, included by
> arch/arm64/boot/dts/broadcom/bcm2837-rpi-3-b-plus.dts.

Sorry about being so terse. I thought, the RPi devices are well known. My bad.
Anyway, the kernel reports that is the lan78xx driver.

ls -1 /sys/class/net/ | grep -v lo | xargs -n1 -I{} bash -c 'echo -n {} :" " ; basename `readlink -f /sys/class/net/{}/device/driver`'
eth0 : lan78xx

> The oops is because the PHY state machine has been started, but there
> is no phydev->adjust_link set.  Can't say much more than that without
> knowing what the driver is doing.

This was a good tip! After a few printks I figured out what is happening.

phy_connect_direct()
   phy_attach_direct()
     workqueue
       phy_check_link_status()
         phy_link_change


Moving the phy_prepare_link() up in phy_connect_direct() ensures that
phydev->adjust_link is set when the phy_check_link_status() is called.

diff --git a/drivers/net/phy/phy_device.c
b/drivers/net/phy/phy_device.c index 9d2bbb13293e..2a61812bcb0d 100644
--- a/drivers/net/phy/phy_device.c +++ b/drivers/net/phy/phy_device.c
@@ -951,11 +951,12 @@ int phy_connect_direct(struct net_device *dev,
struct phy_device *phydev, if (!dev) return -EINVAL;
 
+       phy_prepare_link(phydev, handler);
+
        rc = phy_attach_direct(dev, phydev, phydev->dev_flags, interface);
        if (rc)
                return rc;
 
-       phy_prepare_link(phydev, handler);
        if (phy_interrupt_is_valid(phydev))
                phy_request_interrupt(phydev);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
