Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3AD19C1CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 15:12:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gMl/TKTmOTjUEKMxSyNocDvp1F39ADSeWMHWVDbO2b4=; b=T5La772xwVABzx
	NnEp6q1AGMrNP53zvCR+ut/MyzJhNHlMMjNn61zn2iXi/k05KJY6srUHpzlWxAhv7wij/wRgv9T7v
	jOgUe0DnDtuRxX6r2doBPD0NSSKC9izC3YDY8nHpf2GNdhu9JDJpeJbCFWspRSNgJtUrSnXP3fObY
	DJ2pZq3tGDSwA6CU4jRzcHS2mACrbQDmEEO3ZFdEbFs7yhwFGwNgVVGiqb+2McWNd5Iar2b8Qw4Je
	jXElLxuiL/tnQUiK6XS+axsThLIEOvAzJ3UKsQpGprlIQ+Q44Hjsf5YaKE/9SCuxWm96FuF7rIO3i
	pobyc6ggiCpGZXOn+Kxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzdZ-0008HO-5Y; Thu, 02 Apr 2020 13:12:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzdS-0008Fa-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 13:11:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=neWmpBaTCRzgvC5RnHDeEfc0nV2vBJLslYFOXDTjpJk=; b=GfXyZcO31CeVTBTHHUjISz2Ra
 1/sk9nlEYINhahrMXRnJtAmOi+G9s+/5oL4lZEq28ZOhN/plLQpoklP53VIs73rSrcgMzvjESrQeD
 rgieyxpA50KCE7oIbhMZpFKY3hevMHDxSgQvM1AtsHaaX0VzJVpMCNXi+Xh8NVjlAPIED4rWJ2Ypx
 PU8XVxxQFN69FxfXJLUc/1KcTIt/bPPH+Fmt10GdUv/CQuutOKv8nKvyNYn04CrMhDEfasjdZ+WU0
 1bpaIluTJrrCicy+RXmjeUWbNRXvOIwOfIiXDOOBYTLwA7+tI0Fi0CN0MWdqI6CnaMPahTWwLEuE1
 lbVJtjkpg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40558)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJzdH-0003Nj-RU; Thu, 02 Apr 2020 14:11:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJzdH-0001ij-A8; Thu, 02 Apr 2020 14:11:43 +0100
Date: Thu, 2 Apr 2020 14:11:43 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: [PATCH] ARM: exynos: update l2c_aux_mask to fix alert message
Message-ID: <20200402131143.GZ25745@shell.armlinux.org.uk>
References: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
 <20200401163101.GV25745@shell.armlinux.org.uk>
 <35c7cf4b-e6b8-43aa-d934-4a1c2e738372@collabora.com>
 <20200402130352.GY25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402130352.GY25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_061155_029244_98FF9EA6 
X-CRM114-Status: GOOD (  25.92  )
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

On Thu, Apr 02, 2020 at 02:03:52PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Apr 02, 2020 at 01:13:24PM +0100, Guillaume Tucker wrote:
> > On 01/04/2020 17:31, Russell King - ARM Linux admin wrote:
> > > On Wed, Apr 01, 2020 at 05:08:03PM +0100, Guillaume Tucker wrote:
> > >> Allow setting the number of cycles for RAM reads in the pl310 cache
> > >> controller L2 auxiliary control register mask (bits 0-2) since it
> > >> needs to be changed in software.  This only affects exynos4210 and
> > >> exynos4412 as they use the pl310 cache controller.
> > >>
> > >> With the mask used until now, the following warnings were generated,
> > >> the 2nd one being a pr_alert():
> > >>
> > >>   L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
> > >>   L2C: platform provided aux values permit register corruption.
> > >>
> > >> This latency cycles value has always been set in software in spite of
> > >> the warnings.  Keep it this way but clear the alert message about
> > >> register corruption to acknowledge it is a valid thing to do.
> > > 
> > > This is telling you that you are doing something you should not be
> > > doing.  The L2C controller should be configured by board firmware
> > > first and foremost, because if, for example, u-boot makes use of the
> > > L2 cache, or any other pre-main kernel code (in other words,
> > > decompressor) the setup of the L2 controller will be wrong.
> > > 
> > > So, NAK.
> > 
> > OK thanks, I guess I misinterpreted the meaning of the error
> > message.  It's really saying that the register value was not the
> > right one before the kernel tried to change it.  Next step for me
> > is to look into U-Boot.
> 
> The message "L2C: platform provided aux values permit register
> corruption." means that bits are set in both the mask and the value
> fields.  Since the new value is calculated as:
> 
> 	old = register value;
> 	new = old & mask;
> 	new |= val;
> 
> If bits are set in both "mask" and "val" for a multi-bit field, the
> value ending up in the field may not be what is intended.  Consider
> a 5-bit field set initially to 10101, and the requested value is
> 01000 with a mask of 11111.  What you end up with is not 01000, but
> 11101.  Hence, register corruption.  It is not possible to easily
> tell whether the mask and values refer to a multi-bit field or not,
> so the mere fact that bits are set in both issues the alert.
> 
> The message "L2C: platform modifies aux control register ..." means
> that you're trying to modify the value of the auxiliary control
> register, which brings with it the problems I stated in my previous
> email; platform configuration of the L2C must be done by firmware and
> not the kernel for the reasons I've set out.

Actually, looking at the values there:

        .l2c_aux_val    = 0x3c400001,
-       .l2c_aux_mask   = 0xc20fffff,
+       .l2c_aux_mask   = 0xc20ffff8,

Bit 0 is L310_AUX_CTRL_FULL_LINE_ZERO feature bit, which platforms have
no business fiddling with - it is a Cortex-A9/L2C310 specific feature
that needs both ends to be configured correctly to work.  The L2C code
knows this and will deal with it.  So, .l2c_aux_val should drop setting
bit 0.

It's also setting L310_AUX_CTRL_NS_LOCKDOWN, which the kernel already
deals with - this bit should be dropped as well.

It's clearing L310_AUX_CTRL_CACHE_REPLACE_RR - this should be setup by
firmware.

For the prefetching, I thought there were DT properties for that.
Please look at that, and see whether you can eliminate most of the
.l2c_aux_val field set bits, and the .l2c_aux_mask clear bits.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
