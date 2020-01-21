Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4A81442BD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRDyAAWguB0JW4T4nLztki7vNujSoEw9z5A3FBpHF5A=; b=rUy2bry8z11FOq
	4XLz/mhpLV0KMJEbLKe6q3OFu1hmEYWk8BeUcMgsBrt0pS8vAlZeLNi1mR9mgeXt6Q4V/ggOuuIBj
	q2gOIu5seYe4WbBL1G49btWk9wz7oDqRVOMLLuZDIu97e3fBaFwx5wEpsnl/ZoWNhLge3In55H2yz
	zIcNsBdIqSDVV8Y4G9HUagbj5bFdGuC7NAIpoBOUU6zvXOrkfQJuWnJ8madBv+4AB1xpMVZzfe1IK
	vjZxJ98jvH2LN1VjWC0yBfpcKVr62/xtE4oXctcxxguy3nAFnBdzL7I16mYebo2/f4RhXueNhu+ua
	hrcHwoGTKgucXYp0q1gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itwy5-0003wo-D4; Tue, 21 Jan 2020 17:05:33 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itwxr-0003w0-KV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HOkuQLxE1IM33Ws1DA0iCvA3nHSpKBt03fizcakeBVI=; b=lqWja4lTgiHFf7h/oDfSYwCdn
 ffE1FbqEvVVa0ZyuzTEB7L+9H9DVIFJoLjBxGAXw4ry7Xhq5p1/2yEQ8XD4RiFRYDjvygjcfhzVIx
 FytKHCkFcdu4WuDthrdhSBR8BbUTfCXExC/rH+yigGw/Rwr4gQ4cqWDmq1AnC+PHJsyDEMyRaBUpb
 K4M6JwWJ6rdSQGiCGVjD00NhBrp7mCIU66sDbHl0dwGSxPeJZGXQXFZv5MKwRbi7BROmZcoMbI+rd
 glFn2AvJ9ISNYvF2qD7Oghf3xAJHZdEE2ptzb/++AM9fOjRTiqpAGbpv6pXA6GYrQMNTkHeTOP1uU
 MECN0fQgw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:37252)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itwxk-00062b-CI; Tue, 21 Jan 2020 17:05:12 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itwxj-0003zR-Nj; Tue, 21 Jan 2020 17:05:11 +0000
Date: Tue, 21 Jan 2020 17:05:11 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Qais Yousef <qais.yousef@arm.com>
Subject: Re: [PATCH v2 03/14] arm: arm64: Don't use disable_nonboot_cpus()
Message-ID: <20200121170511.GI25745@shell.armlinux.org.uk>
References: <20191125112754.25223-1-qais.yousef@arm.com>
 <20191125112754.25223-4-qais.yousef@arm.com>
 <20200121165030.xksivf6mrhsaynq2@e107158-lin.cambridge.arm.com>
 <20200121165321.GH25745@shell.armlinux.org.uk>
 <20200121165809.3kk3xauky4vjp5ni@e107158-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200121165809.3kk3xauky4vjp5ni@e107158-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_090519_728818_485D97EB 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 04:58:09PM +0000, Qais Yousef wrote:
> On 01/21/20 16:53, Russell King - ARM Linux admin wrote:
> > On Tue, Jan 21, 2020 at 04:50:31PM +0000, Qais Yousef wrote:
> > > On 11/25/19 11:27, Qais Yousef wrote:
> > > > disable_nonboot_cpus() is not safe to use when doing machine_down(),
> > > > because it relies on freeze_secondary_cpus() which in return is
> > > > a suspend/resume related freeze and could abort if the logic detects any
> > > > pending activities that can prevent finishing the offlining process.
> > > > 
> > > > Beside disable_nonboot_cpus() is dependent on CONFIG_PM_SLEEP_SMP which
> > > > is an othogonal config to rely on to ensure this function works
> > > > correctly.
> > > > 
> > > > Signed-off-by: Qais Yousef <qais.yousef@arm.com>
> > > > CC: Russell King <linux@armlinux.org.uk>
> > > > CC: Catalin Marinas <catalin.marinas@arm.com>
> > > > CC: Will Deacon <will@kernel.org>
> > > > CC: linux-arm-kernel@lists.infradead.org
> > > > CC: linux-kernel@vger.kernel.org
> > > > ---
> > > 
> > > Ping :)
> > > 
> > > I'm missing ACKs on this patch and patch 4 for arm64. Hopefully none should be
> > > controversial.
> > 
> > ARM and ARM64 are maintained separately, so you can't submit a single
> > patch covering both.  Sorry.
> 
> Sure I'd be happy to split.
> 
> It was just a single line change and I expected Thomas to pick the whole series
> up, so I didn't think there'd be an issue in combining them up since they're
> identical.
> 
> Do I take it you have no objection to the code change itself and just would
> like to see this split up?

I do have an objection to the new function you're introducing in patch
1.  See my reply to that.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
