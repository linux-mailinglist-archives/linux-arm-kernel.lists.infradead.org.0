Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812DD1BF61B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsrET7P9DOn1f5I8NT/E6UYzFtPp/6HvF9eTvxP3vPQ=; b=hjDnK+yC5cpiy1
	B3GZPfx7zQk0O9ah6wncvD5MLKGCKadxE33ELKb18dpkIpu1fwak0U8ynCbqdI0MpBfEGjAXfPFWy
	d7ghb1DeurKK0XhFbUhbe208s55/YT195Rqqw98CbN/dCiuP2HM4YAg7JcLQLirFES1b9JJqtjB9d
	Vaa2YQU9YexAHvy8cZqCP41vxzzNoA0GDDxGOyo1JPNZ24BO1amg7pSb9z78TNKLTfTZf1RRRPpXl
	xmmWkMFvzm8eZYTcxXgiHXF/nG58lRVBNO4txYH/Eg9NPy6cHWJNfVgXM8OTO5qazd5nluZIuThFq
	/fCXrQJd3BzECFZfl75w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU710-0002l0-Cr; Thu, 30 Apr 2020 11:06:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU70q-0002jy-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:05:53 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE8F820757;
 Thu, 30 Apr 2020 11:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588244752;
 bh=6jKF+kaJYEAuGJMdGbCPBw68sTqu+RmyzxCxhnuhmvI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WkdFufMbVZ/N23vpH07nILsfNK0A9QDBi9VLFXYsHhWAnE/tEE5gdt6m49+BiE5j5
 6fc7f31AM/H50X4i9O7irenBwNsEb9XRBv+RltLKOsRQWcPYDTN783BXC4jhf6udSu
 qK8g4iTd778eshF96naHCjz7qdnmNa6elmwsEJfs=
Date: Thu, 30 Apr 2020 12:05:47 +0100
From: Will Deacon <will@kernel.org>
To: Amit Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
Message-ID: <20200430110547.GJ19932@willie-the-truck>
References: <1588149371-20310-1-git-send-email-amit.kachhap@arm.com>
 <20200429101839.GB28631@C02TD0UTHF1T.local>
 <ee659a51-4719-ff17-6d3d-4fc42504111e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee659a51-4719-ff17-6d3d-4fc42504111e@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_040552_750156_0A170EC5 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 04:30:57PM +0530, Amit Kachhap wrote:
> On 4/29/20 3:48 PM, Mark Rutland wrote:
> > On Wed, Apr 29, 2020 at 02:06:10PM +0530, Amit Daniel Kachhap wrote:
> > > Compilers are optimized to not create the frame record for the leaf
> > > function and hence lr is not signed and stored in the stack. Thus the leaf
> > > functions cannot be used for ROP gadget attack.
> > 
> > IIUC Will's point on the last posting was that leaf functions can be
> > used as a restricted ROP gadget, where the LR isn't controlled via the
> > stack.
> > 
> > e.g. you might have a gadget that does something like:
> > 
> > <gadget>:
> > 	LDP	x0, x1, [SP], #16
> > 	STR	x0, [x1]
> > 	RET				// LR == <gadget>
> > 
> > ... and if the LR had previously been set up to point to gadget, it
> > would return recursively, performing a sequence of arbitrary stores.
> > With an AUT, it would fail after the first store.
> > 
> > That does rely on already subverting control flow (probably via a
> > forward-edge BR where we don't have BTI), and so maybe we've already
> > lost in practical terms, but there is at least some possibility of a
> > gadget that AUT would catch here. There's some nuance to capture in the
> > commit message for that.
> 
> I had some offline discussion with Daniel Kiss about this patch. I am
> stopping this patch work now as there are some use case of ptrauth
> instructions in leaf functions. This may be re-visited later with precise
> runtime data if needed.

Ok, thanks for letting us know.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
