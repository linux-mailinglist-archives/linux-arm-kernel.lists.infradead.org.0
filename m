Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 891981C720B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9zYJS18LvWDap7SMR1FWRDj56SPxPN00zeJ331AVMXE=; b=lmfx8h145/ShgX
	Hx2f1XuWiWieTUDZmUEKKrWjpzKbpi7T0bRx038ZZmIpgfXOysHCgJ+7ghNhlbyWA7YGBad7qRSNV
	OP3aiZDTZv3SwtGKX131zn2vRq147IN5WIw6+9yMOVYWMU/XtkKfy1Yn6jtaxHTLWSuHsUkrK9Tv+
	Ld6+OH+pRymQPM8Gb/ZDKNXp6rSWnc74K3KmeYUWp0jz6a8yrsBcOMlsE1YEnMeeX0mZN5pieETGU
	LGu5beui7+dyz8R2GRlxe+m7hdxQcicv8IN+oi6nTsVnkfnm/zkpFKWcn3c1o/LxE3e/HMKkp+H+R
	vdxmwlPtvm2ZJTMknBXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKPa-0005hM-3c; Wed, 06 May 2020 13:48:34 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKPT-0005gD-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UtaGRb3kkKTgPuF4ezNKw0wVo+/nkRp3H28c3f84pTI=; b=CZBnVPDh1TOeD1U2INSIenhmVi
 TLvy4DDIu/AYCqWWGzArCSu9oMY8I71temXZxQE0Jw/+8odhrkCKk+Sfqw9zXWXHwAOunhNVhjrMu
 ptwoKqlK7rAOLenjfMzo9DTPTuLFE55R3sxC9wEdpniRxc36HT2YpvrNtSWq+GqKfdWQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jWKPK-0015g2-VW; Wed, 06 May 2020 15:48:18 +0200
Date: Wed, 6 May 2020 15:48:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 2/2] arm64: dts: add uDPU i2c bus recovery
Message-ID: <20200506134818.GF224913@lunn.ch>
References: <20200506094001.GP1551@shell.armlinux.org.uk>
 <E1jWGXd-0000Z7-1n@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1jWGXd-0000Z7-1n@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_064827_765373_965FC1A5 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 10:40:37AM +0100, Russell King wrote:
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  .../boot/dts/marvell/armada-3720-uDPU.dts     | 22 +++++++++++++++++--

Hi Russell

Interesting that the 3720 uses pxa, not orion i2c. I had not noticed
that before.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
