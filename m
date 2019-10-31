Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB74BEB111
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:22:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tE0mIxrzDdfEdzDr5yLwEP78Dbd+63K2WRI+IKqXzuc=; b=pcuhzOX68fSnFN
	JmDRtc6azqgpm2f2O4LwO6PLPFi7gjaTw33NhQnZfVxHWBxAWwQpgQvBawCXXYTtRO69JslqhSvCo
	fLbiajtXe9IZfVHm6DE0jq13zxo/pFHJxN/X1CChIR+1I7h8rtB9Ubg3DQo8fgACgapV284D4Udea
	GY7tMx8+SfEqOlpAteIafEVGtlEwgIvho+ZEMVBRqRcPVD4k8N/Kbc9EXBg3+LGWIau9/iBKO9W7H
	SGmISlgC5TJETXbZnOB05MJgHahhSDu2Yz3EmV4FcupWLCEA/H/JHpBak4Gb65Gffll1dSW7J1pnm
	n2Wsjk5jvaAUrT2koNyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAOy-0004pO-GX; Thu, 31 Oct 2019 13:22:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAOk-0004mt-Mp
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:22:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91E2120873;
 Thu, 31 Oct 2019 13:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572528118;
 bh=d5GVMjWHdmBFZQb6CC+/OkfJlqVkbsbDGygJpji33EM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1F4El6uIQCICKKWR3TZaZm298EiHiseD2Ube8CF+PE4N7oXJUc2gfXYTSJgb7xqG+
 XtVptZjlKFgl0xmyYacSujyU4ytTEWZjUBY+RbWqDAFVfned0Flk2JBXnutvZ4Nkb5
 xsB2bPLmCy/Now10Gw/PMcpfp60/QxcPdSxX6I9g=
Date: Thu, 31 Oct 2019 13:21:52 +0000
From: Will Deacon <will@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] arm64: apply ARM64_ERRATUM_845719 workaround for
 Brahma-B53 core
Message-ID: <20191031132151.GC27196@willie-the-truck>
References: <20191029191623.17839-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029191623.17839-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_062158_769079_94D24D65 
X-CRM114-Status: GOOD (  10.80  )
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
Cc: Vladimir Murzin <vladimir.murzin@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, open list <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Andre Przywara <andre.przywara@arm.com>, Doug Berger <opendmb@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Marc Zyngier <maz@kernel.org>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019 at 12:16:19PM -0700, Florian Fainelli wrote:
> From: Doug Berger <opendmb@gmail.com>
> 
> The Broadcom Brahma-B53 core is susceptible to the issue described by
> ARM64_ERRATUM_845719 so this commit enables the workaround to be applied
> when executing on that core.
> 
> Since there are now multiple entries to match, we must convert the
> existing ARM64_ERRATUM_845719 into an erratum list.

Looks fine to me, but I have to ask: are you sure you don't want to select
any of ARM64_ERRATUM_{826319, 827319, 824069, 819472, 843419} ?

Also, please can you update Documentation/arm64/silicon-errata.rst ?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
