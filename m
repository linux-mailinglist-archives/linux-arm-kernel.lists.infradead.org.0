Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5391E2F7B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 21:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a74beiMRGPvuj9ZUu4yE/pQdLmmJWtfGYBkhzNEyJK0=; b=CSKWhjBEpTJq73
	dKEJB5N+X7wlaKaelIq7hFgEfyFwvnRwMhS9Lu69VlgXfvx7/nd0G/gSohvC6r82g85yjE57qcLqw
	Cc/jNN+2t+mqohrEc/yw7t5BcT5HJ0J/T7XtGHIYs0adz3WVgSSZsRhZahM9T2JX6lXX6U4sEwLzf
	uA1Ri1ifwN3rJP5gefs4iEbscrXE1uLlCK8OF8c9qbAGz9SA6VTA6kKBSblCcbF0sntn72S8ehFP7
	o4irOM0FXobL2ODW/qe9iU5dApGCExg8KCi5gY9p8/sCQxx6BWMUwPkiEvOkElPhZS0t0QCvg6cJf
	AshyTMF2RtKvlGuXsVdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdffA-0004IN-BN; Tue, 26 May 2020 19:55:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdfeu-0004Gz-R5
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 19:54:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27A05207CB;
 Tue, 26 May 2020 19:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590522884;
 bh=uA+azEhnDDU5ByOCPfCgT3WAmDMhWM5iuWOCxhtXg/I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w919gwaNrFBgzpclO1zprNKacyC5iCCfoMaFtfyfOzOXB4bIKoDDbPiHUyf/Kstun
 r2vYrlHJ8CzEXTYhQ0HAff2bOkcmA7m7CExyoqN6bf652Wa0r6qyBYc3NKZsAe4KBd
 7ou7uA7xoQbNaSiyMKjH8B/Vp3GJr/rzn3NdP9Y0=
Date: Tue, 26 May 2020 20:54:39 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200526195438.GC2206@willie-the-truck>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526104337.GA7154@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_125444_906655_B25A18B9 
X-CRM114-Status: GOOD (  25.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 06:43:37PM +0800, Leo Yan wrote:
> On Tue, May 26, 2020 at 11:26:03AM +0100, Will Deacon wrote:
> > On Fri, May 22, 2020 at 11:09:19AM +0800, Leo Yan wrote:
> > > On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
> > > > This patch set is to support synthetic events with enabling Arm SPE
> > > > decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
> > > > have contributed much for this task, so this patch set is based on their
> > > > privous work and polish for the version 7.
> > > > 
> > > > The main work in this version is to polished the core patch "perf
> > > > arm-spe: Support synthetic events", e.g. rewrite the code to calculate
> > > > ip, packet generation for multiple types (L1 data cache, Last level
> > > > cache, TLB, remote access, etc).  It also heavily refactors code for
> > > > data structure and program flow, which removed unused fields in
> > > > structure and polished the program flow to achieve neat code as
> > > > possible.
> > > > 
> > > > This patch set has been checked with checkpatch.pl, though it leaves
> > > > several warnings, but these warnings are delibarately kept after
> > > > reviewing.  Some warnings ask to add maintainer (so far it's not
> > > > necessary), and some warnings complaint for patch 02 "perf auxtrace:
> > > > Add four itrace options" for the text format, since need to keep the
> > > > consistency with the same code format in the source code, this is why
> > > > this patch doesn't get rid of checkpatch warnings.
> > > 
> > > Gentle ping ...
> > > 
> > > It would be appreciate if can get some review for this patch set.
> > 
> > I was hoping that James Clark would have a look, since he was the last
> > person to go near the userspace side of SPE.
> 
> Yes, I have offline synced with James and James has verified this
> patch set at his side.
> 
> I don't want to rush to ask Arnaldo to merge patches, so just
> want to get wider reviewing if possible; otherwise, I will rebase this
> patch set and resend to ML.

One thing that might be useful is if James could offer his Tested-by or
Acked-by on the public mailing list. Neither Arnaldo nor I have details
about your offline sync!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
