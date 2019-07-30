Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF78D7A41B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWWsa3e8sJdo5S8g/jZiC2VlJHaNMsPjh4aHDSASVwA=; b=b0OAHH8bPFdo0o
	fOwAvc+Jl2Lr4nMbX4pukmOZxBv87ZXU3QOJG//t2t40Iww1TxdYceQO0OtdfoYBiWnnoLHQ1idwM
	nKHCFi9Z3kNY94qry8NxARgxvNaLNH3N1CTSGAr7GdDCtB1qDow7ybj7nIJH4HaTwjJF4UlpAhttG
	mQF6OFxrMp44v/R//TWOaZz/BFbxUEumHRFRrhxrWmj1eR2MbsItXE9HdsskNBpbqduTBeqEpcvEp
	wSm7MYyOWMuPGSzU+UTc7E4oKA6T37IN8GE06gnbJyj/XMWGumF/Goq0yqKmmORaizaaqRHqLycJH
	zSpOCxGFOF29dUycEPMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOQC-0002w6-7g; Tue, 30 Jul 2019 09:27:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOPw-0002vi-U9
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:27:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2096C20665;
 Tue, 30 Jul 2019 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564478856;
 bh=SKrtRvl5PY+xSQMY/2ee+4a4/9Fd63llyHB3gzj8fMw=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=ygueO2xHBORMlwOlZoAFuDF440R5FDSKuhZ6cPycOBVLY2icVq7RQyfm3gj9MSltQ
 EHD+sP8Ok6RCtCfOCoL5CJl+xCOS2htNHA+QTX7X/jUH2Lk8lKAQqIijLVZ4zNz5SG
 yPCiZ48mMqNN5WmPkqyAY/FcD3m9BDPNi0n9uRZI=
Date: Tue, 30 Jul 2019 10:27:31 +0100
From: Will Deacon <will@kernel.org>
To: Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, arnd@arndb.de,
 linux@dominikbrodowski.net, ebiederm@xmission.com,
 akpm@linux-foundation.org, viro@zeniv.linux.org.uk, oleg@redhat.com,
 steve.mcintyre@arm.com, dave.martin@arm.com
Subject: Re: [PATCH 0/2] Don't use SIGMINSTKSZ when enforcing alternative
 signal stack size for compat tasks
Message-ID: <20190730092730.q6djqrv6ag7fcofs@willie-the-truck>
References: <1532526312-26993-1-git-send-email-will.deacon@arm.com>
 <20190729202302.GA3443@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729202302.GA3443@aurel32.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_022736_993222_24499590 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:23:02PM +0200, Aurelien Jarno wrote:
> On 2018-07-25 14:45, Will Deacon wrote:
> > Hi all,
> > 
> > The Debian folks have observed a failure in the 32-bit arm glibc testsuite
> > when running under a 64-bit kernel. They tracked this down to sigaltstack(2)
> > enforcing the alternative signal stack to be at least SIGMINSTKSZ bytes,
> > which is higher for native arm64 tasks than compat 32-bit tasks.
> > 
> > These patches resolve the issue by allowing an architecture to define
> > COMPAT_SIGMINSTKSZ for compat tasks, which is then used by the sigaltstack
> > checking code.
> > 
> > Feedback welcome,
> > 
> > Will
> > 
> > --->8
> > 
> > Will Deacon (2):
> >   signal: Introduce COMPAT_SIGMINSTKSZ for use in compat_sys_sigaltstack
> >   arm64: compat: Provide definition for COMPAT_SIGMINSTKSZ
> 
> Only the first patch went to the stable kernels. The second one is
> missing, so the bug is still not fixed in those kernels. Would it be
> possible to also get it included?

Damn, you're right. I think the autosel bot picked the first commit but not
the second. In hindsight, we should've tagged them both, but oh well. I've
posted the patch here for -stable, with you on cc:

https://lore.kernel.org/lkml/20190730092547.1284-1-will@kernel.org/T/#u

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
