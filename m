Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD841C86B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpdPE6XuXVoaMQNp62E0niAYPyQBVEPKXLDCImN7YNE=; b=BAWvkT1Z0AobE6
	nvPaboWtzQid/Z8/TN3qxZhDMqLfBsbaBzLb2PUdd1LD/p/2pGrvK7Sa0YTbyKBxiGau/pcDxliTc
	nnH7uVSWOJTtdOQWMIw8sWIU6AJPMDy97f7g9BDveSWS0UAVVy4W553ft+Az7HkxWwhvZlV4bvaAy
	FJ6jwEn9j40UHI1Y5dY60Cv6BbvbOeGiEHNJQGCzewGwyMehWQBZVsuZy7RuVR92qfUqPzbLwnkBf
	t9pR/Ez4sBkjwirnkXvrvL/QKwpEoYnGgMpvrWSbbENMRfZZH/MZKuyS1dMLoImX+JBIaxmFZ/ukD
	USHX6DABbgdv/BDbEQGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdnt-0007Pw-Hd; Thu, 07 May 2020 10:30:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdnk-0007OQ-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fdqh7nDIY7RwLunTRzai9I+YfboOVf74IQv3yVp2Cw4=; b=l4vKvqCu+rJ3clInZ549K9dt3
 sUKgz5T5HNDZTL7+6K2l+xOFnkZAITyKpvtvOU/d0PWDD1Fp8wDpRoYX9N5tINz5IzY7rlOTvH0Fa
 81xXEE1cyhPQxgSvCk6ztDd4uT1D/M6F+XwDVb3Mr7GG0a3PRv5jms9lRwgSDJQhaP9usicFsEW4w
 Ta/Cx9aTE6aFoOBgq3EMSxjryL0XsXFZOCzwAb7AgK2ZYz41aJSnd6onkOF5HMCjMOdk6a1/CsqEX
 hDLlF9dDZ762uW+w89jSZZjw3DZuK8WWf1pXZ10+1cI1Ub/GvKvqnmoT4Ojat0rVCsqOJbyJ8oY3q
 ycDYtSbFQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57290)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jWdnd-0005Bg-5a; Thu, 07 May 2020 11:30:41 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jWdnb-0000gk-R5; Thu, 07 May 2020 11:30:39 +0100
Date: Thu, 7 May 2020 11:30:39 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
Message-ID: <20200507103039.GR1551@shell.armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506235009.25023-2-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_033048_484016_D4A6241F 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
> From: Kevin Cernekee <cernekee@gmail.com>
> 
> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
> choice.  This is true for all of the existing ARM users of
> ARCH_SPARSEMEM_ENABLE.
> 
> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
> us from ever defaulting to FLATMEM, so we should remove this setting.

No explanation why that is desirable.

> -config ARCH_SPARSEMEM_DEFAULT
> -	def_bool ARCH_SPARSEMEM_ENABLE
> -

What this basically says is ARCH_SPARSEMEM_ENABLE=ARCH_SPARSEMEM_DEFAULT,
which is exactly what we want for the non-multiplatform boards that
select ARCH_SPARSEMEM_ENABLE - we _want_ them to default to sparsemem
because that is what the platform requires.

For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
0x1c000000.  These correspond with the two memory slots - the first two
for the first slot, and the second two for the second slot.  Each slot
has two banks.  The size of each memory bank depends on the size of the
module.

Flatmem is completely unable to work with this setup if all banks are
populated, and the first bank does not contain enough memory to allocate
the struct page array.  So, sparsemem is the only option there.

Hence, for these platforms, we want sparsemem and only sparsemem, not
flatmem.

So, this patch which makes it possible to select flatmem is completely
out of the question for these platforms.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
