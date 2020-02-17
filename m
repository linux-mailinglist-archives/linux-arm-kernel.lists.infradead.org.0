Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEB9161837
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 17:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARg2g7L4HuTC4uyRPDrT6NCpwSjpatALRWcLqtFPyT0=; b=Qcya9GbxTNPS/X
	kipBT0FBJQYSW36y33NkTcgtEpZ+RIFXl/qaE7Q1RKWm1rCKf7gp6GXf66m3bHy/oIo1DSVbhMhqn
	C6jUjB0zA6BdCJDU/2wrO7IJyd0psS2tBtoQaV931lo4i+UJcspNgHVHn8yLWErszNpfkVBY/fPJH
	jkkeWxJ/XD9016l3vAuTxYE7OwsW9We6qd+4V5cWmyH+0GtK6M6EtFabz5W7JZubltoUAIcrY8L0X
	hd8iovsKgSq7+ROxmxbz/9VyqY5ZY9Ab17kG0MX9UyufTEG322KJwIuJAg/RnawzIyHoHqKsdsrsj
	Vh1Ng83LLAew+Zm0wqPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3jXS-0005Q5-8V; Mon, 17 Feb 2020 16:46:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3jXF-0005PL-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 16:46:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5D1C214D8;
 Mon, 17 Feb 2020 16:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581957976;
 bh=/DaX8+TZSwBPiTZVH9FgOz76O3KL16JyFS/ijkhuk44=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XKRFlaKp1IYIDGXDUJvH5mH8wXq/PXWxby8tJqhb0Gldfy+UFk8+5flsOaGzmHdfo
 HlDNAYeeQrm/bDaFOCjFhUdWXO6SEKGWsxUiE0Of4uCTM0915fDbv4hNzC3UL8lKqY
 xrdgGSn1GXDrxC+bKBaQ4bujFS0dC8o+hjZV23us=
Date: Mon, 17 Feb 2020 16:46:09 +0000
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 19/19] arm64: vdso32: Enable Clang Compilation
Message-ID: <20200217164608.GA2708@willie-the-truck>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
 <20200213161614.23246-20-vincenzo.frascino@arm.com>
 <20200213184454.GA4663@ubuntu-m2-xlarge-x86>
 <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0cee3707-d526-3766-3dde-543c8dbd8e68@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_084617_657897_DC05DB4A 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, linux-mips@vger.kernel.org,
 tglx@linutronix.de, linux-arch@vger.kernel.org, x86@kernel.org,
 linux@armlinux.org.uk, clang-built-linux@googlegroups.com, mingo@redhat.com,
 arnd@arndb.de, will.deacon@arm.com, bp@alien8.de, luto@kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, pcc@google.com,
 linux-arm-kernel@lists.infradead.org, avagin@openvz.org, sboyd@kernel.org,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, salyzyn@android.com,
 paul.burton@mips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 12:26:16PM +0000, Vincenzo Frascino wrote:
> On 13/02/2020 18:44, Nathan Chancellor wrote:
> > On Thu, Feb 13, 2020 at 04:16:14PM +0000, Vincenzo Frascino wrote:
> >> Enable Clang Compilation for the vdso32 library.
> 
> [...]
> 
> >> +LD_COMPAT ?= $(CROSS_COMPILE_COMPAT)gcc
> > 
> > Well this is unfortunate :/
> > 
> > It looks like adding the --target flag to VDSO_LDFLAGS allows
> > clang to link the vDSO just fine although it does warn that -nostdinc
> > is unused:
> > 
> > clang-11: warning: argument unused during compilation: '-nostdinc'
> > [-Wunused-command-line-argument]
> >
> 
> This is why ended up in this "unfortunate" situation :) I wanted to avoid the
> warning.
> 
> > It would be nice if the logic of commit fe00e50b2db8 ("ARM: 8858/1:
> > vdso: use $(LD) instead of $(CC) to link VDSO") could be adopted here
> > but I get that this Makefile is its own beast :) at the very least, I
> > think that the --target flag should be added to VDSO_LDFLAGS so that gcc
> > is not a requirement for this but I am curious if you tried that already
> > and noticed any issues with it.
> > 
> 
> --target is my preferred way as well, I can try to play another little bit with
> the flags and see what I can come up with in the next version.

Yes, please. I'd even prefer the warning rather than silently assuming that
a cross gcc is kicking around on the path.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
