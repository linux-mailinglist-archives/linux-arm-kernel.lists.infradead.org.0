Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE44851BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayz10WY7TlhEjubnhzdcPd8z5LA7HN3osXaCkZAh6ws=; b=ntwEjWFwCVrKbM
	WN+Hd8auomfMQeeWEGhaM3dfhJSyO7CnxdjkZGk72QMOBNSwET7nwGBU7mGcxadVPYFONQ8Ud7scz
	1GU+WQVcw9A3wNDStihEzifCH/Tu2G9inrx2F8HUUERGyaXjw1srWKgABtrFkYRIgp7gfJWuBAcn/
	IT+SjiCF9WiqLwyTKWXOKuY9EA7njUZSZK67uPKNS0fqYDCUT2I4FZb4yXMCquT4hd7zKf55AJLM2
	CwzcRh0r/Ag/sXLWflv5sWAug/Ze5rWiLL87Mj+6sHOX4T9Oy1UvIj8+C1rqv8qTzhsND7ZauvnS9
	O2wvz3a6jw9173+ini8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPQJ-0007si-1O; Wed, 07 Aug 2019 17:08:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPQ7-0007s0-60
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:08:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C10F344;
 Wed,  7 Aug 2019 10:08:12 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AEBD3F575;
 Wed,  7 Aug 2019 10:08:11 -0700 (PDT)
Date: Wed, 7 Aug 2019 18:08:09 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] firmware: arm_scmi: Use {get,put}_unaligned_le32 accessors
Message-ID: <20190807170808.GD27278@e107155-lin>
References: <20190807130038.26878-1-sudeep.holla@arm.com>
 <4102ce79ef7a4f5ba819663d072bccc8@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4102ce79ef7a4f5ba819663d072bccc8@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_100815_267360_3C26543E 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 03:18:59PM +0000, David Laight wrote:
> From: Sudeep Holla
> > Sent: 07 August 2019 14:01
> >
> > Instead of type-casting the {tx,rx}.buf all over the place while
> > accessing them to read/write __le32 from/to the firmware, let's use
> > the nice existing {get,put}_unaligned_le32 accessors to hide all the
> > type cast ugliness.
>
> Why the 'unaligned' accessors?
>

Since the firmware run in LE, we do byte-swapping anyways.

> > -	*(__le32 *)t->tx.buf = cpu_to_le32(id);
> > +	put_unaligned_le32(id, t->tx.buf);
>

If you look at the generic definition for put_unaligned_le32, it's
exactly the same as what I am replacing with the call. So nothing
changes IIUC. In fact, I see that all the helper in unaligned/access_ok.h
just do the byte-swapping.

> These will be expensive if the cpu doesn't support them.

The SCMI is currently used only on ARM platforms which have
HAVE_EFFICIENT_UNALIGNED_ACCESS defined.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
