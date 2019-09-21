Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93CB9E42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Sep 2019 16:54:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UVI6IliGKfUGKJEJU509Ek9O30tJjkyF1jA5xK7UNE0=; b=jxsth0GHqYIHqq
	mCvFMPEdluCKMypThHEvBbB5g054o6Q8V+M/d8/QKExNbznCzWN1v8/Sg4HwznoFFPURCFxrlOo6F
	hANd6xyJjvWwX/mA851rT0rjicAjEdIZYk3wAmuNOnzAYw9jRq8Oa/xnekLL6dAHpXX0U6TqVasxO
	oXcSiqcaZ5CawNynPoTPBapxwz3iYNXxvdk3I/5AKdONjChS4/RI9rFaFNfb6coGtZ+yb7yGOQ/dL
	AuftmS4InMYbV2E6bqcaBlassT/VeV/iPPT8fI3WNq2UWJFyS/D6O0oVGQGVmSMr4pVC+YSFy7wUu
	x7OqMxPqmMaE7m9SFh9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBgm2-0000eZ-GR; Sat, 21 Sep 2019 14:54:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBglo-0000c7-7m
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Sep 2019 14:53:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5uEWlv+YZPMagviqGoaCOmaRhzAaU16AabXiiu/WTp8=; b=yBP2+Gcp6981oNkmo+8auN+bN
 PFtE88xelUYFBkMpwNFnM5GQcBN+rG0tOygO8bNBi8ACy5C5uozoMseWibUQUyUI3tHJyQIJ3IPyF
 5DKHK9whSHlzY/eUsG32qrffEiZ6g2OPr6pKwPo2tx1biRltQWhrySB1pzpRzkrhOIrkmc153GnON
 8x7iSRwF32WkIfI0cbkdH/QTCmYx2fIJtZdSOQ4n9UbCstr1Ou5a+u1ElCKXe0286koGCOxhhkiwl
 QEPzmbHTzEEq+L7vr7T8aU+Qid+Laq9uA8egaQ7I/YK6krxq5eL/vTcg/yygTuO1KyjKsWvH/2q36
 Vucz1INFg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:34782)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iBgjg-0001wh-Jz; Sat, 21 Sep 2019 15:51:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iBgja-0006qg-Uf; Sat, 21 Sep 2019 15:51:38 +0100
Date: Sat, 21 Sep 2019 15:51:38 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Yu Chen <33988979@163.com>
Subject: Re: [PATCH] arm: export memblock_reserve()d regions via /proc/iomem
Message-ID: <20190921145138.GN25745@shell.armlinux.org.uk>
References: <1569070969-5168-1-git-send-email-33988979@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569070969-5168-1-git-send-email-33988979@163.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_075356_281011_EBDC2FCC 
X-CRM114-Status: UNSURE (   8.39  )
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
Cc: yu.chen3@zte.com.cn, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 09:02:49PM +0800, Yu Chen wrote:
> From: Yu Chen <yu.chen3@zte.com.cn>
> =

> memblock reserved regions are not reported via /proc/iomem on ARM, kexec's
> user-space doesn't know about memblock_reserve()d regions and thus
> possible for kexec to overwrite with the new kernel or initrd.

Many reserved regions come from the kernel allocating memory during
boot.  We don't want to prevent kexec re-using those regions.

> [ =A0 =A00.000000] Booting Linux on physical CPU 0xf00
> [ =A0 =A00.000000] Linux version 4.9.115-rt93-dirty (yuchen@localhost.loc=
aldomain) (gcc version 6.2.0 (ZTE Embsys-TSP V3.07.2
> 0) ) #62 SMP PREEMPT Fri Sep 20 10:39:29 CST 2019
> [ =A0 =A00.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=
=3D30c5387d
> [ =A0 =A00.000000] CPU: div instructions available: patching division code
> [ =A0 =A00.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing=
 instruction cache
> [ =A0 =A00.000000] OF: fdt:Machine model: LS1021A TWR Board
> [ =A0 =A00.000000] INITRD: 0x80f7f000+0x03695e40 overlaps in-use memory r=
egion - disabling initrd

Is the overlapping region one that is marked as reserved in DT?
Where is the reserved region that overlaps the initrd coming from?

Thanks.

-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
