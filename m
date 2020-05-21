Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3D31DD687
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCAnInhi4pAk6weQwyPSZD0PES7rdETkwXBIJNOddDk=; b=kXhiZTgNz2GRF9
	S1i+uN9clIi/CC7KUZUW2XYrsxF9DGU0/ehRdKgxFLhomqYBBoEw1vNfF3shijemSZ/HukOHG9COa
	QICQjuGD/XRRNmwR/nFpHAKzCvInxXV33jNaPbkv2Nktt9luHkdVOf9lVnfQ3li+nsSKzHzywHBU+
	hC0mzu2EW/cZNEmdLEDj+VHliKGgmg205njQMRIgbyDhaeqKJhLFJWa5amX0Z/j1xlWk0r+v8bxDj
	frsh8bhZFwOzSfb3Zvs0O23iQ4Yj4kUhet8Bgp9r9rT2vMOrneBvSP5vJCwK2RrVzIZ9uTpJSDBT3
	MazHzZhzRM1yI+6e2R0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbqSV-0001On-OU; Thu, 21 May 2020 19:02:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbqSH-0001OM-3Z; Thu, 21 May 2020 19:02:10 +0000
Received: from kernel.org (unknown [87.71.47.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8DBD20759;
 Thu, 21 May 2020 19:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590087728;
 bh=nNXKaXk7NUUEHuMk8/5mkYYFL6NtSC+OylXv+fxspZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m+rqRENo+YpOG/+8fQJrGpjYWTDcItfdopESIMnNjk5K6tnfDuXqwfcCoMG8Bua+7
 08kcwp5i0jYpJWEdLgD1LzT07zwu8TKhl8+pIP2cpifaivdr5H1fiCyJAk40z1ZPWt
 2BSc8PuEAG39azrQxN1xIn+SRSRfFxKKhLdVdW1Q=
Date: Thu, 21 May 2020 22:01:58 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200521190158.GL1118872@kernel.org>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
 <20200521071213.GI1118872@kernel.org>
 <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2XdG_u6_o2NbQDTb5dbdzByBkUXZNM6nZ3wz0c-LFT5w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_120209_173848_07481663 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 09:26:10AM +0200, Arnd Bergmann wrote:
> On Thu, May 21, 2020 at 9:12 AM Mike Rapoport <rppt@kernel.org> wrote:
> >
> > On Wed, May 20, 2020 at 05:21:51PM +0200, Arnd Bergmann wrote:
> > > On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> > > >
> > > > As these boards have no more users nor testers, and patching them has
> > > > become a burden, be that because of the PCI part or the MTD NAND
> > > > support, let's remove them.
> > > >
> > > > The cm-x300 will for now remain and represent Compulab boards at its
> > > > best in the PXA department.
> >
> > I think this series missed the cm-x270 NAND driver, so this could be
> > PATCH 4/3 (not even compile tested).
> >
> > From 56a11987f82ef8b32b25dfc17b849f9bbbf03e4d Mon Sep 17 00:00:00 2001
> > From: Mike Rapoport <rppt@linux.ibm.com>
> > Date: Thu, 21 May 2020 10:09:47 +0300
> > Subject: [PATCH] mtd: rawnand: remove CM-X270 NAND driver
> >
> > The cm-x270 board have been removed and theres is no point to keep this
> > driver.
> >
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> 
> Thanks! Removing that driver was actually how the discussion started,
> so we definitely want to do that. Boris earlier patch "mtd: rawnand: Get
> rid of the cmx270 driver" did it by changing the board file, now your
> patch is the right thing to do, and we should remember to do the same
> for mbxfb.

Arnd, will you pick this to the SoC tree or should I resend?

>       Arnd

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
