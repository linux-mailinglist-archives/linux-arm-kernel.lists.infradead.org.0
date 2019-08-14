Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ACC8D306
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sZKuhm3FDhZqOtRBBt7hNBbxft43Dq3S2MZnfDMDOm0=; b=ZqGaslyLI5tooV
	bRLMxkFtAh+fJ7g5q/fLFf3lWWZyHdZKTyB72ySuTIfWW273RQcNR2Uyaj6dBTIWBy9Te4iXAOd+R
	qWZyNKc2F11ZWPJB3J+jo0GfGfYOSieHFSmBYAGCW0t540PpQ62LeVLSXvSWls+vvl5gV2FbSG+35
	B20fSu4EfmVc9jZ3KniCTA2TRHnpviol9E43uEQi2qI3wi/savycq1eNB7ZwapP9qkXYvI4GjnoAD
	wCmn9b4yWk4Fm4A4hZdLGfQGcxW3syp9AggJO0YZp1RyTBGWVUIDAY1j8egGsFKCbeH2fs46sw+u/
	6QzNrtWlslA2vFqwL3bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsKq-0004pp-5s; Wed, 14 Aug 2019 12:25:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsKW-0004pV-7W
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:24:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90EFB2084D;
 Wed, 14 Aug 2019 12:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565785479;
 bh=ksI/AlDOVITNJQjT7DMo+H2Yw3KjU59frpSXmb68Aw0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jBb3cXETjZGhGpg1EvHTUi/kwlRQR/AR9LUd4d1CLou4JeQRgmNoBge7u6Woj0ACI
 LHeidbZ+DI9voV7dvfT1PSWKLEjbacS/9L5Ot8YJvLTQFlLY3/OjgUrFr7EPRtDPQr
 jVjQjorRdxy5cYEBffrdzu2I7SUajFO2s782z+lg=
Date: Wed, 14 Aug 2019 13:24:34 +0100
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Message-ID: <20190814122434.tmnh6twmfidpfni4@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
 <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
 <20190813131013.vpc5a2vlxwghizxa@willie-the-truck>
 <CAMuHMdXr+S2QeOSEXZoGGDOB_PrgENPbVXFjS=pEfbHfvN2zhw@mail.gmail.com>
 <CACi5LpNhh0a0ktLeDDCO4K3-mBx0D8QZ344juAzbHeP4QFtGDw@mail.gmail.com>
 <20190814082137.mnk242lp2vw5b4ot@willie-the-truck>
 <CACi5LpMNC2h-JAmT3gc8wt6rwPBzQaAUZq_P18D3Atjg9CNS5A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpMNC2h-JAmT3gc8wt6rwPBzQaAUZq_P18D3Atjg9CNS5A@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_052440_292901_775264BB 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, Christoph von Recklinghausen <crecklin@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, maz@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Mark]

On Wed, Aug 14, 2019 at 05:29:09PM +0530, Bhupesh Sharma wrote:
> On Wed, Aug 14, 2019 at 1:51 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, Aug 14, 2019 at 01:34:49PM +0530, Bhupesh Sharma wrote:
> > > I still see the following issue on a 48-bit hardware (i.e. _non_
> > > ARMv8.2 hardware) with branch 'for-next/52-bit-kva' with commit
> > > d2d73d2fef421ca0d4 as the HEAD:
> >
> > Have you tried the patches I posted here:
> >
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/673315.html
> >
> > ?
> >
> > Whilst they're being reviewed, I've dropped the 52-bit branch from
> > linux-next (for-next/core) so that people don't keep running into this.
> 
> Thanks will try the above and get back with my results.
> 
> However just to make sure that the 52-bit changes are tested properly
> (before landing up linux-next) - as we had issues with the 52-bit User
> space VA + PA changes in the past (which broke userspace), I was
> wondering if we can have a dedicated branch to have the v5 patches
> from Steve + fixes, so that they can be easily tested and issues (if
> any) reported with easy reference.
> 
> Or, if such a branch already exists, kindly share the pointer to the
> same as well.

I've pushed the current round of fixes on top of:

https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/52-bit-kva

Mark has spotted a couple of other issues, but they shoudn't hold up your
testing (although I'm going to hold off putting this back into -next until
we've got them resolved).

Mark -- please use the branch above as a basis for any additional fixes.
HEAD should be d0b3c32ed922.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
