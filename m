Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66043157FC1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 17:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kokkFDqiAQhmm1xTkxeydzhcf1H/HMfsjnQDLVQmqQs=; b=OldbQQmTDRTtDW
	+b34mGlgr/QIeVWrEA1jP3UdlnNYzdAIK78Lf6zynpeYLcKbJOzK/iF0oyJlFY60B9isCDkIflfeI
	CrxyGvxo7CytdAiZqxMRTRENzADLUh+zT0QWMHXPpv1ggJtmZDG5Nl8bXo5i0Am9x/+8EipCgFjlo
	Dt+bZ0/xyHvptEFYA0hD4oOHrs6QaVNz8bXpvYdOwIh6YTORHNdC3h1gH/2+XIuYo+5LtA7+KgifR
	2xpcbXVPSrDMLi6MtzFLygcpgTNsS+D5HY16CbH9Ym5geYjjqKo8XpICuOD7wd+islZwHcfA57195
	0VpOumtemJVHHLYXeZxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Btc-00086b-Mf; Mon, 10 Feb 2020 16:26:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1BtU-00085z-Qk
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 16:26:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1fPuznx80kr/QIz4cxyOXu11QJcYVh+YF00pWbNuOIk=; b=FstRaoBf6no6s/vYtSkYwGZlB
 eiWnEiHsBTp892ci9KfZJHO16p+LpXQNxoQOngCjnoCvMTR0C2cnh0PLd1/dtkkpop4F55R+R123P
 ice2lm747RUJjkLn9hg7ChlsRNltNjcnTqZLEZ/K1NFQlBTtG8LhSXjzw/IBXXy3ISfs+v0ziZCMr
 p4YXe8coAtG2cq3QmDmOFsCH9UyDFB7nWsETT7ov+HQhQ2cNALP/HQqMuyChMpRs1CpFJaDByQKQj
 4eQe3yHvPOAD9p8Vsq+Y0+WCHz/QHC9GlEj02TAHdt3OqDYDx+jgYHIr5+v00a7F1Hh8iA5pQ80tV
 eyoaZM4qQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38534)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1BtO-0007mo-Kh; Mon, 10 Feb 2020 16:26:38 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1BtN-00081o-CD; Mon, 10 Feb 2020 16:26:37 +0000
Date: Mon, 10 Feb 2020 16:26:37 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200210162637.GG25745@shell.armlinux.org.uk>
References: <20200210141324.21090-1-maz@kernel.org>
 <20200210162523.GF25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210162523.GF25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_082644_878611_812D88F3 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 04:25:23PM +0000, Russell King - ARM Linux admin wrote:
> On Mon, Feb 10, 2020 at 02:13:19PM +0000, Marc Zyngier wrote:
> > KVM/arm was merged just over 7 years ago, and has lived a very quiet
> > life so far. It mostly works if you're prepared to deal with its
> > limitations, it has been a good prototype for the arm64 version,
> > but it suffers a few problems:
> > 
> > - It is incomplete (no debug support, no PMU)
> > - It hasn't followed any of the architectural evolutions
> > - It has zero users (I don't count myself here)
> > - It is more and more getting in the way of new arm64 developments
> > 
> > So here it is: unless someone screams and shows that they rely on
> > KVM/arm to be maintained upsteam, I'll remove 32bit host support
> > form the tree. One of the reasons that makes me confident nobody is
> > using it is that I never receive *any* bug report. Yes, it is perfect.
> > But if you depend on KVM/arm being available in mainline, please shout.
> 
> It is only very recently that 64-bit ARM has really started to filter
> down to people like me, and people like me have setup systems which
> use 32-bit VMs under 64-bit hosts (about a year ago now.)  In fact,
> everything that you presently see for the *.armlinux.org.uk domain now
> runs inside several 32-bit ARM VMs under a 64-bit ARM host.
> 
> It isn't perfect; I've found issues with qemu and libvirt.  One example
> is the rather sub-standard RTC implementation, which means if you
> use libvirt's managesave across a host reboot, the guests idea of
> time-of-day freezes while it's asleep, and resumes when the guest is
> reloaded - resulting in the guests time-of-day being rather wrong,
> sometimes to the point that NTP gives up.  That becomes very painful
> if you use kerberos authentication, where time-of-day is important.
> 
> So, just because you haven't received any bug reports doesn't mean
> there aren't any users; there certainly are, there are problems,
> but the problems are in places other than the kernel.

... argh, I see, you're not removing 32-bit guest on 64-bit.  Ignore
the above then.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
