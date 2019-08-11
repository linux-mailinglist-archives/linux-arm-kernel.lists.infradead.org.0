Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82978929C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 18:31:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldkkRonrTELKHDgcmOneUU85bDZNPZGUcjyIGpXuYI8=; b=Q03quxGY+Lnrb4
	xx1LFvUPpwSgl8k5tAGDwQe6oJNCinFkJPTN3SDSaYaohokQCMQ0dpqNFnJJrWm6nfSt5Bp1G34id
	2wBpgaec/cvqCxup3+K5wcVy1dhoEM+dESVvdpK873YheWPn2jLJGfuBeR7PzbRf0td6/ssBI2f2E
	ieXnmLyHMShArlL6R99Z/YLKLTvr57kerpCMcY3/QueTvKBDGBHsj2AUrdGv3NRSWpseDQ6hqzbar
	XGJAVLo+BkNSim02roNUDW27sjUS5i/Tqp4hDxM8dYpfoMMXJ6e9Ad1NIWZtjJhUNK2zSaiH4YBnC
	K5iTsxV7iP2PjU33Osag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwqkV-0004Av-V3; Sun, 11 Aug 2019 16:31:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwqkP-0004Aa-0f
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 16:31:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lozDe2KJhIZbEGQBfmlQNXhoJltngcT+6KrAJ7pHjU0=; b=y8xe1vCIbnoaJUi+9k8+FHNKe0
 xmZz6pGIaArP2t6zvIo7fcabjWTH6JZVjl+a4OSS9SFMmgI57ryRebUmrEOHziyz+M6NYGxB9YNIC
 om+/lQntAlqUi7jhH/OZdwGE9jqIeEPGGdSEOaPpvZ7q9hxv2FDk/OgDjDv0XaJ8UW5w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hwqkN-0004Bz-Ao; Sun, 11 Aug 2019 18:31:07 +0200
Date: Sun, 11 Aug 2019 18:31:07 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [BUG] fec mdio times out under system stress
Message-ID: <20190811163107.GE14290@lunn.ch>
References: <20190811133707.GC13294@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190811133707.GC13294@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_093109_214271_F02AA0F2 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Aug 11, 2019 at 02:37:07PM +0100, Russell King - ARM Linux admin wrote:
> Hi Fabio,
> 
> When I woke up this morning, I found that one of the Hummingboards
> had gone offline (as in, lost network link) during the night.
> Investigating, I find that the system had gone into OOM, and at
> that time, triggered an unrelated:
> 
> [4111697.698776] fec 2188000.ethernet eth0: MDIO read timeout
> [4111697.712996] MII_DATA: 0x6006796d
> [4111697.729415] MII_SPEED: 0x0000001a
> [4111697.745232] IEVENT: 0x00000000
> [4111697.745242] IMASK: 0x0a8000aa
> [4111698.002233] Atheros 8035 ethernet 2188000.ethernet-1:00: PHY state change RUNNING -> HALTED
> [4111698.009882] fec 2188000.ethernet eth0: Link is Down
> 
> This is on a dual-core iMX6.
> 
> It looks like the read actually completed (since MII_DATA contains
> the register data) but we somehow lost the interrupt (or maybe
> received the interrupt after wait_for_completion_timeout() timed
> out.)

Hi Russell

The timeout is quite short,

#define FEC_MII_TIMEOUT         30000 /* us */

Looking at the Vybrid datasheet, there does not appear to be any way
to determine if the hardware is busy other than waiting for the
interrupt. There is no 'busy' bit which gets cleared on completion.

So about the only option is to make the timeout bigger.

   Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
