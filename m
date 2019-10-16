Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2699D9C62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 23:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXVS7FZYrKi0rgKE4N0G7MpPNYLFCdvnMTlZSsZ8zrU=; b=GuxWI/Wq4ziIed
	7jdxmuj/abtnI00K0EqmxZ4jOJoD31I+dahDmYOq5MZgB0GKbCovf/ItJQnxcC27tvYT8NkNFdCNu
	A5DBCUW8UQ6+wUjEndkar3GsNJE0xZtK5YyG6lpMouHTQvfH3BCWEX1lLJpmi+HYiHxu5ExVS/jxy
	1ork1vMT1vu3pX0oM+ktaP1KroUa/HfYYDdQ6veY2eMk1ZLoGVf6WxN/RS9LkXfg0su7G9ot8ykRN
	/jim3gVfjAadNL7iqAnZU1CiC3/IcIKvgPIFOvHC5UaVX7vigwOhnlswcETYC63vGRVSjztwcOkCk
	hVYumI5L1TfPyjTIyMfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKqi8-0002y8-KV; Wed, 16 Oct 2019 21:20:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKqhy-0002xc-7S; Wed, 16 Oct 2019 21:19:51 +0000
Received: from localhost (li1825-44.members.linode.com [172.104.248.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40E5D218DE;
 Wed, 16 Oct 2019 21:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571260788;
 bh=kxpZ4NEap8M1vdSe2cZZiHuUNUT660ZZnycJscME2II=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C+BrehFiJ9yZhY6n0se3JuH6N0NMyVe4nGDucb1CdC52CJskcelUStOfU0XePHWM+
 tZ6+9huDFavePTuVQZVu3bg1jMxwemwFRZEC6FIeWubXJ4GgUqJ7mRrQTPoNwzJAOq
 aTK50GkLatPY06mXFtxAkvuIDekFsR0BNmYVeWaE=
Date: Wed, 16 Oct 2019 14:19:43 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] perf/hw_breakpoint: Fix arch_hw_breakpoint
 use-before-initialization
Message-ID: <20191016211943.GD856391@kroah.com>
References: <20190906060115.9460-1-mark-pk.tsai@mediatek.com>
 <CAD=FV=Vxdnecw2SnUeFpa8Rqq0DSTTeoD_bE1GXk4q37usZ9-w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Vxdnecw2SnUeFpa8Rqq0DSTTeoD_bE1GXk4q37usZ9-w@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_141950_290786_E8A56BE4 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alix Wu <alix.wu@mediatek.com>, Peter Zijlstra <peterz@infradead.org>,
 YJ Chiang <yj.chiang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, namhyung@kernel.org,
 "stable@vger.kernel.org" <stable@vger.kernel.org>, jolsa@redhat.com,
 Mark-PK Tsai <mark-pk.tsai@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 10:44:13AM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Sep 5, 2019 at 11:01 PM Mark-PK Tsai <mark-pk.tsai@mediatek.com> wrote:
> >
> > If we disable the compiler's auto-initialization feature
> > (-fplugin-arg-structleak_plugin-byref or -ftrivial-auto-var-init=pattern)
> > is disabled, arch_hw_breakpoint may be used before initialization after
> > the change 9a4903dde2c86.
> > (perf/hw_breakpoint: Split attribute parse and commit)
> >
> > On our arm platform, the struct step_ctrl in arch_hw_breakpoint, which
> > used to be zero-initialized by kzalloc, may be used in
> > arch_install_hw_breakpoint without initialization.
> >
> > Signed-off-by: Mark-PK Tsai <mark-pk.tsai@mediatek.com>
> > Cc: YJ Chiang <yj.chiang@mediatek.com>
> > Cc: Alix Wu <alix.wu@mediatek.com>
> > ---
> >  kernel/events/hw_breakpoint.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Stable should pick this up, please.  It landed in mainline as commit
> 310aa0a25b33 ("perf/hw_breakpoint: Fix arch_hw_breakpoint
> use-before-initialization").
> 
> * I have confirmed that it cleanly applies to and fixes a kernel based
> on v4.19.75, so picking it back to kernels 4.19+ is the easiest.
> 
> * I have confirmed that my test shows that hardware breakpoints fail
> on my arm32 test machine on v4.18.20 and on v4.17.0.  They last worked
> on 4.16.  Picking this patch alone is not sufficient to make 4.17 and
> 4.18 work again.  Bisecting shows that the first breakage was the
> merge resolution that happened in commit 2d074918fb15 ("Merge branch
> 'perf/urgent' into perf/core").  Specifically both parents of that
> merge passed my test but the result of the merge didn't pass my test.
> If anyone cares about 4.17 and 4.18 at this point, I will leave it as
> an exercise to them to try to get them working again.

Now queued up to 4.19.y, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
