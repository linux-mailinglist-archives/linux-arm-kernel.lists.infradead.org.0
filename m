Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2C3609A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+VW0ifeSVlmij72d9KARu5A6BQ1i5JnR/rze6MaFWk=; b=hdfDlnKOKrNw33
	dhILiqINDyfl569yQMYmtV14Anl6vABfYsek+9C9qM48MW6FOAyUTgyB0DmusptIP2HQkVAv1CJuZ
	MNQ4bgTHpNgAhcZSiuAsDAJbKO8eolupL689fevShdXF9pnKfCPq4QmK19aZWqqs3C7uo80ySRMeg
	GRBraGNrVzMdfXbm38bF2EF3vz9RYQlBr5kPob9xGWNqYoBD7qWS+QcmuksfAwR5M7hKzFrCpXIkZ
	8n12U1fZK6xo8xBpRgI7SCHkTlTB34ay5+A7IXApZK41GV2OhFbYH9GwaZnF4AyDW+TYRagTvj+j6
	T0NUo4A30hDSh+b/qxLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQSX-0003Jk-Bw; Fri, 05 Jul 2019 15:49:13 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNp-000605-DY
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VCBq8195T2bhXt6tZ7Rzm483l25usl/NJbv7QMGco+U=; b=AX9eUsI8T+skT2iwszjmNdrY6
 257uEbLCNrZbWPhDKfZg8BCxwZxvcRQIAovvSDeN+xinpoYOLwLZShM5eAngnnnvZADlFEeOLNA6P
 xF1/LtE3lL4BF9yHGjwp8mw+ytFDIvt+/ay+Ib6wpOkglNs/66XKR9tMls5MjubQtEYtlRg3FaJRH
 FyNwnSESP7QRjS7NO+o/BFHSEMaXAAdq/lDShtecL9soFvLSJreSHTQ2lsOMOoT7g00JUrvmRhldf
 uVfWlmRXdh5O/7UBskS4CwECplf02NDTlKYS+zJQvBPUkBpjQZnywBsdw5dOcvO97jSRP98z9Ich1
 LLbF1kudA==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjO2o-000271-Pb
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 13:14:31 +0000
Received: from localhost (unknown [49.207.59.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7589B21850;
 Fri,  5 Jul 2019 13:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562332439;
 bh=4Ax4YHT9pSOfjjpXXhaL2jL94bL31h816GZtxYru400=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=btwexLJg3kxAdxu2/nhXrlxBb1eB9ovzxeZoIukphlXXmuThG6+a7UmKKXTXXZKV5
 Rj/5A+nuFNluNKXQEx67FC7VlUTYscurOjjF05FdRi40H++FOcDj66rXJvMhbuFlKZ
 A6jGbKGgBlCxBwWRds42zRK38fBBWe8MEmqynafI=
Date: Fri, 5 Jul 2019 18:40:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Message-ID: <20190705131049.GF2911@vkoul-mobl>
References: <CAGngYiVsUZwCUEsqRk-YtZPGYxsqzHzD7U5GeeHyAa2Yw9Z6WA@mail.gmail.com>
 <20190624140731.24080-1-TheSven73@gmail.com>
 <20190705124646.GD2911@vkoul-mobl>
 <CAGngYiW2+sBv1WqB8+csb=mZm2owziJ5wWcWLNPy7=m72ppypw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiW2+sBv1WqB8+csb=mZm2owziJ5wWcWLNPy7=m72ppypw@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-07-19, 09:08, Sven Van Asbroeck wrote:
> Hi Vinod,
> 
> On Fri, Jul 5, 2019 at 8:50 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > there is an else here too!
> >
> 
> You are of course right, I was looking at the wrong if.

NO issues :)
> 
> Apologies for the confusion, I did try to look at what you
> changed, but your git repo listed in MAINTAINERS appears
> unresponsive for me?

To quote David you need to move to 21st century (like me). IPv4 switch
for infradead is down so...

meanwhile this would work too:
git.kernel.org/pub/scm/linux/kernel/git/vkoul/slave-dma.git

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
