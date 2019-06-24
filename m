Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CED7505DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvAGOgazTWrIfiMXxHdd8zyFSWdC4MpaL6Pz4NGMgMg=; b=BbDFMK222/VR7a
	AgFxe3ubqSr02eB8FsWS6G6JyagWpFP61ySMGPpiVWY11YD4Q+j2Qwm2+a2HS4udeLD9zIWh85i3L
	pPwJwVwdILDKBLtCbOHjjq22dxULt5gEpDQmcFEFZ93GBraw8Oczj99uZGxX64jRZAwCClwMFYh9/
	/VhoJyX0YpQvT4KLpPwb6hIek8D/kLpIYfauVEvAoVkp2JkZ4nUeD2da0X4DTfXMZXFWFM+bXJYkb
	8co7ggcf/m1TPZ5QV/BzzGV8DDWjflSS//OIunIVb3OVa1ifwN4WReJVv4zJ0BN2I7zKcAD+Y3lcd
	zWvpEWTvTiuLi5Dkg0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLNq-0004Xk-6J; Mon, 24 Jun 2019 09:35:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLNY-0004Vd-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:35:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB8EA2089F;
 Mon, 24 Jun 2019 09:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561368912;
 bh=V+JNcIbt/6VMBYdQNX/9snknRFUTiqfcznYN8RZhvtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NZZkyhVjPxs92xmMnw0gDIRG16eJWCsvHc7Hg5RDsDJmTCBhHEBTojZ9qQ98hKZWk
 0+f3k5bX6F0Fkj813jbFbAW3IXULoD/yEAzXSX7dwjYgUVPKbDo/Z0piWvGWfN/gQt
 JgMhb1xlGDR29eCwqhAeDu4J6YRFoheN3QL2EW70=
Date: Mon, 24 Jun 2019 10:35:07 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: LTP hugemmap05 test case failure on arm64 with linux-next
 (next-20190613)
Message-ID: <20190624093507.6m2quduiacuot3ne@willie-the-truck>
References: <1560461641.5154.19.camel@lca.pw>
 <20190614102017.GC10659@fuggles.cambridge.arm.com>
 <1560514539.5154.20.camel@lca.pw>
 <054b6532-a867-ec7c-0a72-6a58d4b2723e@arm.com>
 <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <EC704BC3-62FF-4DCE-8127-40279ED50D65@lca.pw>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_023512_800019_7D117793 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Qian Cai,

On Sun, Jun 16, 2019 at 09:41:09PM -0400, Qian Cai wrote:
> > On Jun 16, 2019, at 9:32 PM, Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> > On 06/14/2019 05:45 PM, Qian Cai wrote:
> >> On Fri, 2019-06-14 at 11:20 +0100, Will Deacon wrote:
> >>> On Thu, Jun 13, 2019 at 05:34:01PM -0400, Qian Cai wrote:
> >>>> LTP hugemmap05 test case [1] could not exit itself properly and then degrade
> >>>> the
> >>>> system performance on arm64 with linux-next (next-20190613). The bisection
> >>>> so
> >>>> far indicates,
> >>>> 
> >>>> BAD:  30bafbc357f1 Merge remote-tracking branch 'arm64/for-next/core'
> >>>> GOOD: 0c3d124a3043 Merge remote-tracking branch 'arm64-fixes/for-next/fixes'
> >>> 
> >>> Did you finish the bisection in the end? Also, what config are you using
> >>> (you usually have something fairly esoteric ;)?
> >> 
> >> No, it is still running.
> >> 
> >> https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config
> >> 
> > 
> > Were you able to bisect the problem till a particular commit ?
> 
> Not yet, it turned out the test case needs to run a few times (usually
> within 5) to reproduce, so the previous bisection was totally wrong where
> it assume the bad commit will fail every time. Once reproduced, the test
> case becomes unkillable stuck in the D state.
> 
> I am still in the middle of running a new round of bisection. The current
> progress is,
> 
> 35c99ffa20ed GOOD (survived 20 times)
> def0fdae813d BAD

Just wondering if you got anywhere with this? We've failed to reproduce the
problem locally.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
