Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57A74F732
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Jun 2019 18:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8bD/aipjmbzRbaZOou7I0KylmHo5mL8PvthrCI1bAAQ=; b=qshECerZtBGz1G
	VZDBG31AsjWehX/m5Dp64UdWiyf1droSGRsCJpyR5OV6y46UwOJLTYvw6jECImK8PjNEf0jTen2SW
	Kh4heUEjFVgkvG+Uvkbr5uYsasIG5R17R1SQEH237X0xc6sDYSzBSdpvlrZDyJGf8Uha1WX4qeuCI
	FjuwfLJhbU57Dt7EELm9zjBI6stqltRBEyaIFQkbssXdPZzlaBVA7ItLxHYZd9GdFrH6yKiD7dboD
	bSyHgahQeBKW0DFkiEhknfNLzAVCzycO3u6oULLULdmX56Nb2ymaeUTDLb9X/TbtVE0ejUekAKVcb
	ioFd9D1s/4OWktXM+jdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hejGs-0003Op-B2; Sat, 22 Jun 2019 16:53:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hejGi-0003Ny-O9
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Jun 2019 16:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YMJLmdjWBuv/yw6DcravhU1VRfVOOsawxx5cM1gsR5Y=; b=udlqmBUbT5CzJluTKRDU8TmZ/
 /1sDXni4Iht4l3th3xcfOluVl8vXrmlpUV6P7r07+hTOCchd9SuHY+zUvsb6WY7JmvnGWooxG6FCc
 iymaBocObHTI5VfxzlVlpaXWEl0xZDI8b8qisF+SQdPvQ5C2nhNWIWgMwKeDcGhSyoF2RuKONclxK
 25CL5u1C520cBg453QiClxOY79khdIXzxZK2Iz3wuLVsj4yASLvcrT/BpHZbDRc3Zxv/azgqbon+k
 ScM4jjZFe1VOzwsz6mQTluQlZEHZ3a+mRzeQ4rDuGaRQ4ZS93Dt+aQXGCeuucZ6ySSAHmOXJSzz7C
 tyXwu0jIQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58984)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hejGV-0004nV-Uc; Sat, 22 Jun 2019 17:53:24 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hejGQ-0004Jj-OT; Sat, 22 Jun 2019 17:53:18 +0100
Date: Sat, 22 Jun 2019 17:53:18 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Michael Olbrich <m.olbrich@pengutronix.de>,
 Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vinod.koul@intel.com>
Subject: [BUG] imx-sdma: readl_relaxed_poll_timeout_atomic() conversion
Message-ID: <20190622165318.bgyun52hssqmdv4n@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_095336_793840_672C998A 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Old code:

-       while (!(ret = readl_relaxed(sdma->regs + SDMA_H_INTR) & 1)) {
-               if (timeout-- <= 0)
-                       break;
-               udelay(1);
-       }

So, while bit 0 is _clear_ the loop continues to poll.


New code:

+       ret = readl_relaxed_poll_timeout_atomic(sdma->regs + SDMA_H_STATSTOP,
+                                               reg, !(reg & 1), 1, 500);

Doesn't really tell us what the termination condition is (because of
the obfuscation taking away the details), but if we dig into the
macro maze:

#define readl_relaxed_poll_timeout_atomic(addr, val, cond, delay_us, timeout_us) \
        readx_poll_timeout_atomic(readl_relaxed, addr, val, cond, delay_us, timeout_us)

#define readx_poll_timeout_atomic(op, addr, val, cond, delay_us, timeout_us) \
({ \
        u64 __timeout_us = (timeout_us); \
        unsigned long __delay_us = (delay_us); \
        ktime_t __timeout = ktime_add_us(ktime_get(), __timeout_us); \
        for (;;) { \
                (val) = op(addr); \
                if (cond) \
                        break; \

"cond" is passed in to here unmodified, so this becomes:

	for (;;) {
		reg = readl_relaxed(sdma->regs + SDMA_H_STATSTOP);
		if (!(reg & 1))
			break;

So, if bit 0 of this register is clear, we terminate the loop.

Seems to me like this is a great illustration why using a helper
_introduces_ bugs, because it hides the detail about what the exit
condition for the embedded loop actually is, and leads to this kind
of error.

In any case, the conversion is obviously incorrect.

I occasionally see the "Timeout waiting for CH0 ready" error during
boot on a cbi4, which, given the above, means that we did end up
seeing bit 1 set (so according to the old code, we waited
successfully.)

Looking at the date of the commit, this is almost a three year old
bug.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
