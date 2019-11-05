Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2CEF9E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 10:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DK5DgfOrGoEndpaII0NRPFJQTh6dDtYIEuYqCHzJgtg=; b=YsKte1Vmn6PC6h
	sja5iKGVPZfXRwOY2/Eo//pfh7+abfcOKOQWMb9JDi26aN720zKP8y64cj+DVw1oThdsZPv1U+bUi
	nF27VKo+gJcvirmeC43DwI2ssQltvzVwpwc9uNNvTxzGOyb6YUCFLXM2+ADF827qVircA9hw0/cSP
	Ux0W+SrZDakRAif/w+TJWr7Krcbmp0sKYetqDxHKaiBduA3009xFlquQDKn98Z+bPMoAUGewJNI7k
	/QBnZH5DI5EYVQokSnojgVmqHWperVXy1bBXxaZlRBzW+xZrj00lZQRMNy8zlFzTlD7zfEyVHjwQD
	bbP2qc3X+yGoMr3nfKZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRvQQ-0001cP-2A; Tue, 05 Nov 2019 09:46:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRvQJ-0001by-Bl
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 09:46:52 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D81E20869;
 Tue,  5 Nov 2019 09:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572947210;
 bh=JQWl8SugR80SbGfQRumLixabSIoOFQ8Ifokdn2SyUgI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EEP/xFb9vZaBR6EY2ffNu2NRzYscYX0H2QnQUaRydorpfKFbWs1k1BknlzdmiiYgC
 oRIukCix+UCLZIATe/l5mRWHqtggnSGcBPI5K2EHkPzNXD9oy8JCpYi3lCkdf4dnbm
 vVdJEZRtx4jMYSxAA1qkaZ2Zs6t1GL0U5rRB3BYc=
Date: Tue, 5 Nov 2019 09:46:46 +0000
From: Will Deacon <will@kernel.org>
To: Joakim Zhang <qiangqing.zhang@nxp.com>
Subject: Re: [PATCH 2/2] perf/imx_ddr: Dump AXI ID filter info to userspace
Message-ID: <20191105094645.GA29852@willie-the-truck>
References: <20191104070616.29834-1-qiangqing.zhang@nxp.com>
 <20191104070616.29834-2-qiangqing.zhang@nxp.com>
 <20191104165338.GE24909@willie-the-truck>
 <DB7PR04MB4618316403D1F32CF1739CCFE67E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DB7PR04MB4618316403D1F32CF1739CCFE67E0@DB7PR04MB4618.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_014651_428870_E4F1A268 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Frank Li <frank.li@nxp.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 01:48:44AM +0000, Joakim Zhang wrote:
> > I've made those two changes, so I'll queue this up for 5.5. Thanks.
> 
> Will, need me send a patch to remove this array syntax under the directory drivers/perf/... together?

No need, but please check:

https://git.kernel.org/pub/scm/linux/kernel/git/will/linux.git/log/?h=for-next/perf

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
