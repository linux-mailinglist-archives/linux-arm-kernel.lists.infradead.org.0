Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A1A61C7C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 11:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Htep91QLPK3RjQtbp70+xPN5O3kqVcZSCFRnKR91Hs=; b=eY+KebI/Df5Q9s
	mcJV2h4XA3mYFpDecPJJ/R37vhBczyfX90SVNosETSR4+zl2eajW0Kwcr/stGgQmjZSNDs6+TR600
	2x2i1uWjbHhHZ4611koH+crj0eCA9duLt1cUh3bsrb2chxI8v1sE2G13xh+3fxf/P2P3S/BcB7/cP
	8Y20iFX3QKIyZOl8aVBwfu2FTvC2TRX40nBZZkdbcswZLcRtLL9aSonfwBTfpQHC7FpexQN6A3xET
	UgK/EY+sB29IFwlnBmE9jJlqRW068/r5TuXT4BC82u7SfuW0h+a4QFNzXtYVTDBQXZ3zu5UgIus7y
	mz8AKcaLfW1OS76/PMmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQ5W-00028t-Uo; Mon, 08 Jul 2019 09:37:35 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQ5J-00028I-IU
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 09:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dACHf0GmG88FNVuXxihe6EOSDjnGeySIBBpskZL6PZ0=; b=FL1hGNdh0YVQPTtHeTHLTCe7P
 3IOTPEyK25NY6wCJe1SrVYr0v/EpWGzwh3Dn8ZfCQtUPDEu9rboJMcC0gBj4ZROo0zxjEL0IXVXcK
 ZX2RLfIW7GsCNOJ3qs/FffvrLB/ywcvRPyA11wMtxlG9rWP8VpMSqRw+BszJArNAj49UFCNAg5Cbc
 wevwrMn7DCRZ+iZDzj8PBSk9JkHiAL+Ty1gKXXtb012+D2u7hHNhtwPJpd8sB2+ZvhudvmVyEoTkj
 C8Ah2CQaaasuZ1L0Au9ct6WhfnrKmmGWqEEVid2JSHPBPW9CQm5b6R92iV/acBsUfH62FucIeTeQp
 aAaXkJKEQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59280)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hkQ5E-0002Hy-O9; Mon, 08 Jul 2019 10:37:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hkQ5C-0001ws-T1; Mon, 08 Jul 2019 10:37:14 +0100
Date: Mon, 8 Jul 2019 10:37:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jon Masters <jcm@jonmasters.org>
Subject: Re: FYI: Possible HPFAR_EL2 corruption (LPAE guests on AArch64 hosts)
Message-ID: <20190708093714.57t55inainky2zcq@shell.armlinux.org.uk>
References: <7dd77cea-d673-269a-044f-4df269db7e5e@jonmasters.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7dd77cea-d673-269a-044f-4df269db7e5e@jonmasters.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_023721_766596_43FD6941 
X-CRM114-Status: GOOD (  10.53  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 07, 2019 at 11:39:46PM -0400, Jon Masters wrote:
> Hi all,
> 
> TLDR: We think $subject may be a hardware errata and we are
> investigating. I was asked to drop a note to share my initial analysis
> in case others have been experiencing similar problems with 32-bit VMs.
> 
> The Fedora Arm 32-bit builders run as "armv7hl+lpae" (aarch32) LPAE
> (VMSAv8-32 Long-descriptor table format in aarch32 execution state) VMs
> on AArch64 hosts. Under certain conditions, those builders will "pause"
> with the following obscure looking error message:
> 
> kvm [10652]: load/store instruction decoding not implemented

Out of interest, because I'm running a number of 32-bit VMs on the
Macchiatobin board, using a different 64-bit distro...

How often do these errors occur?  Have you been able to pinpoint any
particular CPU core?  Does the workload in the VMs have any effect?
What about the workload in the host?

For the record, over the last six months I've seen no evidence of
what you describe - the only kvm messages in dmesg are:

root@mcbin:~# dmesg | grep kvm
[    0.304725] kvm: Limiting the IPA size due to kernel Virtual Address limit
[    0.304728] kvm [1]: IPA Size Limit: 43bits
[    0.304893] kvm [1]: vgic interrupt IRQ1
[    0.304953] kvm [1]: Hyp mode initialized successfully

Unfortunately, everything was rebooted recently due to the TCP SACK
problem, but I hadn't noticed any ill effects on the VMs (which
provide both local and remotely accessible services - such as my
email, website, etc).

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
