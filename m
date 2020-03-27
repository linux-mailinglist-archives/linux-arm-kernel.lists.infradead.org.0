Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE62B195863
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u19cNQZcpVQLs6AUnMQsDWVpXgjtLYdZxerc6KpS9ns=; b=QtpO5eCRTzVba8
	8qCBSaEarAgfDGIDqfT4Rj0+wMe8QK8JCZ2nwtjCFTuxrmEhJI4gmk8lr6GAxBDoc8qW3d+zXcyiU
	YU/Jjt5kyUN/aJpytXjumQnZkh51qbc3UTHcr9oncDNLg0fTJi7tcUexpCNqJXCSJ9ihN3KULwxZO
	niaAS2x5HsknP7vt5PyaxxmR3VcV1Ve4YY7HALO2D5xzHtXfzz/18OqumYyLvQWgvL0i/2OwjL+bd
	cgs3+FeWjXNeQDcmQWrqvkb4ftK6ZJp4P9AV+CP5MCqYLL8Nvs9RgA4+W2IM/dHT7TUHjp6+yTZiG
	6S5lteoPar5tADCSwVKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpOC-0004aU-Ck; Fri, 27 Mar 2020 13:51:12 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpO2-0004Zf-Sb
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:51:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b0hEcgQ5tp7MdPMNYpy34qYWL9o4h0/35/w+XAeFTHg=; b=P6/Bxv6HKbU3vhlz81iMo5AeZ
 k6d/KMhTwADcMZKnzk3tloIZonnDrg2jxEioGtl/b6p/hP6ihBsMwotE6u19W+mGWjwaavhC43R/X
 dAQThqsdSQAgfoohLIWbvinP1aJxn+X0mOgyDe8NWUkU5D53nwcgUVjmuW3OSIWWSfCV+t1SmsBZF
 CpdYcNkaqljODfxZv1K6KqSxbS2FBiV3yPh4e4xVJCybvOTjoHibwicdHlQ1dTLu2SvxJyiDwjKLh
 E2dYhn9AWgH0tcdt92cN/fmZS02Urat4gRqI7Ymm8gQREKZePxATHPmj1H3nZmi819+ZuA8EnTSXz
 oXh/KrfiA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42074)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHpNo-0001Ou-5t; Fri, 27 Mar 2020 13:50:48 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHpNm-0004HG-RF; Fri, 27 Mar 2020 13:50:46 +0000
Date: Fri, 27 Mar 2020 13:50:46 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327135046.GN25745@shell.armlinux.org.uk>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
 <20200327134319.GD11004@lunn.ch>
 <20200327134651.GM25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327134651.GM25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_065102_930019_17A8938E 
X-CRM114-Status: GOOD (  14.95  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>,
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 01:46:52PM +0000, Russell King - ARM Linux admin wrote:
> On Fri, Mar 27, 2020 at 02:43:19PM +0100, Andrew Lunn wrote:
> > On Fri, Mar 27, 2020 at 12:40:42PM +0000, Russell King wrote:
> > > Update the SolidRun Armada 8040 platforms phy interface types from the
> > > old 10gbase-kr to the newer and more correct 10gbase-r.
> > > 
> > > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > 
> > Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> > 
> > Can we add a fixes: tag to this? So it gets backported to the point
> > 10gbase-r was added.
> 
> I think "carefully" is the answer.  It's not just the point where
> 10gbase-r was added because there's a whole bunch of other patches
> that are also required to the various ethernet and PHY drivers, SFP
> and phylink.  It's probably going to take a bit to work that out,
> get it wrong and stuff will break.

... and actually there is no point.  It is _way_ too soon to even
start thinking of using 10GKR for its true purpose - the patches
to add 10GBASER were only merged for v5.6-rc1, so we're still waiting
for a kernel with that update to be released.  In other words, there's
no stable kernels to backport it to yet.

Do we want it to go into -rc?  If so, it also needs to be thoroughly
tested.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
