Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE4C136EF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 15:04:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MdE/8LhqFv8ox0KBc7PKK6fZrdrO0RJaInlFq3YA90=; b=j/OjlsXUxXZGeo
	vWSn41nUHH3lg8GzlnOdhGtIENvURxx3wObUMEmZ+B9qZgzu4EmcifubgeB2l+Eadq/TXivEaAqjL
	/tGXKd0aLu8Plx9snKbxybUVUxLPhBXoVGX9MtPFe0JJigyJ7e47uU5fwqy6RuT1mPiVD8XmXADsZ
	G68DvCvyeN1Ueeen7bOuNTJxjGd59o1hrvIllBumBRqzqteekHA9VlFk22x9EhJyAmiB/KhklIR7W
	Q0q3twp1T7GuAFsCafG3wQhLLhqLU/8YjyEo2YuifJvKrroAiaMw1RLUO3j0sBkeQiAZSC15CB/Yr
	1AMxH2AO31wlibwTkf0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iputw-0004MT-Sv; Fri, 10 Jan 2020 14:04:36 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iputn-0004LM-0e
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 14:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nFFRscT+IEUSdIlTKVGLh7JmrVqmM9hERdN1OMh753E=; b=sqPc5dtbH/Pa0ldbgijbqpyiA2
 NFyuGhgwcNaakqdbI7Fre08QK1jIO5X0Eetn3g2gL3g8c+mIthPeKgpbWxx1Hqutbz18+SJyLrYTQ
 0TU7jTBOx6kkKbB0aaPXW5acQkYmvdtR41mJm+BcnhG5LwDyOp2E0+d5HH/gZ4w5M0UQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1iputb-0007IB-O4; Fri, 10 Jan 2020 15:04:15 +0100
Date: Fri, 10 Jan 2020 15:04:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110140415.GE19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110115415.75683-8-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_060427_056924_715B5FE7 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Russell King <rmk+kernel@arm.linux.org.uk>,
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
> Currently the axienet driver will bail out and complain about an
> unsupported link speed.
> 
> Teach axienet's mac_config callback to leave the MAC's speed setting
> alone if the requested speed is SPEED_UNKNOWN.

Hi Andre

Is there an interrupt when SGMII signals a change in link state? If
so, you should call phylink_mac_change().

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
