Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 240FAF5FAA
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 16:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8p2tFCY9j0KWZ/m97H3mDawXiY7jkKIQduSxlABhHE=; b=HlD8itwCAmyUYh
	Dkj4pPv0VJ7W8Te0Ioh3Zzt3EsPORhYgsRMincTf6KWAp8vhbTv4dqn0JQqnGot8VA5/UhEsLQnFN
	4An0kZVTawo/jtZCB3WjtS0NsMPHJdMZw4ocCKFxQTggjGlKGA6phVOkRMWoW8TvrTybBCPVyVvmd
	2JPvIWy+ubJPd4ZvXF91ZWvnti5H0n1mDhiWi79JpUIS75BnEFXQLSYgKYnJAwhw6tQ2PoEomGIzw
	lVam1uk7FqFHNBf125mwqv90MUsk2anfKHGFd5sJADG3HikCsW9RLekA80NbwPO3Sw9hNonvjfQVP
	iFA361M+Bb5ciCdJbVhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTSNT-0004h4-9V; Sat, 09 Nov 2019 15:10:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTSNI-0003pW-RW
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 15:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aK1/Bynq/S5FJwndRe1A0tkeecA2rpo7jhzcq7s2SFY=; b=22VYp0HBQPgOAD4jdGXUI4g8OJ
 JZ26IupiPr6t0vQXGD5tWwfBBEruyp17X170YTvZktUq6nICEPC6fLS6YFA6z+CLcCJisPR2EGqA/
 j/JMr6c0eZmzgqobKm8D4/MBVPmzB7FviNp5rvBbPYY9uXOWhVUjdGV3uuZuprjYaR30=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iTSN7-0002cV-Ry; Sat, 09 Nov 2019 16:09:53 +0100
Date: Sat, 9 Nov 2019 16:09:53 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
Message-ID: <20191109150953.GJ22978@lunn.ch>
References: <20191109105642.30700-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191109105642.30700-1-olteanv@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_071004_896100_AEDF7AD0 
X-CRM114-Status: UNSURE (   8.61  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
> 
> The interrupts are active low, but the GICv2 controller does not support
> active-low and falling-edge interrupts, so the only mode it can be
> configured in is rising-edge.

Hi Vladimir

So how does this work? The rising edge would occur after the interrupt
handler has completed? What triggers the interrupt handler?

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
