Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80FBAA99E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bp7z41oVR/9q2IUU8b8BfX76dSvloYsmK8eVx9nAN7o=; b=oNnxToo0yL3vWR
	knkgsuS8RDoQ/pdf2cv0DQRvT4AJzkXSOZ5LN+lhhxduTuODzlQmzFwHJEVtheKTI/BDT+rXU4Q3w
	o47xdOP7/MyPSd4dO3lpRF1s2a4nXQipwG8EaDhqCX0DFOC07ZKPv1mKmJqhs4xDMw4EN9PoypPXV
	VcdyO+S4EY4A1jqkvXtM2ToNrWfWxzBIhYTRM8b/+bNKnaCx6icDIhhCNkInQIPdK8Z4j/JG2tqfh
	2WvuycscwDCMMUl5EWgE/O/xoKlFm2sfdjGggzBrltl5aT89b0/v/aA/l5yngdM2ST71owgwXauV5
	fL/5qap70FEj8FSAr/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vAA-0004Sa-Jn; Thu, 05 Sep 2019 17:03:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vA1-0004S5-HM; Thu, 05 Sep 2019 17:03:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2603D28;
 Thu,  5 Sep 2019 10:03:02 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 E172A3F718; Thu,  5 Sep 2019 10:03:00 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:02:58 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6
 offline, 1 untried/unknown (next-20190904)
Message-ID: <20190905170257.GC31268@arrakis.emea.arm.com>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
 <20190905153938.GB4053@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905153938.GB4053@sirena.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_100305_622392_ABBBE1E1 
X-CRM114-Status: GOOD (  10.53  )
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
Cc: Steven Liu <steven.liu@mediatek.com>, kernel-build-reports@lists.linaro.org,
 Kevin Hilman <khilman@baylibre.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 04:39:38PM +0100, Mark Brown wrote:
> On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
> > [ + Steven Liu who donated this board to my kernelCI lab ]
> 
> Also adding Christoph since this was bisected to his commit and Catalin
> and Will since this was an architecture change.

Thanks.

> > Bisected down to this commit[1], full bisect log here[2].  It didn't
> > revert cleanly on top of next-20190904, so I didn't get any further.
> 
> > [1]
> > 419e2f1838819e954071dfa1d1f820ab3386ada1 is the first bad commit
> > commit 419e2f1838819e954071dfa1d1f820ab3386ada1
> > Author: Christoph Hellwig <hch@lst.de>
> > Date:   Mon Aug 26 09:03:44 2019 +0200

I stared at this commit and the ones around it for a while but couldn't
see anything obvious. AFAICT this commit only replaces some macros, no
functional change.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
