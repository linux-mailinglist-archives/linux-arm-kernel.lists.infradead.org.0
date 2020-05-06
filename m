Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16E71C6BBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUH9nynjxWUB4mu/T71vw5R3usz5bhvo3+Yd3JLO65w=; b=Cd/186iArAVY+O
	AYPOSOkSei1OX8qufrLZCKTXxRHnAQKediR7BQ8J+rG0vwNjO4RukOkdK5GO5Ux8E5chdvtOhdQRL
	p4g9fN/qLKja7lL0vd8IfWmp90erJDsqS6SElFIUmqX3KD+xJoJvzBn09gHlPz7RCgr2HRoIx4b+l
	0c0z3jL5Fb6um2MzfX8JnCk/0cUUCLr2/RBZvNAcviMSKvAMuaXu/a15NIpmfC2KODwElAEUHsHX+
	3UPVltgR00Gux6rSR6uJib2YRKoG6aYgXxqDzD+BJ0IILpueuWWcG5hg68RhF+sxtiaBZo6ffqkpY
	nUB0Nt6azbjaHOXW6prQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWFRY-0001f8-4r; Wed, 06 May 2020 08:30:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFRE-0001eN-So
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=29yPD5EFQvWHiHRl9ixtK8NqYFRN0nj9nyx44Gn2F6A=; b=GK1EIA4dcKqihYlhdzf6JvGRy
 Ch5mS4j2OJuV0sfm8wEN6/Cwtzrd7mWqgeQ3AmAKLDDexw37wgf49Yiwf6KEC2OelEltRWo0Z8pC1
 LtunA41h0FyF9h1/GxReHi+x8AFWR5zW3mWNkJOUq4ugWJpg4NMLGrzbt6Cl1Ix7A1zJdyxLbj5/E
 06HPc+b1Cek7F1UIDmClH9b8ZXTKDjHVOweRigSQ6CSGgAi5DeLo9P4qSH5imOiWTY+B1F25KfCiP
 m+FMwU30gfosFffDJAMS8nHjeZV8mCkTAoHUTnngv96oDAFjXI12Mz5cNuRYMQVd1W32w8w9xNK/6
 5CTiaHl1A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:56826)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jWFR2-0007VQ-7l; Wed, 06 May 2020 09:29:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jWFQz-00081B-N0; Wed, 06 May 2020 09:29:41 +0100
Date: Wed, 6 May 2020 09:29:41 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] ARM: OMAP2+: remove unneeded variable "errata" in
 configure_dma_errata()
Message-ID: <20200506082941.GA1559@shell.armlinux.org.uk>
References: <20200506061900.19832-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506061900.19832-1-yanaijie@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_012957_745668_83B9111D 
X-CRM114-Status: UNSURE (   8.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, peter.ujfalusi@ti.com, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 02:19:00PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> arch/arm/mach-omap2/dma.c:82:10-16: Unneeded variable: "errata". Return
> "0" on line 161

NAK.  Look closer at what the code is doing, thanks.

This warning is basically incorrect.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
