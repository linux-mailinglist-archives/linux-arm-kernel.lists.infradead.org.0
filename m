Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5FE20260B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 20:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PZSDT4tiO8+XM/51qQGACjxfnZGFz8GUVIkKXU5I70c=; b=paEZVyZ+v1+2uJHCjbPeR3cBt
	5aPudPHX5sWEtrHwNttVMVlt1C3sgxhlTv3iOfgTWxt5g0mND7p67bOGclmkzlTo7Irkg9ZlRqHQt
	u+sRKXPRKsiM7Qc2+9I6hTRHGRO9zGWq6exmR/AbuQsGZS1/oIdq8UXxdDiGcPkwAS8gxQtfHNVQw
	/jxMxovzLGQmrOH9IZxLyuvgbcBLOKLEnNsEy3nrdYc1/j1pvh46e1/sVVZiA5P5IlhWRgNnyBr+2
	58ZiQ6kmDOOm+gMvJZObw2oNoH9KMi77xjKditlRg+O8oY3nYk74FCoJbUGSVoX/BvAEwnoIrB6AO
	cwOLMGckQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmiar-0007I1-DL; Sat, 20 Jun 2020 18:51:57 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmiag-0007G0-G4
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 18:51:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7AxhbJwIMNaIwTRNcQ12Omehe8rlvXqphyVqkGht4CM=; b=E0rs6IUd9KrqG6rRqxg4EJFrwQ
 tXFRLg/PEtMOHOcgpxods6HB9KNRHQFvDFtDcxy81EMd/oYja/HwjEnivHs5ntdf0oPd0Vkz9Bulf
 f3bfR5Uh6v3v7cYZxuEsXi18AkMj3N5pe0Q+Ug5jQ8GtsOtwuOQdTHDFB1vyIDNEfzd8af2sKasrW
 MTXwxXquOewdCa5QJ15QbSWO2WcyomPaGzVhJ7VGMT2fQLo+BSxFfp8gLday5kwi5Z56u3xlitfAR
 doOHo86N+Ek5uQltonuGWgoA8VtZwhZ5tCxRai5o9vsXiY3EDuDYaXfEAzL98oVohyifRM7pJkgnt
 0MHXpPqA==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net
 ([108.198.5.147]:36530 helo=[192.168.0.134])
 by vern.gendns.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <david@lechnology.com>)
 id 1jmiZw-0001IT-SU; Sat, 20 Jun 2020 14:51:00 -0400
Subject: Re: [PATCH v3 3/4] counter: Add character device interface
To: William Breathitt Gray <vilhelm.gray@gmail.com>, jic23@kernel.org
References: <cover.1592341702.git.vilhelm.gray@gmail.com>
 <afe40ef2e24ecaca44fc229f7983cf4cde3374a8.1592341702.git.vilhelm.gray@gmail.com>
From: David Lechner <david@lechnology.com>
Message-ID: <8fae0659-56df-c0b5-7c0d-220feefed2b4@lechnology.com>
Date: Sat, 20 Jun 2020 13:50:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <afe40ef2e24ecaca44fc229f7983cf4cde3374a8.1592341702.git.vilhelm.gray@gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_115146_620863_8DF9EDAB 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, alexandre.torgue@st.com,
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/16/20 8:40 PM, William Breathitt Gray wrote:
> This patch introduces a character device interface for the Counter
> subsystem. Device control is exposed through standard character device
> read and write operations.
> 
> A /sys/bus/counter/devices/counterX/chrdev_format sysfs attribute is
> introduced to expose the character device data format:
> 
> * Users may write to this sysfs attribute to select the components they
>    want to interface -- the layout can be determined as well from the
>    order. For example:
> 
>    # echo "C0 C3 C2" > /sys/bus/counter/devices/counter0/chrdev_format
> 
>    This would select Counts 0, 3, and 2 (in that order) to be available
>    in the /dev/counter0 node as a contiguous memory region.
> 
>    You can select extensions in a similar fashion:
> 
>    # echo "C4E2 S1E0" > /sys/bus/counter/devices/counter0/chrdev_format
> 
>    This would select extension 2 from Count 4, and extension 0 from
>    Signal 1.
> 
> * Users may read from this chrdev_format sysfs attribute in order to see
>    the currently configured format of the character device.
> 
> * Users may perform read/write operations on the /dev/counterX node
>    directly; the layout of the data is what they user has configured via
>    the chrdev_format sysfs attribute. For example:
> 
>    # echo "C0 C1 S0 S1" > /sys/bus/counter/devices/counter0/chrdev_format
> 
>    Yields the following /dev/counter0 memory layout:
> 
>    +-----------------+------------------+----------+----------+
>    | Byte 0 - Byte 7 | Byte 8 - Byte 15 | Byte 16  | Byte 17  |
>    +-----------------+------------------+----------+----------+
>    | Count 0         | Count 1          | Signal 0 | Signal 2 |
>    +-----------------+------------------+----------+----------+
> 
>    The number of bytes allotted for each component or extension is
>    determined by its respective data type: u8 will have 1 byte allotted,
>    u64 will have 8 bytes allotted, etc.
> 

Instead of the proposed character device, I would really rather have one
that gives past events instead of the current state.

I have thought about some of the suggestions from previous version of
this patch series and I'm starting to think something similar to the
input and gpio subsystems would work fairly well.


There would have to be a fixed size event data structure:

struct counter_event {
	/** Best approximation of when event occurred in nanoseconds. */
	__u64 timestamp;
	/**
	 * Description of the synapse that triggered the event and the
	 * signal/counter that the value represents.
	 */
	__u64 descriptor;
	/** The signal/counter value recorded when the synapse fired. */
	__u64 value;
};

The descriptor field would actually probably be a union of __u64 and a
struct with its own fields to describe the synapse and signal or count.

If a synapse involves more than one signal or count, then there would
be multiple events with identical timestamps.

Userspace programs should be able to enable only the events/synapses they
are interested in and then the poll() the character device to wait for
events in an efficient way instead of having to constantly read - which
could still miss events.

---

Real world use case - measuring the speed of a motor:

At low speeds it is more accurate to measure the time difference between
count events. In this case we would want events from two synapses. One
triggered by the rising and falling edges of signal A and one triggered
by the direction signal. The magnitude of the speed is calculated by
taking the difference in timestamps between signal A events and the +/-
sign is determined by the direction signal.

At high speeds a different configuration is needed. Assuming the counter
has a timer clock signal a synapse would be configured to fire every 10
or 20 milliseconds. This would trigger an event that contains the count.
The speed is calculated as the difference in counts divided by the fixed
time interval.

Some applications may need to do both and be able to change the
configuration at runtime. It may start out in the low speed configuration,
but as the speed increases, events triggered by the change in count will
need to be disabled to prevent being overwhelmed with too many count
events. But if the speed drops low again, the count events will need to
be turned back on.

---

Regarding the implementation, the character device can be backed by a
kfifo. Interrupts from the counter hardware push events to the kfifo
and reading from the character device drains the kfifo.

drivers/gpio/gpiolib.c could be a good example to follow.

If we only want to allow one consumer to open the chardev at a time,
then enabling/disabling events via sysfs would probably be fine since
we are already sort of doing that anyway to enable/disable counters.
But if we need to allow multiple consumers per chardev that would each
want different events, then configuring via ioctl would be required so
that per-file descriptor configuration could be done (each call to open()
would create a new kfifo and ioctl would configure what gets pushed to
that kfifo).



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
