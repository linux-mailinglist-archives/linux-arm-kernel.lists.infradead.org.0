Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBBD4E013
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 07:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2LHO/WGo20B96J3z+D6+3uxYkgHtkW5PScS9vacRFs=; b=qhL8fh9RGTeZfr
	N6JWWmYATsv8rH9dHLK41KWtRDKPXUVNFglv12yMu/nMum77pRpQWYonsLM3k2DtcyVujlRN+sgV0
	XqZ00UaZk5f4x7El6eTYGrvfxany1keBEvylpKYalvRsZZby11DgzoJstCSK+skSAIv3n04QEJgUD
	gn/1f7ynbVXKBIxz9fn2eFQEDmun2m8xEr/49V/io0bgF+3BQA/aPlrLNvDOFMJnH9ULABdVu7fh7
	HdmapCHiqfP/c+EIh6KjtuLNQwB8sPiMSbR1RU1jW4vQg2WLbk9GEDlP6jy3ntm2pqtl55S3g3hYX
	EGgiITlDjNdH8qt/XTQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heCBM-00028W-NC; Fri, 21 Jun 2019 05:33:52 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heCBA-00028B-Cv
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 05:33:42 +0000
X-Originating-IP: 85.23.31.57
Received: from windsurf (85-23-31-57.bb.dnainternet.fi [85.23.31.57])
 (Authenticated sender: thomas.petazzoni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0C874FF805;
 Fri, 21 Jun 2019 05:33:23 +0000 (UTC)
Date: Fri, 21 Jun 2019 07:33:18 +0200
From: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
To: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
Subject: Re: Kirkwood PCI Express and bridges
Message-ID: <20190621073318.3bcd940e@windsurf>
In-Reply-To: <403548ec3a7543b08ca32e47a1465e70@svr-chch-ex1.atlnz.lc>
References: <403548ec3a7543b08ca32e47a1465e70@svr-chch-ex1.atlnz.lc>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_223340_755642_83BD2235 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Chris,

On Fri, 21 Jun 2019 04:03:27 +0000
Chris Packham <Chris.Packham@alliedtelesis.co.nz> wrote:

> I'm in the process of updating the kernel version used on our products 
> from 4.4 -> 5.1.
> 
> We have one product that uses a Kirkwood CPU, IDT PCI bridge and Marvell 
> Switch ASIC. The Switch ASIC presents as multiple PCI devices.
> 
> The hardware setup looks like this
>                                         __________
> [ Kirkwood ] --- [ IDT 5T5 ] ---+---  |          |
>                                  +---  |  Switch  |
>                                  +---  |          |
>                                  +---  |__________|
> 
> On the 4.4 based kernel things are fine
> 
> [root@awplus flash]# lspci -t
> -[0000:00]---01.0-[01-06]----00.0-[02-06]--+-02.0-[03]----00.0
>                                             +-03.0-[04]----00.0
>                                             +-04.0-[05]----00.0
>                                             \-05.0-[06]----00.0
> 
> But on the 5.1 based kernel things get a little weird
> 
> [root@awplus flash]# lspci -t
> -[0000:00]---01.0-[01-06]--+-00.0-[02-06]--
>                             +-01.0
>                             +-02.0-[02-06]--
>                             +-03.0-[02-06]--
>                             +-04.0-[02-06]--
>                             +-05.0-[02-06]--
>                             +-06.0-[02-06]--
>                             +-07.0-[02-06]--
>                             +-08.0-[02-06]--
>                             +-09.0-[02-06]--
>                             +-0a.0-[02-06]--
>                             +-0b.0-[02-06]--
>                             +-0c.0-[02-06]--
>                             +-0d.0-[02-06]--
>                             +-0e.0-[02-06]--
>                             +-0f.0-[02-06]--
>                             +-10.0-[02-06]--
>                             +-11.0-[02-06]--
>                             +-12.0-[02-06]--
>                             +-13.0-[02-06]--
>                             +-14.0-[02-06]--
>                             +-15.0-[02-06]--
>                             +-16.0-[02-06]--
>                             +-17.0-[02-06]--
>                             +-18.0-[02-06]--
>                             +-19.0-[02-06]--
>                             +-1a.0-[02-06]--
>                             +-1b.0-[02-06]--
>                             +-1c.0-[02-06]--
>                             +-1d.0-[02-06]--
>                             +-1e.0-[02-06]--
>                             \-1f.0-[02-06]--+-02.0-[03]----00.0
>                                             +-03.0-[04]----00.0
>                                             +-04.0-[05]----00.0
>                                             \-05.0-[06]----00.0
> 
> 
> I'll start bisecting to see where things started going wrong. I just 
> wondered if this rings any bells for anyone.

I am almost sure that the culprit is
1f08673eef1236f7d02d93fcf596bb8531ef0d12 ("PCI: mvebu: Convert to PCI
emulated bridge config space").

I still think it makes sense to share the bridge emulation code between
the mvebu and aardvark drivers, but this sharing has required making
the code very different, with lots of subtle differences in behavior in
how registers are emulated.

Unfortunately, I don't have access to one of these complicated PCI
setup with a HW switch on the way, so I couldn't test this kind of
setups.

Do you mind helping with figuring out what the issues are ? That would
be really nice.

Best regards,

Thomas
-- 
Thomas Petazzoni, CTO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
