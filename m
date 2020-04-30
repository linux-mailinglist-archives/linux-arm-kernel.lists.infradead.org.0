Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D001C079E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Y1yybOPyPrqa2IyKolSH0kvbRh0SM6IGge6+fjD/QU=; b=Mi4Q7s3vij1zw/
	dfrVsNidyv7xKb4wFBGhwQSbpuoByS3oLuslQ+Y+HjzykQrVziicJc+49V2+cgJICZSRCkYBovIVv
	7z0bVMQ5kMEBhLLiUTgWzegcjE9QqdgE9QgN+vVOjjkYQvw1E+LekUnNdhqilYoMUQosRRF2z2naM
	snEHGJPVZ7LGsTAiksvZmDU1AACm5YCF5HioShbmeIV7qQxzx59ysuDrglKETcL/KkmY2RgPOMsTR
	9SEMGeBWYPR0UN2uHw+P7me+DILM/jOsihuzm4TbITW5fph9UpoAezlfrUD3guMyYoDc85qRRNR/0
	5sNU4/y8AydVwxkYYcHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUFZT-0000Nc-U6; Thu, 30 Apr 2020 20:14:11 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFZH-0000JN-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 20:14:01 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 9F8B7FF80A;
 Thu, 30 Apr 2020 20:13:45 +0000 (UTC)
Date: Thu, 30 Apr 2020 22:13:45 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200430201345.GX51277@piout.net>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1588176662.git.vilhelm.gray@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_131359_594355_EED5D80B 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 fabrice.gasnier@st.com, fabien.lahoudere@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 29/04/2020 14:11:34-0400, William Breathitt Gray wrote:
> Over the past couple years we have noticed some shortcomings with the
> Counter sysfs interface. Although useful in the majority of situations,
> there are certain use-cases where interacting through sysfs attributes
> can become cumbersome and inefficient. A desire to support more advanced
> functionality such as timestamps, multi-axis positioning tables, and
> other such latency-sensitive applications, has motivated a reevaluation
> of the Counter subsystem. I believe a character device interface will be
> helpful for this more niche area of counter device use.
> 
> To quell any concerns from the offset: this patchset makes no changes to
> the existing Counter sysfs userspace interface -- existing userspace
> applications will continue to work with no modifications necessary. I
> request that driver maintainers please test their applications to verify
> that this is true, and report any discrepancies if they arise.
> 

On that topic, I'm wondering why the counter subsystem uses /sys/bus
instead of /sys/class that would be more natural for a class of devices.
I can't see how counters would be considered busses. I think you should
consider moving it over to /sys/class (even if deprecating
/sys/bus/counter will be long).

> Interaction with Counter character devices occurs via ioctl commands.
> This allows userspace applications to access and set counter data using
> native C datatypes rather than working through string translations.
> 

I agree with David that you should consider using read to retrieve the
counter data as this will simplify interrupt handling/polling and
blocking/non-blocking reads can be used by an application. ABI wise,
this can also be a good move as you could always consider having an
ioctl requesting a specific format when reading the device so you are
not stuck with the initial format you are going to choose.

> 2. Should device driver callbacks return int or long? I sometimes see
>    error values returned as long (e.g. PTR_ERR(), the file_operations
>    structure's ioctl callbacks, etc.); when is it necessary to return
>    long as opposed to int?
> 

You should use a long if you ever have to return a point as it is
guaranteed to have the correct size. Else, just stick to an int if you
are not going to overflow it.

> 3. I only implemented the unlocked_ioctl callback. Should I implement a
>    compat_ioctl callback as well?
> 

The compat_ioctl is to handle 32bit userspace running on a 64bit kernel.
If your structures have the same size in both cases, then you don't have
to implement compat_ioctl.

Have a look at Documentation/driver-api/ioctl.rst


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
