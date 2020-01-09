Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2B41357EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMy1LJDjDaYG9aLYuVh5YMHR9VgHVeRG/rI1sgO5hTQ=; b=tQpdBQ4Z7mLAoK
	JLmVm8qPB2xfFuq0pbfavlp0AwuBwLhbaa95zwDv6nqJoZKWRr1EwKiXJg3iNdAyTRR8CCPG6O2H/
	MDQh+SvMBrG1btOdhYffnX2wFLU3+N9nq2FxXeeCp6YFkQbwYEp0DTd6PnIyUTJfK5lsO255MK/1R
	QR+3whzqV9el+WlK6+0nLA3lGW8jF1qIm67hKBwCcQno0i5MyQEDsLg0XkLvwFugK2hhopgyw4OOe
	lC+BouKU3fXJ33YZ0fgqnOWDKnxhOYgICya5vSQgA+1ZZ3geNcvnFefDGBQXcVEhpLCVF5cW3gsj8
	5bjov1kg7JLPnuoHxPvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipVza-0005QL-NR; Thu, 09 Jan 2020 11:28:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipVzT-0005Of-6Q
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XBQ7YSDKaGefQuT+N4f2xVlGbixhEq0PXxbll+D7NZE=; b=xiPw2/XqAg3k8AUG8DihFK5vY
 Ce6HPopQhhmgJOMJURZUMDq7mmmWWoDcze3D5y/ZeOcigz7l7KfhomjYvVtfi9x0RIY+O5+815QSk
 xiqI9UBC/Qr9+ZOKgiCgr9IngY0XWIDv0KyFXbP/zKlUiF6lH8vCsECcc3GM1VbMz7x8AQ8xl1MIx
 4ui8g64W2WagWmCbD7z9gaschivtDA4XjAsmfD5KOHt5DlMRlsbNGAAz2FyVOsNd/HN5O9KK/ARaT
 OtoC00lFbC8mHwVmScN7lkYjmgtFUnLEflletfuGBQ4gItcWIXBN8TNx1l5b3kB2xJGKZn6CfmVNi
 5E3MgA6Cg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:36030)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipVzC-0004gX-Eq; Thu, 09 Jan 2020 11:28:22 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipVz6-0000Sn-IU; Thu, 09 Jan 2020 11:28:16 +0000
Date: Thu, 9 Jan 2020 11:28:16 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Shawn Guo <shawn.guo@linaro.org>
Subject: Re: [PATCH] PCI: dwc: Separate CFG0 and CFG1 into different ATU
 regions
Message-ID: <20200109112816.GP25745@shell.armlinux.org.uk>
References: <20200109060657.1953-1-shawn.guo@linaro.org>
 <CH2PR12MB40073FCB953227A37F7A1A91DA390@CH2PR12MB4007.namprd12.prod.outlook.com>
 <20200109111457.GA18850@T480>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109111457.GA18850@T480>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_032839_243069_3A92B719 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Zaihai Yu <yuzaihai@hisilicon.com>, Jingoo Han <jingoohan1@gmail.com>,
 Pratyush Anand <pratyush.anand@gmail.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 07:14:58PM +0800, Shawn Guo wrote:
> Hi Gustavo,
> 
> Thanks for taking a look.
> 
> On Thu, Jan 09, 2020 at 10:37:14AM +0000, Gustavo Pimentel wrote:
> > Hi Shawn,
> > 
> > On Thu, Jan 9, 2020 at 6:6:57, Shawn Guo <shawn.guo@linaro.org> wrote:
> > 
> > > Some platform has 4 (or more) viewports.  In that case, CFG0 and CFG1
> > 
> > Remove double space before "In that..." 
> 
> Hmm, that was intentional.  My writing practice is using two spaces
> after a period and single space after a comma.  Is it a bad habit?

Mine too.  It is not a bad habit, it's just a different style, but
some people can't cope with other people having different styles
and feel an urge to try and make them conform to their own ideals.
At the end of the day, it is personal style, and should *not* be
commented on, IMHO.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
