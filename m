Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552FE1C3B5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dAXfz1BPPCZKWdL8fzfAAlfsXP8IbRTVc+wIEqlRaSE=; b=XNIPkK9Hdp0HUw
	vzQ7pnfXPwbsUo4JZhYQJmrkKjHsE34Og3kqsDCS/NTfdQwbNqB4jKLg4HWNf29kIx2SNKwwseRSu
	jQ/NOvoA9M8y8cfVJ/LysxWvqS+En+/TgjQ3FUNrqQLB+BnOZ8e1ld8v/hp++gRGNb1RCT7rknR9k
	toIscG2Y6s18uLpM0AhmxPgJo+Hc45ko7gl5eda2Fpnnv2k7nETEv8xMk0PtPQ98XbLuv43PnCGNO
	PNpxWdXHNMzqzlyiY5p0TXPdjknvcQvpZ/EW/rLhH9FP1OiiqCr/m9TCO8msoEJe22EI8j00q2cGV
	xEzgPzGqxNQ8KMCcACEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbHE-0007DZ-3z; Mon, 04 May 2020 13:36:56 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbH6-0004SI-UA
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SzjxIqW2peLnUR0XEi6Nu0WuMEtAymQepnCQFPPHy2k=; b=MFsfPZ/ETb4lJ4HP2BQoyXSuf
 9JbaxT1ySghoe+bg8dvz+v8lHgu11dkTSLF3A27NkSWoRwBoLGRT9+H4dkTtRVEQq2YHTDonT+g4f
 /R5d6VtN2Q0kc26F6d1yEMIF0sGWparOhAkORReUaP/CN6UsIxw6IZPGA0+PVsdi4Y2daDOuzhXE7
 Ee6nncuD6JRb8To4nzlZJT05RlKH18VXqTF7BGSzeKTk+Sib8xiRluseyeITXQMVa8ZizAcP/8bes
 OMynzEVG51Z+cv3bjmnrP5O55/bieL1hH1Anlm/OMJbrsK7609+wtaedJEdFaBN5RcVIYGOBK/kXl
 /8DstwOQg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53626)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jVbEz-0004tK-I7; Mon, 04 May 2020 14:34:37 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jVbEx-0006An-UD; Mon, 04 May 2020 14:34:35 +0100
Date: Mon, 4 May 2020 14:34:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org,
 Tomas Paukrt <tomas.paukrt@advantech.cz>
Subject: [PATCH 0/3] Fix uaccess kernel protection on ARMv5 and earlier
Message-ID: <20200504133435.GD1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_063648_977584_D3331173 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Will Deacon <will@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

This series fixes a problem with the ability for the user accessors to
access kernel space in a very specific circumstance.  I'm greatful to
Tomas Paukrt for having the patience to track down the problem.

This only happens when the following conditions are met:

- ARMv5 or earlier CPU
- Software PAN is disabled
- Nested exceptions that want to use user accessors to touch kernel
  space (implying use of the set_fs() function.)

The result is that the domain register is not preserved across the
nested exception, but instead is reset to prevent kernel accesses
while we are inside a region that should be permitting them.

Further technical details can be found in patch 3.

Patch 1 consolidates the uaccess macros into a new include file.
Patch 2 integrates the address limit save/reset/restore into this
 file, moving it from entry-armv.S, since we need to integrate this
 with the domain register manipulations.
Patch 3 ensures that the domain register is always saved and restored
 not only if we are using software PAN, but if we're using CPU domains
 for kernel memory protection.

 arch/arm/include/asm/assembler.h   |  75 +-----------------------
 arch/arm/include/asm/uaccess-asm.h | 117 +++++++++++++++++++++++++++++++++++++
 arch/arm/kernel/entry-armv.S       |  11 +---
 arch/arm/kernel/entry-header.S     |   9 +--
 4 files changed, 123 insertions(+), 89 deletions(-)
 create mode 100644 arch/arm/include/asm/uaccess-asm.h

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
