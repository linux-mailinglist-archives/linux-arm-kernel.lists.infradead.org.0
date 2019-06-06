Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CBA369C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mggi2l3xLCy864BwImzZ3rLBQlQGBFI0NiskE7hRobw=; b=KX/9TRSNg9XRf7
	81GBAnqbhmZohztsJTr55XpEJk2lLD1xByXjCeui9VNQNG7pm4RVLScN1MP/C94LnwqVaIUi2s83T
	W+j+Jok9/rhjMCr9uFOpJrcXdrMxez83Py+Pr15py/l6SsxsOzs/Mo7iORuVrBTAbtQ50GdYJCGm5
	1LFpIU1PfV9YJyaCYZ/J72P3OlvzcAtZMaT/2Pg2fh0dyXxNwuoXquNacS89WoJj+jvT30agPfPfw
	cunOHkOgbwgMZ2q30sl3KeslBKgqjNnzFOhKWUgTEnefKRvdaz8qhyxqh8SXtouogYFyuVP4NDbO2
	dadLluNvorgSe4jfd0lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYhnQ-0007QW-MU; Thu, 06 Jun 2019 02:06:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYhnJ-0007QF-Mr
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 02:06:23 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87F072083E;
 Thu,  6 Jun 2019 02:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559786781;
 bh=DEsewAl7DchdG5mLmaSMM4jw+TI9oz5CtU88XfxctO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S6qdHb+g0hwne9QhXK7didYcZvyT4/OZ9iGY/cpRgOP6bhtY4CjGGwCNcaJg4AZA+
 +d64pQOL5PGasF24/0V6slqoe+vBqFm09G0YP0GS8dkutNXAnZ55AcJAbDvl3NhOQB
 IKpinacWQS65dfc4v+4FrCdDs/YPsizhsee09cRo=
Date: Thu, 6 Jun 2019 10:06:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH V2] ARM: dts: imx53: Bind CPLD on M53Menlo
Message-ID: <20190606020605.GU29853@dragon>
References: <20190601223050.27410-1-marex@denx.de>
 <20190606015451.GS29853@dragon>
 <CAOMZO5D7Y8rmROYd0cEnLTSi2bGhx2KDfCQ9iDP94bXeUui4ow@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5D7Y8rmROYd0cEnLTSi2bGhx2KDfCQ9iDP94bXeUui4ow@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_190621_762926_9A288BE7 
X-CRM114-Status: UNSURE (   9.79  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marek Vasut <marex@denx.de>, NXP Linux Team <linux-imx@nxp.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 10:57:54PM -0300, Fabio Estevam wrote:
> Hi Shawn,
> 
> On Wed, Jun 5, 2019 at 10:55 PM Shawn Guo <shawnguo@kernel.org> wrote:
> 
> > Don't you get the following warning from kernel?
> >
> >   OF: buggy DT: spidev listed directly in DT
> 
> I originally thought about that too, but then I saw this patch from
> Marek, which avoids the warning:
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/drivers/spi/spidev.c?h=next-20190605&id=c6e2d2c7ca4e6d09bc07ab5ced2e687cc842a860

Okay.  Has compatible "menlo,m53cpld" been documented?  Also my
understanding is that as long as "spidev" is on the compatible list,
we will see this warning, no?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
