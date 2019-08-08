Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063C685F2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=44ofsfAxtZgjWGBpxo6kV9sWSdJwvbzNJu//ETFXGUc=; b=NhUhZ0szsu6InB
	jitXbGOYkeD1SSh46eAfJXhdUxWFUZe9OZ1x8FH/te/YFyrKGfLkLiNwx7od/x0OvVxYMUSnL9trv
	PyVuVn1AfysukCe0rHQI93v/lfeAdjI6QVhNohzAtPiw6CrbGx+Ks/JiBrwAtxZfdVgm2NXQjTH14
	UCVHP0mOBhqB8EPJBjfn7TcUaTim/1v0H7tY3zVEjpryYtmEfjiUhCgvdWBCN8F1ogNQJ+PU9SVS5
	nt79uPLO27Qp9fpITCtHu1aB8Gjkt3kiG4wGSfDT2z2C6PH4+2ZJNK9UVNvF885Te1V32zFPHeCeP
	ehIsq1F2X58dbRTwNOEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfFe-0008Ee-Ed; Thu, 08 Aug 2019 10:02:30 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfFL-0006iI-V1
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:02:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Av/Y4li/ONECTOz/+Cic2SGJom8kFviegfET+EIcxuE=; b=0kXVmJIBtRfhVNvfU3+9h1LAb
 CyTlMeranDLrdyMr7FNEIVrh5qM6FbhvJ1so2LPiKHQOzv4HzgQj8NVZm7ngxmVY6om1co3qmJoFx
 9DeKML++30pNmDMcmuNDzUL5Q8Y/7zMbjkfHKS9/XXB84IArVD7YGfXWwBWWueayHk9Nap4PBnY5A
 RCrmplfgK3fWluuTz972R21GjCJ/EFh1eDxI8yVVimvFFBMZo9SjhU67+kUn6HAz0z/1litJ3d7l2
 XB05s46t9TKZFsGNboPEcRfdo8qF0aIXAYTWsMMj/9B2PSwMpS+RUddC3RBkMxIqACWbdpEMc8spC
 139dgNSBQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42408)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hvfD9-00037z-SP; Thu, 08 Aug 2019 10:59:56 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hvfD5-0002M2-IH; Thu, 08 Aug 2019 10:59:51 +0100
Date: Thu, 8 Aug 2019 10:59:51 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: usb zero copy dma handling
Message-ID: <20190808095951.GD5193@shell.armlinux.org.uk>
References: <20190808084636.GB15080@priv-mua.localdomain>
 <20190808085811.GA1265@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808085811.GA1265@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_030212_002623_A2AC4333 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yvahkhfo.1df7f8c2@hashmail.org, linux-usb@vger.kernel.org,
 security@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 10:58:11AM +0200, Greg KH wrote:
> But the main issue here is what exactly is this "fixing"?  What is wrong
> with the existing code that non-x86 systems have such a problem with?
> Shouldn't all of these dma issues be handled by the platform with the
> remap_pfn_range() call itself?

remap_pfn_range() takes a PFN.  virt_to_phys() converts a kernel *direct
mapped* virtual address to a physical address.  That much is fine.

The question is - what is usbm->mem?  If that is anything other than an
address returned by kmalloc() or from the normal page allocator, then
virt_to_phys() will return garbage.

In other words, if it comes from dma_alloc_coherent(), vmalloc() or
ioremap(), using virt_to_phys() on it results in garbage.

This aspect of virt_to_phys() has been well known about for ages; it's
one of the fundamentals of kernel programming.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
