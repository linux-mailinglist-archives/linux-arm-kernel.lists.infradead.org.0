Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E594A1F6882
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnlewLo/rPva71yojrbfThDtiLEuaDP28RrHzLkNSlo=; b=AzwgXgwNtUJAdn
	MFgjjty6F3hd0kAyyl8k+XL4qjz0HEEei+ApW2t+NngYgUWrrQIETX8bDyUQ7WAfFakta7S6PbChC
	pGGKYXBLxBfBt4AEqLgecqHw9VgrxapPTl7F9DB92hai1OCFD/wkhQ9dxtslYpEctHrnR6VRjvjUe
	OcikZKYe3ZXWFWELwubPsyhdLsuEIimbXuMiO+Q/32BVTbG5yL1AQyCzonqsRQajsj8C2zLhN48qU
	pn9muQMuNBmFTCrb9WFKRMd7W/+UUheVjLOhreb+Hs5vXCc5S+yRk84C8wfjdaMAmxvdpx8kJhr84
	RZH9TwVxNEuA94V7mHug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMqX-0006Uw-Nm; Thu, 11 Jun 2020 13:02:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMqP-0006TX-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Mm9uMdNawpFPJoq8ynao2bprQnAwV8DjFqswfPl3MNA=; b=zbTQNcFFife0uuSsUHv4zaHTR
 1gVp+mpRzzMcIpR9ybbXAX+tLR7msD4VuwW2OATlojjoyKYhpICFUgCpeMoWIP9dAg+g/LtN1xPB6
 6BKuNn4p8x+JnU4yP9fX5Pu/Ifhpt60iaB3pbeZ9/zOEujVR9WBXaGMvGpV8uHiDtf7H//zO4nx4T
 ya5NdSzcqHtxAfFq9F9xJRNLy8I2DsRPIraNYn3Tp3rG0uRCzmSCw6ll9mayVOOESOz9SXhnKygU1
 hcF2wTdxbhVkJr9oQ53ZKFI9nhRwdejNtaEu354ALuz5jAdZkHMTA6YIi+LuuNDbYVtY2vMeeYI2x
 kXn2d37ng==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44194)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjMq4-0000GN-8F; Thu, 11 Jun 2020 14:01:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjMq1-0005CT-Po; Thu, 11 Jun 2020 14:01:45 +0100
Date: Thu, 11 Jun 2020 14:01:45 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/2] drm/imx: fix use after free
Message-ID: <20200611130145.GX1551@shell.armlinux.org.uk>
References: <20200611124332.20819-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611124332.20819-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_060209_793963_62E450E3 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: p.zabel@pengutronix.de, airlied@linux.ie, stefan@agner.ch,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, shawnguo@kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 11, 2020 at 02:43:31PM +0200, Marco Felsch wrote:
> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Component driver structures allocated with devm_kmalloc() in bind() are
> freed automatically after unbind(). Since the contained drm structures
> are accessed afterwards in drm_mode_config_cleanup(), move the
> allocation into probe() to extend the driver structure's lifetime to the
> lifetime of the device. This should eventually be changed to use drm
> resource managed allocations with lifetime of the drm device.

You need to be extremely careful doing this.  If the allocation is
in the probe function, it's lifetime is not just until unbind, but
potentitally to the _next_ bind, unbind, bind, unbind.  In other
words, it's lifetime is from the point that the component is probed
to the point that it is later removed.

If the driver relies on initialisation of that structure, then that
must be _very_ carefully handled - any state in that structure will
remain.

So, you need to think long and hard about changes like this, and do
a thorough review of the lifetime of every structure member.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 503kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
