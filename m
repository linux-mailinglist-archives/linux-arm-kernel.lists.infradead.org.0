Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DC78AA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHQgV3NgzJF3pLIIJona3VfIOLcemxIyF6ZFkfG3fHY=; b=LWVPTYNpZUHBTE
	ZEEU1vaJPC4+7S8BUCSd0VqJ5ivkI+KDUc1zjDVRhsXJWZJVXavL8v0bqS6rffKihaNCKxS6c8TYQ
	aedmFNCnnzhCX0BB8y+qWhtPjI2nIpAE/FH18AY/83ch40ZCptuzBt642uhYjjAr4GEDA5Opv045i
	pJdm7JcW63fAT8Le+6sqyu67IgkxuN8Fko8KorA8MvCLxrNKEVbju44SbHLJ4nVUsmHwP2IYfdTh8
	iySL8PbCaRxDm7Ableq3zw+06BUVJbtQrceBilWWAvpPbenEAiIbRRMv3gLgoQLyVBwiqqorFgVFz
	RraPh7dTsgNCe7YRIWMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3tl-00087U-IN; Mon, 29 Jul 2019 11:33:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3td-00086t-9w
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:32:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1661728;
 Mon, 29 Jul 2019 04:32:51 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 110E23F694;
 Mon, 29 Jul 2019 04:32:48 -0700 (PDT)
Date: Mon, 29 Jul 2019 12:32:44 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 2/5] arm64: dts: r8a7795: Add cpuidle support for CA53
 cores
Message-ID: <20190729113244.GA12631@e121166-lin.cambridge.arm.com>
References: <1547808474-19427-1-git-send-email-uli+renesas@fpond.eu>
 <1547808474-19427-3-git-send-email-uli+renesas@fpond.eu>
 <20190726091325.GA13111@vmlxhi-102.adit-jv.com>
 <20190726094724.GA14913@vmlxhi-102.adit-jv.com>
 <CAMuHMdXiOBxUDXLcL6R7jHF4DMoH=72yMkSiv-51aV7cw3my9Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXiOBxUDXLcL6R7jHF4DMoH=72yMkSiv-51aV7cw3my9Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_043253_427820_B5E317AD 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Wischer, Timo \(ADITG/ESM\)" <twischer@de.adit-jv.com>,
 "takeshi.kihara.df@renesas.com" <takeshi.kihara.df@renesas.com>,
 Ulrich Hecht <uli+renesas@fpond.eu>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "dien.pham.ry@renesas.com" <dien.pham.ry@renesas.com>,
 "Maik.Scholz@de.bosch.com" <Maik.Scholz@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>,
 "khiem.nguyen.xt@renesas.com" <khiem.nguyen.xt@renesas.com>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "Dirk.Behme@de.bosch.com" <Dirk.Behme@de.bosch.com>,
 "horms@verge.net.au" <horms@verge.net.au>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 09:44:52AM +0200, Geert Uytterhoeven wrote:
> Hi Eugniu,
> 
> CC cpuidle people
> 
> On Fri, Jul 26, 2019 at 11:47 AM Eugeniu Rosca <erosca@de.adit-jv.com> wrote:
> > On Fri, Jul 26, 2019 at 11:13:29AM +0200, Rosca, Eugeniu (ADITG/ESM1) wrote:
> > [..]
> > > The culprit BSP commits are:
> > > https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas-bsp.git/commit/?id=3c3b44c752c4ee
> > > https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas-bsp.git/commit/?id=902ff7caa32dc71c
> > >
> > > Further narrowing it down, it turns out the CA57 cpuidle support is
> > > not responsible for generating the issue. It's all about the CA53 idle
> > > enablement. The reference target is H3-ES2.0-Salvator-X (the problem
> > > originally emerged on M3-based customer HW).
> > [..]
> >
> > Small amendment to the above (based on vanilla testing):
> >
> >  Version                              Issue reproduced?
> >                                       (H3-ES2.0-Salvator-X)
> >  v5.3-rc1-96-g6789f873ed37              No
> >  v5.3-rc1-96-g6789f873ed37 + [1]        No
> >  v5.3-rc1-96-g6789f873ed37 + [2]        No
> >  v5.3-rc1-96-g6789f873ed37 + [1] + [2]  Yes
> >
> > [1] https://patchwork.kernel.org/patch/10769701/
> > ("[v2,1/5] arm64: dts: r8a7795: Add cpuidle support for CA57 cores")
> >
> > [2] https://patchwork.kernel.org/patch/10769689/
> > ("[v2,2/5] arm64: dts: r8a7795: Add cpuidle support for CA53 cores")
> 
> Thanks for your report and investigation!
> 
> Unfortunately your original report didn't make it to lore.kernel.org, and
> probably also not to the list, due to the large audio attachment.
> 
> For the newly CCed people, the issue is about consistent dropouts
> during audio playback using an in-house application, introduced by
> adding cpuidle support to _both_ the big and LITTLE cores.

CPUidle entry/exit latencies are certainly bringing the issue
about, I am not an audio expert but I suspect buffering should
be tuned to cope with those _increased_ latencies or possibly
idle states disabled for certain specific use cases - there
is no silver bullet, entering deep idle states will increase
latencies, there is no way around it.

I am happy to help you debug the issue further.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
