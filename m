Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A003A20A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=inh1Z3u60YlaEbQ77BAtL4oIIoRIE0q2t6NZQxbdCaU=; b=svuvjGLPfSz/LN
	+SFzJ808mfmfLPlD/at0uxnCcHqBU/uB1LjbXRqb1g+o2W4ghUb0VshqGME57uBsip+RhE3ze+JhC
	mAMSKTdCqg3FruDnJny5kYFyLQSoiz12Q2chusaQiRbvSJTL/gnPGQH0gvJmvjmPeo8k/m6skUnCT
	62Dq+8OurILbCiq3PGbLDjCd326PIgcHS8pQbCD9DfdwlQBS2yUJeTsavU7YxD0n11V3rrS9X6tAM
	OstTz6pWU6hslZl8GOgJnUAsbwmWMlk9wmeRw8POWkqwWkOb0I5lcvaMEzHnO6kxpjMXWpcXrb4hW
	YdbxZuZlSvjv5j7mH0cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3N8D-00070a-NL; Thu, 29 Aug 2019 16:18:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3N81-00070F-RJ
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:18:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 66406337;
 Thu, 29 Aug 2019 09:18:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 112D43F59C;
 Thu, 29 Aug 2019 09:18:25 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:18:20 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 00/44] V4.4 backport of arm64 Spectre patches
Message-ID: <20190829161820.GA44947@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_091829_930200_542FB07C 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:45PM +0530, Viresh Kumar wrote:
> Hello,

Hi Viresh,

> This series backports arm64 spectre patches to v4.4 stable kernel. I
> have started this backport with Mark Rutland's backport of Spectre to
> 4.9 [1] and tried applying the upstream version of them over 4.4 and
> resolved conflicts by checking how they have been resolved in 4.9.
> 
> The KVM changes are mostly dropped as the KVM code in v4.4 is quite
> different and it makes backport more complex. This was suggested by the
> ARM team.

I'm reviewing this backport now, but it's going to take me a few days to
get through the entire series, so please don't be surprised if I'm quiet
until the middle of next week.

If I spot any issues I'll reply immediately, but please poke if I
haven't said anything by Wednesday.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
