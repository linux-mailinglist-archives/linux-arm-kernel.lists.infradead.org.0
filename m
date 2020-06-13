Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF741F834C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 14:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zubgu8N8LN5GCZqw8Sn+KfIUyWm0u+FWwizYfHnwEro=; b=MWRLxTlhVX+cE7
	c9GZtYKPar1pgYclLPCvcQIEpQRuBR7ST4siDVhGoOJY0m0kL7o+12X0WYPA8BBSo7CPAIwfCFlul
	eUhXmec0co8ht5opmKgayKBc13cIUcV26F5tHSC+oC77xNWLACSwtOroLPGfLliE7oYXqBCK+LcuY
	uRIPXFrP32Ir3t1iLuxunklP0Is6rF6JhaQQhlKSaQpeYbz7GoA0IeWdR9DNrGc/IYVfTNgqc0PjS
	r+X/9HAL/zNTCPxBRrCEYn+y1kFLOBV85RcQSNHDwcbWO+BjtqiXw6XBikBV6L/QvfsAphHYGFXVw
	5PzjasP2sP6SdzQRBFTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk5dl-0000Mx-JW; Sat, 13 Jun 2020 12:52:05 +0000
Received: from [2002:c35c:fd02::1] (helo=ZenIV.linux.org.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk5dc-0000Lz-EW
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 12:51:58 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jk5d8-008Ab6-23; Sat, 13 Jun 2020 12:51:26 +0000
Date: Sat, 13 Jun 2020 13:51:26 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [RFC 1/3] lib: copy_{from,to}_user using gup & kmap_atomic()
Message-ID: <20200613125126.GE23230@ZenIV.linux.org.uk>
References: <cover.1591885760.git.afzal.mohd.ma@gmail.com>
 <9e1de19f35e2d5e1d115c9ec3b7c3284b4a4e077.1591885760.git.afzal.mohd.ma@gmail.com>
 <CAK8P3a1XUJHC0kG_Qwh4D4AoxTgCL5ggHd=45yNSmzaYWLUWXw@mail.gmail.com>
 <20200612135538.GA13399@afzalpc>
 <CAK8P3a25ffh_2Y1xKDbkL2xU9nLpGbEq7j6xHdODEwUtavgdwA@mail.gmail.com>
 <20200613120432.GA5319@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200613120432.GA5319@afzalpc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_055156_488592_88756B20 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [2002:c35c:fd02:0:0:0:0:1 listed in] [wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Sat, Jun 13, 2020 at 05:34:32PM +0530, afzal mohammed wrote:

> Observation is that max. pages reaching copy_{from,to}_user() is 2,
> observed maximum of n (number of bytes) being 1 page size. i think C
> library cuts any size read, write to page size (if it exceeds) &
> invokes the system call. Max. pages reaching 2, happens when 'n'
> crosses page boundary, this has been observed w/ small size request
> as well w/ ones of exact page size (but not page aligned).
> 
> Even w/ dd of various size >4K, never is the number of pages required
> to be mapped going greater than 2 (even w/ 'dd' 'bs=1M')
> 
> i have a worry (don't know whether it is an unnecessary one): even
> if we improve performance w/ large copy sizes, it might end up in a
> sluggishness w.r.t user experience due to most (hence a high amount)
> of user copy calls being few bytes & there the penalty being higher.
> And benchmark would not be able to detect anything abnormal since
> usercopy are being tested on large sizes.
> 
> Quickly comparing boot-time on Beagle Bone White, boot time increases
> by only 4%, perhaps this worry is irrelevant, but just thought will
> put it across.

Do stat(2) of the same tmpfs file in a loop (on tmpfs, to eliminate
the filesystem playing silly buggers).  And I wouldn't expect anything
good there...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
