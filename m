Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE3130D1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 13:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8K1uYvofym8WCSgYFxyel34DOqsGSp/UKrxVHSsd//Q=; b=PcV4n1HjM/YkTq
	fWX1erhNW2d10Zc5WQTPXueOtdo3vfS23oeC60zHbgTdGcKyl2fEe6j64C5SNtn86cFkPBJ4oH6Nj
	xjmwptz7K26qwB+3rRRtOHTAsGSLj+vt104F/vdC8woDkdZeeoXaBxqwAZKK1kuc/36WdHk3mkoGb
	N4q/bUpze1gjTyQRy1yprSYNsXi27t5xYoJuugbg96ixFZAwoVyork5lZ4ZKg4Bw0teRCwgUmoX3q
	T6JGk2TALGtxp8oGvYgLFacitwQsQAbDxBJD1kCsgRvyaTN9wsDUZ9NiGCfHKPHLTOEBkMSjA8LfR
	MmZomnrRFzwNdDCE/HCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWfTI-0001dV-1u; Fri, 31 May 2019 11:13:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWfTA-0001cu-O7
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 11:13:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xKwYum+NdkBywT3KdX8GLgUjDsYEDJi/LhH01e2YoKs=; b=YpOF1AmbgiMNCQAooVDALqb9p
 q6WcY2prqOXPzTArJB7zxCR4ywAW58HHokF3tRPIvi00uZuMdNRswKovvLoqY+jX6fSt+b9VFsHnq
 82SzIEXRe4UxCIQfzd8PMT91+pYke3Jw5lNcksWVvWG34VwgmB40QyMpt9cAnobG/WCXtDM39aTbG
 kcfM2+7A4YbjC1sJlKYlQUucthphYhOoKqCHk2rxkCFQUl1v55dzfHae4lGSPVHt/gUU9r8j/gSnF
 lbOHTxBfqG/A5J7S1JpNkCaaGWMAjSRt/Ge0P3OWa3IJRDUwodR6Bx1mViJOSL10wJ+FYDYxo0hnv
 d2HEjccYQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52740)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hWfT2-0000OD-2J; Fri, 31 May 2019 12:13:00 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hWfSz-0006FD-82; Fri, 31 May 2019 12:12:57 +0100
Date: Fri, 31 May 2019 12:12:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org
Subject: [PATCH 0/6] Convert sa1100 serial to use mctrl gpios
Message-ID: <20190531111257.27hor6xgb3nsdghg@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_041308_786717_B24F5628 
X-CRM114-Status: GOOD (  10.26  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series takes the next step along the path of cleaning up and
modernising the sa11x0 code, concentrating on the sa1100 serial
driver.  At the end of this conversion, we are left with collie
being the only platform that uses the old platform data get_mctrl
and set_mctrl methods.  As the locomo code is also used with PXA,
this is left for a future cleanup.

The first patch was previously acked quite some time ago.

I'm intending to send this to arm-soc.

 arch/arm/mach-sa1100/assabet.c  |  91 +++++++++++----------------------
 arch/arm/mach-sa1100/badge4.c   |   2 -
 arch/arm/mach-sa1100/h3xxx.c    |  64 ++++-------------------
 arch/arm/mach-sa1100/hackkit.c  |  48 ------------------
 arch/arm/mach-sa1100/neponset.c | 109 +++++++++++-----------------------------
 drivers/tty/serial/Kconfig      |   1 +
 drivers/tty/serial/sa1100.c     |  42 ++++++++++++++--
 7 files changed, 106 insertions(+), 251 deletions(-)


-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
