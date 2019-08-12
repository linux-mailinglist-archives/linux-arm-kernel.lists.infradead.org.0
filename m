Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2888A23D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:27:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74AhmA8/l/IvSHDlP1jhmpp8QX3BYdeODZWjM/fRmnw=; b=SuONFA39WAwIS0
	x5SpSPQ+5oezQVyAra/KZ6BjiIxz/2z7ivht4TpjsihVp/QjfrZgNlrhkbDndqz3RNugJ/M2hn79b
	PO/sJ/m3oiPhh9UE11YuTtF1bJB/n/T6h2ShG9Y8Ft1PZ70Xyfq/Uu0QKpoOWMvGuRsxiO9GftHkP
	VHkYA1kMisxd/0VggFPfX0sLhvLpKddpbldiVz+OBpFaRJH9lRyeiJflLzu16FKWj0ASYgmCFAVcQ
	+S5rnfynutDmLde/ycQU2wsKP+j+B+aTWdunzr7sb+VLN3PD7l/a+pBTPNKtAeohb13thCKiUmRKT
	Pgz6WirgAm2nxc264O1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxCDx-0006ep-NQ; Mon, 12 Aug 2019 15:27:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxCDm-0006eS-II
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:26:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBC6015A2;
 Mon, 12 Aug 2019 08:26:52 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 72CC73F718;
 Mon, 12 Aug 2019 08:26:51 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:26:49 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCHv3 1/6] arm/arm64: smccc/psci: add
 arm_smccc_1_1_get_conduit()
Message-ID: <20190812152649.GC52896@lakrids.cambridge.arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
 <20190809132245.43505-2-mark.rutland@arm.com>
 <20190812150326.GT10425@arm.com>
 <20190812150634.GB52896@lakrids.cambridge.arm.com>
 <20190812151043.GU10425@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812151043.GU10425@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_082654_648013_4C0D76C2 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 james.morse@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:10:43PM +0100, Dave Martin wrote:
> On Mon, Aug 12, 2019 at 04:06:35PM +0100, Mark Rutland wrote:
> > On Mon, Aug 12, 2019 at 04:03:29PM +0100, Dave Martin wrote:
> > > On Fri, Aug 09, 2019 at 02:22:40PM +0100, Mark Rutland wrote:
> > > > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > > > index 080012a6f025..df01a8579034 100644
> > > > --- a/include/linux/arm-smccc.h
> > > > +++ b/include/linux/arm-smccc.h
> > > > @@ -80,6 +80,22 @@
> > > >  
> > > >  #include <linux/linkage.h>
> > > >  #include <linux/types.h>
> > > > +
> > > > +enum arm_smccc_conduit {
> > > > +	SMCCC_CONDUIT_NONE,
> > > 
> > > If this is intended to have the value 0, is it worth making that
> > > explicit?  I can never remember whether enums start at 1 or 0 by
> > > default...
> > 
> > They start at 0. I intend that checks are done explicitly against an
> > enum value, so I'm not sure that matters.
> 
> Not really.
> 
> It depends whether code like if (!arm_smccc_1_1_get_conduit()) { ... }
> is considered sane or not.
> 
> If we don't think people should be doing this, omitting the explicit
> value specifier seems fine.

My expectation was that they'd check explicitly against
SMCCC_CONDUIT_NONE, since all of the existing callers care about the
specific conduit for other reasons (e.g. patching).

I also expect to wrap this in a sbusequent patch that provides helpers:

* arm_smccc_1_1_available()
* arm_smccc_1_1_call(...)

... for the cases where we just want to make a call and don't care about
the specific conduit.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
