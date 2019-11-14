Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBB9FC9F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VeAYVuJ1OISWnV60XCL2jKCiEWCNkHtqjn4zRlX1mwY=; b=sI4kAyARRYzGip
	bZ7p1EwmEHUAIfDZae+ygu28KEs3n1Y/pJRUxV6/rI4/5F1DhHriSRqZvYI2aRISKIEkXTZkLzDUd
	sJ2whqrQ4l45dyaZ5Z3eeYSzhtuDDUTxS4walILXBPd4U4q+94oCbjAiJyPH0j1aidAyPy8dbU/Oo
	QQz0dm90FKg4T1pdv3z84DMplXBiEp19s7de+Ukv1koBxjQBq3m1JUmmXaC+EOxGCiXOWuCa45xQQ
	VcLxaTd4iSFV4TJ/7cVTt9x7zkW8n12cD4Mdy5MiDw2g2bOObd21kniQd+KgH64HVWQcvEmM3njJb
	QgTCykep8PbCTU0UMWsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVH3Q-0001U7-QD; Thu, 14 Nov 2019 15:29:04 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVH3J-0001TZ-4n
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:28:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ElG8Ta8wnxyvEpph2Zdu0/QL/JmLef30hlFTtXPVY2w=; b=b/58ij9zk28SivK4r5tm14Hq55
 iuccP5RskD/WgI5i93dWzWsR8CMNTJ098NMLPvjZbt/6jPB7gIH3M5QmOxZ7D5p2HOpaBNNQ8aLJa
 vF7huaLIaHiyw8bLOJqBGBsmT2Ptjq11+iN+/Qc3/gy1AfDGhFpRoZHcXH0URtb6CrcA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iVH3A-0004kD-8P; Thu, 14 Nov 2019 16:28:48 +0100
Date: Thu, 14 Nov 2019 16:28:48 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 2/2] ARM: dts: ls1021a-tsn: Use interrupts for the
 SGMII PHYs
Message-ID: <20191114152848.GR10875@lunn.ch>
References: <20191114110254.32171-1-linux@rasmusvillemoes.dk>
 <20191114110254.32171-3-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114110254.32171-3-linux@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_072857_185956_2109B606 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 netdev@vger.kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 12:02:53PM +0100, Rasmus Villemoes wrote:
> From: Vladimir Oltean <olteanv@gmail.com>
> 
> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> 
> Switching to interrupts offloads the PHY library from the task of
> polling the MDIO status and AN registers (1, 4, 5) every second.
> 
> Unfortunately, the BCM5464R quad PHY connected to the switch does not
> appear to have an interrupt line routed to the SoC.
> 
> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
