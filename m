Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC096DAD54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:51:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXpOjzzbjyerQRUwL6KsT/0v1+eS0nxnx64LxoUG4BE=; b=OtlDq3LtAtDoS+
	KMhn3MVoXCV2rIMwfLJVtrOMPqmWPdXW6BShZwF40XIU2plkdmKIo++x1pK7cG6gmxzm8AXi0Tfkb
	Lu9Tf4owwGmNJdzRF1xyNG5twycRNmvF/SX06d/B1P5cde/bX8t/M3uYZWx6asPc23MV0tCcJSt1T
	WgalAs964uBNSa69UBsSWx9mBgDbFH1MFn9WU1psOH8ljuQdU+R5DYCyCTSb7VvHau/MztvpTRC1J
	gzAjbMCO05GtYylVGDbkP3vte/92rPAe3n4eIG5AKKQlXXKLWUhdYFhOxlLHu4AiVPDqPwqt5XM2B
	HcUr9ip2Bne/ysT6zRhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5FG-0007YZ-6J; Thu, 17 Oct 2019 12:51:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Ce-0004N9-W2
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yTfU4A9K9MQqG1gZw+RDrdhpdkDuEJ6eGTthGFYjG+A=; b=CurTdMM8g/jX5VBwd0UhOCOLO
 Wkr5rsh4n+bunBxYXQSs8Bm9iiThe7mwXaUgW8PDVe4eRiR1gzG73zgUFu/gj3pPGu1YGrK9tfZHy
 pzfL8Fsq/GiV2zeO1vmMu3rnJ29ZxEY4lZlQN4ZNWmicWxiaYSl0f203rbr2tkIu22lFa1ry5dKIX
 yne14OrCj6VQHBcKJpdJs+ZOQB+oDVtsQYs1qxcFSKz+Dl1p0aRFbt74s2uoQp+78dzapviEf882L
 Gb2PcKvvq6KAMJ/jZfPez2rik85Ddr0JJUve+C355dPPDapuMRW6y53JNtVlG6i6sgN2N7iJU5pKo
 romEAT4Qg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:55528)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iL5CS-0000pi-VL; Thu, 17 Oct 2019 13:48:17 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iL5CR-0008DC-7e; Thu, 17 Oct 2019 13:48:15 +0100
Date: Thu, 17 Oct 2019 13:48:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [RFC PATCH 0/3] watchdog servicing during decompression
Message-ID: <20191017124815.GE25745@shell.armlinux.org.uk>
References: <20191017114906.30302-1-linux@rasmusvillemoes.dk>
 <20191017120310.GD25745@shell.armlinux.org.uk>
 <c4b6805b-67fe-6bce-1777-2d81e96b4ac9@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c4b6805b-67fe-6bce-1777-2d81e96b4ac9@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054829_081406_802C1B15 
X-CRM114-Status: GOOD (  24.30  )
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
Cc: Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, kernel@pengutronix.de,
 Andrew Morton <akpm@linux-foundation.org>, Gao Xiang <xiang@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 02:34:52PM +0200, Rasmus Villemoes wrote:
> On 17/10/2019 14.03, Russell King - ARM Linux admin wrote:
> > We used to have this on ARM - it was called from the decompressor
> > code via an arch_decomp_wdog() hook.
> > 
> > That code got removed because it is entirely unsuitable for a multi-
> > platform kernel.  This looks like it takes an address for the watchdog
> > from the Kconfig, and builds that into the decompressor, making the
> > decompressor specific to that board or platform.
> > 
> > I'm not sure distros are going to like that given where we are with
> > multiplatform kernels.
> 
> This is definitely not for multiplatform kernels or general distros,
> it's for kernels that are built as part of a BSP for a specific board -
> hence the "Say N unless you know you need this.".
> 
> I didn't know it used to exist. But I do know that something like this
> is carried out-of-tree for lots of boards, so I thought I'd try to get
> upstream support.

Sorry, it does still exist, just been moved around a bit.

See lib/inflate.c:

STATIC int INIT inflate(void)
{
...
#ifdef ARCH_HAS_DECOMP_WDOG
    arch_decomp_wdog();
#endif

Given that it still exists, maybe this hook name should be used for
this same issue in the LZ4 code?

> The first two patches, or something like them, would be nice on their
> own, as that would minimize the conflicts when forward-porting the
> board-specific patch. But such a half-implemented feature that requires
> out-of-tree patches to actually do anything useful of course won't fly.
> 
> I'm not really a big fan of the third patch, even though it does work
> for all the cases I've encountered so far - I'm sure there would be
> boards where a much more complicated solution would be needed. Another
> method I thought of was to just supply a __weak no-op
> decompress_keepalive(), and then have a config option to point at an
> extra object file to link into the compressed/vmlinux (similar to the
> initramfs_source option that also points to some external resource).
> 
> But if the mainline kernel doesn't want anything like this
> re-introduced, that's also fine, that just means a bit of job security.

Well, we'll see whether the arm-soc people have anything to add...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
