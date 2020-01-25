Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E23149713
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 19:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhnXnjbWsXJlKynpYdmbB9YPM+tEJCvb5t+6zXuVrB0=; b=W/qRPqlkQNrDw6
	n3dT3FtC8lmyHu6prJ9++CQV/Egb9LW5mVudWs+F0UBAGpJbQDcpFicjvabvtanz5U0sz7TLEHU4C
	xkMu431w14AFHK0IP9UwotwShU6+3YkaAbK+yFBYJVZK8UlMpa2+NOHmZqnvBYv1xY9mQyjOOKM0M
	JfGOfcFsSnmPZx/rHYtGyV2AlOqTXgFSz3xEpzWlBZNUF753+NexMgrMFZbPffG4dp8ErEJBwTjlr
	C7rMHa54eq6l8Lh1+RucE3qBtqw/fW8FO50wd1jf8JhJA8rZ6XxTmXlvF0rHPuhI548tOe9yeLSXG
	l+2qKJzP9fDnHw+2Pm9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivPpI-0001CL-Vd; Sat, 25 Jan 2020 18:06:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivPpB-0001Bj-Bf
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 18:06:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NviSb6rLz8itB3Zb7lSO9C2tMpUikxorYtCnHZUsTc4=; b=jDMo/3CqNLZpHfqfiTSusv1fz
 aqFiFnduaHw6BMQY6r9WwdlhPS3PT6K7uVmdCu60AVOKxOXzKvFpOpcpPRNigphgGJdh3SlXwuXyX
 U5qlsjKX85/A7Q7zcCWiFqLLFVzyIIazYBwaUFLhhOnrwjkveMkGBWHfxaLiKacfU0jOo1Hkb/SD1
 xSg46CISWxBgfmoa90xMmiGGPpqhEbwY5S2oAPCda4kum7rHSL7XFUsfsfdeQKemVlUZmxKzggYsU
 mbDb3IO5c29Nb7kQ+QgZ6Ln30DfhF3j5+KlSweFJOzGlm17JkAoV59rWb9tj1f1KPQgvRFsxlq9wa
 +TCjUuucg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:43208)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1ivPp1-0006xW-3B; Sat, 25 Jan 2020 18:06:15 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1ivPoz-00084f-Dl; Sat, 25 Jan 2020 18:06:13 +0000
Date: Sat, 25 Jan 2020 18:06:13 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH] ARM: 8936/1: decompressor: avoid CP15 barrier
 instructions in v7 cache setup code
Message-ID: <20200125180613.GR25745@shell.armlinux.org.uk>
References: <20200125173950.GA19126@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125173950.GA19126@roeck-us.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_100625_574463_CAD71B6C 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 09:39:50AM -0800, Guenter Roeck wrote:
> Hi,
> 
> On Fri, Nov 08, 2019 at 01:44:32PM +0100, Ard Biesheuvel wrote:
> > Commit e17b1af96b2afc38e684aa2f1033387e2ed10029
> > 
> >   "ARM: 8857/1: efi: enable CP15 DMB instructions before cleaning the cache"
> > 
> > added some explicit handling of the CP15BEN bit in the SCTLR system
> > register, to ensure that CP15 barrier instructions are enabled, even
> > if we enter the decompressor via the EFI stub.
> > 
> > However, as it turns out, there are other ways in which we may end up
> > using CP15 barrier instructions without them being enabled. I.e., when
> > the decompressor startup code skips the cache_on() initially, we end
> > up calling cache_clean_flush() with the caches and MMU off, in which
> > case the CP15BEN bit in SCTLR may not be programmed either. And in
> > fact, cache_on() itself issues CP15 barrier instructions before actually
> > enabling them by programming the new SCTLR value (and issuing an ISB)
> > 
> > Since all these routines are specific to v7, let's clean this up by
> > using the ordinary v7 barrier instructions in the v7 specific cache
> > handling routines, so that we never rely on the CP15 ones. This also
> > avoids the issue where a barrier is required between programming SCTLR
> > and using the CP15 barrier instructions, which would result in two
> > different kinds of barriers being used in the same function.
> > 
> > Acked-by: Marc Zyngier <maz@kernel.org>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> 
> This patch causes all qemu emulations for ARM1176 to fail hard (stall with
> no console output even with earlycon enabled). This affects witherspoon-bmc,
> ast2500-evb, romulus-bmc, and swift-bmc. It does not affect emulations
> for other CPU types, even with the same kernel configuration (such as
> ast2600-evb).

Hmm, looks like we're going to have to drop 8936/1, 8941/1 and 8942/1
in that case.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
