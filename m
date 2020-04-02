Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A90119C19F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 15:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnkPTnLdcxsX3SdBBtwX7UroRtKtlFNPAuYDCt+sDew=; b=TRf/nTnhTWdi/k
	m3JQkTNARVfe35yCHoHylw5oEAxji7u4X0n4Dh6ZxiMM9U/1SKt/zfJKyxAbF55JkLd0hd2PE7Cil
	TtIw84KITqe8RW57+KTjg3+n8SdPRvQGR7UHAVeuZq21Oa34/U+6WmsCPEIvHG8p9+C1EnEYk/fwp
	IZbzFg2slYIB+THaYUrlJnmtQRz+yJnE0UJK+PUM4KMCn/a/wZKPzEVy6JeIP69hNhMU8w7AiwvYg
	VeOe9vsYOa+hP04KIsMcJ+o8CQf1d429kPDWUSY81g1wWAau35qVkVeU5uCbobZT+vnw6CcLnKQln
	9RgsywUVPSHdxq4NESyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzW0-0001vG-IZ; Thu, 02 Apr 2020 13:04:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzVt-0001sh-Or
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 13:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=u0XqJuuRJOzFrykmgcojjMYaPRsJ18B/4np3Z56+V48=; b=ncI4RBja5rdYERBqM4NvyGwVm
 DPLetZf+rqm6Rnk0+GenS5OBeS5K6XcoJmL+snkYK1aUlCUB141cbRo+XBfn+BoGyT9C6LuPp2Cg7
 OVShlyA38X2pga7Ra0T/5o4qMci6439dYHG95gPkl1ei40RPmwrO6kBqGBRY86YrMkXnQhcS/ETDv
 pRtYdXIzvJ4GcT6iZp9W6CpLl8GCVHa78PEpkvso5ixKHPMwUadY2xH1/LG3NPHIBwe0uhPwG5ktM
 ffca3PP8krZFHdjY1fv4xjIFiUOhnQnSHYHZoeo9IjIDqFqVJ+f/fvaUarF0ZkCW8w7FNK1m7n61T
 6qf2s8TRQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40546)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJzVh-0003Lf-6o; Thu, 02 Apr 2020 14:03:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJzVg-0001hd-4j; Thu, 02 Apr 2020 14:03:52 +0100
Date: Thu, 2 Apr 2020 14:03:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: [PATCH] ARM: exynos: update l2c_aux_mask to fix alert message
Message-ID: <20200402130352.GY25745@shell.armlinux.org.uk>
References: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
 <20200401163101.GV25745@shell.armlinux.org.uk>
 <35c7cf4b-e6b8-43aa-d934-4a1c2e738372@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <35c7cf4b-e6b8-43aa-d934-4a1c2e738372@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_060405_947404_FDAFA717 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 01:13:24PM +0100, Guillaume Tucker wrote:
> On 01/04/2020 17:31, Russell King - ARM Linux admin wrote:
> > On Wed, Apr 01, 2020 at 05:08:03PM +0100, Guillaume Tucker wrote:
> >> Allow setting the number of cycles for RAM reads in the pl310 cache
> >> controller L2 auxiliary control register mask (bits 0-2) since it
> >> needs to be changed in software.  This only affects exynos4210 and
> >> exynos4412 as they use the pl310 cache controller.
> >>
> >> With the mask used until now, the following warnings were generated,
> >> the 2nd one being a pr_alert():
> >>
> >>   L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
> >>   L2C: platform provided aux values permit register corruption.
> >>
> >> This latency cycles value has always been set in software in spite of
> >> the warnings.  Keep it this way but clear the alert message about
> >> register corruption to acknowledge it is a valid thing to do.
> > 
> > This is telling you that you are doing something you should not be
> > doing.  The L2C controller should be configured by board firmware
> > first and foremost, because if, for example, u-boot makes use of the
> > L2 cache, or any other pre-main kernel code (in other words,
> > decompressor) the setup of the L2 controller will be wrong.
> > 
> > So, NAK.
> 
> OK thanks, I guess I misinterpreted the meaning of the error
> message.  It's really saying that the register value was not the
> right one before the kernel tried to change it.  Next step for me
> is to look into U-Boot.

The message "L2C: platform provided aux values permit register
corruption." means that bits are set in both the mask and the value
fields.  Since the new value is calculated as:

	old = register value;
	new = old & mask;
	new |= val;

If bits are set in both "mask" and "val" for a multi-bit field, the
value ending up in the field may not be what is intended.  Consider
a 5-bit field set initially to 10101, and the requested value is
01000 with a mask of 11111.  What you end up with is not 01000, but
11101.  Hence, register corruption.  It is not possible to easily
tell whether the mask and values refer to a multi-bit field or not,
so the mere fact that bits are set in both issues the alert.

The message "L2C: platform modifies aux control register ..." means
that you're trying to modify the value of the auxiliary control
register, which brings with it the problems I stated in my previous
email; platform configuration of the L2C must be done by firmware and
not the kernel for the reasons I've set out.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
