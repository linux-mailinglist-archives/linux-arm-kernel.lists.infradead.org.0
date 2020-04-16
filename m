Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951851AC77B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJKZo83XZfV1LzA5VbNJRUhdE2/twSmHALI9dHR5tuo=; b=kKtMg1qrcnFrA0
	JQQU3Zszil0AkOBwy2qwiw3VWE0/rJNdR8e0+QzvH04l+DOJCtIB1UI1w7MCzlZQy2lA8Ko2uGU5t
	S1jh1sKdrrJWRhn7C76vs3zfCPEWEyjdrxpRBUfyodpgRXKpuPG4a8gDdyvVXJsZIBl5HmgYO98RI
	uksTt0c8iZms/RXdcq5sQ/2NxPwsCDQRhhPvc983e5aGdNH+EM5wh00lTMFYdS6V4Sd7MH14maVlq
	9VRwE36/2y8gsf6deSA8UDlxvYwex3EVszRbVyF7oTCPRRFUVRTpciYq4nJBOmwa9jQTFUM0JuFhM
	U1SDPIwnL6LTsya15qyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5vf-0000TW-Oj; Thu, 16 Apr 2020 14:55:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5vR-0000Qy-MS
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2TAsDZORjN9WETPN/SBIZUHlfbmQGXgSEDTiH1aJP70=; b=ysjTGYvQYx1oDZ1Dqr3mKAJqV
 3jM/obm2sGWYLsMebRCDuJPjat1kN4gV6S8xFS2Qke6kp404r6xAjPwZ8d3UOu0BIbEKZf1ZZWNg4
 Z8pdruWP4dvREPUk0M9zfx9EpclAK5Imj6jdkvTmES4lYu8ZpCMHdfebIN9Ny8d0hnVlRZUTUQwqo
 FTyiUfo1WfcED5aWEtzaW8iwEmFjEHNWBkEp7Pq3ltiOGsITZGm4Xn+lh4tKnOwaIJyE+MeKUn/9i
 sgt6jQnl6fUol8d6ApW4baOsOkzTuhhkHo68rte+Zp0+wQ0laHKAy9m5cB1LHMedQsNMV/vkcIDKH
 2tyt6zyFw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:39236)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jP5vC-0004m8-3u; Thu, 16 Apr 2020 15:55:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jP5vB-0001yW-A8; Thu, 16 Apr 2020 15:55:17 +0100
Date: Thu, 16 Apr 2020 15:55:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416145517.GK25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_075533_783977_74068D09 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-pwm@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 03:37:40PM +0100, Robin Murphy wrote:
> On 2020-04-16 2:50 pm, Andrew Lunn wrote:
> [...]
> > Clocking with Marvell devices has always been interesting. Core IP
> > like this gets reused between different generations of SoCs. The
> > original Orion5x had no clock control at all. Latter SoCs have had
> > more and more complex clock trees. So care has to be taken to not
> > change old behaviour when adding support for new clocks.
> 
> FWIW, that sounds like a good argument for encoding the clock requirements
> of each variant in the of_match_data, so the driver doesn't have to simply
> trust the DT and hope.

Please read my patches.  This is exactly what I'm doing.  I'm preserving
as closely as possible the current driver behaviour while adding support
for the Armada 8040 PWM while keeping compatibility with older DT.

And I'm doing that by keying off the match data, exactly as you're
suggesting above.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
