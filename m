Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816FD980BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:53:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XM/2mZSgEfBKw4DQVHtf1lsGWHiDk3UTeDlsqPjh0bI=; b=BIF7alrvvBfhko
	5L1RmNbzv4q194Dg0IkaPCaIoxTbABA46HNIcdZ0U+OCdgZD4+WNR4cjRdD8fxNlyLMI1qBT4cdqI
	hZwvVqCK3TjuE5kdIM0qs4OLs6pPRowVcGD8OtsL9lwpYC0jljXBv9z7kr6PP5yzj1VKIS8xmgJ5R
	TL5ygpIzTQk7+8Eh8noPa2IgjaZI1RkuQaYR/nOcePFD3/Z6KxXDypOEWfRqx/zyWxnGaJTMWPvja
	9qLGFvLst6bHTylvAp4sAQGBMIop0fESvO+krPJoJXLtPR0RjypmMNv0IKDAPwP4chIwFUUdGefvp
	puUMnfDzpSgYxHhDRvSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Trw-0003JN-IZ; Wed, 21 Aug 2019 16:53:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Tro-0003IA-BT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:53:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9699122DD3;
 Wed, 21 Aug 2019 16:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566406424;
 bh=8EpYXOIJQ7TePwZ/ZCJnzDEkdpUgKmzzxBX02HTYDWc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mfA3TYZ5mReb6a41G+2FUsWZ4XDr3vM5MuLTd+xih2gFnd/B+p3syzRto7GLy1yCP
 yNbNLlyJluiuGn/UDS0ljvkiKAsdh75khbDmuBybOByPBaXAfA3M/PM56Bd93ckdf7
 Uz4JeqWNifNtxOjNgPEvRWiDgS+Ymy2V+CFJCsZE=
Date: Wed, 21 Aug 2019 17:53:39 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v3 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Message-ID: <20190821165339.7gu4rxkvdjcr4mta@willie-the-truck>
References: <1563873380-2003-1-git-send-email-gkulkarni@marvell.com>
 <1563873380-2003-3-git-send-email-gkulkarni@marvell.com>
 <20190812120125.GA50712@lakrids.cambridge.arm.com>
 <CAKTKpr7juHd9Bgam28LESadihFadEAevRAhc-7w3PTMYY7HLNw@mail.gmail.com>
 <20190813110345.GD866@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813110345.GD866@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_095348_427672_B3F44F4F 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 "corbet@lwn.net" <corbet@lwn.net>, Jan Glauber <jglauber@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Ganapatrao Kulkarni <gklkml16@gmail.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 12:03:45PM +0100, Mark Rutland wrote:
> On Tue, Aug 13, 2019 at 04:25:15PM +0530, Ganapatrao Kulkarni wrote:
> > On Mon, Aug 12, 2019 at 5:31 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > On Tue, Jul 23, 2019 at 09:16:28AM +0000, Ganapatrao Kulkarni wrote:
> > > > CCPI2 is a low-latency high-bandwidth serial interface for connecting
> > > > ThunderX2 processors. This patch adds support to capture CCPI2 perf events.
> > >
> > > It would be worth pointing out in the commit message how the CCPI2
> > > counters differ from the others. I realise you have that in the body of
> > > patch 1, but it's critical information when reviewing this patch...
> > 
> > Ok, I will add in next version.
> > >
> > > >
> > > > Signed-off-by: Ganapatrao Kulkarni <gkulkarni@marvell.com>
> > > > ---
> > > >  drivers/perf/thunderx2_pmu.c | 248 ++++++++++++++++++++++++++++++-----
> > > >  1 file changed, 214 insertions(+), 34 deletions(-)
> > > >
> > > > diff --git a/drivers/perf/thunderx2_pmu.c b/drivers/perf/thunderx2_pmu.c
> > > > index 43d76c85da56..a4e1273eafa3 100644
> > > > --- a/drivers/perf/thunderx2_pmu.c
> > > > +++ b/drivers/perf/thunderx2_pmu.c
> > > > @@ -17,22 +17,31 @@
> > > >   */
> > > >
> > > >  #define TX2_PMU_MAX_COUNTERS         4
> > >
> > > Shouldn't this be 8 now?
> > 
> > It is kept unchanged to 4(as suggested by Will), which is same for
> > both L3 and DMC.
> > For CCPI2 this macro is not used.
> 
> Hmmm....
> 
> I disagree with that suggestion given that this also affects the
> active_counters bitmap size (and thus it is not correctly sized as of
> this patch), and it doesn't really save us much.
> 
> I think it would be better to bump this to 8 and always update the
> events array, even though it will be unused for CCPI2. That's less
> surprising, needs fewer special-cases, and we can use the hrtimer
> function pointer alone to determine if we need to do any hrtimer work.

tbf, my complaint was actually about some macros applying to the whole
PMU whilst others refer only to DMC/L3C and this not being apparent from
the naming:

https://lkml.org/lkml/2019/6/27/250

so I'm fine having TX2_PMU_DMC_L3C_MAX_COUNTERS and
TX2_PMU_CCPI2_MAX_COUNTERS, but that sort of naming needs to be consistent
unless the macro/definition really applies to both. That fed the suggestion
that GET_EVENTID could be generic and switch on the event type internally
instead of at the caller.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
