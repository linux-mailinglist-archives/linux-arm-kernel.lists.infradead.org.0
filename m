Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A090731046
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7tTI/XhMsDiq17TGDS2SGLoZ0oZhFZ9u8q+b6Hp8UVA=; b=A1T
	LOssGYqW/p5ssPtvzVxx7WuKHSvbEmUo2LKnbHiSvyUwEKmd+MiqonJ/eVROusGbFAWDHGNaJ1RAe
	xacZ+yr43DAITzWkt43QmSpx2IqparmZo+8wOdwCAZKwXIx4yycD8Zczlu94ufSmVhENY1PwR1bYV
	q0KJmnYC0+xDN9wglM2c5Wh78HyWrgGV549Ql8bCKJs1fB4vJCEnQ4pUjQwd/QzqJhtrvsIZmLnCm
	ifoLpIQrCL74RcrvSWpvfU4KjV8zYJhgFihNkOMvTSa8VyvI+imG5YhIxYnYpSMkCPJO8l0jgzROU
	3w+U5f6Q9sBlrD/IF6oN6eYqWeu5Uxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWibg-0007KK-5A; Fri, 31 May 2019 14:34:08 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibE-0006xn-SB
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 62627341;
 Fri, 31 May 2019 07:33:36 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B7FDB3F5AF;
 Fri, 31 May 2019 07:33:34 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Date: Fri, 31 May 2019 15:33:14 +0100
Message-Id: <20190531143320.8895-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073341_383224_9E5CB860 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Brown <broonie@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This is my another attempt to extend mailbox framework to support
doorbell mode mailbox hardware. It also adds doorbell support to ARM
MHU driver.

It makes no sense to create additional abstraction to deal with such
hardware as we end up re-implementing all the queuing mechanism in
the current framework as well as a set of new APIs which are similar
to the existing mailbox APIs.

Few mailbox releated terminologies I would like to get clarified.
Here are definations in my opinion, please chime in and correct it if I
got them wrong.

1. *message* - a self-contain entity which is sent by a sender to a
	receiver, can be formed of one or more transfers
2. *transfers* - can nothing more than an interrupt, but it can also have
	an associated data payload
3. *message protocol*  - a protocol which defines the format of messages
	that are sent between sender and receiver
4. *transport protocol* - a protocol which defines how transfers are
	indicated by the sender to the receiver, using the mailbox and
	the location of the payload, if applicable.
5. *channel* - used to pass messages between the sender and receiver.
	A mailbox controller can implement configurable channels
	depending upon the transport protocol.
6. *in-band* - A transfer payload sent using a mailbox channel
7. *out-band* - A transfer payload sent using a method other than a mailbox
	channel, for example shared memory.

Brief hardware description about MHU
====================================

For each of the interrupt signals, the MHU drives the signal using a 32-bit
register, with all 32 bits logically ORed together. The MHU provides a set of
registers to enable software to SET, CLEAR, and check the STATUS of each of
the bits of this register independently. The use of 32 bits for each interrupt
line enables software to provide more information about the source of the
interrupt. For example, each bit of the register can be associated with a type
of event that can contribute to raising the interrupt.

Types of MHU Transport Protocols
================================

1. Doorbell - The doorbell transport protocol generates just an signal to
	the receiver that sender has made a transfer.
2. Single-word - Each transfer is a single word transferred in-band.
3. Multi-word - Each transfer is made of two or more words, possible in
	newer versions of MHU

Choice of Transport Protocol
============================

The choice is completely platform specific and it can be based on
usecases, number of available instances of mailbox,..etc

Add support for doorbell/signal mode controllers
================================================
Some mailbox controllers are lack FIFOs or memory to transmit data or
they may need to be configured in doorbell mode based on platform
choice. They typically contains single doorbell registers to just signal
the remote. The actually data is transmitted/shared using some shared
memory which is not part of the mailbox.

Such controllers don't need to transmit any data, they just transmit
the signal. In such controllers the data pointer passed to
mbox_send_message is passed to client via it's tx_prepare callback.
Controller doesn't need any data to be passed from the client.

So the idea is to introduce the new API send_signal to support such
doorbell/signal mode in mailbox controllers. This is useful to avoid
another layer of abstraction as typically multiple channels can be
multiplexied into single register.

Problem with ARM MHU driver in upstream
=======================================

It is designed to use the 32-bit registers(particularly SET) to send
32-bit data from one processor(AP) to another remote processor(SCP).
Basically it supports only single-word transfer protocol.

How is this related to SCMI ?
============================

Since SCMI was designed to replace all the existing vendor protocols,
it needs to be generic and the initial design/upstream drivers use
mailbox APIs as the standard interface to be able to talk/work with
any mailbox hardware controller. The SCMI specification itself was
designed based on ACPI PCC, which uses some shared memory for payload
and mailbox hardware just to signal the payload.

And this is very well aligned with the MHU hardware and the way firmware
team have used each bit as a separate channel.

So what's the problem then ?
============================

The mailbox APIs are not designed to cope with such doorbell mode of
mailbox operation. The mbox_send_data expects to send a (void *)data to
the controller and the interpretation of the same is left to the
controller and the protocol running a particular platform.

The main problem is that the strategy falls apart if one wants to use a
standard protocol like SCMI on variety of controllers.

Since the choice of transport protocol is platform dependent, each
mailbox controller driver can choose the protocol based on the platform
information from DT/ACPI.

Proposed solution
=================

The idea is to extend the mailbox APIs to support such a doorbell mode
of mailbox operation. The controller driver with the help of platform
firmware(DT for example) identify the mode of operation chosen by the
platform.

Why not add an additional abstraction on top of MHU/any mailbox controller ?
===========================================================================

As suggested during the review, I did attempt to build an abstraction
on top of mailbox driver using mailbox APIs. But soon ran into some
of the following issues/observations:

1. The resulting abstraction will look exactly like mailbox APIs, just
   adding layers of indirection. It not only looks very ugly but also
   duplicate queueing and other APIs that already exist in the mailbox
   framework.

2. Not scalable as every controller that has similar issue to address
   need to come up with different abstraction that suits it

3. It gets very ugly/complicated to represent this abstraction in DT
   as this will be representation of some software construct and not
   real hardware.

4. Performance hit as the abstraction layer gets serialised with one

Summary
=======

The mode in which a mailbox controller is configured to work is platform
specific and platform via DT/ACPI will inform about the same to OS.
The mailbox controller driver in OS need to support different/all modes
of transport possible and statically configure to one of the mode based
on the input from platform supplied information in DT.

--
Regards,
Sudeep

Sudeep Holla (6):
  mailbox: add support for doorbell/signal mode controllers
  mailbox: arm_mhu: reorder header inclusion and drop unneeded ones
  dt-bindings: mailbox: add bindings to support ARM MHU doorbells
  mailbox: arm_mhu: migrate to threaded irq handler
  mailbox: arm_mhu: re-factor data structure to add doorbell support
  mailbox: arm_mhu: add full support for the doorbells

 .../devicetree/bindings/mailbox/arm-mhu.txt   |  39 +-
 drivers/mailbox/arm_mhu.c                     | 381 +++++++++++++++---
 drivers/mailbox/mailbox.c                     |  11 +-
 include/linux/mailbox_controller.h            |  11 +
 4 files changed, 389 insertions(+), 53 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
