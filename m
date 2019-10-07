Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2DDCE1FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:43:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzdfwxA/sj3wUE3hY87+Pu5XJc85bmrsuqLdoP33v40=; b=j5/n8BDG7sKhhn
	IRAWBGA7Ja4Z6VRrno0cZLY3+EUz36gU1F34zXsD0iKYuRspdJc+a5uFnEhETP2qwqqUU5e+yp+nb
	fYeotKhHx+EukRUjJFFdESZ4BNq58yL3EGBxxpJAukf5t9LuVgJ75bCofMBXc+roTpuI6WokNb/zc
	hvAZ+vTTHn/OCk47r4A0rDwj2x4b77mhZ1HfLSnrbxBz8ROSSuy6iMUGX8DJ2GZdcBwQ+lSq8wrTH
	grbo2+CrjhfahwZ6PeXUSBo/NwNpZkZHKTrbN7e+htUJEFuqjKT0eZPujzEyvCAMCKYDo5lZ2zCO6
	PA3GohqiI7J30fzVNpUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSLm-0003gO-Lu; Mon, 07 Oct 2019 12:42:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSLg-0003g4-Bd
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:42:49 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BEA821655;
 Mon,  7 Oct 2019 12:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570452168;
 bh=w78f9Lnk1EFKA+FEWJPCNUtHOr3FJa1nez4JtQoAwSk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pJqZWVQqsTSFiruu7XttrAjOdzr8DDC0Z9lLHooGyrtHeSPdM/GAmun6rC98Tvw0G
 sQVgkzUf16IsDiP4WBNipLCb0N9TrbPwCiszAmgBSrqVn5VFvBbJstR8JLTV93YBqa
 Wv1hrZpyigC2vH50Bx5kmNw6H2r2v+dpl6FUVqRo=
Date: Mon, 7 Oct 2019 20:42:19 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma
 coherent
Message-ID: <20191007124217.GO7150@dragon>
References: <20190922102341.GO25745@shell.armlinux.org.uk>
 <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_054248_417518_A04BDC1A 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 dann frazier <dann.frazier@canonical.com>, Will Deacon <will.deacon@arm.com>,
 Li Yang <leoyang.li@nxp.com>, Nicolin Chen <nicoleotsuka@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "Y.b. Lu" <yangbo.lu@nxp.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 22, 2019 at 11:27:03AM +0100, Russell King wrote:
> The LX2160A esdhc controllers are setup by the driver to be DMA
> coherent, but without marking them as such in DT, Linux thinks they
> are not.  This can lead to random sporadic DMA errors, even to the
> extent of preventing boot, such as:
> 
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
> 
> These are caused by the device's descriptor fetch hitting speculatively
> loaded CPU cache lines that the CPU does not see through the normal,
> non-cacheable DMA coherent mapping that it uses for non-coherent
> devices.
> 
> DT and the device must agree wrt whether the device is DMA coherent or
> not.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
