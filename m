Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CDC1DAD6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 10:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0Oa+/QbY7GVa1eTA1V7eDOGtNYy9FT80bWNf4fmlHU=; b=L+1U8zzmj3bZnj
	0LC9SbxGm1LnkTyzd17UtCoslR7Oz91ztPy98WCM6kPJtItZWB+IZNvPZ+k2hWOatei9/tTyc09P7
	v4w6eppxfcF3kS1o+Dsucgg07hmxcEn9wIO0gcIonZFAEfTzKCkTQ3h2qlkfMBk1vN6UTC5ew+s7B
	4rNF+a9JfvIoF/tJYrnkmtbT/F6DmrjLdZ5TYst6wIv0UejBEcOt8jgTnxlBERxVEkD0feqBH2Ftk
	mTCkIs0tl/ILbFdlnb3/nVZII4xeQPrTWCHmcBk02EeDIptSO/W7cehTfiQ2K8UAmiUbWKDWDACw/
	TZ8khu0Ra5fZkF3GQ05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbK6B-00035N-NZ; Wed, 20 May 2020 08:29:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbK62-000352-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 08:29:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35915207ED;
 Wed, 20 May 2020 08:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589963341;
 bh=Q+iJzQpwjrFd6M+y+y1WH0wGJm9kOclpP9m1i3eCkoU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H4yZxE/wBTDUafZJ+OAeSSn2ylH6Lg8vFhVIhMpZtgwPV7qteoI6eMBshap1zK6xn
 58uihSJzToS1yATGGYPfY89uUdKLZge+pTAs6g6Q2q/a7ihx/jOlohJDIMZI/ZTwZC
 /a2hdNvz4WDPWFLROT5nbwc6chMjRBj+Jaupp4ew=
Date: Wed, 20 May 2020 09:28:57 +0100
From: Will Deacon <will@kernel.org>
To: Linu Cherian <linuc.decode@gmail.com>
Subject: Re: Clarification on necessary barriers before generating IPI
Message-ID: <20200520082856.GA24293@willie-the-truck>
References: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAHhmWiezrmtChuowQ4gyn8qhSUnfjc574P_riqHzTqifZK=dg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_012902_458869_C2C6BEFA 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: maz@kernel.org, Linu Cherian <lcherian@marvell.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:38:24PM +0530, Linu Cherian wrote:
> How is it ensured that system register write using msr instruction(gic_send_sgi)
> doesnt get reordered before the stores to IPI call processing
> list(call_single_queue in kernel/smp.c), so that IPI is guaranteed to
> be generated after the stores get completed.

I think the flow is:

	<store to memory>
	DSB	ST
	MSR	SGI1R
	ISB

and then on the receiver:

	<interrupt; implicit ISB/context sync>
	MRS	IAR
	DSB	SY
	<control dependency>
	MSR	EOIR
	ISB
	<handle IPI>

> CMIIW, Dont we need an isb() in addition to to the wmb() in the below code ?

There is an isb?() in the code, after the loop. Are you saying it should be
somewhere else? If so, why?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
