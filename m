Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F11517283A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJW5UfNVa8TjYFW7qCb1CS8CeOzowLxNHwjbVjN/l4c=; b=KwIazp8l3xmc9m
	tnOKExS+BfiWlRUgYzSIpw/4R/7upsQX89L8RWCVuwon4EZZDvHPZUyqDyaY89jMAQeWYIVhA/Ok7
	0KFmEsV82iv+Iy+2IAD0VkgNa8PCoWCnM57HhkqTVFioIL/SIjcefRjN+WWP+feNgawkAg5URTB4m
	aYzO7Q6eGhol+5zeA4HWg+JH67q2Sp9Q6+oW9xgOdmXOgS0klqKtGV/aKaBFKeGIpSw5xLBscpPEE
	CQQa9HkXj9TsxL0CLyiNgodRwlVdVOO9ugmbHAZmEardeKrgOlJRIG10wS0ft+78+NVY8rJf0THR+
	8DPhu/sj+jcpM8eOITRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ONk-0000Ia-Ls; Thu, 27 Feb 2020 18:59:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ONb-0000Hn-4F
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:59:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ipj4drtt9yzUNbt5mpWG89wO/mNsc6SsP6BNeTVfgy0=; b=fMUfXa742omMNQws8oySsIIDI
 TjQapdNKe/wrMtclzDd8CINdU8envubSiWuwUVaxKFuOpgutYuHbp1G8sk3GCjTsmuzu0ncPNdjda
 Pn3/869OO+QVgf8n2RFi8wntpl58LiAOVirHAOaHfctxfF9FVR6joa3CSERy49L7egSYODsLuk/Im
 ka3EmaB0hWddqvGSfESDfOMNjLdyyidtiNU8HN3lDD9OrVYFxni8OzDP+bxj4wYjwoYWTf5CNCkRI
 MqqHwnW0qRx2Ynp7G0CL09nXb/ophZZkoGvGYIiED7Xbz5JJUB/xFinqHMEHGcOZKKquCkiD/Ls2s
 verluUx3g==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57726)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j7ONI-0007U7-FA; Thu, 27 Feb 2020 18:59:08 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j7ONE-0001CS-MC; Thu, 27 Feb 2020 18:59:04 +0000
Date: Thu, 27 Feb 2020 18:59:04 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
Message-ID: <20200227185904.GQ25745@shell.armlinux.org.uk>
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <1bcb9a92-d739-6406-6414-783b19bfb66e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1bcb9a92-d739-6406-6414-783b19bfb66e@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_105927_172293_B54B13AC 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Jason Cooper <jason@lakedaemon.net>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 09:44:35AM -0800, Florian Fainelli wrote:
> On 2/27/20 1:52 AM, Russell King wrote:
> > Add a DT bindings document for the Marvell 10G driver, which will
> > augment the generic ethernet PHY binding by having LED mode
> > configuration.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> We have been kicking the ball for way too long but there really ought to
> be a standardized binding to configure LED modes for a PHY. Something
> that we previously discussed here without making much progress because
> the LED maintainer was not involved:
> 
> http://patchwork.ozlabs.org/patch/1146609/
> http://patchwork.ozlabs.org/patch/1146610/
> http://patchwork.ozlabs.org/patch/1146611/
> http://patchwork.ozlabs.org/patch/1146612/
> 
> What you are proposing here is just a plain configuration interface via
> Device Tree, which is really borderline. It gets the job done, and it is
> extremely easy to maintain and use because people just stick in their
> register value in there, but boy, what a poor abstraction that is.
> 
> Maybe you can resume where Matthias left and improve upon his patch
> series, if nothing else for the binding and PHY layer integration?

That series is way too simplistic, and would not allow for a
usable configuration for a four-speed PHY such as this one.

The proposed binding in those patches makes the assumption that
the only time that a LED shall blink is when there is traffic.

LED configuration is highly PHY specific.

For the 88x3310, we have around 31 different conditions that the LED
can blink for, or be solid for, the blink rate, and the polarity -
each LED is controlled by 13 bits in total, and then there's the "dual"
modes for bi-color LEDs which cause other of the LED configuration
registers to be ignored.  In other words, it's rather complex.

We could choose to limit the complexity, but then that risks making
it useless for certain boards - such as the Macchiatobin board, where
the dual modes can't be used due to the way the LEDs are wired - see
the last patch, where I describe how the LEDs are configured to
behave, which is the sanest organisation I could come up with which
doesn't result in mixing up various modes.


In any case, I do not wish to add to my patch backlog right now.  Maybe
when the backlog is smaller, I'll consider it, but not before.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
