Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD531B48E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 17:37:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G2vdSPFS8o8PTOGYJOBPB3OU8DU+Z2b6UkH/yFhLPbw=; b=QWuwvh+iOOMHAP
	Ha62s6A71kSfcj6E9t60/2u8xZhr/AOpE5ZdGMI/3z0smUVXt2lQfGj9EzG/wZcgIaD/9AfLH3WAh
	5TH8MXUCmhhAJa58BLXgAo9Euaip9O7MjqZ0zWuNXT6nNmChbwsA3no6EOwpV5tMTAXzYwJTWJzrO
	1EaCucD9hjLAvjBGqAm6BfxbCaVuWsyg8MNkN6+yRLbWy607UCkuD8D1Hvobb2xabwWHKMmWBHJdZ
	9UyZhhbZMIILuUqQ3o8Xp7FPMcm38pnkURM4xVNFI6QQF7m03hkCDRCfZXE2dMmTyheBTIdOfK5Vh
	8QNDwJvUtjGzi6fX6bTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRHRY-00068w-Qg; Wed, 22 Apr 2020 15:37:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRHRP-00066o-Aq
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 15:37:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bE8e5MOL8KYPuApPXnTyRh9KbE6QXDIZY+1QM+ElKfQ=; b=EKbyShed7Soh0+FQmm4kwP+mU
 /wcqne1ikWwaaeDZpmms4asFiWmjK5oXTzKv6HnsOKTEhOSoBaSMVoABFT0UwcHB1Fj6jPORAtJkH
 TV4RUQ6cxJkbNffM40eIpTT4JCRSwXX/bpu/u+R7wfDTwL/pmo3l//0GV4wz0AjVgelH4YktdO6Ph
 HrKvWYpVf8dlvd7Of5rRbU6kxrrDQsk9Ot0gdmZaa4GnXKtCWxqW/DntYFcp1ZXKN7NU7sENia9yi
 hepaljwpwq+1S3prLhNDOvIYseMjZfvu/mjfYueZCFNrTa50yES7XuPFU1O3rSUyQwZpvcIBNMOeX
 BeRkN2KwQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42138)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jRHR6-0000cq-Db; Wed, 22 Apr 2020 16:37:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jRHR3-0008GP-1j; Wed, 22 Apr 2020 16:37:13 +0100
Date: Wed, 22 Apr 2020 16:37:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm: dts: uDPU: switch PHY operation mode to 2500base-x
Message-ID: <20200422153712.GQ25745@shell.armlinux.org.uk>
References: <20200422150915.3355073-1-jakov.petrina@sartura.hr>
 <20200422152439.GG974925@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422152439.GG974925@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_083735_374498_888F9431 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, jason@lakedaemon.net,
 Jakov Petrina <jakov.petrina@sartura.hr>, gregory.clement@bootlin.com,
 linux-kernel@vger.kernel.org, vladimir.vid@sartura.hr, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 05:24:39PM +0200, Andrew Lunn wrote:
> On Wed, Apr 22, 2020 at 05:09:15PM +0200, Jakov Petrina wrote:
> > This resolves issues with certain SPF modules.
> 
> Hi Jakov
> 
> Please could you explain this some more. PHYLINK should be setting the
> mode appropriately, based on the capabilities of the SFP module. Is
> the real problem that the SFP module is indicating the wrong baud
> rate?

The issue is way more complex than that, and this is just a sticky
plaster over the problem, and I'm really unconvinced that the issue
has really been solved.

There are some GPON modules that support 2.5G and 1G, try to guess
the speed of the host somehow.  How that happens is not really
known, and I never got the impression that even Scott at Telus worked
it out - he just played around until he got stuff to work, and this
patch is the result.

This patch just works around the problem because it _may_ cause the
interface to be at 2.5G at boot, but it won't be at 2.5G after a
1G module has previously been plugged in, and one of these GPON
modules is subsequently inserted.

So, this is just a bodge that works in one particular situation for a
problem with modules playing their own games.

So, it has to be a NAK.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
