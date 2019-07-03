Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D935EAB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 19:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFMR6cQjQCU1kxeh4qrUUl8Y0hSeb7UG/b3DDFxW89Y=; b=Ty+t8iHB+dA7dh
	r/kw7ssEqP9xxtxJ0KGq/+cOH9b94JFJfcSUCaSwYBPI1EF37MG4JS+32zbk9Pwn3seV1WBB4WPj+
	FCYunek4ubx1cL3ozXOT3OVD/itRogf1HgQMvoQPU4GfQjPPmLA3zQudDr3Vn/d8MV4h08M5vuJAM
	nUMWN2Tu8Me0gp+gNRhOI0OoROexceFExryrZJbh8PI5N5rTNlCumPaJliQ+Jjdp1lHvUpUxXN5sJ
	KW2mzkOvwE7aRF/Z37ZkMVuC/WxuW9mDqkWsCb9egpFAmzoApKMGLn97ASKtFx3TCGH8Z9uLmrT3W
	Zh8e1jqOFKvC2QTAkmtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijGr-0007qV-Ai; Wed, 03 Jul 2019 17:42:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hijGY-0006Bq-N6
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 17:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOxFBzaHCJquyiHzx+iwEHdWwpWJpJY9iiWzExjDxvc=; b=iYi8ULttUsEgmHJsS+5HoJMqZ
 ib2wv4yifgF70zQapvXDhilCmqp64CcBasscp1PmxOH3YH5pKK7m8vZ4I4y1oQLLTNB0bR7idtkBs
 8MYuFqDOKDi0Kopc3x1gCRNCI+RHdPe4859YiLI9yb1ij6gZONlPjGtxmAV/C3xZMQ5QKs274f8bQ
 PCdcExDuVDX21dBsq9bIDWCOjRQwEmUXfYjmeWlkNNUnQLP8C5IMgGKZacGGZRSvwNtMik+CVOUuW
 Yw2AJSn1Pn03S2un9jj+hrpZ/VjHEYyRZeGVrryjon6B8RaFtgJFe58I95qlHHAXWcV91CPmT3s1+
 8wCM1AjFQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59288)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hijEQ-0005lE-IQ; Wed, 03 Jul 2019 18:39:46 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hijEP-000664-Hh; Wed, 03 Jul 2019 18:39:45 +0100
Date: Wed, 3 Jul 2019 18:39:45 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Subject: Re: Trying to make sa1100 serial driver test-compile'able
Message-ID: <20190703173945.z6vpyysc45cyysv2@shell.armlinux.org.uk>
References: <bafd71d3-da72-32b4-9374-9cf7711e3b33@metux.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bafd71d3-da72-32b4-9374-9cf7711e3b33@metux.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_104158_983547_434CC34A 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 06:58:54PM +0200, Enrico Weigelt, metux IT consult wrote:
> Hi folks,
> 
> 
> I'd like to make the sa1100 serial driver test-compile'able. This needs
> the UTCR* define's from arch/arm/mach-sa1100/include/mach/SA-1100.h.

Let's wait for the patch series that's already queued for this merge
window to land before we consider doing further big changes.  In
general, however, none of the SA11x0 stuff is buildable without stuff
from that include file.

What's your motivation here?

> Can we move them somewhere else, where it could be included from both
> mach/hardware.h and the serial driver ? What would be a good place ?
> 
> BTW: that also affects the another driver: mfd/ipaq-micro.c:
> Maybe we could also clean up the redundant defines in
> arch/arm/include/debug/sa1100.S.
> 
> 
> thx
> --mtx
> 
> -- 
> Enrico Weigelt, metux IT consult
> Free software and Linux embedded engineering
> info@metux.net -- +49-151-27565287
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
