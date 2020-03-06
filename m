Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB817B7A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GI/LUzyNrNfAyIIkxKwHhT8K14deQBsg1qkwyPxxL+A=; b=ZDh5K8LLJQo2et
	kFcMWd6X8BfAFfmyge9Uvvzh63rqPlXZMtuOq0NHHRsV0sKUlPaQZvyz/7tnC9mqu66qN1QwgySgH
	Ejjavb1P34MYwsVN9e09OuqUU/vDIEFbwnqbZk69omqPpWrXZD/akE5dWfosYbyu4Nnt+X/lx+PV/
	pZ3ArtXPtohuYPGOv2QhVGPfHEE3kRyooSWCSC1rNRDCdHe6peX9+25ZM1Gw/7FK8hwO8OXoOVYT6
	DGneedPElHAHLBVECextB7eSGaAyQ3tA7hlIEQoq3biE4aGFjMuvBWS/sk68gMVUzcApTE1MqxxmE
	zo2rSoJQLkDhf4zijNOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7dO-0001AU-Ou; Fri, 06 Mar 2020 07:43:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7dE-00019z-Cg
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 07:42:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1jA7dC-0000a2-UJ; Fri, 06 Mar 2020 08:42:50 +0100
Subject: Re: [PATCH] ARM: mach-imx6q: add ksz9131rn_phy_fixup
To: Andrew Lunn <andrew@lunn.ch>, Oleksij Rempel <o.rempel@pengutronix.de>
References: <20200305134928.19775-1-philippe.schenker@toradex.com>
 <20200305143805.dk7fndblnqjnwxu6@pengutronix.de>
 <20200305165145.GA25183@lunn.ch>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7191ffe6-642a-477c-ec37-e37dc9be4bf8@pengutronix.de>
Date: Fri, 6 Mar 2020 08:42:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200305165145.GA25183@lunn.ch>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_234252_430306_D2B88884 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andrew,

On 3/5/20 5:51 PM, Andrew Lunn wrote:
> On Thu, Mar 05, 2020 at 03:38:05PM +0100, Oleksij Rempel wrote:
>> Hi Philippe,
>>
>> On Thu, Mar 05, 2020 at 02:49:28PM +0100, Philippe Schenker wrote:
>>> The MAC of the i.MX6 SoC is compliant with RGMII v1.3. The KSZ9131 PHY
>>> is like KSZ9031 adhering to RGMII v2.0 specification. This means the
>>> MAC should provide a delay to the TXC line. Because the i.MX6 MAC does
>>> not provide this delay this has to be done in the PHY.
>>>
>>> This patch adds by default ~1.6ns delay to the TXC line. This should
>>> be good for all boards that have the RGMII signals routed with the
>>> same length.
>>>
>>> The KSZ9131 has relatively high tolerances on skew registers from
>>> MMD 2.4 to MMD 2.8. Therefore the new DLL-based delay of 2ns is used
>>> and then as little as possibly subtracted from that so we get more
>>> accurate delay. This is actually needed because the i.MX6 SoC has
>>> an asynchron skew on TXC from -100ps to 900ps, to get all RGMII
>>> values within spec.
>>
>> This configuration has nothing to do in mach-imx/* It belongs to the
>> board devicetree. Please see DT binding documentation for needed
>> properties:
>> Documentation/devicetree/bindings/net/micrel-ksz90x1.txt
> 
> It probably does not even need that. Just
> 
> phy-mode = <rgmii-txid>

Looks to me like this isn't supported by the Micrel PHY driver or am
I missing something?

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
