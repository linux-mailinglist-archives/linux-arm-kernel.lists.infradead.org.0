Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856A98A41E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBMrrdUZyHaQ/nMItcBa23G29SZCHLz4aW3yHchFT/0=; b=gdH2Qsn1zOZmHT
	GIMa2Cq14GrDjdmmjN0xpdkPsC7HGy2swexe7d0mJZgrIcfbqrhhNZaCp9mS95l3Qxa1dt1fJGmli
	MQeKXQo2nen8yszxd46dAp2BrIjbzcpPtqoeK42gZad8C1NtNZBVnyeMbCcSavd2ltz2CZg0/KT/n
	yLewDbmdD32/KCPAJ6v7Iszqjka/MwjxZlcyfwGglGJMhPn6t8ynEo0J8MhngcbvQvFWudhvhCuoz
	c2CIVCLiRNGas5hTyf0EDCXxXk9x+5dudMajQhczHcs7rzwfz/JH9KDlGE1XgJVngxseu+2bxz8He
	FT7/No/3XRltS9F3Rnpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDxD-00017r-3j; Mon, 12 Aug 2019 17:17:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDwy-00017L-Tq
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:17:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C90F215AB;
 Mon, 12 Aug 2019 10:17:38 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 59BEC3F706; Mon, 12 Aug 2019 10:17:37 -0700 (PDT)
Date: Mon, 12 Aug 2019 18:17:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Message-ID: <20190812171734.GC62772@arrakis.emea.arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
 <20190807155321.9648-2-catalin.marinas@arm.com>
 <20190808170424.6td34cpdngkcxxpu@willie-the-truck>
 <20190812104606.GY56241@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812104606.GY56241@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_101741_007766_CEE5F989 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Will Deacon <will.deacon@arm.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 11:46:06AM +0100, Andrew Murray wrote:
> On Thu, Aug 08, 2019 at 06:04:24PM +0100, Will Deacon wrote:
> > On Wed, Aug 07, 2019 at 04:53:20PM +0100, Catalin Marinas wrote:
> > > +
> > > +- mmap() addr parameter.
> > > +
> > > +- mremap() new_address parameter.
> > > +
> > > +- prctl(PR_SET_MM, ``*``, ...) other than arg2 PR_SET_MM_MAP and
> > > +  PR_SET_MM_MAP_SIZE.
> > > +
> > > +- prctl(PR_SET_MM, PR_SET_MM_MAP{,_SIZE}, ...) struct prctl_mm_map fields.
> > 
> > How did you generate this list and who will keep it up to date? How do you
> > know you haven't missed anything?
> 
> What about shared memory system calls: shmat, shmdt? The latest "arm64: untag
> user pointers passed to the kernel" series doesn't untag these, thus we should
> indicate here that these too are no supported.

Yes. We dropped them from a previous version of the series but they've
never been documented. I'll add something (unless someone has a real
use-case for using tags with shmat/shmdt).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
