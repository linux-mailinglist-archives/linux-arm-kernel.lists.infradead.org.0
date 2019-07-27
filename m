Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BA477948
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t597zZiJFRYE0fsWtw0rvt3sTVpiZce4YYmavtWBg8U=; b=kTmGyMpRS4txEc
	zhSiy8BNVJxr1lpgwDCoRcUJnLyxI9QIku0e2qrXTLyexRLfD63oax57ZsgwBgPvWa/c9Ei1JDdkb
	/o/g/D9qfhsvs/X91Mj9DX3fPSk0/1BG5diqJhoN2caxKFZFXAMq06cLo1desg99btrByyNjUjI2C
	1tzxEZaaaG/TGPCk/xWS2UcWOCG7w94s+RUe50udO7y9ybj0P92oYfLzMFA5iuLzyl14ZSzghgZ2y
	0O4qxQUpqpxPcVMkQPCinws7tgG/z6c7zt/N3nbm7nmzUEyg1rNj0R4rAl3aClwkZST7uTmpRi0aS
	Z7IwLBODuxlwG+zCQBiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNhf-0000Wb-7x; Sat, 27 Jul 2019 14:29:43 +0000
Received: from mailoutvs62.siol.net ([185.57.226.253] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNgi-0008Sy-7C
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:28:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id D8E7A5217B1;
 Sat, 27 Jul 2019 16:28:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 4KP6mDNuYTc3; Sat, 27 Jul 2019 16:28:39 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 878815217B3;
 Sat, 27 Jul 2019 16:28:39 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 048075217B1;
 Sat, 27 Jul 2019 16:28:39 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 5/6] pwm: sun4i: Add support to output source clock
 directly
Date: Sat, 27 Jul 2019 16:28:38 +0200
Message-ID: <4063694.66Ui2fGJfo@jernej-laptop>
In-Reply-To: <20190727105008.he35sixfvoyl2lm7@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-6-jernej.skrabec@siol.net>
 <20190727105008.he35sixfvoyl2lm7@flea.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_072844_951919_06FA46B4 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sobota, 27. julij 2019 ob 12:50:08 CEST je Maxime Ripard napisal(a):
> On Fri, Jul 26, 2019 at 08:40:44PM +0200, Jernej Skrabec wrote:
> > PWM core has an option to bypass whole logic and output unchanged source
> > clock as PWM output. This is achieved by enabling bypass bit.
> > 
> > Note that when bypass is enabled, no other setting has any meaning, not
> > even enable bit.
> > 
> > This mode of operation is needed to achieve high enough frequency to
> > serve as clock source for AC200 chip, which is integrated into same
> > package as H6 SoC.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> 
> It doesn't seem to be available on the A10 (at least) though. The A13
> seem to have it, so you should probably check that, and make that
> conditional to the compatible if not available on all of them.

Ok, can you suggest the name for the quirk? "has_bypass" is suspiciously 
similar to "has_prescaler_bypass".

Also, how to name these sun4i_pwm_data structures? Now that there are (will 
be) three new quirks, name of the structure would be just too long, like 
"sun50i_pwm_dual_prescaler_bypass_clk_rst_bypass". 

Best regards,
Jernej

> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
