Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA52863357
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 11:18:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTmjOiEaJtpDOJFayGJsVg6jTVk1XiUatkhzgZte/Mg=; b=FBZhLD1ABtCzpK
	U9k118IXBKAhC3U4Or9Uzhp4pD4kqjxO+KYFaqsLidVHv1XgyspsF5sHQaaloGd4b0Ob2VRzlGm8J
	AlQNKUFK1KlAp4obYqbxQJA9mmPJGuIYHgQfaFmkRM1fQenRVEf7s3N3Sc8wBV7o/4uu890fAJJtn
	Oi1g3rmw1lVBBlkYD8YIKGQQ6/sNR5wOUpX/L2xaObK8sdBUMf6vrmMzZLB7qYKSpTWoezbGdTdbh
	APh9GlOOnjuIeSLeeuKCtO/4XbAJf/SwnRyPLQGynZNd02Tly7/U6RPYwLdvgNgS5wHggT65QwbMM
	STlHgGxl8I/+PRhkjhZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmGO-00006D-F0; Tue, 09 Jul 2019 09:18:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmG8-00005S-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 09:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqgAuKvy8GWlTYQeWcjTc9XmHRHeaV4psPeCFTBL620=; b=07wh6UTIMM3GoBMRNUq/wNVd5
 602onDbjkZYuryHrHAVl/rxfT8HnaYaGIfJSSsi12vB+m7gUguLkYn1l2D8jDLlIJc3lIpXzIsNOp
 nRtpDGuQ45OaF5AWssFisPcqr42gg0e1pVx1YXT9LnqoBHG2fJhr+D5JPmsF4NnB2IWi29Ko75DKa
 bNMxVwhGZfl3ygoqfZMqHN3DEKa1BYhKuX6VmM1w0oCm9IT6w71R41/uYNEzd/Oeg0lMQvwawUMD6
 CqvtH4vbIEGMK2ocUNg/INhO/T+xpJ7WEMYL9i13zwy4wVc9XRw8yeuPe72nfPvLlhtZe2i8gTH+3
 HNDnHqaKg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60292)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hkmFy-0008Gh-3B; Tue, 09 Jul 2019 10:17:50 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hkmFv-0002rm-RQ; Tue, 09 Jul 2019 10:17:47 +0100
Date: Tue, 9 Jul 2019 10:17:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: mtd-xip: work around clang/llvm bug
Message-ID: <20190709091747.cg3cqmzdfpzks2vx@shell.armlinux.org.uk>
References: <20190708203049.3484750-1-arnd@arndb.de>
 <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdY1JzUZKgmXbObb6hqFcLFygAj2NuMgPMj=8tCp9U2C1A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_021801_090433_D7EC3585 
X-CRM114-Status: GOOD (  10.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 10:41:05AM +0200, Linus Walleij wrote:
> I guess this brings up the old question whether the compiler should
> be worked around or just considered immature, but as it happens this
> other day I was grep:ing around to find "the 8 NOP" that is so
> compulsively inserted in ARM executables (like at the very start of
> the kernel execution)

The NOPs at the start of the kernel executable have nothing what so ever
to do with this.  They are there to align the kernel entry with the old
a.out format that was used (which had a 32 byte header).  Consequently,
there are boot loaders around that jump to 32 bytes into the kernel
header.

There are other places that we insert 10 NOPs (at cpu_relax()) due to a
CPU errata (otherwise a tight loop basically stalls other CPUs.)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
