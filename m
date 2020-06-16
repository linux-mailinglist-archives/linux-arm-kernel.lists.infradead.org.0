Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47781FAD34
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:57:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPYFqCv5zGxK0rnUguDWn4MMZeq0dG867z74CRbcibY=; b=V9nV4xJOhmmu5d
	GCCEmo9g5YZu2Yf2aftep+0KpJGV0g9W4NPSpRbSrCv++GuuLXQv1NYiMsy5hOcOVTv+Cmj2GRt45
	UjR/nQ1iVb0gl3tdQ+6C4ozUge2mT4eJ+Q6Wed1cRoz0gaswUZxZjWBj54/utPJlZECKiL9+E7AHl
	aJKcdCxYRaQ9t/zpryAd4VVjri5Sk2tBocNeWTl09b2BsUTjDBiKDAB6Pc7ndSfCE70mihUZ/qjuM
	O6b0UC03KPQ79BOyRChGP864VRpWTTeZLIH2qrtjQGKKfPyfiCNS+npi1/vV5/jYc/wiVe6WYnEUV
	tuJ59a6rMOR0tNR1my+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8L1-00009t-Q7; Tue, 16 Jun 2020 09:57:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8Kr-00009K-Pd
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:56:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A78E1F1;
 Tue, 16 Jun 2020 02:56:52 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0005B3F6CF;
 Tue, 16 Jun 2020 02:56:51 -0700 (PDT)
Date: Tue, 16 Jun 2020 10:56:49 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 0/2] arm64/sve: Misc fixes
Message-ID: <20200616095647.GM25945@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <159222357194.100947.4261034730480572836.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159222357194.100947.4261034730480572836.b4-ty@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_025653_877089_E43B50D5 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 05:34:01PM +0100, Will Deacon wrote:
> On Wed, 10 Jun 2020 18:03:08 +0100, Dave Martin wrote:
> > A couple of unrelated minor fixes: one documentation typo fix, and one
> > fix for a (mostly) theoretical data race.
> > 
> > Dave Martin (2):
> >   docs/arm64: Fix typo'd #define in sve.rst
> >   arm64/sve: Eliminate data races on sve_default_vl
> > 
> > [...]
> 
> Applied to arm64 (for-next/fixes), thanks!
> 
> [1/2] docs/arm64: Fix typo'd #define in sve.rst
>       https://git.kernel.org/arm64/c/9ba6a9efa4a4
> [2/2] arm64/sve: Eliminate data races on sve_default_vl
>       https://git.kernel.org/arm64/c/1e570f512cbd

Thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
