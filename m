Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6793118D7D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=basjecnRELxDb/1pGNpUhZZMs9BUMIKHObQedt2YSCw=; b=V33Gm0yNJ3Grs/
	1TKv8afrCUE5LHAWsmgoGMA3bBn49DtuodN1B3284o2JouHplLrcQujI2hIHFeTsW4KAO4hb2c8V4
	em44luQ8jdzzR5H1GiCmLkZfZsHnrA2NHCM8wPrOJHYZmne0+Fs/07whA/LF/TU5NjnT05BgsxJFz
	MGOXEGdBAE8ySCXZlcfNE7IXZeuraAB3BPhYCI1xBJCE6w5t/1u6s8i0UkEDzSQ9SpV+21A+1FNeh
	kyYhY4C8tWXDRcUYL0GvmU9wm+3P17LVBzBN2V1u596T+Mv1HvK04PJkxFimqKPGyTgoXO/AM78HX
	Xhe+nXoZhiyUWpwyYLng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieiJU-0005PJ-CY; Tue, 10 Dec 2019 16:24:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiJL-0005OY-W8
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:24:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3B3C9AC2F;
 Tue, 10 Dec 2019 16:24:30 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Date: Tue, 10 Dec 2019 17:24:29 +0100
Message-ID: <2363489.ZvMXcgbkLu@skinner.arch.suse.de>
In-Reply-To: <20191210144737.GB3975980@kroah.com>
References: <20191206162421.15050-1-trenn@suse.de>
 <11195456.EmMzWPVPDU@skinner.arch.suse.de>
 <20191210144737.GB3975980@kroah.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_082432_176400_5DFEDA46 
X-CRM114-Status: GOOD (  13.27  )
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
 Felix Schnizlein <fschnizlein@suse.com>, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, December 10, 2019 3:47:37 PM CET Greg KH wrote:
> On Tue, Dec 10, 2019 at 02:33:07PM +0100, Thomas Renninger wrote:
> > On Monday, December 9, 2019 6:38:05 PM CET Will Deacon wrote:
> > > On Mon, Dec 09, 2019 at 12:28:44PM +0100, Thomas Renninger wrote:
> > > > On Monday, December 9, 2019 11:31:11 AM CET Will Deacon wrote:
> > > > > On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> > > > > > From: Felix Schnizlein <fschnizlein@suse.de>
> > > > > > 
> > > > > > Export all information from /proc/cpuinfo to sysfs:
> > > > > > implementer, architecture, variant, part, revision,
> > > > > > bogomips and flags are exported.
> > > > > > 
> > > > > > Example:
> > > > > > /sys/devices/system/cpu/cpu1/info/:[0]# head *
> > > > 
> > > > ...
> > > > 
> > > > > > ==> flags <==
> > > > > > fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
> > > > 
> > > > ...
> > > > 
> > > > > I don't understand why we need this on arm64
> > 
> > Again: proc is moving to sys.
> 
> No.  New stuff is to be added to /sys/, don't add new things to /proc
> unless it deals with processes.
> 
> There is no mass-migration of existing /proc files to sysfs for no good
> reason.
> 
> > You probably export feature flags in /proc/cpuinfo for a good reason.
> > So where in sysfs should this show up?
> 
> Why does it have to live in sysfs if it is already in /proc and parsed
> properly by tools?

Parsing /proc/cpuinfo is the best example why we have sysfs...
Most important things have already been ported:

microcode       : 0x10
cat /sys/devices/system/cpu/cpu1/microcode/version
0x10

physical id     : 0
siblings        : 8
core id         : 1
cpu cores       : 4
...
/sys/devices/system/cpu/cpu1/topology/

clflush size    : 64
cache_alignment : 64
...
/sys/devices/system/cpu/cpu1/cache/


Only missing important info which still is needed is family/model/stepping, 
name, bugs and flags
cpufreq also got ported to sysfs quite some time ago already.

I am aware that /proc/cpuinfo won't vanish...
...the next decade. Still I am confident I will still see this.

Still relevant info which is accessed by (newly written) userspace tools 
should read out info via sysfs.

Beside microcode, topology, cache, cpufreq,...
info, there now is also family, model, stepping, bugs, flags and name

There rest is (from my perspective) really old ugly stuff and not needed 
anymore by recent tools.


   Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
