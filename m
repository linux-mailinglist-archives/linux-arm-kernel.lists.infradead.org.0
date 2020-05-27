Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1FF1E42A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6qxhLBnyBH9rXHHe+bizOJmjRjxrvNllZUHpBBEf1g=; b=HElCFxx13Kr+6c
	SAWF2+Jbun2x09rrb6zNiXRkhc1455FbXK2xXi/ReyViDUo5u0244WGQAKM2QgSD/mzaA540p2BvJ
	9+nhlUeN4BnTXe1gHDOpSaQw1vl6CQIiBGSNUR4FXZfZ2Ut9zsQ6Hi4hiR4DfVsPETZPntYlXUqG4
	RIYIf/Dz8g+JI6HLBg7NpWYrXVchwdGcH6OvJhu8kvQ8eYWkQtoz4nyfV8u417R3PnlkVkQ8hRRsN
	fpH0Qw8Pe/jrhJXh+3je4wMkwS+OHn3za2T1J8jCDW1mLg7xXTO9rDYB0c8jnswT7IgSRWtGVYEVK
	q1qAaKMAeek7KASwaXuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvVm-0002Ew-Ny; Wed, 27 May 2020 12:50:22 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvVX-0000eW-QJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:50:10 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge03.snt-world.com (Postfix) with ESMTPS id 40AE967A7C0;
 Wed, 27 May 2020 14:50:02 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 27 May
 2020 14:50:01 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Wed, 27 May 2020 14:50:01 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: High interrupt latency with low power idle mode on i.MX6
Thread-Topic: High interrupt latency with low power idle mode on i.MX6
Thread-Index: AQHWNBMPiENrGmpy5EqtWjfM5SmIn6i7sUkAgAAPtYA=
Date: Wed, 27 May 2020 12:50:01 +0000
Message-ID: <a6bb55aa-5c47-ba7a-2f74-56da4aef4a42@kontron.de>
References: <bc91129c-121c-a070-53b2-1f0bb6d4500a@kontron.de>
 <20200527115347.GL1551@shell.armlinux.org.uk>
In-Reply-To: <20200527115347.GL1551@shell.armlinux.org.uk>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <60F0691562A52040BE3F6D3F77FD5DB5@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 40AE967A7C0.AF726
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: daniel.lezcano@linaro.org, info@metux.net,
 kstewart@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux@armlinux.org.uk, rjw@rjwysocki.net, s.hauer@pengutronix.de,
 shawnguo@kernel.org, tglx@linutronix.de
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_055008_199885_634C6215 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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

On 27.05.20 13:53, Russell King - ARM Linux admin wrote:
> On Wed, May 27, 2020 at 10:39:12AM +0000, Schrempf Frieder wrote:
>> Hi,
>>
>> on our i.MX6UL/ULL boards running mainline kernels, we see an issue with
>> RS485 collisions on the bus. These are caused by the resetting of the
>> RTS signal being delayed after each transmission. The TXDC interrupt
>> takes several milliseconds to trigger and the slave on the bus already
>> starts to send a reply in the meantime.
>>
>> We found out that these delays only happen when the CPU is in "low power
>> idle" mode (ARM power off). When we disable cpuidle state 2 or put some
>> background load on the CPU everything works fine and the delays are gone.
>>
>> echo 1 > /sys/devices/system/cpu/cpu0/cpuidle/state2/disable
>>
>> It seems like also other interfaces (I2C, etc.) might be affected by
>> these increased latencies, we haven't investigated this more closely,
>> though.
>>
>> We currently apply a patch to our kernel, that disables low power idle
>> mode by default, but I'm wondering if there's a way to fix this
>> properly? Any ideas?
> 
> Let's examine a basic fact about power management:
> 
> The deeper PM modes that the system enters, the higher the latency to
> resume operation.
> 
> So, I'm not surprised that you have higher latency when you allow the
> system to enter lower power modes.  Does that mean that the kernel
> should not permit entering lower power modes - no, it's policy and
> application dependent.
> 
> If the hardware is designed to use software to manage the RTS signal
> to control the RS485 receiver, then I'm afraid that your report really
> does not surprise me - throwing that at software to manage is a really
> stupid idea, but it seems lots of people do this.  I've held this view
> since I worked on a safety critical system that used RS485 back in the
> 1990s (London Underground Jubilee Line Extension public address system.)
> 
> So, what we have here is several things that come together to create a
> problem:
> 
> 1) higher power savings produce higher latency to resume from
> 2) lack of hardware support for RS485 half duplex communication needing
>     software support
> 3) an application that makes use of RS485 half duplex communication
>     without disabling the higher latency power saving modes
> 
> The question is, who should disable those higher latency power saving
> modes - the kernel, or userspace?
> 
> The kernel knows whether it needs to provide software control of the
> RTS signal or not, but the kernel does not know the maximum permissible
> latency (which is application specific.)  So, the kernel doesn't have
> all the information it needs.  However, there is a QoS subsystem which
> may help you.
> 
> There's also tweaks available via
> /sys/devices/system/cpu/cpu*/power/pm_qos_resume_latency_us
> 
> which can be poked to configure the latency that is required, and will
> prevent the deeper PM states being entered.

Thanks for the detailed explanation. This all makes perfect sense to me.
I will keep in mind that we need to consider this aspect of power saving 
vs. latency when designing systems and also that we need to provide the 
information for the kernel to decide which of the two is more important.

Also thanks for pointing out the QoS subsystem. I'm not quite sure if it 
would work for us to use pm_qos_resume_latency_us in our specific case. 
The actual latency we observe is something like 2 to 3 milliseconds 
longer with low power idle than without, but the exit_latency for low 
power idle specified in the cpuidle driver is only 300 us.

So as far as I can see with this difference even if we would set 
pm_qos_resume_latency_us to 1000 us (which should be fast enough for the 
RS485 to work properly), the low power idle wouldn't be disabled.

It's rather this discrepancy between the latency set in the driver and 
what we see in reality which makes me wonder if there's something I'm 
missing.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
