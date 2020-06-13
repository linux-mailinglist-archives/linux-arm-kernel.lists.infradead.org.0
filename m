Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1BA1F83FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 17:41:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUV6wyAwkC7T9UR5fcJ6sVIFuaWvwbrFil5PfCScMbQ=; b=OvibEaW+rxWuZ4
	8FHw9N9Abdcua9NY+qMg9UNWsCz4p/Jym1J8qX5yJ5WshEPyihv0e7trJ77+GYk2rsPliRdb14BGY
	vCDsXwP81NI390JOs1EidDdS0WV4FxmF+o0aya1TLvXymBEfBlxGY5nItniXzrmSO6L66r7jbI3OF
	+tm6d1fnhW4dSC6+xgFQQuFB0N5UZWYIrylIRJ/S5fE4QX8w8nJP2bMj+XuGROzKHMUDoNISPIUET
	BWpnr95fey1p6QdbnzxAmQeFhpq3UfHSNKjpLoU+KJQlDyAXnJDjcDkTxS7zsjRlSH69pgXDVidrF
	ixDb3PuZ1GCRcc8E2RjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk8Hp-00040l-Pc; Sat, 13 Jun 2020 15:41:37 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk8Hi-000406-1g
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 15:41:31 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jk8HW-008ELI-J8; Sat, 13 Jun 2020 15:41:18 +0000
Date: Sat, 13 Jun 2020 16:41:18 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613154118.GH23230@ZenIV.linux.org.uk>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
 <20200613125126.GE23230@ZenIV.linux.org.uk>
 <20200613125615.GF23230@ZenIV.linux.org.uk>
 <20200613134236.GA4086@afzalpc>
 <20200613153102.GG23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613153102.GG23230@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_084130_087501_555DFF16 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 13, 2020 at 04:31:02PM +0100, Al Viro wrote:
> On Sat, Jun 13, 2020 at 07:12:36PM +0530, afzal mohammed wrote:
> > Hi,
> > 
> > On Sat, Jun 13, 2020 at 01:56:15PM +0100, Al Viro wrote:
> > 
> > > Incidentally, what about get_user()/put_user()?  _That_ is where it's
> > > going to really hurt...
> > 
> > All other uaccess routines are also planned to be added, posting only
> > copy_{from,to}_user() was to get early feedback (mentioned in the
> > cover letter)
> 
> Sure, but what I mean is that I'd expect the performance loss to be
> dominated by that, not by copy_from_user/copy_to_user on large amounts
> of data.  Especially on the loads like kernel builds - a lot of stat()
> and getdents() calls there.

To clarify: stat() means small copy_to_user(), getdents() - a mix of
put_user() and small copy_to_user().  I would be very surprised if it
does not hurt a lot.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
