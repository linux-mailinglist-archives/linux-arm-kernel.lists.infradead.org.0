Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8210E13774B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 20:34:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gr1+GElvUEcpT5Mo10kKkzzSLuU5A5ctKRZ/jkI4+g=; b=m5TAR8z15zNmYp
	T9p9SB/ndt412EKXUk/1OcvsMf1XeKqRSh6kpSdAa/RUgbbykTpaN9xISaAnUvXE/QPF+19RPw7Yn
	xDhU6VgrKEOpl2O3yeExb/MrZSmH197jtjLGxfvc/veF2HscCwvWfrVK25lWJSAlYupLWhDpQpyVA
	XwLfZCIkDQcICO7ePKsawaIrc0oBc+tpz1F8Tywh8rZgMn9yKqYNKwQKT4wGaE3Aktf2bPoxQF5il
	sqHsRYVuhpMdSzXUBm4btoGMV0cl8RkG40ogNInHI3fFtaPkXt+LxsMeajBSSvg05M250+ereXgDY
	XtvShDgw3rV4zAXd9EmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq02m-0002w0-Mq; Fri, 10 Jan 2020 19:34:04 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq02d-0002uw-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 19:33:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y+GDTn9tkHWTYtCXAFZVZoOP4Q0QrqzM4C7IlKEbmaY=; b=nR2k6fVjFvLF1j/GiSSvtMLFMl
 USN7WfA5tsouTLhDE1FUPbT1Jf5yFAg+ipFsCXEkrBRxOtjgr5tcZ+X5e9aWUrMyxiL9OjG4bdQyR
 9sKV8LVCVE9KQiJUiMDG/STXbtoArq8NmaVG2WeUPxB3jiHsWnvHiM6CQk26lJzpHCXY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1iq02T-0003sa-9C; Fri, 10 Jan 2020 20:33:45 +0100
Date: Fri, 10 Jan 2020 20:33:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 07/14] net: axienet: Fix SGMII support
Message-ID: <20200110193345.GR19739@lunn.ch>
References: <20200110115415.75683-1-andre.przywara@arm.com>
 <20200110115415.75683-8-andre.przywara@arm.com>
 <20200110145849.GC25745@shell.armlinux.org.uk>
 <20200110173249.0b086a76@donnerap.cambridge.arm.com>
 <20200110180546.GK25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110180546.GK25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_113355_926310_357D7EF6 
X-CRM114-Status: UNSURE (   8.17  )
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
Cc: Andre Przywara <andre.przywara@arm.com>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Phylink currently expects the result of the in-band negotiation at
> the MAC PCS to be propagated to the MAC by hardware (as this is what
> happens with mvneta and mvpp2, the first two MACs that phylink
> supports.)  If there is hardware that requires something else, then
> that will need to be revisited, and will result in not only code but
> also documentation updates as well.

Hi Russell

This is an issue i'm having at the moment with Marvell switches. They
do not propagate the results to the MAC. So when i get an interrupt
from the SERDES that the link is up, i'm programming the MAC as
needed.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
