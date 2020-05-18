Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C08331D7AED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/ddA6yjWTP9iiH0gQZ0UOZHnqhxzCJcTyrst6etUR8=; b=Z4PdF75t/9tfvv
	N9ZMMfujCw21bv9ZNqmgx0FAyLOhm0bw1PdHMchHUS3m6W6BuSkO90wg8c30iXGm2+hZAS7z/P/sF
	K0ErCbObrlH/AN2IBVyBo/9+wxq2y8Gb4yjb8xqxRX6vKvTEpNmQ575fLhAmDunOagMROCHUkNrXY
	A3D0lytthkMLCiqXBHfYXzSG5dTyklFB5QQEbILp0VT9ceshqWQotHAJ3K54n+InXAPO0WAcmWLwX
	QPsvV1h4RygnEmZIe8PNE2J0EMnwksIEsvVNZW79/svBa4Lg+wrZbsT+tKcfZlQy217SNfVCDi2Fp
	wbXI9SYttvheTKHcX8Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagbr-00070K-O6; Mon, 18 May 2020 14:19:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagbi-0006zi-SE
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:19:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8QSHn1QbwUCK/fw9frbOwXuQvZTOpXzHqEg5WkOMan0=; b=dRaieWLESy24cHMis/kxDGiAx
 zLfzIagJbl0bsfF1dOo6xhygWQ1XvDTEaXsUwbO65HN1h5n/itjHT80u1pFJ8ACsohjB+J2S8pZbJ
 YLNHYVlM2qlIcltPJGTfyvXb85LxtImqjSKoMFqrihyrwmyFiTpNx4RkbQk/jmIZ52+X6yU3L562x
 elFI6QRrtmHZyVb2oh2a/mK5E7MJUOs8gU7avzmFhuC6iQgfJMadLMUJIY3Yc3ywHnXKVzJ7W0joU
 MBcU9XxQ2Pei5a4ZMs3+KzqgUdYF/qGK9C1wxJqBoVkHJ/5MSj5aPZJgSbGHQVozKGP9kbprjjsJp
 yXcEnYckQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59570)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jagbc-0002a5-Jj; Mon, 18 May 2020 15:19:00 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jagbb-0004lT-70; Mon, 18 May 2020 15:18:59 +0100
Date: Mon, 18 May 2020 15:18:59 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Fredrik Strupe <fredrik@strupe.net>
Subject: Re: [PING] [PATCH v2] arm: ptrace: Fix mask for thumb breakpoint hook
Message-ID: <20200518141858.GV1551@shell.armlinux.org.uk>
References: <20200413173841.29651-1-fredrik@strupe.net>
 <d7381f90-f597-2a9c-4387-5714b41e02e6@strupe.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d7381f90-f597-2a9c-4387-5714b41e02e6@strupe.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_071907_105196_3E66A09C 
X-CRM114-Status: GOOD (  10.47  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Oleg Nesterov <oleg@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 03:12:06PM +0200, Fredrik Strupe wrote:
> call_undef_hook() in traps.c applies the same instr_mask for both 16-bit
> and 32-bit thumb instructions. If instr_mask then is only 16 bits wide
> (0xffff as opposed to 0xffffffff), the first half-word of 32-bit thumb
> instructions will be masked out. This makes the function match 32-bit
> thumb instructions where the second half-word is equal to instr_val,
> regardless of the first half-word.
> 
> The result in this case is that all undefined 32-bit thumb instructions
> with the second half-word equal to de01 (udf #1) work as breakpoints
> and will raise a SIGTRAP instead of a SIGILL, instead of just the one
> intended 16-bit instruction. An example of such an instruction is
> eaa0b650, which is unallocated according to Arm ARM and should raise a
> SIGILL, but instead raises a SIGTRAP.

How can 0xeaa0b650 match 0xde01 when masked with 0xffff ?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
