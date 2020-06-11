Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 833A51F6C17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 18:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbLl33VAXv+ebotyvG2qW32K6guaf9AjcpXfe+rkxAY=; b=KSrWcRWH2ZsOlU
	m6XUR1nJUqS3+cME7ZjqIOJbOipXaoyyDYvvXbOXynhEh2R+s9y9VjHlObYBeLVCLXKrp2QT2oeHN
	HvS/fJ+qg8DfgwMoKpwJomTx7Jv77wvlpHo/+vNR5wfDcb3Jc+g2T6StihWfhJ4ENQ7CFBnSrbDq6
	vaeQM3Ro1krxVrzCN4OfvHeLC1i4tymKS4zW8v84XeulmkxtCRBHQ0GzELheWPrSKkoMVdpd4MhF3
	MsNVKYW7INL+GifRt9ZViJ5NRPBvZGPyIedM27glRAqGLvm6c8DmLu8H4mzWz1ZUM7ovMY8H7/m3a
	oQ9d59+0LHmWHROtxtQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjPxR-0007pj-5F; Thu, 11 Jun 2020 16:21:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjPxE-0007p6-Ts
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 16:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sfKaVv/5ZqeraybOSu9xypc2dGSRP77o/zyiPuDpOAc=; b=Xr2pgD2oGiHBHfiOsE2Oybg5+
 9x11vM+XlaKxL5y47PEOfFgIA0RIdMO+swk04hDNJ+oSKiIIC6I05ssKmJ95Q4JYhtC7ohXZk+K7x
 rNyuJF93oKcGR0O9n5040GfiktpgnBEIiRbpCTvXcwjdVN8imGGPxHQS8nvdMpf0BhJHsN7cDgiUU
 A2l6leqQTF0ECR+BSybFKc8TefGCs9Jks+A/Nl4kDE59TxhGGpTe0rpgMuvKbNR4Cwg4sTmj+7px7
 UahT8Gf3rNuCTbaACzOF5Gg+Cfu8/zDvauhDFxcePgtF5EQ6v507R+UMotp9kTh4CoMDAfjzoyhEE
 fJlbjct1Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:52310)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jjPx8-0000q1-Kf; Thu, 11 Jun 2020 17:21:18 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jjPx7-0005Ks-KL; Thu, 11 Jun 2020 17:21:17 +0100
Date: Thu, 11 Jun 2020 17:21:17 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH v2 0/6] ARM: Add support for large kernel page (from 8K
 to 64K)
Message-ID: <20200611162117.GY1551@shell.armlinux.org.uk>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_092124_962946_8213711D 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gregory,

You're on your own with this one; I've no motivation to re-understand
the ARM page table code now that 32-bit ARM is basically unsupported
now.

I'll point out some of the things you got wrong below though.

On Thu, Jun 11, 2020 at 03:49:08PM +0200, Gregory CLEMENT wrote:
> Hello,
> 
> On ARM based NAS it is possible to have storage volume larger than
> 16TB, especially with the use of LVM. However, on 32-bit architectures,
> the page cache index is stored on 32 bits, which means that given a
> page size of 4 KB, we can only address volumes of up to 16 TB.
> 
> Therefore, one option to use such large volumes and filesystems on 32
> bits architecture is to increase the page size.
> 
> This series allows to support 8K, 16K, 32K and 64K kernel pages. On
> ARM the size of the page can be either 4K or 64K, so for the other
> size a "software emulation" is used, here Linux thinks it is using
> pages of 8 KB, 16 KB or 32 KB, while underneath the MMU still uses 4
> KB pages.
> 
> For ARM there is already a difference between the kernel page and the
> hardware page in the way they are managed. In the same 4K space the
> Linux kernel deals with 2 PTE tables at the beginning, while the
> hardware deals with 2 other hardware PTE tables.

This is incorrect.  The kernel page size and the hardware page size
match today - both are 4k.  What your'e talking about here is the
PTE table size.

The kernel requires that each PTE table is contained within one
struct page.  Since one hardware PTE table is 256 entries, it
occupies 1024 bytes, so a quarter of a page.  So, to have a single
4k page per PTE table would waste quite a bit of space.

Now, the hardware PTE tables do not lend themselves to the kernel's
usage: the kernel wants additional bits to track the state of each
page in the page tables.  Hence, we need to shadow every PTE entry.
This also provides us independence of the underlying hardware PTE
entry format, which varies between ARM architecture versions.

So, we end up with a single 4k page containing two consecutive
hardware PTE tables, followed by two Linux PTE tables for the kernels
benefit.

If you increase the page size, then you need to increase the number
of tables in a page, or suffer a huge amount of wasted memory taken
for the page tables - going to an 8k page size means that the upper
4k of each page will not be used.  Going to 16k means the upper 12k
won't be used.  And so on - as your software page size increases,
the amount of memory wasted for each PTE table will increase
unless you also increase the number of hardware 1st level entries
pointing to each PTE page.  With 64k pages, 60k of each PTE page
will remain unused.

That isn't very efficient use of memory.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 503kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
