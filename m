Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02E91A6A10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMX9POSLeSYAOucIcArv7MVXwFj5awOVBTXFlSZfIWY=; b=bBpDpsA2xB4ct7
	SbB9yrnVzoJv8NBkHw9daI/1T6j9RWFmu5z7O0SnOO6dyhSwv/rySMq+pezkrrkBX/vio8Qf0xM8R
	cJNdo956c17HCOyckIkZSYAjuMyZlU7VWRfv6tq2UaiTpokfwGFq2Zy44i6CDmEZxYDfAKq6k5Dvp
	08Ey8mdMmkNfMjme4S2zaIRKVqjO+hSbTajrEbdxtkXQpBWEqdZKHi8dbgVkFc+uqNJ8ABPht3Ghf
	Z2G/XLopfqYvKIpWV2U8G3WE77spN/k1icqSaFzRAiYoL3AUWETDky2McSImmbDbtn0lyj91De4du
	4/o0mrWKKh7FhRhTfFuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO29t-0003T8-Vk; Mon, 13 Apr 2020 16:42:05 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO29n-0003Sc-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:42:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qrKdv++jsx8OM0O4tG4mY11gjkLsOySPBw/dhIBWmSs=; b=1c6JnPLhZU5U395oA+UHFuwtK
 x3DeQFCfg0KACWgpiS6U9cnTPix+Gny8iXPmqx/iXvCpc7D9E7y9cBmrPJZNzk6V8xd5imdQVj38x
 cNHUkO0x2eFfsOjduW8jwdvn53mej+NDPP5PDtzoG/HIj1TMcw585bHiy1aq88hl75A0CJbuYoU3T
 Lod0VZZzl4NiTbS/Kvyf/rKbm1X1nB9FXixWUot+K+r8FvzfHPZjOLtmTTISeztQYZvtrYJO19ty+
 0RGh55Gb9LcBEqc1xO5H4lWSl7efQmpti+GoTgCPm5hKEhfgE2fsN1gkmIAm24TCKhtO6ReN1EBEn
 6ClCceD7w==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:45434)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jO29V-0002u4-RS; Mon, 13 Apr 2020 17:41:42 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jO29K-00078R-Uv; Mon, 13 Apr 2020 17:41:30 +0100
Date: Mon, 13 Apr 2020 17:41:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v2 0/5] ARM: simplify handover from UEFI to decompressor
Message-ID: <20200413164130.GP25745@shell.armlinux.org.uk>
References: <20200413162135.14955-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413162135.14955-1-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_094159_343169_717FFB03 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-efi@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, Nicolas Pitre <nico@fluxnic.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 06:21:30PM +0200, Ard Biesheuvel wrote:
> The EFI stub in the ARM kernel runs in the context of the firmware, which
> means it runs with the caches and MMU on. Currently, we relocate the zImage
> so it appears in the first 128 MiB, disable the MMU and caches and invoke
> the decompressor via its ordinary entry point. However, since we can pass
> the base of DRAM directly, there is no need to relocate the zImage, which
> also means there is no need to disable and re-enable the caches and create
> new page tables etc.
> 
> This simplification is implemented by patch #5. Patches #1 - #4 are
> prerequisite changes to permit the decompressor to execute from the
> offset chosen by the UEFI firmware.

Why?  The decompressor is already fully relocatable, so this doesn't
explain why all these changes breaking up the single place where data
is stored into multiple smaller pieces, making the code more complex
is really necessary.  To me, this seems ot be change for change sake.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
