Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B0219584C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:47:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aICVywJgrPZGy8Lo0MydLEuHkBIhlpYoIbHB7zPwO0s=; b=B1ccmnzoWOZftX
	KQUASYZ90FPNskuDgY0JGFZn9Rl+3JCQeEusR0BRIgq5kGHUoGfSUCmudyC1O7Cg2IS/GS+RStS+0
	CqWCVeEeCPOZYYfBZD0wG/a2TA9HsSXcxToHj64troB3ObKcY29HOP23wwDJJ6UrlHBLILmna9lTX
	tC9toVPfiDfXtJaqQVmTnS/++4AwvGgTvRFPwtju1f0/jRohQcAKjR/mYhk/fnJwtzLvCW5I9aXkK
	kcuq9jcJ4jMh7rVxyAIwwsTPu5D0AbJVJ8mJ2QTraW2zQFhrogGAU83ND1kxt01LZxSoHW+4Uogzr
	sy0PxEy1bHUL/+VxN9jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpKT-0002Ye-PY; Fri, 27 Mar 2020 13:47:21 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpKJ-0002YD-1M
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:47:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8bdaiEleZDnY2jvecPdTFVipYBcD9bf+hHnaxTR7WMM=; b=PM/scxa6DXSEByzJZ+fpLmeVR
 ZvZgYZe8WqO/jtQvnhmw7qBwSnXn/ysicANeJezykGVcl66PhyaewFUXFhh9T8vUnb+ltpj546wpP
 GiqMTU0qUpCFO63UDCRGvWR0CyB9hqswrMHmSm1yeuaSa7ajEN0Yh9rF31w6eBfnE3a+i7AmDEiND
 j5lbSBxQXfQrG1ph8Wk0TQEE8afQ1UvNVz4JaYPo+2eB2Xmrlf2k/0Cj6H56PVmP1S1L4G3CU8E7D
 Pa3gEGoSOItwC3GzJin9VyfjRo0dAHN/aUbFVz3M0wo49ezBQSL6tMj88xTqEqcirl4NtjheVTlD7
 6e5NYiV+g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37932)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jHpK2-0001Nk-GI; Fri, 27 Mar 2020 13:46:54 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jHpK0-0004H6-3H; Fri, 27 Mar 2020 13:46:52 +0000
Date: Fri, 27 Mar 2020 13:46:52 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
Message-ID: <20200327134651.GM25745@shell.armlinux.org.uk>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
 <20200327134319.GD11004@lunn.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327134319.GD11004@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_064711_081160_75942EB8 
X-CRM114-Status: GOOD (  11.88  )
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

On Fri, Mar 27, 2020 at 02:43:19PM +0100, Andrew Lunn wrote:
> On Fri, Mar 27, 2020 at 12:40:42PM +0000, Russell King wrote:
> > Update the SolidRun Armada 8040 platforms phy interface types from the
> > old 10gbase-kr to the newer and more correct 10gbase-r.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> 
> Can we add a fixes: tag to this? So it gets backported to the point
> 10gbase-r was added.

I think "carefully" is the answer.  It's not just the point where
10gbase-r was added because there's a whole bunch of other patches
that are also required to the various ethernet and PHY drivers, SFP
and phylink.  It's probably going to take a bit to work that out,
get it wrong and stuff will break.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
