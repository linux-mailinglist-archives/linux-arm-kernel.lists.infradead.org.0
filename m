Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3ED9195C77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 18:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VouUfIhU02O+kMLl0AJRGOgWTmGgDSsSP5r/lMoj93g=; b=lFLc1wEYK7mt5T
	RxXc3L7VsJaK7f4WrNxKAbC9Omj2uF4RleewXqHadMvB9rSEc0qVVnonz0yQrX82Zvg6samyzW0SL
	RkLwdkPMWHo6xNLJakBXu92ffpwK6XBM+Gd7pIa98eFKoWa8KbNY0uV5viGZUkwwwS8JE+MPRuZ0Z
	OLyT0QbMyHAPCTKJr1Md5FuE8fAwfl1jdcuFan4GBSVu57i6v+vqLKQEvP7q7MyCjqO1a8EK2KX9F
	n6S6mANYXxCNzdE+VwY5QCGSXQvTipAwm6p9RgMlwQS1eJF8VIvVUvziq3Dj9kYbLzpOQTMoy+s+1
	/67aLPibht/cOdtYMXjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHsfe-0004yy-1d; Fri, 27 Mar 2020 17:21:26 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHsap-0008Gm-5b
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 17:16:29 +0000
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id C9E01240002;
 Fri, 27 Mar 2020 17:16:19 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] arm64: dts: update SolidRun Armada 8040 phy interface
 types
In-Reply-To: <20200327151709.GO25745@shell.armlinux.org.uk>
References: <E1jHoHy-0002Ep-IY@rmk-PC.armlinux.org.uk>
 <20200327134319.GD11004@lunn.ch>
 <20200327134651.GM25745@shell.armlinux.org.uk>
 <20200327135046.GN25745@shell.armlinux.org.uk>
 <20200327141538.GE11004@lunn.ch>
 <20200327151709.GO25745@shell.armlinux.org.uk>
Date: Fri, 27 Mar 2020 18:16:19 +0100
Message-ID: <87imip4t24.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_101627_386443_39053F04 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jason Cooper <jason@lakedaemon.net>,
 "Madalin Bucur \(OSS\)" <madalin.bucur@oss.nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

> On Fri, Mar 27, 2020 at 03:15:38PM +0100, Andrew Lunn wrote:
>> > ... and actually there is no point.
>> 
>> O.K. lets merge these as normal, not as fixes.  It is probably too
>> late for ARM SoC, so i guess they will get merged next cycle.
>
> Yep, which means that the backplane patches from NXP will have to be
> delayed about 20 weeks (about 10 weeks in the arm64 tree before being
> merged into 5.8-rc1, and then another 10 weeks before 5.8 is released.)
> That's probably not a bad thing, as it'll let us hash out the conflicts
> between my PCS patch set and their backplane patches.

None of my pull request has been merged yet, so I can make an other one
ontop of the existing ones with this patch, and I will let decide the
ARM SoC maintainer if they can take it or not.

Gregory

>
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
