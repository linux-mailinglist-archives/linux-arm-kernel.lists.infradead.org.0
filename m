Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F6F528F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 12:04:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9zEhGJhTgxOcCdim8SOpJl5RMLjln3+1Msi/hfEAxk=; b=u59mraIZN5IqPO
	YqQVpUbMnhKES30JcqFHWUYOH5mxQndRGX4rigUt5NQwrvuZHFNxTG2wzFb03p765m8O594Y626+l
	eAM2hyQ0tlYByGBiezTGNfZGhvqI9NrHvHElSF+pfW5RUACdsVhCQNx/kNQdi///TZRrMMZyycozW
	L3z4JnBkvXSQP22zjIP1AkTYYUMPv/6Ckia5b7EhPZwpRP7+uQRz0mMd00Kr1nAn5glDjUOw/+ptZ
	2dwOaR1TbeL1CUGpPurNFtL+HJuTZxhnHst0m0pi7dzYCpB8EiCrR5JYbPFRXDWzC8k2l6R/rlvrB
	Z2DRcsXZrQaaGmuqpOZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiJr-000238-2z; Tue, 25 Jun 2019 10:04:55 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiJN-00021Z-4H
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 10:04:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4yfZs4/ThCrYgiLeGh1TAYd7N0nWcLtcO65UGF7jKL8=; b=oq9m6q3Kox2FooWO0Am5oLHJe
 PMDVQvjbOGmV6+EYXqlzy8VtHHsxUohQbJxIq+DHgSBclpN7gExON5bgBKujZ0sI7rvjDkU3UY887
 OZDcLMu3WE6t4afKI08sesNCKe0LUFC6/t47IwTf/2iuKdIKA9jsDU3wcomZnjvha2ol8p+haHlU7
 /dT8CmadCWsevk94t4cKTN5Zr1GANzIWDzJ97URuA3SdVn8l4nBr+SNmDzMByaxdVJ4dFbxrwOyek
 WojKMosB8ZZmGVBTZPB9jxzmH0f4OtSpeFO44AohUYXHvUsxQC5adtmJbSPGXnZ2eKLbzdwb0Vflr
 Oo6B1aEiA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:58978)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hfiIw-0005g7-K5; Tue, 25 Jun 2019 11:03:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hfiIq-00077V-3W; Tue, 25 Jun 2019 11:03:52 +0100
Date: Tue, 25 Jun 2019 11:03:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
References: <cover.1561452052.git.andrzej.p@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1561452052.git.andrzej.p@collabora.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_030425_172445_4FCF7C48 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:46:34AM +0200, Andrzej Pietrasiewicz wrote:
> It is difficult for a user to know which of the i2c adapters is for which
> drm connector. This series addresses this problem.
> 
> The idea is to have a symbolic link in connector's sysfs directory, e.g.:
> 
> ls -l /sys/class/drm/card0-HDMI-A-1/i2c-2
> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/i2c-2 \
> 	-> ../../../../soc/13880000.i2c/i2c-2

Don't you want the symlink name to be "i2c" or something fixed, rather
than the name of the i2c adapter?  Otherwise, you seem to be encumbering
userspace with searching the directory to try and find the symlink.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
