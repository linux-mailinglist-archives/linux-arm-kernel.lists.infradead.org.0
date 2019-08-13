Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5AF08B9A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g15tUXu28bmzYURY3kuU9ZjWTyj0Ch1RptHcS6BttQs=; b=AYZYUSPeJGiu9T
	YEdPSMd/YuZvliOaCi7d4haE7sWF9jWxrY56VpGjoreobVJPX5rxJCKpMhioL1xAsm/XYzlWj2vi+
	UYuPtwrXaK8E75IypC7ZKvvUs6TvcczoWOfTPcr2fE8GQrDlnAHmKQasTsIUNCYBXtYBpxzz7kPbd
	MyinQEONIjX0Knas+trfmAzk46rDZlQqK4H4RMf25S8cVHrkTU5u6E4KKilU8J3ryFHO9iPD4DV9W
	SMjLk5xB9oKrspeKjXyroel/MMS0bAIK7A6TR/T7sfl+FNPfKgcBw7wTpdeYTuYV6/NSw6gQh4bwh
	MpLIj626zA+EFig5WiKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWZT-0001UR-D3; Tue, 13 Aug 2019 13:10:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWZ9-0001Jw-08
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:10:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCDCE2067D;
 Tue, 13 Aug 2019 13:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565701818;
 bh=9LdvigrXqTVGjESKoSw18FQNoRzVsSkMTQcfq9Hf+Z0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zX6Q/VqK0Q85bDA5YXVoTTZvQe/dFf0m0QRXdCQqJfgGivx51n7sTe6jX/t+eiFFt
 1zz5ai82eOyBanQz++0hypo9qOg7oVbgXdHpfSc6aFXKVIASWMtuM0UK+ile1Rk2l/
 x/o5c7FqoV3CZmCx+WfX8JPSHkxB1MUPKwMwHiLQ=
Date: Tue, 13 Aug 2019 14:10:13 +0100
From: Will Deacon <will@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Message-ID: <20190813131013.vpc5a2vlxwghizxa@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
 <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_061019_084747_0FD9FDB2 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: crecklin@redhat.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 Steve Capper <steve.capper@arm.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>, maz@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Tue, Aug 13, 2019 at 02:43:23PM +0200, Geert Uytterhoeven wrote:
> On Fri, Aug 9, 2019 at 6:47 PM Will Deacon <will@kernel.org> wrote:
> > On Wed, Aug 07, 2019 at 04:55:12PM +0100, Steve Capper wrote:
> > > This patch series adds support for 52-bit kernel VAs using some of the
> > > machinery already introduced by the 52-bit userspace VA code in 5.0.
> >
> > Cheers, I've pushed this out on a for-next/52-bit-kva branch with one
> > small patch on top and Catalin's tags added.
> 
> As of commit 14c127c957c1c607 ("arm64: mm: Flip kernel VA space"), the
> kernel log is spammed with
> 
>     virt_to_phys used for non-linear address: (____ptrval____)
> (__func__.6603+0x14d681/0x17fb3d)
>     WARNING: CPU: 0 PID: 264 at arch/arm64/mm/physaddr.c:15
> __virt_to_phys+0x28/0x58
>     Modules linked in:
>     CPU: 0 PID: 264 Comm: mdev Not tainted
> 5.3.0-rc3-rcar3-initrd-00002-g14c127c957c1c607 #38
>     Hardware name: Renesas Ebisu-4D board based on r8a77990 (DT)
>     pstate: 60000005 (nZCv daif -PAN -UAO)
>     pc : __virt_to_phys+0x28/0x58
>     lr : __virt_to_phys+0x28/0x58
>     sp : ffffffc011953c80
>     x29: ffffffc011953c80 x28: ffffff8078790140
>     x27: 0000000000000000 x26: 0000000000000000
>     x25: ffffffc010a539b9 x24: ffffffc010a86000
>     x23: ffffffc010a539ba x22: 0000000000000001
>     x21: 0000000000202038 x20: 0000000000000001
>     x19: ffffffc010a539b9 x18: 000000000000000a
>     x17: 0000000000000000 x16: 0000000000000000
>     x15: 00000000000ca51d x14: 0720072007200720
>     x13: 0720072007200720 x12: 0720072007200720
>     x11: 0720072007200720 x10: 0720072007200720
>     x9 : 0720072007200720 x8 : 0000000000000001
>     x7 : 0000000000000007 x6 : ffffff8079824f00
>     x5 : 0000000000000140 x4 : 0000000000000000
>     x3 : 0000000000000000 x2 : 00000000ffffffff
>     x1 : 0713abbc9281cf00 x0 : 0000000000000000
>     Call trace:
>      __virt_to_phys+0x28/0x58
>      __check_object_size+0xd0/0x1e0
>      filldir64+0x1d8/0x2b0
>      kernfs_fop_readdir+0x64/0x200
>      iterate_dir+0x68/0x144
>      ksys_getdents64+0x88/0x154
>      __arm64_sys_getdents64+0x18/0x24
>      el0_svc_common.constprop.0+0x84/0xe8
>      el0_svc_compat_handler+0x18/0x20
>      el0_svc_compat+0x8/0x10
>     ---[ end trace 6980a45f636e18be ]---
> 
> as soon as userspace starts.

Can you try the hack I posted here, please?

https://lkml.org/lkml/2019/8/13/555

Also, what .config are you using?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
