Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744B8187DD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 11:09:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpc6W8srPM0vFJG8A7i4V3YuzL8vBnVoDs2xNsRBzZo=; b=TRseke2Axr2pBg
	i4Hjw9063zmOePVvwwLymQovwSITwgThY8JmFPqqS5xSi1POyrG1W3xYR+pDCxAPv7728ecO7ETk/
	n1YAgfP9Gqw0t9degm0jFhPgTLDSC1LZbMJQnSgqV7DGrwT0iO85SQn3xMRNTo2RWJWBWzoGblvug
	FwZ+q4ybWOwabWtcniIdYnay7j6kNe7BXt/xjBT4465mRGGLC0WAAPm07haPHEtp9pRk1/NCfSXEz
	u9b9Hb/KMHEkAHjVMWacmZCuyFzUzORdpZoxrUToHOr1NDauM0cmECfxDWL06obELQnN31ZUKcj6e
	4zXhZdgzs4p9tXKNdY/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE99s-0007Pb-WD; Tue, 17 Mar 2020 10:09:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE99j-0007Oy-SM
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 10:09:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAA591FB;
 Tue, 17 Mar 2020 03:09:01 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97DEA3F52E;
 Tue, 17 Mar 2020 03:09:00 -0700 (PDT)
Date: Tue, 17 Mar 2020 10:08:58 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
Message-ID: <20200317100857.GM3005@mbp>
References: <20200302020340.119588-1-gshan@redhat.com>
 <20200302122135.GB56497@lakrids.cambridge.arm.com>
 <20200317100608.GA8831@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317100608.GA8831@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_030903_959500_5EEE9F7E 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Gavin Shan <gshan@redhat.com>, maz@kernel.org, linux-kernel@vger.kernel.org,
 shan.gavin@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:06:09AM +0000, Mark Rutland wrote:
> On Mon, Mar 02, 2020 at 12:21:35PM +0000, Mark Rutland wrote:
> > On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
> > > The function __cpu_up() is invoked to bring up the target CPU through
> > > the backend, PSCI for example. The nested if statements won't be needed
> > > if we bail out early on the following two conditions where the status
> > > won't be checked. The code looks simplified in that case.
> > > 
> > >    * Error returned from the backend (e.g. PSCI)
> > >    * The target CPU has been marked as onlined
> > > 
> > > Signed-off-by: Gavin Shan <gshan@redhat.com>
> > 
> > FWIW, this looks like a nice cleanup to me:
> > 
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> Catalin, are you happy to pick this up?

Yes, it was on my list to pick up already, just haven't got around to it
yet.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
