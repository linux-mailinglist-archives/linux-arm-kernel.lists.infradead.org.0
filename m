Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659097D198
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 00:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQAhn/9MYNcqZLZymUbZbwoybI1VdxfBJ6oLdBwGvNo=; b=M5bIohocDeu9h4
	rilzdPKJ55zqE9xiuF8GOjqHDxDC984WILue/LEvZ+CDLrPTNUhtcLW8Ey/foUY2fmkHrj1jNrJkw
	tqY4wtKFac84h7Zg/4AuDepVPPIGFCoYKsmHiGGsbgRnSYXeJS48JbvQsbBjg/FE1SACIQEwlxiSt
	gMrYrbupNXGnVI+2iv5rmGg4F2ucaRrFnGgXngcGqIwlo9T//5ZI2LcFDCY+b4auAp2yDnkXD2wBX
	4rPEJpwc6RV086sn71iRnvC8gXnutRk00kkrZpvdeMN1Q3N8L78zts+EAGWsoR4JkJlhIPE8N5QVN
	DAwOH5FuYwEpEmGSLWhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxVP-0001hT-AF; Wed, 31 Jul 2019 22:55:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxVH-0000HM-MP
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 22:55:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ATvYdNztPV3VRoATCZ+XXKdGjFdgKnY+Oq7E+6cYRLw=; b=aLWTKr5D4Rlk7ktmm3LE29Dbo
 /taejBAF/fXWYBc+QVYYMIDzXl057wk3SyDWKz4hs+4iwydnV48UnmAg/XzlUTXhwOUIdnYrHWh0/
 TWYVtv1avZ0FLXQm3YUQU2tYjr44orLV+M/V+ZhoQV3bDFScKO/OTTOMFAIaPnogFjiuG8ThozLND
 tdsnZMyYD3CGn1c5rBlIGRDrN4R282d8kjN05QVoIfOD2Inz1RIm/eToT6V6qRWJPSqewWytQAGLm
 OzOBhKPMd4feDMZu+M5tm5g0jqYDFq2FqDS8oZmuSAXX+PkFIlzTyr+EM50T1csY0ZV1uPbDrJsnc
 F5zemaCyA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46960)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hsxT5-0005ur-J6; Wed, 31 Jul 2019 23:53:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hsxSy-0003Z5-38; Wed, 31 Jul 2019 23:53:04 +0100
Date: Wed, 31 Jul 2019 23:53:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
Message-ID: <20190731225303.GC1330@shell.armlinux.org.uk>
References: <20190731195713.3150463-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731195713.3150463-1-arnd@arndb.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_155527_735752_2BB8A66C 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-watchdog@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Vladimir Zapolskiy <vz@mleia.com>, linux-gpio@vger.kernel.org, soc@kernel.org,
 netdev@vger.kernel.org, Alan Stern <stern@rowland.harvard.edu>,
 Guenter Roeck <linux@roeck-us.net>, linux-serial@vger.kernel.org,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 09:56:42PM +0200, Arnd Bergmann wrote:
> For dove, the patches are basically what I had proposed back in
> 2015 when all other ARMv6/ARMv7 machines became part of a single
> kernel build. I don't know what the state is mach-dove support is,
> compared to the DT based support in mach-mvebu for the same
> hardware. If they are functionally the same, we could also just
> remove mach-dove rather than applying my patches.

Well, the good news is that I'm down to a small board support file
for the Dove Cubox now - but the bad news is, that there's still a
board support file necessary to support everything the Dove SoC has
to offer.

Even for a DT based Dove Cubox, I'm still using mach-dove, but it
may be possible to drop most of mach-dove now.  Without spending a
lot of time digging through it, it's impossible to really know.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
