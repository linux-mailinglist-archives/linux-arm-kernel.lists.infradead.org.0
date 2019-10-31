Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17057EAEE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 12:26:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aV5RWCrj91JM+tQAMP5MaaKlk1+eqONeFV5NNRk/dJo=; b=hiuX6orSiJfCPg
	B9hysFqS1y1KHR8Zs7EKlqoSOWICpAwkrFEEamxIh9rfZRE+gmYp6t4Xlx3n3S8PvGlf8ld4j/4qD
	tdgFij2aUWnBzQ3BD59WzGPTG+BHXNVEi7334E96aovO75j4OoJdiS5tWdgL8NclrG14banDD94Pl
	A7kWJvB3td1+k39OaQsDlTN302BXmiZ9Es1za/dBr4sWvdIox+2Obo8L2Ut1Ey36iWAUKtc6rqqdN
	/nsIp5zpyU66x2/qeA44rnJxR3gMQSsfPa9KZsK8bni/OVGd5HajIjSh5gd0ehPKIteKi7pjWkU4k
	LNmgxDeHzslsWUg9yWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ8au-0000mM-VK; Thu, 31 Oct 2019 11:26:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ8al-0000lU-NY
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 11:26:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3325D208E3;
 Thu, 31 Oct 2019 11:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572521175;
 bh=scynK1w3RbTaGbWJXWwUlo8xZ4qi2RZOr8IV+A7V3JM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sIphd9o6lhzuPuXTqCp9obiSPG5bi6IZHv2BKfPVmFMkKlg/q7GLTucZrx/ma7wqB
 alzzktK19yzwsQ++8QXjv4vcgDsYmh3kYN7za7HAk84ISJtbsR8NSmUdoZZDdBMPe9
 1Vsv8nmZTrl2NDqcqwnLPHb1yHAIs0mbxiRLQqdo=
Date: Thu, 31 Oct 2019 11:26:10 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 0/4] E0PD support
Message-ID: <20191031112610.GA26059@willie-the-truck>
References: <20191024214207.20588-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024214207.20588-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_042615_787678_9CE72333 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+John Garry]

Hi Mark,

On Thu, Oct 24, 2019 at 10:42:03PM +0100, Mark Brown wrote:
> This series adds support for E0PD. We enable E0PD unconditionally where
> present on systems where all the CPUs in the system support E0PD and
> change to not enabling KPTI by default on systems where we have enabled
> E0PD. It also converts the runtime checks for use of non-global mappings
> into a variable.

Although I welcome the simplification introduced by this patch set, I'm
worried that we might be removing a significant optimisation to KASLR
boot-time on machines with large memory. John reported issues with this
in the past, so I'm looping him in in case he has a chance to test this
(branch here [1]). Of course, I could just be missing something since
this code was really subtle to begin with.

On KASLR systems other than TX1, we should use nG mappings by default so
that we can avoid the time-consuming task of rewriting swapper during boot.
However, with your patches, I think we defer the decision to use nG mappings
to the cpufeature code which means we always end up rewriting swapper in
this scenario because of the global mappings installed early on.

Have I got that right?

Cheers,

Will

[1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/e0pd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
