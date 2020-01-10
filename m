Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536661370A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:05:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqvMPsQoWOZxVuq7t9P0cyNVd0mzB2Ipi6LNTyHZKyc=; b=dLDAmb4CqjsghM
	raQNYA7/Jrw6L+b6eiIWRRKSgJjeNTMYA/5oBvK6JmqxS4K7K4ZlBNkvtDxRYFrjAQIIZVcX2VJTR
	SuuHk//9tIHgBIeRUv8OSrs72yPW2JQzinluFFH+PpF7lxAUGCnbs0R0MGqFTOBHB9Zg/583sNhlo
	CpWZ8nOZnJ25vTmwakbfTxW4Xx25bf6XFZhBGqUBHKH62uGqoANeUMkcqiWO5WQYNigV0G+P0Hs06
	kwH7ajI6RpqPx+MmGW8oEI8Do3b2W0YpCo3RWFPuFJ8QJYYJvaoY5CnLOrTqKvYSUOXay3HUNOAri
	+wPxk2x5eslBSBibM5ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvqF-0003Yv-U9; Fri, 10 Jan 2020 15:04:51 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvpo-0003OC-PS
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jjERH6EF+vGNb/gBcK7mgafQz0TotdzBsMTiLW052cc=; b=WOejmtiVTJSE0HzYiMZKn6F2A
 1Z2BcNreFtSqsXMn81s223CZY9avMYgTg1pzfei97VbNSU6Ucy/xbO4mDphST6jbBaPotiYgVuLV4
 18wBxI13+L3AjbbWCh5nBT9RAZh+TPma7SuQ62t6UKvJIiIB/DiL1OL9wsN803fzhX1hfdyRdvCU6
 92T6KM52/xaJ68LHluVjgTnR+xD+CxLBoRnZjERIneUbQdy4AsTvTw/OXn+TcbqcIv8mo3H6LqWiX
 G2rJzKdBXUlTUnqyEX2kJ7u58iBN9caOPi+dXrMJ7N8EfwTHJOajc7vX0zeSpGbOVLt33D00TltnL
 Mrz1zHgYg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:53132)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ipvpb-0003kp-Iz; Fri, 10 Jan 2020 15:04:11 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ipvpZ-0001ap-9c; Fri, 10 Jan 2020 15:04:09 +0000
Date: Fri, 10 Jan 2020 15:04:09 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110150409.GD25745@shell.armlinux.org.uk>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110140415.GE19739@lunn.ch>
 <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110142038.2ed094ba@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070424_886526_C7796855 
X-CRM114-Status: GOOD (  14.53  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 02:20:38PM +0000, Andre Przywara wrote:
> On Fri, 10 Jan 2020 15:04:15 +0100
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> Hi Andrew,
> 
> > On Fri, Jan 10, 2020 at 11:54:08AM +0000, Andre Przywara wrote:
> > > With SGMII, the MAC and the PHY can negotiate the link speed between
> > > themselves, without the host needing to mediate between them.
> > > Linux recognises this, and will call phylink's mac_config with the speed
> > > member set to SPEED_UNKNOWN (-1).
> > > Currently the axienet driver will bail out and complain about an
> > > unsupported link speed.
> > > 
> > > Teach axienet's mac_config callback to leave the MAC's speed setting
> > > alone if the requested speed is SPEED_UNKNOWN.  
> > 
> > Hi Andre
> > 
> > Is there an interrupt when SGMII signals a change in link state? If
> > so, you should call phylink_mac_change().
> 
> Good point. The doc describes a "Auto-Negotiation Complete" interrupt
> status bit, which signal that " ... auto-negotiation of the SGMII or
> 1000BASE-X interface has completed."

It depends what they mean by "Auto-negotiation complete" in SGMII.
SGMII can complete the handshake, yet the config_reg word indicate
link down.  If such an update causes an "Auto-negotiation complete"
interrupt, then that's sufficient.

However, looking at axienet_mac_pcs_get_state(), that is just reading
back what the MAC was set to in axienet_mac_config(), which is not
how this is supposed to work.  axienet_mac_pcs_get_state() is
supposed to get the results of the SGMII/1000BASE-X "negotiation".
That also needs to be fixed.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
