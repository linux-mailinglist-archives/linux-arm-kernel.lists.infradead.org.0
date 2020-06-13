Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AED091F8364
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 15:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Ohcg+3YKmOnvkS/e+Vyyv72xom3pwcNlda7QTyXm3Y=; b=lK8rQ864MheBjt
	gnX9/XAZP7G0LGwu7Q+j/hfONMrq2F6HEreAp7BJg6rQEKtMB/vLDTLUuPi1se4rJ+6rCaPVeTtRa
	MniVtPXNMgnbIdzO/I/01mytzKgZfwWbR9NCWUZ2LVfFVy/Z02HyTQqywVuv0r6WcF6YuxAfhS/9g
	VQwje8Mdc/ZS10765W6HoA/9XCTTCWWsTsuE8wXUjYGNMrxakZLWXXvwE/GDtESvYfOEEwUU8rVC0
	xzwKE0XXmNwR/iDEw/CuskYbhQmI144R2e5XRosRM+qU8+f47JF8wfx6AC8LNnH7ud6IspdEaeMsF
	NKteI9ZmCe4/lXAP8GhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk63T-0005iN-7h; Sat, 13 Jun 2020 13:18:39 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:32c8:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk63L-0005cV-EY
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 13:18:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CTgyUwh6cSz/c+OXjJ8SE3+Fh1Nd5s6JFCqdOiRWMDc=; b=ja4aLfUrZeDtb/Q+hi9fniI0n
 oDUic4OelYU8+sBynGEk2HzV/Ov9l9/uO5FV6IoNCS3f7i1NHN20jS6OCla7IX1f3zbLTCvXjFunV
 eyqoKi8AgqM/krztw6qZhGDJDwzLqzpn0hFEQhvsqiui8XVEzhR4KHuj9QlmEiw8Z898MGuh+MYzO
 yAC1qt7vE2TLy7JQfPmzmoOhZdsEWNiB4+b1SXN3t+TexgESaR4MwHPpxaTVOTD5tP45yoUWH7WLc
 m/5tNdo5HtvwcjOo+pCYohEuwEpbvpuiMGtwDBZ7cURslG8zRUeKZpukT5nXqjH23RafeSgA2QC0s
 Kov0DeIXA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:51576)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jk60y-0005SM-Pj; Sat, 13 Jun 2020 14:16:08 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jk60m-0007LO-M9; Sat, 13 Jun 2020 14:15:52 +0100
Date: Sat, 13 Jun 2020 14:15:52 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613131552.GL1551@shell.armlinux.org.uk>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613120432.GA5319@afzalpc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_061831_487994_44BB0AB1 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 05:34:32PM +0530, afzal mohammed wrote:
> Hi,
> 
> On Fri, Jun 12, 2020 at 10:07:28PM +0200, Arnd Bergmann wrote:
> 
> > I think a lot
> > of usercopy calls are only for a few bytes, though this is of course
> > highly workload dependent and you might only care about the large
> > ones.
> 
> Observation is that max. pages reaching copy_{from,to}_user() is 2,
> observed maximum of n (number of bytes) being 1 page size. i think C
> library cuts any size read, write to page size (if it exceeds) &
> invokes the system call. Max. pages reaching 2, happens when 'n'
> crosses page boundary, this has been observed w/ small size request
> as well w/ ones of exact page size (but not page aligned).

You can't make that assumption about read(2).  stdio in the C library
may read a page size of data at a time, but programs are allowed to
call read(2) directly, and the C library will pass such a call straight
through to the kernel.  So, if userspace requests a 16k read via
read(2), then read(2) will be invoked covering 16k.

As an extreme case, for example:

$ strace -e read dd if=/dev/zero of=/dev/null bs=1048576 count=1
read(0, "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0"..., 1048576) = 1048576

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
