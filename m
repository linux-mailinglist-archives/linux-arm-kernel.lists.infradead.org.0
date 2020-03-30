Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D29197D32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 15:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zlXyqiuSiafJNbYgfpQ2MUeqVLeQZw8QhQG5b7sXO0=; b=KiPBH/Kq1Bf1gc
	POvXr0etldWuSdALLD/u1wNQdz+Fu6NgHzvYvOlFeeanxgOx6qvrJYp1rwcDNfK/SpYvrwB8I/S4y
	bcAHkIdUvdAPoR1iH1DQl1srQynozrQIR7Z3dQJcNxRbIeBiFLQqR+LXQ3fpyLVVtDN6gSALo+ZRw
	7RZqhxIYyxaiMfSgv/j6z4XZ/4ihOLov2/DQ7+1O8U7DwGDWUmzxM1k3XwR4sx4sE9r1h3IY2jVGj
	0dA2+Xi32PiGKVgiYSbAt0YYf7IRntlhqRRfvq9KWnaaStFw2w7q5oQ3ZiRy3CnAj78Xtc3rk8r4r
	8MT4yvbqWRWSuzV2vD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIugS-0007zj-WC; Mon, 30 Mar 2020 13:42:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIugJ-0007yx-7s
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 13:42:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE23F20716;
 Mon, 30 Mar 2020 13:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585575742;
 bh=K1ockVl39gLdCpYbJ/oumXMVl7UViARe6VaNnMLxqQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y+WW+flNgwBuY4vM8P2peunT13HsbPj9+bVg64Dt3LiH5tYdg0HURnKiVRM2WEUip
 f0QlWIfFPWVK5vDpokgaphtYQchufagDj5lljP672VWezTcGBAVZHHRp5HGnsTkRbL
 iPJDJaaWrbYP5EfzjYyIS3hdjUDuVhrkQ/ftk3EY=
Date: Mon, 30 Mar 2020 14:42:18 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: hw_breakpoint: don't clear debug registers in
 halt mode
Message-ID: <20200330134218.GB10633@willie-the-truck>
References: <20200328083209.21793-1-tingwei@codeaurora.org>
 <20200330123946.GH1309@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330123946.GH1309@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_064223_298103_5DC414E3 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org, Tingwei Zhang <tingwei@codeaurora.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 01:39:46PM +0100, Mark Rutland wrote:
> On Sat, Mar 28, 2020 at 04:32:09PM +0800, Tingwei Zhang wrote:
> > If external debugger sets a breakpoint for one Kernel function
> > when device is in bootloader mode and loads Kernel, this breakpoint
> > will be wiped out in hw_breakpoint_reset(). To fix this, check
> > MDSCR_EL1.HDE in hw_breakpoint_reset(). When MDSCR_EL1.HDE is
> > 0b1, halting debug is enabled. Don't reset debug registers in this case.
> 
> I don't think this is sufficient, because the kernel can still
> subsequently mess with breakpoints, and the HW debugger might not be
> attached at this point in time anyhow.
> 
> I reckon this should hang off the existing "nodebumon" command line
> option, and we shouldn't use HW breakpoints at all when that is passed.
> Then you can pass that to prevent the kernel stomping on the external
> debugger.
> 
> Will, thoughts?

I was going to suggest the same thing, although we will also need to take
care to reset the registers if "nodebugmon" is toggled at runtime via the
"debug_enabled" file in debugfs.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
