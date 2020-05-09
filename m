Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BF21CC3AD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 20:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Xx/vRqXt9M7fPpByT3FM/vzLaFM8hCWzoYKWprgLIo=; b=Fhdnrere3FRqfn
	LLWQMwPThzp1wqBtwn3lQ6FzMM/GLoF/0PWn1DXSrBswWuP91OhFIZK0S/Vqrj/eHKwqZ+epFuOy5
	2SiVt8HytCUKSIYjl1QKUaxMz516fE/0s7B4Bn+l/xiyUNScJwHG+hJEgQXtXMZTMo2yoLAKYNMPa
	Mudlw8ybWuDUmi0xwNHGDLwh3+CP7fhrZngkvWtS5PnvsfD5HF0n93coZNcmOVyN02lhxwHlNn/5D
	erq7ZjH8jlW+nkeDeE9HDdrCSKnqyFBL2NIsfGWoRpR3Bb4W6bI82zSqnShHKWIQR8ItKhS9ThooA
	Vn1CE1YPMYOZHyG1JKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXUBm-0005I9-MV; Sat, 09 May 2020 18:27:06 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXUBd-0005HO-Lv
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 18:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D7pTyze1SsxRJ8ouALBBELONpy4Mt2F8CjcAqQmMGAk=; b=0ZxtxvLwDVo6IiLVe36gQngnK
 MZgq6PkmUJx8lUfuHOf/zyfGz76TXSr5RuWyLAVWwjheV/GfnvRH2HAIM3s3x1KCoS9X9aalR1RXi
 fS26+me4+JVdX0M+CrtZtbIRuQ5ZThyg7znzx3unmXXrAdjFvL/pBzXs3QY+e7XGbCr6ysRjSFY4H
 0AgR7Zl1+5/SgFAz0/+lEDeRQTXHQ2IuEku2qk+HXFcPo39CVu69FkLxTdnzx6MvYzaAyLIpxk34V
 SYyo8aiLruPZ+XUapPBX1pIJiF1v9Y+eRpfx71FgbWP+5lQTwG31/UZjhhwaM5yFPuEaLQDkOyJbA
 EdDaLyeXw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58292)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jXUBV-0004oU-Bg; Sat, 09 May 2020 19:26:49 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jXUBT-00034O-9f; Sat, 09 May 2020 19:26:47 +0100
Date: Sat, 9 May 2020 19:26:47 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Amit Tomer <amittomer25@gmail.com>
Subject: Re: [PATCH v1 2/3] armv8: gpio: add gpio feature
Message-ID: <20200509182647.GI1551@shell.armlinux.org.uk>
References: <20200509103956.26038-3-hui.song_1@nxp.com>
 <20200509103956.26038-2-hui.song_1@nxp.com>
 <20200509153315.GR208718@lunn.ch>
 <20200509172724.GG1551@shell.armlinux.org.uk>
 <CABHD4K_tPkCherpY5zUtxV1wcKc=7aj3ayr9yxG-sLFZeMf3Dw@mail.gmail.com>
 <20200509181845.GH1551@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200509181845.GH1551@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_112657_717990_59AFE9B1 
X-CRM114-Status: GOOD (  18.32  )
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
Cc: Andrew Lunn <andrew@lunn.ch>, Hui Song <hui.song_1@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 09, 2020 at 07:18:45PM +0100, Russell King - ARM Linux admin wrote:
> On Sat, May 09, 2020 at 11:34:59PM +0530, Amit Tomer wrote:
> > > From what I can tell, these patches are not for the kernel.  The
> > > filenames don't match th kernel layout.
> > 
> > These files looks to be from U-boot, and must be intended for U-boot
> > as I see U-boot mailing address in recipient's address?
> 
> So why is it copied to:
> 
> devicetree@vger.kernel.org - a kernel mailing list
> linux-kernel@vger.kernel.org - the main kernel mailing list
> linux-gpio@vger.kernel.org - the gpio driver kernel mailing list
> linux-arm-kernel@lists.infradead.org - the ARM kernel mailing list
> 
> Given that it includes four kernel mailing lists (ok, devicetree
> may be argued to have a wider application), then I don't think the
> conclusion that "it's for u-boot, because there's _one_ u-boot
> mailing list in the recipients" is particularly obvious.
> 
> The author really needs to state that up front if they're sending
> it to a wide audeience, rather than leaving people to guess, thereby
> potentially wasting their time.
> 
> Not only did Andrew review the patch as if it were for the kernel,
> but I also wasted time on this as well when I double-took the
> ifdefs, and wanted to check the current driver in the kernel.

Oh, and... u-boot@linux.nxdi.nxp.com bounces because that domain is
not resolvable - I guess that is internal to NXP, and this patch
should have remained within NXP and not been posted publically.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
