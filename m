Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E8C1C8474
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eu+Qo6fbeEAupj8rDfBgBFqeYS7N/EQT0Eoh9sCVvJs=; b=Kg01x/gG9Q/5Ca
	6TZPHfHUhRkHSNfKInZcZL5iFRO12OQ72xPVrPHECEpt2DdUzSvTF6JUkFJDwSMkO0Gno+xjEKgvi
	seEmZ1k1z3aJ/ajDe3du5BXcaHXmuFGjD3yoo//z4JS7EMfBY1eLhUX3pB/dpTlFD076E10/EMTJS
	armBcIH60MBdUfYGu3QZnXCy/M+EPK8UwlwpzkW2eGi3Kd4pNAUyczhG3hncNN0nK7yUgHpLfpbfT
	OQnH9CGvVQobc4zCcUgcFEfTvCZ75JCypOy6hhlSOK2vm4FuqtzfN4NgWTx+xNP2OAtgG0vGwzgPd
	aQn8GQxpwlxYzY7nq8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbfs-0004Qe-Pu; Thu, 07 May 2020 08:14:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbfj-0004PV-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q5G9VHRb3778KIFdSfnG4NaBlmLTOMgcwKiW7ZYfYKE=; b=iEHJpqxR8AidGEVuBSbIDMcFv
 ArTC7HyCvLq0ogP9+xoftZO18cFsVjFwc0rdslvFalqxkjwIWqsECaV8oQxIc49WQTu8jwBQOYNV2
 mj5EvLNG9vmvAfFpDzg1XC+C157LdkAgZCh8wt9lLdQbts9Fw5+q8tsXChN4/6SNCQawQKEtsyd3D
 UGKEwCG6joDS/fvWas5z4thkzJJxuAnZkPCq9+QPslYsracIZ1T4+27dcUmp61Vh0qeILBRcJPxkG
 eipnYE74/AHClrTm7ZCzBqpOKTUXub7yijEy//WUNv/PaRKWx4SdtfnUMvSI57Jp0Oo26eiOG3loI
 U78Ebktxw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57256)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jWbfX-0004ry-IC; Thu, 07 May 2020 09:14:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jWbfV-0000cM-Ub; Thu, 07 May 2020 09:14:09 +0100
Date: Thu, 7 May 2020 09:14:09 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 0/2] Allow either FLATMEM or SPARSEMEM on the
 multiplatform build
Message-ID: <20200507081409.GQ1551@shell.armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506235009.25023-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_011423_513695_34F6D7B5 
X-CRM114-Status: GOOD (  11.44  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sboyd@kernel.org, opendmb@gmail.com, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:50:07PM -0700, Florian Fainelli wrote:
> Hi all,
> 
> This patch series somehow got lost back in 2015, and while looking at
> the various patches that we are carrying in our BRCMSTB downstream
> kernel those two patches should have made it upstream.

I don't believe it's a good idea for multiplatform.

If you have a platform that relies on sparsemem within the multiplatform
family, and you select flatmem, how would it boot?

Sparsemem can support flatmem layouts, but flatmem can't support
sparsemem layouts.

So, allowing flatmem seems to go against the underlying principle of
multiplatform support.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
