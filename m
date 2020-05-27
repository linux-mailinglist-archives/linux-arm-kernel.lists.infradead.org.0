Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99E31E40AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:54:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvl04NZ9eIjFij+YCOjkmh6s9Kp5JQGtXgaVsOs44U4=; b=KtE1P6WWv6T8Mq
	gx2fWDssm7cRN+G9v5OGuAcRPNB+dGdMi2Y1Hir9wfe72vvz0bcqWnA76l98TjMnANc6rnYOe6S0I
	oH5vZSibiYHGk6U1VspqtjO6wpLIh5kwPRt81y2zW8qJHbfRY0WsIoPojqIXu65/6CHIezVcY3wbK
	zEOUW3Ey/52WUG3S+DTcGHXzHzIvpW2FZql62pOY0IKZp3Ine/Dn+LPC1Di2XhET5vX39PniGdr5U
	l2lry1fSxiBrCqudJWh4iVdBPqnd7yt5kT7Zn2NzFH3dnaeHnjELJ/RD8mtbJop/fiIiepui5fF8N
	2Pae+BVCh8SDzykC++XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdudp-0006Xr-Mp; Wed, 27 May 2020 11:54:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudQ-0006Ve-Fp
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 11:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1BtgjbAHH+SQbPjyLwaeHytSSYLwREhV7BhkbEcaUa8=; b=xFub5XI7K0HyRPLsyCYQ2iZQr
 V/ztTR54UukKwyzOYVEZOHh1rQy5o9j8jYMyeDDmapRpXWgrmDmOZ+yCPyk+MMpMMQbsbIJcqcYZT
 FY+Xqg/wbKUdi5cE8nd5PzmI5VgUYgSCrVwtkhDzPlCq2Sy0LroTteWckME3z8m9iJd890Vt1PyA5
 QSDYwvmxbkd042FNb1gFgp3KDv+ikC1ns3POIWS8UhG8aBxSv9iZJknigzW6h7trn1BjDynIvegED
 c3vVBh4mzl6l1DsRVmxYGs8YWDTC/csU8GbLCnC1IpGnljVIPJUhd6gIe/0weL1eUTBHrkvU0LmgF
 TLqHyrB7A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37646)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdud6-0002By-0W; Wed, 27 May 2020 12:53:52 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdud2-0006Oo-1w; Wed, 27 May 2020 12:53:48 +0100
Date: Wed, 27 May 2020 12:53:48 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: High interrupt latency with low power idle mode on i.MX6
Message-ID: <20200527115347.GL1551@shell.armlinux.org.uk>
References: <bc91129c-121c-a070-53b2-1f0bb6d4500a@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bc91129c-121c-a070-53b2-1f0bb6d4500a@kontron.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045412_524567_A6A26165 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Enrico Weigelt <info@metux.net>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:39:12AM +0000, Schrempf Frieder wrote:
> Hi,
> 
> on our i.MX6UL/ULL boards running mainline kernels, we see an issue with 
> RS485 collisions on the bus. These are caused by the resetting of the 
> RTS signal being delayed after each transmission. The TXDC interrupt 
> takes several milliseconds to trigger and the slave on the bus already 
> starts to send a reply in the meantime.
> 
> We found out that these delays only happen when the CPU is in "low power 
> idle" mode (ARM power off). When we disable cpuidle state 2 or put some 
> background load on the CPU everything works fine and the delays are gone.
> 
> echo 1 > /sys/devices/system/cpu/cpu0/cpuidle/state2/disable
> 
> It seems like also other interfaces (I2C, etc.) might be affected by 
> these increased latencies, we haven't investigated this more closely, 
> though.
> 
> We currently apply a patch to our kernel, that disables low power idle 
> mode by default, but I'm wondering if there's a way to fix this 
> properly? Any ideas?

Let's examine a basic fact about power management:

The deeper PM modes that the system enters, the higher the latency to
resume operation.

So, I'm not surprised that you have higher latency when you allow the
system to enter lower power modes.  Does that mean that the kernel
should not permit entering lower power modes - no, it's policy and
application dependent.

If the hardware is designed to use software to manage the RTS signal
to control the RS485 receiver, then I'm afraid that your report really
does not surprise me - throwing that at software to manage is a really
stupid idea, but it seems lots of people do this.  I've held this view
since I worked on a safety critical system that used RS485 back in the
1990s (London Underground Jubilee Line Extension public address system.)

So, what we have here is several things that come together to create a
problem:

1) higher power savings produce higher latency to resume from
2) lack of hardware support for RS485 half duplex communication needing
   software support
3) an application that makes use of RS485 half duplex communication
   without disabling the higher latency power saving modes

The question is, who should disable those higher latency power saving
modes - the kernel, or userspace?

The kernel knows whether it needs to provide software control of the
RTS signal or not, but the kernel does not know the maximum permissible
latency (which is application specific.)  So, the kernel doesn't have
all the information it needs.  However, there is a QoS subsystem which
may help you.

There's also tweaks available via
/sys/devices/system/cpu/cpu*/power/pm_qos_resume_latency_us

which can be poked to configure the latency that is required, and will
prevent the deeper PM states being entered.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
