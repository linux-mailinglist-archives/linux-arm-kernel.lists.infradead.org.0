Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A218AE9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV2XuxQi+jXnYwCE9AftotTiCdTYDh/8ZxTQuzCVJXQ=; b=uawpgzxG+/xioK
	9efYDObCQjFW8FqGr0vFIyRfuaiu8ac7Df0fgxFUX75UDHVqKZu/044Uy4PzPI3teWJgqSElg4Bt8
	dI40by5zHgBAhGMksM7jR2A85pqM9ow5+rcRHF1z2VVzIZdo8L7edo1Rle12/7WAuQzoK51MQGtOR
	ee3c+p3+eJqs+/q/4omUeAQ46gRxSRr7BoUDEPDbA7LdK2+/fBbKHIjZFLNtKpGW3GaKxoFqstrM9
	cgsnO5pxcBaKmGqrck1PmrfaVsF7cQvatdJsNjNqNr77eq0+xLWmWGaF3bCg3PbaKvO0yKtD48NhZ
	8kc5Izs+Eu3Q52F7t4cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEqqT-0005gL-Qg; Thu, 19 Mar 2020 08:48:05 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEqqJ-0005f0-UQ; Thu, 19 Mar 2020 08:47:57 +0000
Received: from p5de0bf0b.dip0.t-ipconnect.de ([93.224.191.11]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1jEqqD-0002xp-G4; Thu, 19 Mar 2020 09:47:49 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id AB625103088; Thu, 19 Mar 2020 09:47:47 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 4/5] pci: handled return value of platform_get_irq
 correctly
In-Reply-To: <20200318222238.GA247500@google.com>
References: <20200318222238.GA247500@google.com>
Date: Thu, 19 Mar 2020 09:47:47 +0100
Message-ID: <877dzgennw.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_014756_124728_A32A3AA7 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Aman Sharma <amanharitsh123@gmail.com>, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Marc Zyngier <maz@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Bjorn Helgaas <helgaas@kernel.org> writes:
> On Wed, Mar 18, 2020 at 02:42:48PM +0100, Thomas Gleixner wrote:
>> Bjorn Helgaas <helgaas@kernel.org> writes:
>> > On Fri, Mar 13, 2020 at 04:56:42PM -0500, Bjorn Helgaas wrote:
>> >> On Fri, Mar 13, 2020 at 10:05:58PM +0100, Thomas Gleixner wrote:
>> >> > >   I think the best pattern is:
>> >> > >
>> >> > >     irq = platform_get_irq(pdev, i);
>> >> > >     if (irq < 0)
>> >> > >       return irq;
>> >> > 
>> >> > Careful. 0 is not a valid interrupt.
>> >> 
>> >> Should callers of platform_get_irq() check for a 0 return value?
>> >> About 900 of them do not.
>> 
>> I don't know what I was looking at.
>> 
>> platform_get_irq() does the right thing already, so checking for irq < 0
>> is sufficient.
>> 
>> Sorry for the confusion!
>
> Thanks, I was indeed confused!  Maybe we could reduce future confusion
> by strengthening the comments slightly, e.g.,
>
>   - * Return: IRQ number on success, negative error number on failure.
>   + * Return: non-zero IRQ number on success, negative error number on failure.
>
> I don't want to push my luck, but it's pretty hard to prove that
> platform_get_irq() never returns 0.  What would you think of something
> like the following?

No objections from my side.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
