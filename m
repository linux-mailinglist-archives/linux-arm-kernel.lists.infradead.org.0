Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C620B2535
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 20:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXBoR8ZfMEoDoFz+J8/BWvrdeXjv+QEK6nDDrc2nm0Y=; b=iXgZEWxoHOgpFz
	bCGK5ltNzQjmxF/MpjadqsjwUQia9bVYnTmSu6Rflw177Fad7UZDaeTZXdNFihrajBaikflWfpGF7
	VJAIPNKlWILj5mvsnil7GNLQck5TS1OXMNtWiphmMDY6OTaLltKxelKG1HdczZ7HO1pU2T0wOZaRO
	8KdcPgtjXsv2ypvDMpKPIPApQ/5regdgE2GetlitHr5lyhyo8DWFVhfVpj2RE8y4ltOHNO2ReV4im
	BLP+2CfZcTO111LA64FTPSda0x0TI+8NTw5HVGwiHJLUUeqVNly1Xh4Y1N/odWRoGukFvUE5wkT+3
	lHuwYegrev6CNSf6yagw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8qIf-0001M6-PU; Fri, 13 Sep 2019 18:28:05 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8qIS-0001LP-VI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 18:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rUHXVclZXHF+9qsNmXDNmKFf2GeFqSzWSuwkR1JCZ7I=; b=0S6NAFBooMrp44Rx9duwP6fvW
 ILLr/ywXbzUq3/H0KKZY+AqA4DUuQJVWiCgncsKYkGZgmaKmhl3hAje8C0yv692H5cWHsaRPU//Xe
 8ZF8H40qaY0yT3zp728l67JIs57A3yiPMqE39lGW7BL2dJbxW80slK+E4wJ97WAv4dSaB4colLC7d
 h1EeWjD4ELQhsppY//bfGtxRj8y3zTeDtNlfXwk3NenC56szHq4IuYr3ioB96km+6Ygsmi3Avx18T
 4/Vwg+nNM/lILz0tmPnzrP+JCUFABB/id+2OJv4D8DoOSFrv0AhgHtkuxKHbjwyhVjG0o7fAfKhaf
 G6YGHr6jg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:39110)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i8qHu-0004DJ-Po; Fri, 13 Sep 2019 19:27:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i8qHp-00064I-Jr; Fri, 13 Sep 2019 19:27:13 +0100
Date: Fri, 13 Sep 2019 19:27:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [RFC PATCH v2 00/12] Unify SMP stop generic logic to common code
Message-ID: <20190913182713.GB13294@shell.armlinux.org.uk>
References: <20190913181953.45748-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913181953.45748-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_112753_010973_0F38B3F4 
X-CRM114-Status: UNSURE (   8.10  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, hch@infradead.org,
 takahiro.akashi@linaro.org, mingo@redhat.com, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 07:19:41PM +0100, Cristian Marussi wrote:
> Tested as follows:
> 
> - arm:
> 1. boot

So this basically means the code paths you're touching are untested on
ARM... given that, and the variety of systems we have out there, why
should the patches touching ARM be taken?

Given that you're an ARM Ltd employee, I'm sure you can find 32-bit
systems to test - or have ARM Ltd got rid of everything that isn't
64-bit? ;)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
