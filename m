Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82451EA551
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/9xZni8EH48lj8WHaku+Yd87UOFuDu9xshHWdzh8+M=; b=l33ig2N1PPP+qv
	0WDM5Tanzmd6qQiVFWKCnBGIGaJc78XOR37ttURVqxk43JGbiRMlXfjkXPQiaXOhh2YktvO94wwiC
	tTQ3v+8l1QZDPjdEc677FiUSV8IXsrv3xozDQV8OwbUkyYRdqpHQc9WgUjXLuvS6YI0ZHb+S7IwVc
	wwsR7mns0QxMDqpdr+5nMsGS8v/jVr4oP1IyEbVNNmfD7nd/05MmsEYHHa5tOpbGL7Lsv2eUGRqyh
	7WJ1cp22SJzL7DeFK2jXTqjIKmqzzaNaTam1Y6Ufg5G5EG7LTDOdlGKK1dO6j2RDsc9VlxIFVOcoo
	iaorQgB6aVTBO2Zhk+qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkqa-0007IN-4j; Mon, 01 Jun 2020 13:51:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkqT-0007HT-Ub
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:51:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75B0755D;
 Mon,  1 Jun 2020 06:51:16 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7602E3F52E;
 Mon,  1 Jun 2020 06:51:15 -0700 (PDT)
Date: Mon, 1 Jun 2020 14:51:13 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 2/6] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
Message-ID: <20200601135112.GB5031@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-3-git-send-email-Dave.Martin@arm.com>
 <CAKgNAkhwYASEM+wqaDZQ-ftcB3jnsVN2cXq4E_1ep1rqv+4aLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgNAkhwYASEM+wqaDZQ-ftcB3jnsVN2cXq4E_1ep1rqv+4aLw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_065118_034628_CF650C11 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 linux-man <linux-man@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Tim Chen <tim.c.chen@linux.intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 09:01:59AM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> On Wed, 27 May 2020 at 23:18, Dave Martin <Dave.Martin@arm.com> wrote:
> >
> > Add the PR_SPEC_INDIRECT_BRANCH "misfeature" added in Linux 4.20
> > for PR_SET_SPECULATION_CTRL and PR_GET_SPECULATION_CTRL.
> >
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > Cc: Tim Chen <tim.c.chen@linux.intel.com>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> 
> I had also applied this patch from the email you sent earlier. I've
> pushed those changes to master now.

Thanks for this.

Do you publish a "development" branch somewhere, or similar?

If possible, it's nice to have git rebase work out which patches to drop
for me rather than me doing it by hand.

Don't bother if publishing an extra branch doesn't fit with your
workflow, though.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
