Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1857A19715B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 02:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oE+NgmEdwe0VJQfpotX/bbT6Kq+yj9wHP4Dw82KIAp4=; b=Pmco04smLDsTNw
	ul+mS3e2rS1XOTNhHj7TKIbJu3+VI6njmoRXQQnccr+GqqVxNF6OI6wj/69YBOY0ofPJ7FUmEeETB
	uZ5fNcSlpaUbybW4zqYQKUA/3UXOFULgfYAnqVIhlpc+E3mxDoOGFBt0KTDPPvNPyoNbcCVZkSaBn
	7qrOTXrLO0QalkZGzMHnqX9pikpViPOtmC+112/Vz0TGdl0Go6hLk22cwUiWRfwvNr1KsoURP61OE
	AXI4BqJOoFcj1c46XPOqUgJ5VU/FFW4NYVWqeXobtQKFDJlyXOUnSXLgCTX08laJ+F2VlbvbvODRx
	LwhbKkMGycnLgciYFHWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIiQz-0006G1-Dl; Mon, 30 Mar 2020 00:37:45 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIiQp-000681-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 00:37:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id D51345C06C0;
 Sun, 29 Mar 2020 20:37:27 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 29 Mar 2020 20:37:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=NgxdIPL58OhzzDulFJg1OWmKqGXPobc
 vfaBucdeZGd4=; b=P2GOcBzGhSbfcz9Rb+eXl3XUjxmFFM1AmDoSgSmATpa1eSX
 BcdtcPW8yreG01JU6dLT1IFRU4pto4hQvSn/6aJZC001qCVppjqR0ndtZe08yLFy
 rAwck3DZJIhGKXSLKsODAqH1KJx6b7UBr/LcvscP/iXlvJ0onygeXDrfCaWm7/tb
 R3Yiz1MG6aLd7fcwaWpjaxyK37PKfdBSkbdZASNUNMsUOQvUgg6t3Knzxk8DRcgP
 qsEIkKQrDJpvgGBWJHdYe/txu5lybxIlXKOkoobHIh1Twd/R2Wlb/0CpmtqIbfpC
 ranqcvPNiixnNFwS43BnMfsvKfGoJADUDIxiU0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=NgxdIP
 L58OhzzDulFJg1OWmKqGXPobcvfaBucdeZGd4=; b=LuKmOrSDSu+pySNJKBTA7E
 B92tn6IoRhQfNhEFPABeiL/q0wmG2DCi1K78G0ICMWjoFsk6Ke3Y5+t+H734VTvt
 fFGbgtDsBrpDdOmQysKzOPa2opsU+mLRfvvCDWMtKwLwFIITKe7n3TWCBCl5Da6v
 G9YIThUkHah6FqbJ0PJgb8Z9SsitFgoDWWrk94cYKUXLuKweacuIGxhdn+/zOizh
 N+3Nmgo2hSfvD/+Tonf+l5Oj11q6AhNhqm/8giAQBWzWNtKuYKH7OiRWTSY7k3aU
 nGnUHznrpAD/hPztSsw1lHWrFlhrUGo/RZh+Jnyu+BgnR8hjnvR3L9nIbcjT9mTw
 ==
X-ME-Sender: <xms:RD-BXmtu4j2D0oUFACUsh0U6Oe675EcnxcgcMnGKi5dJmUV2_MgLGg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudeigedgfeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghnughrvgifsegr
 jhdrihgurdgruh
X-ME-Proxy: <xmx:RD-BXkB6CbrPUVTe34eV8WT0hzGVZ34rdrqyWBzK6Jxd30GyXaUCvA>
 <xmx:RD-BXo0x2IkTV3Pp4ONfzjiz1j051eQs_Pz61t3pwadkZpdHj3fCsw>
 <xmx:RD-BXmQkYf6l1DAj4hspa0TGOHGAmdGOEKQexIxis744Bvb7RDe60Q>
 <xmx:Rz-BXjk3_6fw4KSQjUKI71p5196SKIN3D_KUMIjkICxSz_ARRvV8pw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D1FB4E00A6; Sun, 29 Mar 2020 20:37:23 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-1021-g152deaf-fmstable-20200319v1
Mime-Version: 1.0
Message-Id: <d694432d-a3f2-4aa1-b9ee-f99f18ee2d99@www.fastmail.com>
In-Reply-To: <BL0PR06MB45481A385F546CF5B6855C16E5CA0@BL0PR06MB4548.namprd06.prod.outlook.com>
References: <BL0PR06MB45481A385F546CF5B6855C16E5CA0@BL0PR06MB4548.namprd06.prod.outlook.com>
Date: Mon, 30 Mar 2020 11:06:18 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Changming Liu" <liu.changm@northeastern.edu>,
 "Joel Stanley" <joel@jms.id.au>, "Patrick Venture" <venture@google.com>
Subject: =?UTF-8?Q?Re:_[Bug_Report]_soc/aspeed:_integer_error_in_aspeed=5Fp2a=5Fr?=
 =?UTF-8?Q?egion=5Facquire?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_173735_926761_EC3395A6 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "yaohway@gmail.com" <yaohway@gmail.com>, "Lu, Long" <l.lu@northeastern.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Changming Liu,

I've added Patrick to the thread, who authored the driver.

On Mon, 30 Mar 2020, at 06:07, Changming Liu wrote:
> Hi Joel and Andrew,
> 
> Greetings, I'm a first year PhD student who is interested in the usage 
> of UBSan in the linux kernel, and with some experiments I found that in 
> drivers/soc/aspeed/aspeed-p2a-ctrl.c function 
> aspeed_p2a_region_acquire, there is an unsigned integer error which 
> might cause unexpected behavior.
> 
> More specifically, the map structure, after the execution of 
> copy_from_user at line 180 in function aspeed_p2a_ioctl, is filled with 
> data from user space.  So the code at line 136 that is
> 
> end = map->addr + (map->length - 1);
> 
> the subtraction could underflow when map->length equals zero, also, 
> this sum could overflow. As a consequence, the check at line 149 could 
> be bypassed and the following code could be executed.
> 
> Although the fact that map->addr is a 64-bit unsigned integer and 
> map->length is 32-bit makes the overflow less likely to happen, it 
> seems doesn't eliminate the possibility entirely. I guess a access_ok 
> could do?
> 
> Due to the lack of knowledge of the interaction between this module and 
> the user space, I'm not able to assess if this is security-related 
> problem. I'd appreciate it very much to hear your valuable opinion on 
> why this could not cause any trouble if it's indeed the case, this will 
> help me under linux and UBSAN a lot! and I'm more than happy to provide 
> more information if needed.

It's certainly not expected behaviour and should be fixed :) We need to check
if the `end` calculation overflowed, but not using `access_ok()`, as the value of
`end` is an address in the physical address space of the SoC.

The current behaviour does have a security impact, though probably not in
the way you're expecting, as the driver itself is a means to violate the SoC's
security. The SoC is a BMC and exposes several PCIe devices to its host
(a VGA graphics device and a "BMC" device). Both devices expose
functionality that allows the host to perform arbitrary reads and writes to the
BMC's physical address space _if_ the BMC has allowed it to do so. This
driver controls whether the capability is exposed to the host (disabling
denies the read capability) and what regions of the SoC's physical address
space can be written. Regions are roughly broken up into memory-mapped
flash, BMC MMIO, BMC RAM and BMC LPC host controller.

Practically, enabling any region for write is to some degree unsafe: for instance
exposing the BMC's RAM to writes doesn't in any way restrict what areas of RAM
can be written, allowing e.g. arbitrary code injection into the kernel or running
processes on the BMC. Enabling writes to the BMC MMIO region allows arbitrary
control of the BMC and its peripherals without having to gain code-execution
(including escalating by removing write protection for other regions).

The driver exists to assist a trusted firmware update process used on some
platforms where the host can request (e.g. via IPMI) that BMC RAM be made
writable, then drop its firmware update payload into a predetermined location
in physical memory, and finally complete the transfer by requesting that RAM
region be returned to at least read-only mode.

To unlock unexpected regions of the BMC's address space in this scenario the
host would also have to exploit IPMI to craft an ioctl() payload with the properties
to trigger the overflow. Given that it already has complete write access to RAM it
may be easier to just exploit the BMC kernel directly rather than chain an exploit
through at least one other userspace process.

Anyway, enough background :) Thanks for the bug report and for analyzing the
driver. Hopefully Patrick can take a look and cook up a fix.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
