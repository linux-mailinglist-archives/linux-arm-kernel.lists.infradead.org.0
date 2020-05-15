Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1181D468E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+Q2xMQ43zVoj9VfuR4UhNtxlpZg0GCPBDrJC6uewDs=; b=rH0sNVpdF+aoGy
	H9oYbiEd9Opy6db6KvzEHvAC6AgU37gjjUCMO6txjbO4rqnVikuhplNnR6Goxd5nVFqHrfixyv58i
	oztQScc06hTUQ0cjdV0n9qknfHU9oFOLZskzSCvyBmg2XpOjxI2SYo0QT/HKKPVKRl4FarvQ076HQ
	btGnmpapzZ345Zs60Bge5zFmquUb6W6AhxdklMN+pnz5nn/9OZHADc3VqXpLb5FE/+/q6m6LsplVd
	rBM8QADHlDlw6RGc6XWCAqTQu1No2445a4MEaNKk5wRR7aQGGH8gYe+Zno2xJZtTpVqydejm5DwtP
	oMGpfbPfUGKm2Q8APR+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUJ4-0006gO-2X; Fri, 15 May 2020 06:58:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUIn-0006WX-0n; Fri, 15 May 2020 06:58:38 +0000
Received: from localhost (unknown [122.178.196.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A8CD206F1;
 Fri, 15 May 2020 06:58:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589525916;
 bh=hUlz/rCkfZ+xgR8DMjnzNDlI1sbpdHErcZSsJkt/seU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1A22I7krsIZihkqwPfAxmtTUF3iKA2KRWFzbmbv1BU0+VUlhk1Kyv+8fqKICg8j9y
 Cjs4kC5ZZfW6vv2hKdXux+tFKprzz0EZSutPWafbt0BHL6jX9qjeZw9zCgoaK/oDB6
 oVPEeYxHfqhyEp6flJG7XqJdUAAaS5Z2GG6lLHug=
Date: Fri, 15 May 2020 12:28:27 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amit Tomer <amittomer25@gmail.com>
Subject: Re: [PATCH v1 1/9] dmaengine: Actions: get rid of bit fields from
 dma descriptor
Message-ID: <20200515065827.GL333670@vkoul-mobl>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-2-git-send-email-amittomer25@gmail.com>
 <20200514182750.GJ14092@vkoul-mobl>
 <CABHD4K8F_sk3Xsevu4pMtR1jEanh5-dSATLYySPKW-nDY9fAvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABHD4K8F_sk3Xsevu4pMtR1jEanh5-dSATLYySPKW-nDY9fAvA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_235837_095338_F87A3B75 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andre Przywara <andre.przywara@arm.com>, linux-actions@lists.infradead.org,
 cristian.ciocaltea@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-05-20, 00:04, Amit Tomer wrote:
> Hi,
> 
> On Thu, May 14, 2020 at 11:58 PM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 14-05-20, 21:40, Amit Singh Tomar wrote:
> > > At the moment, Driver uses bit fields to describe registers of the DMA
> > > descriptor structure that makes it less portable and maintainable, and
> > > Andre suugested(and even sketched important bits for it) to make use of
> > > array to describe this DMA descriptors instead. It gives the flexibility
> > > while extending support for other platform such as Actions S700.
> > >
> > > This commit removes the "owl_dma_lli_hw" (that includes bit-fields) and
> > > uses array to describe DMA descriptor.
> >
> > So i see patch 1/9 and 2/9 in my inbox... where are the rest ? No cover
> > to detail out what the rest contains, who should merge them etc etc!

and what is the answer for this..?

> >
> > If you are sending a series to different subsystem please make a habit
> > to CC everyone on cover letter so that we understand details about the
> > series. If not dependent, just send as individual units to subsystems!
> 
> Ok, I would make note of it and Cc everyone on cover letter going forward.
> 
> Thanks
> -Amit

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
