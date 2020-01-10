Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF1F137078
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnxUtRnu6QWaKG2fLqVYZbTWPhvmHcBdfi+ohfH9Mq4=; b=AoZj0VpCZavgwR
	d2o4vvO4RTCwWYGnluR9tT/W6AD0e9xfFTWxONL8s6MmAHE1L+p1kU4dLZx7J+xlfdxP/i5lznEUk
	lj/43ceGR2HAWrlvC4WS6U4kI2Zn3ErmmSXwCIO2/ep4dBoIbWwPCdbD0ULxjlQTDHHL0Ho1GI2wB
	/gim/GJlZKSVr3LpxJsBfDeE/aK1CwhbYXzl2ia2uOZ5aNdPT577/7LDNM4D8X0cZ81O49uQ9DoMM
	Gw4X+n7RfOAHqTADMhjZOCQvs0jjLG5/MtuLZyNoZTKBU3e4vL9YVgcWjtEerZBG73Q+Fm62RbA0G
	+IvF3wf/gDO5VkDC0O3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvlA-0000uC-JY; Fri, 10 Jan 2020 14:59:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvku-0000mO-67
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KcB+0FZvEwMSZ71K+kCoZ9X5u6DRQpvD2AQdpGnKqKU=; b=VSQn0TttzYKM/CdTWxnCb9SAK
 98MKbpP1VXCI0Wb/ur9FQV6efmKh98+5V8KPBvOrOfxB7IrgR05Ta3vlsVkBS618/wkR/PkF8y4f3
 9rX0rXKOOIac1MIFCacPThgaz4YTylyoGIYqIOzwsN7VjtDB57lpecTA+jJoaRUPUpmBVqjLnuepN
 yP+TmIC7pPvUW5xAl5K7439M3ROyOI9TB3VDgrofXb84No5s41VboEGKCVgNbHnOSADnNtsrbQ4TV
 CHjv74Fj6rjhDsWFYY47kXdsbHAN3nkCSjgGVFDIUhyo8I+KhX8UEtmC0LtaI/D1YDzXTd8TXOgSC
 tbRk2znsQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53122)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipvkU-0003i1-OE; Fri, 10 Jan 2020 14:58:54 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipvkP-0001aZ-ER; Fri, 10 Jan 2020 14:58:49 +0000
Date: Fri, 10 Jan 2020 14:58:49 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110145849.GC25745@shell.armlinux.org.uk>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110115415.75683-8-andre.przywara@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_065920_237176_75E10D00 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> With SGMII, the MAC and the PHY can negotiate the link speed between
> themselves, without the host needing to mediate between them.
> Linux recognises this, and will call phylink's mac_config with the speed
> member set to SPEED_UNKNOWN (-1).

I wonder whether you have read the documentation for the phylink
mac_config() method (if not, please read it, it contains some very
important information about what mac_config() should do.)  When
operating in SGMII in-band mode, state->speed and state->duplex are
not actually valid.

You'll probably want to submit a better patch after reading the
documentation.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
