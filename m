Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EB31DCC8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 14:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WVTVYF9kXJel1yskFVSvrFSnMIhXwNiF2gCo9fVDgg=; b=mWqbhr15zgCrJ2
	yjdItxZVICx/Zd9eGb/ZKsuHlSiTXniiohse4rIc9IiKmJ5jywvwKbkAHc6dAJEvjkZP8sfdLqO/Z
	Sc+q4RHnEGY3HN4p76ANIDJgJYYCBlqIkYmWrSwp/iOpLQ6A4kJHF64CKhALRFUbzE6/1Mx5T2Ky2
	TGFtiYNwBl9+zARGf9K6e9aaDHjk9O3dRkULrDNt+sCBOaN93Brzh8neb3nwnRU7RBugeqT9ctZzO
	wYxLG7lilGX+Z+0TnrdBj1jZVmcaa1POCDDLYN+LxsoVLxonMq+WasSb5/dwIwv2IxyUW6LFd99B0
	8zE5ZBGYLonqCJqxsWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjv7-0003e4-D6; Thu, 21 May 2020 12:03:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjux-0003dP-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 12:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DugcN9tbDgtWy6KtRQBnM72cC+bpgx46fZD/tUG5gjo=; b=wjIqw2NwPqWPl/iYizsOTBh5I
 TylaQFSATiDKxa+X1/RBTAw6MqthIF6DClJTXNAeaV+B1qWCrXC5AffDlFH20OQR3gU0t3K1D4+wp
 CHjjP2KygVSWFfnsrno3kTOZPN+D5WyNvIwo8uHvqiRxKynf5SrYf6kGznhoKFA11znDGYTu0/alC
 xh9pPdR70cc88zSR6tOlbOYJmElxSpd0+7PNckslXuPADih1qxML7i5Qz6NwsFsJjQcJTz2At7QFb
 WqPknIA9eomKOrH6qfQ/v/Uf4VWqJQl/6QSfrFwhoiBjbjB8VqYh0Rgo62cS0WNSvbLWStXOxVNZb
 XMAHs86KA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:43122)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jbjuo-0002NN-2P; Thu, 21 May 2020 13:03:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jbjum-0000BN-GM; Thu, 21 May 2020 13:03:08 +0100
Date: Thu, 21 May 2020 13:03:08 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH 0/2] ARM: Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200521120308.GR1551@shell.armlinux.org.uk>
References: <20200521081825.1348844-1-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521081825.1348844-1-rppt@linux.ibm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_050319_886846_487CAB66 
X-CRM114-Status: GOOD (  16.57  )
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

On Thu, May 21, 2020 at 11:18:23AM +0300, Mike Rapoport wrote:
> (resendig for the correct address and with mailing list cc'ed, sorry for
> the noise)
> 
> Hi,
> 
> Following the discussion at [1], I'm resending the patches that enable
> memory model selection in menuconfig and such.
> 
> These patches do not change the way the configuration is generated from the
> defconfigs and they do not change explicit selection of SPARSEMEM for
> platforms that have "select ARCH_ENABLE_SPARSEMEM".
> 
> The mere change is that when a user runs an interactive configuration they
> will be allowed to select between FLATMEM and SPARSMEM, which is not the
> case today.
> 
> There is indeed some awkwardness in, e.g. removal of
> ARCH_SPARSEMEM_DEFAULT, but this is what memory model selection logic in
> mm/Kconfig imposes.
> 
> For example, below is the diffs of the configurations generated with
> 'make rpc_defconfig' and 'make defconfig':
> 
> $ diff -s old/rpc_defconfig new/rpc_defconfig
> Files old/rpc_defconfig and new/rpc_defconfig are identical
> 
> $ diff -u old/defconfig new/defconfig
> --- old/defconfig	2020-05-20 17:51:01.832649705 +0300
> +++ new/defconfig	2020-05-20 18:15:21.084385880 +0300
> @@ -674,6 +674,9 @@
>  CONFIG_AEABI=y
>  # CONFIG_OABI_COMPAT is not set
>  CONFIG_ARCH_HAS_HOLES_MEMORYMODEL=y
> +CONFIG_ARCH_SELECT_MEMORY_MODEL=y
> +CONFIG_ARCH_FLATMEM_ENABLE=y
> +CONFIG_ARCH_SPARSEMEM_ENABLE=y
>  CONFIG_HAVE_ARCH_PFN_VALID=y
>  CONFIG_HIGHMEM=y
>  CONFIG_HIGHPTE=y
> @@ -1061,6 +1064,9 @@
>  #
>  # Memory Management options
>  #
> +CONFIG_SELECT_MEMORY_MODEL=y
> +CONFIG_FLATMEM_MANUAL=y
> +# CONFIG_SPARSEMEM_MANUAL is not set
>  CONFIG_FLATMEM=y
>  CONFIG_FLAT_NODE_MEM_MAP=y
>  CONFIG_ARCH_KEEP_MEMBLOCK=y

Right, but the question is whether we want to offer flatmem for rpc.
It isn't allowed today, and so far no one has said why it's a
desirable change to make.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
