Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD045116C49
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 12:29:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNBKC+zubXw5iDJtmAN/oE7e36Qzw+9iEgqFTk2B/g0=; b=XNPtUo9z2izKpY
	oS9jnkGNunC6eSc8aEgkaygS3adT38Gx2KlDCl7U8jZWgRxC4LGutyNkbZcfsQI181AG6to3VVMVx
	2otjPzk8HiB4HOpl+vCyEMB+h2t6zWxe+kdZ6+BNLE0FigXRUQsuHaqTgpEb9J1vgzy8ygXqSafBa
	cXtVRBVDCV65BhXMGPfLSLnSfpjZmt2ig2GX87jojQKHmcASRESBKj71kFD7VH+P0hi02uVKGwkgu
	eOyMXnTfPS8IHB+3MBRRDgg2E+oP2+uAkqYSfcGtsqNSE/6emDUjql80SdVN+jSCiER6XYzBMxh56
	AMAYg8zXzWIi7Ony+Zuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieHDk-0001MA-AF; Mon, 09 Dec 2019 11:28:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieHDc-0001LN-Bm
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 11:28:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E51C6B1A7;
 Mon,  9 Dec 2019 11:28:44 +0000 (UTC)
From: Thomas Renninger <trenn@suse.de>
To: Will Deacon <will@kernel.org>, Felix Schnizlein <fschnizlein@suse.com>
Subject: Re: [PATCH 3/3] arm64 cpuinfo: implement sysfs nodes for arm64
Date: Mon, 09 Dec 2019 12:28:44 +0100
Message-ID: <25032400.G9DUGnJgnc@skinner.arch.suse.de>
In-Reply-To: <20191209103110.GB3306@willie-the-truck>
References: <20191206162421.15050-1-trenn@suse.de>
 <20191206162421.15050-4-trenn@suse.de>
 <20191209103110.GB3306@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_032848_550852_F59C5FEF 
X-CRM114-Status: GOOD (  13.98  )
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
 gregkh@linuxfoundation.org, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Monday, December 9, 2019 11:31:11 AM CET Will Deacon wrote:
> On Fri, Dec 06, 2019 at 05:24:21PM +0100, Thomas Renninger wrote:
> > From: Felix Schnizlein <fschnizlein@suse.de>
> > 
> > Export all information from /proc/cpuinfo to sysfs:
> > implementer, architecture, variant, part, revision,
> > bogomips and flags are exported.
> > 
> > Example:
> > /sys/devices/system/cpu/cpu1/info/:[0]# head *

...

> > ==> flags <==
> > fp asimd evtstrm aes pmull sha1 sha2 crc32 cpuid asimdrdm
 
...

> I don't understand why we need this on arm64

The first intention of these patches is to port x86 /proc/cpuinfo.

Because of the divergence of /proc/cpuinfo and the totally different
info exported there across architectures,
therefore it is also tried to get a unified interface across architectures 
where possible.

So for flags and bugs this may work out, right?

For the rest, it looks like people again only had their CPU in mind and
exported to userspace what currently was needed...

> and why it's an improvement
> over all the other schemes we already support for identifying CPU features.

Sigh...

> Given the pain we've endured over the years exposing this sort of stuff to
> userspace, I'm relucant to add more just for the fun of it.

If there should ever be something like a string describing the CPU...
In x86 it comes from the CPU itself.
Maybe we get a model description at some point as well...

Or any other entity which may also get exported on other archs..

Please remember this interface and watch out whether you could export
things under the same name as done on other architectures.

I'll revert everything but flags for ARM now.
But this is the best example for the need of a generic interface:

x86 -   /proc/cpuinfo:
flags           : ...
arm64 - /proc/cpuinfo:
Features        : ...

even it is exactly the same kernel interface, even x86 flags are used 
according to arch/arm64/include/asm/cpufeature.h:

  * We use arm64_cpu_capabilities to represent system features, errata work

But it is named differently in /proc/cpuinfo.
This should not happen again in /sys/...

    Thomas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
