Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B3102278
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uquDEShsMKftLKBqSdYiaiF/HB0Fcpsb3Nq6FO36V9Y=; b=fP4VCMY1uKWI1u
	V2a6Y79xAX4DxiNzOOTEi6Trm5to1iH0eCY7C3bG606r3I5IMh97bjnzz9j/RWBoXQjN6Xsv5k666
	Rp4J8sC/SE2unuVp1NTCmKPf8IdqI6RHaqTDAAxMh3qo1sz5GvcP9jOUC/uepZDMJ9w4HWPNUHyFG
	nt/+VvMRIFRAqkpyF0bMS5bopBWuDxzHiOn5LyZSqFDWo3Zo5MrMxHXJuDTW0iigGN6byA+iVut0h
	pOmWQMpGNuYwUxMz/3f8mgA2C6HiGzPuqzEMt1NY4Op1/6f6dmWegzYZsXOCtBRNOgIz++U+VjelO
	vuAYCG1mRkoyb7ZMye9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1FY-0003NV-R7; Tue, 19 Nov 2019 11:00:48 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1FQ-0003N2-Fy
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 11:00:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7xYPBOsOUttXU6u6FFGO6AadLzEHL85S6CRWNpo/gZQ=; b=TopOXo3RK1DkRNils8wMuqomO
 33SdGU7uMQFzhaga5C2QPeBRsJjvMo6N4ytk+A0fOZJ9qykcoq9ZKnpur5C6+cRLTCnGEp6HtvH8I
 z0nelwmeTxj7nAtINIOa6UZrzwt8TAZgfNJJept6qHcQsHbxBrlfJ7bIvZIaspP5ChFvbTx2yrqLu
 MhpNQ6/2vv/P/nH7FCs18Fsard5vDJBfKKmMOy0fQ4yQqXoBvCooOI77SBtkjY6b7Vrszyw3oO9Py
 MGl7RdiFlq7sH/ytvnFCIfErM628Me03XktDGGhYuDcfohhu/Ui8JWY+oVcJ7M0kQbO6BoUoGiErL
 JLHPGYfLQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37538)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iX1FH-0000nU-Nv; Tue, 19 Nov 2019 11:00:31 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iX1FH-0000fC-2X; Tue, 19 Nov 2019 11:00:31 +0000
Date: Tue, 19 Nov 2019 11:00:31 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: Using a GPIO as an interrupt line
Message-ID: <20191119110030.GA25745@shell.armlinux.org.uk>
References: <f0d383f3-8efa-ae68-62af-68f69cd4143f@free.fr>
 <20191119095748.GX25745@shell.armlinux.org.uk>
 <07db59e7-ff16-0457-87f2-fba10dc182d6@free.fr>
 <20191119105619.4osmin7m5ryqfwih@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119105619.4osmin7m5ryqfwih@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_030040_569554_1A8F87B2 
X-CRM114-Status: UNSURE (   7.88  )
X-CRM114-Notice: Please train this message.
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
Cc: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Marc Zyngier <marc.zyngier@arm.com>, MSM <linux-arm-msm@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, GPIO <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 11:56:19AM +0100, Uwe Kleine-K=F6nig wrote:
> Having a pin configured as GPIO is the boot default setting for many
> SoCs/pins. So you might get away with not specifying a setting for pin
> 42, but that's not as robust as configuring that explicitly.

If only that was universally true - the LX2160A as an example doesn't
default to GPIO mode... just be very aware of what the documentation,
and, as the saying goes "if there is any doubt, there is no doubt".

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
