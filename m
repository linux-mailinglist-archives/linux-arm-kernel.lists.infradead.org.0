Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ACB1C53C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzZTG0AKXf/PdbMcyF3NDP1qdmwGy4zFlbYNuR3d0PU=; b=I8QNuKcOBFt0SR
	U0O46vO01x12sWamvDKmKIKUG9QGgKztO8gPlezBSY0EQZ1MEYfMdP02tqufRnYehtRO280CZQwK8
	d07XYP1Itf5h0t/d6GwATveWXhWqRMUYyHsIIVrHPRVji3SZ01X4RvzK5PTdBqFRiFLPDl7m6Zrm2
	FRfgLn6Mp2eC1jLcIU/9BSM2Ut9T/xe+6Ht/8++gA+X19Rnz0y2epDkTNlxFTtAMIxB/rjbcAnHHx
	DlT6NQF3A4QkTHjfNGOeNWPeI3wa7/gXk06KplstzGDmeeWZGqZT+u7ETg8s39U+gy5GeYzS8jK/f
	nKLSGIWdxI1YxdvE3HMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvEg-0001hz-2y; Tue, 05 May 2020 10:55:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvEY-0001hK-Fe
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:55:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7EAC30E;
 Tue,  5 May 2020 03:55:27 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E4183F305;
 Tue,  5 May 2020 03:55:26 -0700 (PDT)
Date: Tue, 5 May 2020 11:55:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Walter Harms <wharms@bfs.de>
Subject: Re: Adding arch-specific user ABI documentation in linux-man
Message-ID: <20200505105522.GL30377@arm.com>
References: <20200504153214.GH30377@arm.com>
 <32259f3763344500a058a8ca8a3a33d8@bfs.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32259f3763344500a058a8ca8a3a33d8@bfs.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_035530_568677_8D72F36C 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 07:45:32AM +0000, Walter Harms wrote:
> Hi Dave,
> you are pointing to an (IMHO) interesting question.
> How to document different CPUs ?
> Given that an operating system should hide the different CPU's using
> CPU specific features should be used sparsely at best.

Agreed!  But there are real situations where cpu specifics can't be
avoided, and having documentation will help people to use those features
correctly.

> the easy part are adds-on like flags for prctrl etc. simply add it to the page.

For prctl, that makes sense (it's a jumble of arch specifics already).

But would it be considered a problem if the ptrace page, say, becomes
80% arch-specific stuff?  That page is cumbersome enough already...

> Other things should go to a cpu specific pages (can of worms). The problem will
> be to keep that small but informative. I have no idea about the level of detail
> (and i have worked with a range of CPUs) that could be interesting for a programmer.
> An of cause every other CPU now needs also a page.

Fair enough.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
