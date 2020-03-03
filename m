Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAA9177974
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 15:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgcMoaK5WOTV7c4nKdc7PmTpTlkWc66rrTY+w3qf20w=; b=QTEKqOhxZe9YdK
	o0jNuJaSjg14nGxoaf2NMufW13fUCDbCxkylSGs0Qf20ASsOaEtqJ5kaCTgyv/1GiNAWk0ZkFky6M
	LI18hkPpa2f1jaOWl02aycOsZ7Bc/TU+dKHv4NspfttCpBbTITvPNSFbWkGuglypxB2a5iI8jdlEy
	QeS02bJXord5sRlBJucuz53TqkdGP4i4YdHSCmOsssR/i31inUNpFExLsiW6qMAT5sqvpwNJx1aYj
	DX8sLCY53ayL+kaoBTDNHfHLERFoXeroBUfvri8N92D2FpPHU1glVdPsK/oP44rmsqnK9Z4LL8PvV
	nlwC06uJWl/fRDYG2PdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j98pt-00043I-Jw; Tue, 03 Mar 2020 14:47:53 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j98pJ-0003dc-SN
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 14:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lzu6cxzskARixYYuT8ZZ72IHMKvbMCyPkgBYrFog6Ig=; b=i9kHDpWDp55WPlJZM5w9MG4Re
 Uhx4aMxCHOhJp1SQ3NCuP5HaRnyNLW47nCdEqrkgMJXhNItio0tFd515PIv6cLxsxCw0c7nrhwGU2
 bt8nN4+2VfQ567XCxsgmu0dkE12ZEdeoaPeNwiM5IAQzdD5Y7rMe/l2pMTuz4QgwMvsX3acZRSVKQ
 /V6v5oKmzm1HiIFya4rjyZdLtMrlJK59I+7ETydmOVjUIpAzVUFLoKSaF0/yfCPMj0gPcenHmvasw
 tSIRMYRXeDWYQpcOvPN4ow03heT9Wu0aZ/LbtAyR/5b4JxfauKQCOSVsk+KG/X4ilpXApyEedcMQ7
 1G+K6CFmg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48202)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j98p3-00007j-5B; Tue, 03 Mar 2020 14:47:01 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j98p0-0005yi-PF; Tue, 03 Mar 2020 14:46:58 +0000
Date: Tue, 3 Mar 2020 14:46:58 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [arm:cex7 96/112] arch/sparc/include/asm/io_64.h:179:2: warning:
 'px_is' may be used uninitialized in this function
Message-ID: <20200303144658.GN25745@shell.armlinux.org.uk>
References: <202003032214.pjEWVErC%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003032214.pjEWVErC%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_064718_138606_CE471115 
X-CRM114-Status: GOOD (  14.15  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild-all@lists.01.org, Peng Ma <peng.ma@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This looks to me like a false positive.

On Tue, Mar 03, 2020 at 10:12:28PM +0800, kbuild test robot wrote:
> tree:   git://git.armlinux.org.uk/~rmk/linux-arm.git cex7
> head:   c333ba58ac979daa84d7ea59b7d4a04c15cce2e7
> commit: d45ed9abba2dce5bb6faeb3474264ba64ef2d610 [96/112] ahci: qoriq: workaround for errata A-379364 on lx2160a
> config: sparc64-randconfig-a001-20200303 (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 7.5.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout d45ed9abba2dce5bb6faeb3474264ba64ef2d610
>         # save the attached .config to linux build tree
>         GCC_VERSION=7.5.0 make.cross ARCH=sparc64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> Note: it may well be a FALSE warning. FWIW you are at least aware of it now.
> http://gcc.gnu.org/wiki/Better_Uninitialized_Warnings
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from arch/sparc/include/asm/io.h:5:0,
>                     from include/linux/io.h:13,
>                     from include/linux/of_address.h:7,
>                     from drivers//ata/ahci_qoriq.c:14:
>    drivers//ata/ahci_qoriq.c: In function 'ahci_qoriq_hardreset':
> >> arch/sparc/include/asm/io_64.h:179:2: warning: 'px_is' may be used uninitialized in this function [-Wmaybe-uninitialized]
>      __asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_writel */"
>      ^~~~~~~
>    drivers//ata/ahci_qoriq.c:229:14: note: 'px_is' was declared here
>      u32 px_cmd, px_is, px_val;
>                  ^~~~~
>    In file included from arch/sparc/include/asm/io.h:5:0,
>                     from include/linux/io.h:13,
>                     from include/linux/of_address.h:7,
>                     from drivers//ata/ahci_qoriq.c:14:
> >> arch/sparc/include/asm/io_64.h:179:2: warning: 'px_cmd' may be used uninitialized in this function [-Wmaybe-uninitialized]
>      __asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_writel */"
>      ^~~~~~~
>    drivers//ata/ahci_qoriq.c:229:6: note: 'px_cmd' was declared here
>      u32 px_cmd, px_is, px_val;
>          ^~~~~~
> --
>    In file included from arch/sparc/include/asm/io.h:5:0,
>                     from include/linux/io.h:13,
>                     from include/linux/of_address.h:7,
>                     from drivers/ata/ahci_qoriq.c:14:
>    drivers/ata/ahci_qoriq.c: In function 'ahci_qoriq_hardreset':
> >> arch/sparc/include/asm/io_64.h:179:2: warning: 'px_is' may be used uninitialized in this function [-Wmaybe-uninitialized]
>      __asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_writel */"
>      ^~~~~~~
>    drivers/ata/ahci_qoriq.c:229:14: note: 'px_is' was declared here
>      u32 px_cmd, px_is, px_val;
>                  ^~~~~
>    In file included from arch/sparc/include/asm/io.h:5:0,
>                     from include/linux/io.h:13,
>                     from include/linux/of_address.h:7,
>                     from drivers/ata/ahci_qoriq.c:14:
> >> arch/sparc/include/asm/io_64.h:179:2: warning: 'px_cmd' may be used uninitialized in this function [-Wmaybe-uninitialized]
>      __asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_writel */"
>      ^~~~~~~
>    drivers/ata/ahci_qoriq.c:229:6: note: 'px_cmd' was declared here
>      u32 px_cmd, px_is, px_val;
>          ^~~~~~
> 
> vim +/px_is +179 arch/sparc/include/asm/io_64.h
> 
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  174  
> 79294d7eff89f6 arch/sparc/include/asm/io_64.h Sam Ravnborg  2014-07-20  175  #define writel writel
> 7c3969c3a4f359 arch/sparc/include/asm/io_64.h Arnd Bergmann 2014-11-19  176  #define writel_relaxed writel
> 79294d7eff89f6 arch/sparc/include/asm/io_64.h Sam Ravnborg  2014-07-20  177  static inline void writel(u32 l, volatile void __iomem *addr)
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  178  {
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17 @179  	__asm__ __volatile__("stwa\t%r0, [%1] %2\t/* pci_writel */"
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  180  			     : /* no outputs */
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  181  			     : "Jr" (l), "r" (addr), "i" (ASI_PHYS_BYPASS_EC_E_L)
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  182  			     : "memory");
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  183  }
> f5e706ad886b6a include/asm-sparc/io_64.h      Sam Ravnborg  2008-07-17  184  
> 
> :::::: The code at line 179 was first introduced by commit
> :::::: f5e706ad886b6a5eb59637830110b09ccebf01c5 sparc: join the remaining header files
> 
> :::::: TO: Sam Ravnborg <sam@ravnborg.org>
> :::::: CC: David S. Miller <davem@davemloft.net>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
