Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D601189E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:33:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vm3rZEwegMd1vAVAR2qEt57OkmizpRrnvfGG4G8Gkl0=; b=A+r7etXMoOshiU
	o3zP2nTr8WiHJ+XmBNnKu4I76CG4mo7dx6NfjILr3uF2Fp/xXB7GtkNKGEZ83QSxF2vu/ekJkDmBu
	UNUtKzthWji4UWzigulTD38tqkpwTi5OkHd0c/0Us0AnQPx1xzb5YTQqdMJqdMiCq5rx+oougZ9zB
	qHHgcBZUNrXcLzIc57NHfL4FAHOPV1teSys7ggm88KF1gRNR9mKO0yW8vjBAZ11p2ASLAOYWTWCY3
	tjinC0e6ri5K7YTDoGOuTbJ5GkJeC0EVeYgIofi4dkRqFUnNagZnX+ye78zA3uDkcl8Fxde8CJa8z
	Gqxa1A8GDLBMR/DcBaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefdg-0001gm-Df; Tue, 10 Dec 2019 13:33:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefdX-0001fz-LO
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:33:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2B2D2B1C2;
 Tue, 10 Dec 2019 13:33:08 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Date: Tue, 10 Dec 2019 14:33:07 +0100
Message-ID: <11195456.EmMzWPVPDU@skinner.arch.suse.de>
In-Reply-To: <20191209173804.GD7489@willie-the-truck>
References: <20191206162421.15050-1-trenn@suse.de>
 <25032400.G9DUGnJgnc@skinner.arch.suse.de>
 <20191209173804.GD7489@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_053311_843759_9B1C1D3A 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Felix Schnizlein <fschnizlein@suse.de>,
 Felix Schnizlein <fschnizlein@suse.com>, gregkh@linuxfoundation.org,
 x86@kernel.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, December 9, 2019 6:38:05 PM CET Will Deacon wrote:
> On Mon, Dec 09, 2019 at 12:28:44PM +0100, Thomas Renninger wrote:
> > On Monday, December 9, 2019 11:31:11 AM CET Will Deacon wrote:
> > > On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> > > > From: Felix Schnizlein <fschnizlein@suse.de>
> > > > 
> > > > Export all information from /proc/cpuinfo to sysfs:
> > > > implementer, architecture, variant, part, revision,
> > > > bogomips and flags are exported.
> > > > 
> > > > Example:
> > > > /sys/devices/system/cpu/cpu1/info/:[0]# head *
> > 
> > ...
> > 
> > > > ==> flags <==
> > > > fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> > 
> > ...
> > 
> > > I don't understand why we need this on arm64

Again: proc is moving to sys.
You probably export feature flags in /proc/cpuinfo for a good reason.
So where in sysfs should this show up?

> Even if we exposed them via sysfs, existing
> software will continue to grep them out of /proc/cpuinfo because it's more
> reliable and new software would still be encouraged to use either the HWCAPs
> directly or, even better, our CPUID (MRS) emulation.

Ok, so /proc/cpuinfo
Features:

is deprecated on arm64. Is that correct?
Then it would indeed not make sense to port it/anything to sys.
 
It is this comment you are referring to:

arch/arm64/kernel/cpuinfo.c
                 * Dump out the common processor features in a single line.
                 * Userspace should read the hwcaps with getauxval(AT_HWCAP)
                 * rather than attempting to parse this, but there's a body of
                 * software which does already (at least for 32-bit).

Then let's shorten this.
Sorry for keep digging/asking.

Felix made this up rather neat, so that other archs can implement to expose 
sysfs CPU info easy and consistent.
While x86 also ported parts of cpuinfo, e.g. microcode version, most general
info is still missing in sysfs.

If I find the time, I may check for other archs like ppc64le or s390x to find
data which still should show up in sysfs and could then be put in the same
directory/file structure.

ARM people may still want to make use of this at some point of time, if 
appropriate. I'll drop patch 3/3.

Thanks for explaining me the ARM details,

   Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
