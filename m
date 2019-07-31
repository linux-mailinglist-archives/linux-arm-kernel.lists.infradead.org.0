Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453797C9CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivGx5fLY/31eG2RxlDpwtJn1mwV5VENWk7BXuanjiCg=; b=Xf7DzfnIaS6NfJ
	Q/6+8V5O2pzf/gL/XbD/QC1N1TjJnyeVk3FvfCqB61Sl1Z0Np8kY4rqV163UqxSt+y19IQvZwfYtl
	DUJ29SHEWtgFBAY/onoDWRoZ82JmLN7DWV6e/wvK6/o+4BSqmYKkPw2ufgWRBe9vUfXVlzid9FTAd
	PyfbXWaSny44J1IViII19OHFmRhpSqCjhgAg+qQjbo/RLyyXvPAEVoaLb5JtcdzZgYUHkT+Nq7Xt6
	cW4xtmcSUxl94e/CaEPnqig1PQjfYPaqZ9vbK0pIVNZeBT21JW1IdXE4VgwYH2FFaRBnfFrYOwma2
	d1T5IMxtAYPHPZYFMgRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrzs-0005ZC-9e; Wed, 31 Jul 2019 17:02:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrzg-0005R0-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:02:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE33B337;
 Wed, 31 Jul 2019 10:02:27 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84A793F71F;
 Wed, 31 Jul 2019 10:02:26 -0700 (PDT)
Date: Wed, 31 Jul 2019 18:02:24 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v4.4 V2 00/43] V4.4 backport of arm64 Spectre patches
Message-ID: <20190731170224.GK39768@lakrids.cambridge.arm.com>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <20190731025253.ys4ph2hwa7hzdi5n@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731025253.ys4ph2hwa7hzdi5n@vireshk-i7>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100228_935792_78887565 
X-CRM114-Status: GOOD (  13.48  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On Wed, Jul 31, 2019 at 08:22:53AM +0530, Viresh Kumar wrote:
> On 12-07-19, 10:57, Viresh Kumar wrote:
> > Hello,
> > 
> > This series backports arm64 spectre patches to v4.4 stable kernel. I
> > have started this backport with Mark Rutland's backport of Spectre to
> > 4.9 [1] and tried applying the upstream version of them over 4.4 and
> > resolved conflicts by checking how they have been resolved in 4.9.
> 
> Since it has been almost 3 weeks since the patches are last posted,
> here is a gentle reminder for reviewing it :)

I've taken a look at about half of the series today, and left a couple
of comments. I intend to attack the rest, but I won't be able to do so
until Tuesday next week.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
