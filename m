Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 895B11DD07F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 16:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8n987tXxshaFXK/WfRRUfBY28AxJ+RJrwT6mE1sStk=; b=KU02y9PY5lVP7L
	ZAkOmYM12glNX04quhfG9o8UfHl8UefaDit81GqsPUGOJXZS1PB9epxP2LbkaaJObgb7K3lGsQgv5
	oMQ4YhmcVzpjUclc/QYw37qBqY1K0vr6Aj44mzDTaZPXPopUKFPx8DnZWys6lxfalhVSMA/HSvyWW
	EGFpaPvq8PqMKMwoSBK5F/4t3iA26hy2JW+RkxTjtv519cppiFcig7LdAgxcFTcDqKGVnurBhrwyu
	KtIoLD6XzK9q0LVe9FebBRc2LFFNXthLMw4kyWv401Sm4OMbtfOQuTvKUOViZpLEisOsvsoyW7mWy
	umLeZ7RmrHZDxSK0ZDuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbmWz-0008B6-4i; Thu, 21 May 2020 14:50:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbmWp-00089p-PB
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 14:50:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zLV65FC4UZaf4NpZEYRDPA9J/5w4k5DPoy17qEacsUk=; b=iPGjVcoaG1lUJY1ldIMn/gj/H
 9nV8kBluii0I+hRD3XFMJHrA6WQ02QpRSRq83WR6G0+Jyb3NbUvr0cjHM7ZZIQvRrq+YbWe64ArIo
 UuDFCBUmTdtHAdLm8g3u1Q3ATNPtdaJ26yEGY+x344d+OE0MashCxN+DwUMlc3VoJR5oQsYEfEJv9
 GfE/1g4CIz9dZiv9V0zZryBiHDS62iH2tuwAbSpmYJFKBc92QrL+0aRyA5q80dWemyvnRPBDQjH6F
 JOI2hShQl4zm9MPyFwAlcS0bssWfhSAMUxy/nrTLZnsNsnUJEEkXH68/LYRxQU7hJOUGB4gkvtfj0
 G4j1m8qwA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:35106)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbmWd-0002hH-Cv; Thu, 21 May 2020 15:50:23 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbmWa-0000Ho-Vc; Thu, 21 May 2020 15:50:20 +0100
Date: Thu, 21 May 2020 15:50:20 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200521145020.GS1551@shell.armlinux.org.uk>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
 <20200521120308.GR1551@shell.armlinux.org.uk>
 <20200521123327.GQ1059226@linux.ibm.com>
 <20200521140745.GS1059226@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521140745.GS1059226@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_075035_819168_DE7C26F5 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Cernekee <cernekee@gmail.com>,
 Doug Berger <opendmb@gmail.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 05:07:45PM +0300, Mike Rapoport wrote:
> On Thu, May 21, 2020 at 03:33:29PM +0300, Mike Rapoport wrote:
> > On Thu, May 21, 2020 at 01:03:08PM +0100, Russell King - ARM Linux admin wrote:
> > > On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> > > > (resendig for the correct address and with mailing list cc'ed, sorry for
> > > > the noise)
> > > > 
> > > > Hi,
> > > > 
> > > > Following the discussion at [1], I'm resending the patches that enable
> > > > memory model selection in menuconfig and such.
> > > > 
> > > > These patches do not change the way the configuration is generated from the
> > > > defconfigs and they do not change explicit selection of SPARSEMEM for
> > > > platforms that have "select ARCH_ENABLE_SPARSEMEM".
> > > > 
> > > > The mere change is that when a user runs an interactive configuration they
> > > > will be allowed to select between FLATMEM and SPARSMEM, which is not the
> > > > case today.
> > > > 
> > > > There is indeed some awkwardness in, e.g. removal of
> > > > ARCH_SPARSEMEM_DEFAULT, but this is what memory model selection logic in
> > > > mm/Kconfig imposes.
> > > > 
> > > > For example, below is the diffs of the configurations generated with
> > > > 'make rpc_defconfig' and 'make defconfig':
> > > > 
> > > > $ diff -s old/rpc_defconfig new/rpc_defconfig
> > > > Files old/rpc_defconfig and new/rpc_defconfig are identical
> > > > 
> > > > $ diff -u old/defconfig new/defconfig
> > > > --- old/defconfig	2020-05-20 17:51:01.832649705 +0300
> > > > +++ new/defconfig	2020-05-20 18:15:21.084385880 +0300
> > > > @@ -674,6 +674,9 @@
> > > >  CONFIG_AEABI=y
> > > >  # CONFIG_OABI_COMPAT is not set
> > > >  CONFIG_ARCH_HAS_HOLES_MEMORYMODEL=y
> > > > +CONFIG_ARCH_SELECT_MEMORY_MODEL=y
> > > > +CONFIG_ARCH_FLATMEM_ENABLE=y
> > > > +CONFIG_ARCH_SPARSEMEM_ENABLE=y
> > > >  CONFIG_HAVE_ARCH_PFN_VALID=y
> > > >  CONFIG_HIGHMEM=y
> > > >  CONFIG_HIGHPTE=y
> > > > @@ -1061,6 +1064,9 @@
> > > >  #
> > > >  # Memory Management options
> > > >  #
> > > > +CONFIG_SELECT_MEMORY_MODEL=y
> > > > +CONFIG_FLATMEM_MANUAL=y
> > > > +# CONFIG_SPARSEMEM_MANUAL is not set
> > > >  CONFIG_FLATMEM=y
> > > >  CONFIG_FLAT_NODE_MEM_MAP=y
> > > >  CONFIG_ARCH_KEEP_MEMBLOCK=y
> > > 
> > > Right, but the question is whether we want to offer flatmem for rpc.
> > > It isn't allowed today, and so far no one has said why it's a
> > > desirable change to make.
> > 
> > With ARCH_RPC=y (or ARCH_SA1100 or ARCH_EP93XX for that matter)
> > ARCH_MULTIPLATFORM=n which prevents ARCH_SELECT_MEMORY_MODEL from being
> > enabled and since any of these machines explicitly selects
> > ARCH_SPARSEMEM_ENABLE, the only available memory model would be
> > SPARSEMEM.
> > 
> > I played a bit with menuconfig and if any of the platforms requiring
> > sparsemem is selected, the menu allowing the user to choose the memory
> > model disappears.
> 
> Ah, when either of these patforms will become a part of the
> multiplatform build, the only option for multiplatform build will be
> sparsemem.
> So it would be nice if somebody could check the cost of using sparsemem
> vs flatmem, espessially on low end machines.

Do you think they will become part of multiplatform?

If they're low-end machines, then adding:

(a) the additional memory overhead of a multiplatform kernel
(b) the additional runtime overhead of the complexities of multiplatform
    kernels

is surely an odd thing to do, especially when few really care about
these platforms becoming part of a multiplatform kernel, except those
who like the idea of multiplat.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
