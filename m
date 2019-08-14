Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B538D0BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:31:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9fopT/UL+oEnWE8Bsio41HtCVYw40yu7nQWDxR296g=; b=BJ0hhNrHafS3er
	uapy3388HSSaIJoYcVHYwrYfxGCW2qiInm+fCV6qEi8vIR6ZzXAvbqWlvraXLtEp0rVCX4Ce/UurL
	eDzfvu3MJu2EfZHGhrT80dFESMOhhfk5vNr2ks6sGWmNlgAayksUpX0kd2HewP3FDdyGsK4NP9YJd
	cF7n9X1JOUeNNDZpV/tMnmZ+pID5OgtGCc3OmrZSdUe3g5K0+GhGMUqfc5oWwbCUZ+hfIPdqwzfs4
	oaeN2b0LKNkkCp2kiA4kF3E4x3oap6LCrUHAehMpY9OYKFmLckP+FXqbk/Da0mUgewMSmVhyHrCkU
	H7LYT0jBfMXs8u0K2MHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqZC-0005Ht-Dg; Wed, 14 Aug 2019 10:31:42 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqZ5-0005HT-D5
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vIn3VrH7ocwDZwAAstv4Z1w3Iw6dyOjCurgY/OY+iMg=; b=vVh2LAglzEG++FwqN4KSlYc3e
 r1btgKmDEiOv85fXEZ+HfeiKQBXj02w1pCssYPOmHUYKWhHS2i274oG8l7lzAZQyzqLikkkKa2/cn
 WqMl1l0IGoprA+wUx5VYjOFf8yY23van8tZYvi6GupNDAe5pITc2JQ3GiWymo+Kc7VaMu2DZ6jqsM
 2q0ZsPP+7DcgBWAlSUisioPDmWaF5tS9lO/A5V44fXMDcQMBLxm+bdNYuCMutScF2l2wOZXilNUAC
 Y22OnCoc77oDHHMtZ+EIAfsKBwK6Mcu/2EPbieFfdGiXbXawu/8aRhm05G6xCnRbCDDFMmJ3m/ak/
 ulXIvjO9w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56468)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hxqYb-0005uy-JR; Wed, 14 Aug 2019 11:31:05 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hxqYR-0008OC-2C; Wed, 14 Aug 2019 11:30:55 +0100
Date: Wed, 14 Aug 2019 11:30:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH 04/22] media: Move v4l2_fwnode_parse_link from v4l2 to
 driver base
Message-ID: <20190814103054.GI13294@shell.armlinux.org.uk>
References: <20190805233505.21167-1-slongerbeam@gmail.com>
 <20190805233505.21167-5-slongerbeam@gmail.com>
 <CAHp75VcOh8bOf_s6t0ehwGtcYn64QFGj303SVvpHrztEOhTRgg@mail.gmail.com>
 <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4750b347-b421-6569-600f-0ced8406460e@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_033135_445900_49C333F4 
X-CRM114-Status: GOOD (  10.60  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, Len Brown <lenb@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "moderated list:ARM/ZYNQ ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Enrico Weigelt <info@metux.net>, Hyun Kwon <hyun.kwon@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 09:53:41AM -0700, Steve Longerbeam wrote:
> The full patchset doesn't seem to be up yet, but see [1] for the cover
> letter.

Was the entire series copied to the mailing lists, or just selected
patches?  I only saw 4, 9, 11 and 13-22 via lakml.

In the absence of the other patches, will this solve imx-media binding
the internal subdevs of sensor devices to the CSI2 interface?

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
