Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268441E77D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:06:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HReYaisWSroObV7DyqBcbmlVG87W4Ep6eGbuTvl4iuo=; b=OGCWLOf2druUGa
	kEm2dQI7z22XjXJ4EBtaPrzANHg2aqg9alLrhc1Ze+JAE1uWIc6miybrTT2hF/o1si6fWb5hm3JRi
	whb6171jV4LPBjb7JPJAZiwWWQ4uNzajrUwq5cvNQdItux/u8cFaNoi2uMsm2M6/P3CHnGsj0tsAJ
	IdWzwFzeqZZdm8/MC8T/yAi0RY1KAPY5mQXv2yadPdJLRV52700JJJGYeOp2QZ6/TBmRqx/XHqspY
	2HJLU0vO8NrVcZPVktf0wS9Tp+Elt+90wmGFhmxiUbd1QfqghEatOWphGq2Yz1kRQB2DXytevxUU+
	Okeig0LEPXKunZsrpouw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jea1m-0004sm-Hx; Fri, 29 May 2020 08:06:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jea1S-0004pr-TE; Fri, 29 May 2020 08:05:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1ABF0206A4;
 Fri, 29 May 2020 08:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590739545;
 bh=YvGdmrYJYcYtBzVLzTkFHtpwhDYriyAvQc4dPK5A4Eg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qu9h/QUNAWDXlVjT9KVQL2VKUSMYMlVszCMbH9kAx54sodTZdWpK2BvnPDZzVfGKe
 FHLUhuPwfq/GDqnBWkelWXUxZFqj+xx5ODXThtYDcx6ljmQw5QQxB7xKlBQsD9I0Bi
 M27c4HHSPLI+MaWX4sxTDfMRSnt+o/dtLbrpOVIc=
Date: Fri, 29 May 2020 09:05:39 +0100
From: Will Deacon <will@kernel.org>
To: John Donnelly <John.P.donnelly@oracle.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
Message-ID: <20200529080539.GC4351@willie-the-truck>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200526014242.GF20045@MiWiFi-R3L-srv>
 <897ea1b9-a68c-8544-6532-a21be135ce01@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <897ea1b9-a68c-8544-6532-a21be135ce01@oracle.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_010546_965387_2EEDCA0D 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: horms@verge.net.au, devicetree@vger.kernel.org, arnd@arndb.de,
 Baoquan He <bhe@redhat.com>, linux-doc@vger.kernel.org,
 Chen Zhou <chenzhou10@huawei.com>, catalin.marinas@arm.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mingo@redhat.com, james.morse@arm.com, guohanjun@huawei.com,
 tglx@linutronix.de, pkushwaha@marvell.com, dyoung@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+James Morse]

On Thu, May 28, 2020 at 05:20:34PM -0500, John Donnelly wrote:
> On 5/25/20 8:42 PM, Baoquan He wrote:
> > On 05/21/20 at 05:38pm, Chen Zhou wrote:
> > > This patch series enable reserving crashkernel above 4G in arm64.

[...]

> > > Chen Zhou (5):
> > >    x86: kdump: move reserve_crashkernel_low() into crash_core.c
> > >    arm64: kdump: reserve crashkenel above 4G for crash dump kernel
> > >    arm64: kdump: add memory for devices by DT property, low-memory-ra=
nge
> > >    kdump: update Documentation about crashkernel on arm64
> > >    dt-bindings: chosen: Document linux,low-memory-range for arm64 kdu=
mp
> > > =

> > >   Documentation/admin-guide/kdump/kdump.rst     | 13 ++-
> > >   .../admin-guide/kernel-parameters.txt         | 12 ++-
> > >   Documentation/devicetree/bindings/chosen.txt  | 25 ++++++
> > >   arch/arm64/kernel/setup.c                     |  8 +-
> > >   arch/arm64/mm/init.c                          | 61 ++++++++++++-
> > >   arch/x86/kernel/setup.c                       | 66 ++------------
> > >   include/linux/crash_core.h                    |  3 +
> > >   include/linux/kexec.h                         |  2 -
> > >   kernel/crash_core.c                           | 85 ++++++++++++++++=
+++
> > >   kernel/kexec_core.c                           | 17 ----
> > >   10 files changed, 208 insertions(+), 84 deletions(-)
> > > =

> This proposal to improve vmcore creation on Arm=A0 has been going on for
> almost a year now.
> =

> Who is the=A0 final maintainer that needs to approve and except these ?
> =

> What are the lingering issues that are remaining so we get these accepted
> into a upstream commit ?

The arm64 bits need an Ack from James Morse, but he's not on CC despite
offering feedback on earlier versions.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
