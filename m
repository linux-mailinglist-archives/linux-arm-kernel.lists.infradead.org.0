Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E501FFDB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 00:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EcufyR5yPrX5y+QBfMXoLuH/MswJh9DXxwZ9ru0GQw=; b=KW5UkrvM2F9Oh7
	/0Wpil5LTjrHIQmROQM/SU8+pgyCBXUw+JzyCKQZQqJZnXANuFZJbTp4UtxDDBpe2oBmM4LrFTF8H
	JmmPmIqVbV15MKN9uSpU2UVbYVyrr05LbWQF4TdHMHdUI1GPg+h7Y9qxtiSCVrTwNp/4bpzYq3bGo
	9E81BwrF/knhrF4rTWPOMCSkKNxzipnZLL4mi/Ix5DC+ZDVIiluByOGTqPJnnAsSB1pV3Lc3g8hQe
	8SXCJsS+CnybgB6CJmoKpUzVtrb1qIqVNWo2+Y63IwrQ0810sc5a9BCI32fpdJ91Lw8Qg7oy87Zth
	FxDSfKqHGtM+X4tTQaCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm2g3-0008OW-TN; Thu, 18 Jun 2020 22:06:31 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm2fu-0005Qe-K4
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 22:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UYTpKINys5q7UogH0MrXFzt2ML29Bof5pSVpOvGOBQ8=; b=ncAx5x+1YGICOfIWpHwKkomK9
 bND/1aWxxt+dgshqhYPBXFpArncVqbfSpKhYYKFMqXYTUq0weEfJoNO5xoajbmF4Xw+JwLx2Lsndl
 lkxwRGIwqOX+S0+HY62LFPEY4JqWQSBBmMpTlntAoPkg98Uqv8GlRl/NtR+gU2yTmffokTIGloIL/
 mAOXdyc6hA1UGOlLD82lVTlMf0GMRaskW9nh19t9yPzq5DZwQfNKKSKMwyZ5FlCy4QOm+kq/mLHkY
 emSGuEZAh2W/Vt4zzQxh2kQqcLaryFyoBGCBHXVV6oquxU8/SBSVCTuoyIdz6Uwhb94XgFmkpy/Vb
 auvbi4H8A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:58806)
 by pandora.armlinux.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jm2cs-0005cS-G5; Thu, 18 Jun 2020 23:03:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jm2cq-00052r-7D; Thu, 18 Jun 2020 23:03:12 +0100
Date: Thu, 18 Jun 2020 23:03:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
Message-ID: <20200618220312.GK1551@shell.armlinux.org.uk>
References: <20200616223633.73971-1-nhuck@google.com>
 <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+icZUW4Jv7589yCU55+C-P0=B0ztzvsOZ9TEMcTt4vKjFU1dA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_150622_654694_4B7F033E 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
 vincent.whitchurch@axis.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 06:23:48AM +0200, Sedat Dilek wrote:
> On Wed, Jun 17, 2020 at 12:36 AM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Since clang does not push pc and sp in function prologues, the current
> > implementation of unwind_frame does not work. By using the previous
> > frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> > kernels.
> >
> > The bounds check on next frame pointer must be changed as well since
> > there are 8 less bytes between frames.
> >
> > This fixes /proc/<pid>/stack.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/912
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> 
> Just a small nit.
> 
> Please label your patch with: "arm/stacktrace: ..." or "arm: stacktrace: ..."

Convention is to use "ARM: ..." for arch/arm.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
