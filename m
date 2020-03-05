Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8370A17AAEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNb7kKZXo045FYpTMT1zYlEGHtgnA+wpYT4Er4TuRTg=; b=LG6lDQUgLRfFr6
	mZFBpxXhKECgcR+o2ZcN3QQPRA/o30UyzwMdM/VCUH2U0IPx3vfUzd5r0hkrA8IPZ1kXkvk446YCj
	SnAZL/IDlptDza3ZaiLVddTjxdp1CFmi+cYe3Cjj7Kg3p8M/6WKtsOhkgZjLOaNGHXR1BkJMLF0kR
	3UsbzDaHuu0lXWjCoY/ZhrbZUK9C6iUq1QDjfyi41iAruchwCSofgJkqeB5k34rnSUSRNpN4GQxaM
	keHqhwjbRdac6fkMuDqJ9fkpjszKHgNlXvNpo38xQ8fP43tiWKCHFwWXdztcNztdaDpHqcR18V8IF
	K6l5RUyS3MP88mbDOI4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tjO-0003ie-JD; Thu, 05 Mar 2020 16:52:18 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tjG-0003i9-JG
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:52:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zeR+H7dn9cUFtnRC0x5I2lV7x72XaKNcFrXhJbZx+zE=; b=NKgKXtBftkTbcpjFm+o7nq6lzK
 +okGpzirVXjC1s0/urazl6+TZ6IW7vmFVZDvOhbZ7KQf1F1mh33r4dmd8ud4TF4YgAu5MxuKhyD7P
 WCI8vBd7TKsJTceWVDQUK15C/PiWDXfJRYsPewdXKWNR+8pKwKtEzMRtCQN1unxh2urI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1j9tir-0006jV-1a; Thu, 05 Mar 2020 17:51:45 +0100
Date: Thu, 5 Mar 2020 17:51:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
Message-ID: <20200305165145.GA25183@lunn.ch>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_085210_634152_065C29A5 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 03:38:05PM +0100, Oleksij Rempel wrote:
> Hi Philippe,
> 
> On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
> > The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131 PHY
> > is like KSZ9031 adhering to RGMII v2.0 specification. This means the
> > MAC should provide a delay to the TXC line. Because the i.MX6 MAC does
> > not provide this delay this has to be done in the PHY.
> > 
> > This patch adds by default ~1.6ns delay to the TXC line. This should
> > be good for all boards that have the RGMII signals routed with the
> > same length.
> > 
> > The KSZ9131 has relatively high tolerances on skew registers from
> > MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
> > and then as little as possibly subtracted from that so we get more
> > accurate delay. This is actually needed because the i.MX6 SoC has
> > an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
> > values within spec.
> 
> This configuration has nothing to do in mach-imx/* It belongs to the
> board devicetree. Please see DT binding documentation for needed
> properties:
> Documentation/devicetree/bindings/net/micrel-ksz90x1.txt

It probably does not even need that. Just

phy-mode = <rgmii-txid>

Also, please Cc: netdev for network code.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
