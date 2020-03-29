Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3692C196C9F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VTkZMjsC8OqmKDZxaSNBG5/6OgTQBsqKjZxRvlwZokc=; b=qXqv8id7NKd15m
	+nCgA+pe43lob8Wb11DKDVxuOIN3dGASCyovSuMRSstaqBTH2e8HY3THJ67kPFXAt5UJW6NkExvKV
	A1aNkAU/OWULXR7Sl9Tar9mGSLhgEwQd5oexdARizX8u1oqg95TeDzJvI3bAh1qsJvtxVAXVQxbE6
	QYZnRL5keg5iuJQNW5tZxCxp32yT+kjQyE7PRmw+pVb5ZKZe2mNba80yLDQ1ohrgtrvxfcUE8mlyn
	/amfkODFMXbyWgFANtnr0n5cT6Z+zE6+ZbHzpO3WwoQ3ZMBNdpOFcON3m/0Uaq2cW/dws6mVQ2Sps
	9KgotMBNS072sRycqvTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVUV-0004ck-Ky; Sun, 29 Mar 2020 10:48:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVUL-0004Y0-TK
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/F8TTmllRhQAieNs3H3r8cSkUpyHMpQ7aHdeJZxCxpM=; b=TB6dAUe3IsgMBI6Ss1SOI4z8L
 iac0Z1lLbuGhAexjYOp5axmyd+W0FmsuQDlca1oJABLPoEnb9A1331CkamBfrf1SJ83HJ3ujKC4tV
 B6tWsnbTJ39myLy8PsrP/z5wv8MDpFyyJfUaViS/+Kvvj6PQR6Gt2SnKPmsc01iZAQPzymakS/Bca
 q3QjXQ6jJ3ZPMHat+HSkYyLE9eZeexB/ljHkjeidBsAQ0loa8qdIDZIVtAkVBtwZwl4bSl9CajQBw
 CmkPgfkTYALEkXIzzyKNa0/5UHt0DEFc96K0ItTUsUcfMMhn6iWnjsT0FIzgdTj1fRPfyqBbLwQA2
 E+fryUP1Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:42874)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jIVRy-0004UG-CK; Sun, 29 Mar 2020 11:45:54 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jIVRu-00069D-2a; Sun, 29 Mar 2020 11:45:50 +0100
Date: Sun, 29 Mar 2020 11:45:50 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200329104549.GX25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_034821_946224_A49BD9DB 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series adds support for the fan PWM output on the Clearfog GT8K
platform, and can potentially be extended to the Macchiatobin.

The cooling maps are experimental - it seems to work well for me
without the fan speed varying too much, but what I've noticed with
fewer entries in the map is instability in the fan speed - it
continually toggles between two fan speeds as the temperature
rises and falls due to the different fan speed.  Hence, this is more
for discussion at this point (and in any case, -final is likely to be
released today.)

 .../dts/marvell/armada-8040-clearfog-gt-8k.dts     | 125 ++++++++++++
 arch/arm64/boot/dts/marvell/armada-cp11x.dtsi      |   6 +
 drivers/gpio/gpio-mvebu.c                          | 220 ++++++++++++++-------
 3 files changed, 275 insertions(+), 76 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
